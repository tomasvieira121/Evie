package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import android.os.SystemClock;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.BehindLiveWindowException;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.chunk.Chunk;
import com.google.android.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import com.google.android.exoplayer2.source.chunk.DataChunk;
import com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist;
import com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker;
import com.google.android.exoplayer2.trackselection.BaseTrackSelection;
import com.google.android.exoplayer2.trackselection.TrackSelection;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.util.UriUtil;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class HlsChunkSource {
    private final DataSource encryptionDataSource;
    private byte[] encryptionIv;
    private String encryptionIvString;
    private byte[] encryptionKey;
    private Uri encryptionKeyUri;
    private HlsMasterPlaylist.HlsUrl expectedPlaylistUrl;
    private final HlsExtractorFactory extractorFactory;
    private IOException fatalError;
    private boolean independentSegments;
    private boolean isTimestampMaster;
    private long liveEdgeTimeUs = -9223372036854775807L;
    private final DataSource mediaDataSource;
    private final List<Format> muxedCaptionFormats;
    private final HlsPlaylistTracker playlistTracker;
    private byte[] scratchSpace;
    private final TimestampAdjusterProvider timestampAdjusterProvider;
    private final TrackGroup trackGroup;
    private TrackSelection trackSelection;
    private final HlsMasterPlaylist.HlsUrl[] variants;

    public static final class HlsChunkHolder {
        public Chunk chunk;
        public boolean endOfStream;
        public HlsMasterPlaylist.HlsUrl playlist;

        public HlsChunkHolder() {
            clear();
        }

        public void clear() {
            this.chunk = null;
            this.endOfStream = false;
            this.playlist = null;
        }
    }

    public HlsChunkSource(HlsExtractorFactory hlsExtractorFactory, HlsPlaylistTracker hlsPlaylistTracker, HlsMasterPlaylist.HlsUrl[] hlsUrlArr, HlsDataSourceFactory hlsDataSourceFactory, TimestampAdjusterProvider timestampAdjusterProvider, List<Format> list) {
        this.extractorFactory = hlsExtractorFactory;
        this.playlistTracker = hlsPlaylistTracker;
        this.variants = hlsUrlArr;
        this.timestampAdjusterProvider = timestampAdjusterProvider;
        this.muxedCaptionFormats = list;
        Format[] formatArr = new Format[hlsUrlArr.length];
        int[] iArr = new int[hlsUrlArr.length];
        for (int i = 0; i < hlsUrlArr.length; i++) {
            formatArr[i] = hlsUrlArr[i].format;
            iArr[i] = i;
        }
        this.mediaDataSource = hlsDataSourceFactory.createDataSource(1);
        this.encryptionDataSource = hlsDataSourceFactory.createDataSource(3);
        this.trackGroup = new TrackGroup(formatArr);
        this.trackSelection = new InitializationTrackSelection(this.trackGroup, iArr);
    }

    public void maybeThrowError() throws IOException {
        IOException iOException = this.fatalError;
        if (iOException != null) {
            throw iOException;
        }
        HlsMasterPlaylist.HlsUrl hlsUrl = this.expectedPlaylistUrl;
        if (hlsUrl != null) {
            this.playlistTracker.maybeThrowPlaylistRefreshError(hlsUrl);
        }
    }

    public TrackGroup getTrackGroup() {
        return this.trackGroup;
    }

    public void selectTracks(TrackSelection trackSelection) {
        this.trackSelection = trackSelection;
    }

    public TrackSelection getTrackSelection() {
        return this.trackSelection;
    }

    public void reset() {
        this.fatalError = null;
    }

    public void setIsTimestampMaster(boolean z) {
        this.isTimestampMaster = z;
    }

    public void getNextChunk(HlsMediaChunk hlsMediaChunk, long j, long j2, HlsChunkHolder hlsChunkHolder) {
        long jMax;
        long j3;
        HlsMediaPlaylist playlistSnapshot;
        long nextChunkIndex;
        HlsMasterPlaylist.HlsUrl hlsUrl;
        long nextChunkIndex2;
        int iIndexOf = hlsMediaChunk == null ? -1 : this.trackGroup.indexOf(hlsMediaChunk.trackFormat);
        this.expectedPlaylistUrl = null;
        long j4 = j2 - j;
        long jResolveTimeToLiveEdgeUs = resolveTimeToLiveEdgeUs(j);
        if (hlsMediaChunk == null || this.independentSegments) {
            jMax = jResolveTimeToLiveEdgeUs;
            j3 = j4;
        } else {
            long durationUs = hlsMediaChunk.getDurationUs();
            long jMax2 = Math.max(0L, j4 - durationUs);
            if (jResolveTimeToLiveEdgeUs != -9223372036854775807L) {
                jMax = Math.max(0L, jResolveTimeToLiveEdgeUs - durationUs);
                j3 = jMax2;
            } else {
                jMax = jResolveTimeToLiveEdgeUs;
                j3 = jMax2;
            }
        }
        this.trackSelection.updateSelectedTrack(j, j3, jMax);
        int selectedIndexInTrackGroup = this.trackSelection.getSelectedIndexInTrackGroup();
        boolean z = iIndexOf != selectedIndexInTrackGroup;
        HlsMasterPlaylist.HlsUrl hlsUrl2 = this.variants[selectedIndexInTrackGroup];
        if (!this.playlistTracker.isSnapshotValid(hlsUrl2)) {
            hlsChunkHolder.playlist = hlsUrl2;
            this.expectedPlaylistUrl = hlsUrl2;
            return;
        }
        HlsMediaPlaylist playlistSnapshot2 = this.playlistTracker.getPlaylistSnapshot(hlsUrl2);
        this.independentSegments = playlistSnapshot2.hasIndependentSegmentsTag;
        updateLiveEdgeTimeUs(playlistSnapshot2);
        if (hlsMediaChunk == null || z) {
            long j5 = (hlsMediaChunk == null || this.independentSegments) ? j2 : hlsMediaChunk.startTimeUs;
            if (!playlistSnapshot2.hasEndTag && j5 >= playlistSnapshot2.getEndTimeUs()) {
                iIndexOf = selectedIndexInTrackGroup;
                playlistSnapshot = playlistSnapshot2;
                nextChunkIndex = playlistSnapshot2.mediaSequence + ((long) playlistSnapshot2.segments.size());
            } else {
                long jBinarySearchFloor = ((long) Util.binarySearchFloor((List<? extends Comparable<? super Long>>) playlistSnapshot2.segments, Long.valueOf(j5), true, !this.playlistTracker.isLive() || hlsMediaChunk == null)) + playlistSnapshot2.mediaSequence;
                if (jBinarySearchFloor >= playlistSnapshot2.mediaSequence || hlsMediaChunk == null) {
                    iIndexOf = selectedIndexInTrackGroup;
                    playlistSnapshot = playlistSnapshot2;
                    nextChunkIndex = jBinarySearchFloor;
                } else {
                    hlsUrl2 = this.variants[iIndexOf];
                    playlistSnapshot = this.playlistTracker.getPlaylistSnapshot(hlsUrl2);
                    nextChunkIndex = hlsMediaChunk.getNextChunkIndex();
                }
            }
            hlsUrl = hlsUrl2;
            nextChunkIndex2 = nextChunkIndex;
        } else {
            nextChunkIndex2 = hlsMediaChunk.getNextChunkIndex();
            hlsUrl = hlsUrl2;
            iIndexOf = selectedIndexInTrackGroup;
            playlistSnapshot = playlistSnapshot2;
        }
        if (nextChunkIndex2 < playlistSnapshot.mediaSequence) {
            this.fatalError = new BehindLiveWindowException();
            return;
        }
        int i = (int) (nextChunkIndex2 - playlistSnapshot.mediaSequence);
        if (i >= playlistSnapshot.segments.size()) {
            if (playlistSnapshot.hasEndTag) {
                hlsChunkHolder.endOfStream = true;
                return;
            } else {
                hlsChunkHolder.playlist = hlsUrl;
                this.expectedPlaylistUrl = hlsUrl;
                return;
            }
        }
        HlsMediaPlaylist.Segment segment = playlistSnapshot.segments.get(i);
        if (segment.fullSegmentEncryptionKeyUri != null) {
            Uri uriResolveToUri = UriUtil.resolveToUri(playlistSnapshot.baseUri, segment.fullSegmentEncryptionKeyUri);
            if (!uriResolveToUri.equals(this.encryptionKeyUri)) {
                hlsChunkHolder.chunk = newEncryptionKeyChunk(uriResolveToUri, segment.encryptionIV, iIndexOf, this.trackSelection.getSelectionReason(), this.trackSelection.getSelectionData());
                return;
            } else if (!Util.areEqual(segment.encryptionIV, this.encryptionIvString)) {
                setEncryptionData(uriResolveToUri, segment.encryptionIV, this.encryptionKey);
            }
        } else {
            clearEncryptionData();
        }
        HlsMediaPlaylist.Segment segment2 = playlistSnapshot.initializationSegment;
        DataSpec dataSpec = segment2 != null ? new DataSpec(UriUtil.resolveToUri(playlistSnapshot.baseUri, segment2.url), segment2.byterangeOffset, segment2.byterangeLength, null) : null;
        long initialStartTimeUs = (playlistSnapshot.startTimeUs - this.playlistTracker.getInitialStartTimeUs()) + segment.relativeStartTimeUs;
        int i2 = playlistSnapshot.discontinuitySequence + segment.relativeDiscontinuitySequence;
        hlsChunkHolder.chunk = new HlsMediaChunk(this.extractorFactory, this.mediaDataSource, new DataSpec(UriUtil.resolveToUri(playlistSnapshot.baseUri, segment.url), segment.byterangeOffset, segment.byterangeLength, null), dataSpec, hlsUrl, this.muxedCaptionFormats, this.trackSelection.getSelectionReason(), this.trackSelection.getSelectionData(), initialStartTimeUs, initialStartTimeUs + segment.durationUs, nextChunkIndex2, i2, segment.hasGapTag, this.isTimestampMaster, this.timestampAdjusterProvider.getAdjuster(i2), hlsMediaChunk, playlistSnapshot.drmInitData, this.encryptionKey, this.encryptionIv);
    }

    public void onChunkLoadCompleted(Chunk chunk) {
        if (chunk instanceof EncryptionKeyChunk) {
            EncryptionKeyChunk encryptionKeyChunk = (EncryptionKeyChunk) chunk;
            this.scratchSpace = encryptionKeyChunk.getDataHolder();
            setEncryptionData(encryptionKeyChunk.dataSpec.uri, encryptionKeyChunk.f396iv, encryptionKeyChunk.getResult());
        }
    }

    public boolean onChunkLoadError(Chunk chunk, boolean z, IOException iOException) {
        if (z) {
            TrackSelection trackSelection = this.trackSelection;
            if (ChunkedTrackBlacklistUtil.maybeBlacklistTrack(trackSelection, trackSelection.indexOf(this.trackGroup.indexOf(chunk.trackFormat)), iOException)) {
                return true;
            }
        }
        return false;
    }

    public void onPlaylistBlacklisted(HlsMasterPlaylist.HlsUrl hlsUrl, long j) {
        int iIndexOf;
        int iIndexOf2 = this.trackGroup.indexOf(hlsUrl.format);
        if (iIndexOf2 == -1 || (iIndexOf = this.trackSelection.indexOf(iIndexOf2)) == -1) {
            return;
        }
        this.trackSelection.blacklist(iIndexOf, j);
    }

    private long resolveTimeToLiveEdgeUs(long j) {
        if (this.liveEdgeTimeUs != -9223372036854775807L) {
            return this.liveEdgeTimeUs - j;
        }
        return -9223372036854775807L;
    }

    private void updateLiveEdgeTimeUs(HlsMediaPlaylist hlsMediaPlaylist) {
        this.liveEdgeTimeUs = hlsMediaPlaylist.hasEndTag ? -9223372036854775807L : hlsMediaPlaylist.getEndTimeUs();
    }

    private EncryptionKeyChunk newEncryptionKeyChunk(Uri uri, String str, int i, int i2, Object obj) {
        return new EncryptionKeyChunk(this.encryptionDataSource, new DataSpec(uri, 0L, -1L, null, 1), this.variants[i].format, i2, obj, this.scratchSpace, str);
    }

    private void setEncryptionData(Uri uri, String str, byte[] bArr) {
        byte[] byteArray = new BigInteger(Util.toLowerInvariant(str).startsWith("0x") ? str.substring(2) : str, 16).toByteArray();
        byte[] bArr2 = new byte[16];
        int length = byteArray.length > 16 ? byteArray.length - 16 : 0;
        System.arraycopy(byteArray, length, bArr2, (bArr2.length - byteArray.length) + length, byteArray.length - length);
        this.encryptionKeyUri = uri;
        this.encryptionKey = bArr;
        this.encryptionIvString = str;
        this.encryptionIv = bArr2;
    }

    private void clearEncryptionData() {
        this.encryptionKeyUri = null;
        this.encryptionKey = null;
        this.encryptionIvString = null;
        this.encryptionIv = null;
    }

    private static final class InitializationTrackSelection extends BaseTrackSelection {
        private int selectedIndex;

        @Override // com.google.android.exoplayer2.trackselection.TrackSelection
        public Object getSelectionData() {
            return null;
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelection
        public int getSelectionReason() {
            return 0;
        }

        public InitializationTrackSelection(TrackGroup trackGroup, int[] iArr) {
            super(trackGroup, iArr);
            this.selectedIndex = indexOf(trackGroup.getFormat(0));
        }

        /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
        @Override // com.google.android.exoplayer2.trackselection.TrackSelection
        public void updateSelectedTrack(long j, long j2, long j3) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (isBlacklisted(this.selectedIndex, jElapsedRealtime)) {
                for (int i = this.length - 1; i >= 0; i--) {
                    if (!isBlacklisted(i, jElapsedRealtime)) {
                        this.selectedIndex = i;
                        return;
                    }
                }
                throw new IllegalStateException();
            }
        }

        @Override // com.google.android.exoplayer2.trackselection.TrackSelection
        public int getSelectedIndex() {
            return this.selectedIndex;
        }
    }

    private static final class EncryptionKeyChunk extends DataChunk {

        /* JADX INFO: renamed from: iv */
        public final String f396iv;
        private byte[] result;

        public EncryptionKeyChunk(DataSource dataSource, DataSpec dataSpec, Format format, int i, Object obj, byte[] bArr, String str) {
            super(dataSource, dataSpec, 3, format, i, obj, bArr);
            this.f396iv = str;
        }

        @Override // com.google.android.exoplayer2.source.chunk.DataChunk
        protected void consume(byte[] bArr, int i) throws IOException {
            this.result = Arrays.copyOf(bArr, i);
        }

        public byte[] getResult() {
            return this.result;
        }
    }
}
