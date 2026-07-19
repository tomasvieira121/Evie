package com.google.android.exoplayer2.extractor.mkv;

import android.util.Log;
import android.util.SparseArray;
import com.crashlytics.android.core.CodedOutputStream;
import com.google.android.exoplayer2.C0762C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.Ac3Util;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.ChunkIndex;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.LongArray;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.NalUnitUtil;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.AvcConfig;
import com.google.android.exoplayer2.video.ColorInfo;
import com.google.android.exoplayer2.video.HevcConfig;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class MatroskaExtractor implements Extractor {
    private long blockDurationUs;
    private int blockFlags;
    private int blockLacingSampleCount;
    private int blockLacingSampleIndex;
    private int[] blockLacingSampleSizes;
    private int blockState;
    private long blockTimeUs;
    private int blockTrackNumber;
    private int blockTrackNumberLength;
    private long clusterTimecodeUs;
    private LongArray cueClusterPositions;
    private LongArray cueTimesUs;
    private long cuesContentPosition;
    private Track currentTrack;
    private long durationTimecode;
    private long durationUs;
    private final ParsableByteArray encryptionInitializationVector;
    private final ParsableByteArray encryptionSubsampleData;
    private ByteBuffer encryptionSubsampleDataBuffer;
    private ExtractorOutput extractorOutput;
    private final ParsableByteArray nalLength;
    private final ParsableByteArray nalStartCode;
    private final EbmlReader reader;
    private int sampleBytesRead;
    private int sampleBytesWritten;
    private int sampleCurrentNalBytesRemaining;
    private boolean sampleEncodingHandled;
    private boolean sampleInitializationVectorRead;
    private int samplePartitionCount;
    private boolean samplePartitionCountRead;
    private boolean sampleRead;
    private boolean sampleSeenReferenceBlock;
    private byte sampleSignalByte;
    private boolean sampleSignalByteRead;
    private final ParsableByteArray sampleStrippedBytes;
    private final ParsableByteArray scratch;
    private int seekEntryId;
    private final ParsableByteArray seekEntryIdBytes;
    private long seekEntryPosition;
    private boolean seekForCues;
    private final boolean seekForCuesEnabled;
    private long seekPositionAfterBuildingCues;
    private boolean seenClusterPositionForCurrentCuePoint;
    private long segmentContentPosition;
    private long segmentContentSize;
    private boolean sentSeekMap;
    private final ParsableByteArray subtitleSample;
    private long timecodeScale;
    private final SparseArray<Track> tracks;
    private final VarintReader varintReader;
    private final ParsableByteArray vorbisNumPageSamples;
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.1
        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public Extractor[] createExtractors() {
            return new Extractor[]{new MatroskaExtractor()};
        }
    };
    private static final byte[] SUBRIP_PREFIX = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
    private static final byte[] SUBRIP_TIMECODE_EMPTY = {32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32};
    private static final byte[] SSA_DIALOGUE_FORMAT = Util.getUtf8Bytes("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");
    private static final byte[] SSA_PREFIX = {68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};
    private static final byte[] SSA_TIMECODE_EMPTY = {32, 32, 32, 32, 32, 32, 32, 32, 32, 32};
    private static final UUID WAVE_SUBFORMAT_PCM = new UUID(72057594037932032L, -9223371306706625679L);

    int getElementType(int i) {
        switch (i) {
            case 131:
            case 136:
            case 155:
            case 159:
            case 176:
            case 179:
            case 186:
            case 215:
            case 231:
            case 241:
            case 251:
            case 16980:
            case 17029:
            case 17143:
            case 18401:
            case 18408:
            case 20529:
            case 20530:
            case 21420:
            case 21432:
            case 21680:
            case 21682:
            case 21690:
            case 21930:
            case 21945:
            case 21946:
            case 21947:
            case 21948:
            case 21949:
            case 22186:
            case 22203:
            case 25188:
            case 2352003:
            case 2807729:
                return 2;
            case 134:
            case 17026:
            case 2274716:
                return 3;
            case 160:
            case 174:
            case 183:
            case 187:
            case 224:
            case 225:
            case 18407:
            case 19899:
            case 20532:
            case 20533:
            case 21936:
            case 21968:
            case 25152:
            case 28032:
            case 30320:
            case 290298740:
            case 357149030:
            case 374648427:
            case 408125543:
            case 440786851:
            case 475249515:
            case 524531317:
                return 1;
            case 161:
            case 163:
            case 16981:
            case 18402:
            case 21419:
            case 25506:
            case 30322:
                return 4;
            case 181:
            case 17545:
            case 21969:
            case 21970:
            case 21971:
            case 21972:
            case 21973:
            case 21974:
            case 21975:
            case 21976:
            case 21977:
            case 21978:
                return 5;
            default:
                return 0;
        }
    }

    boolean isLevel1Element(int i) {
        return i == 357149030 || i == 524531317 || i == 475249515 || i == 374648427;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    public MatroskaExtractor() {
        this(0);
    }

    public MatroskaExtractor(int i) {
        this(new DefaultEbmlReader(), i);
    }

    MatroskaExtractor(EbmlReader ebmlReader, int i) {
        this.segmentContentPosition = -1L;
        this.timecodeScale = -9223372036854775807L;
        this.durationTimecode = -9223372036854775807L;
        this.durationUs = -9223372036854775807L;
        this.cuesContentPosition = -1L;
        this.seekPositionAfterBuildingCues = -1L;
        this.clusterTimecodeUs = -9223372036854775807L;
        this.reader = ebmlReader;
        this.reader.init(new InnerEbmlReaderOutput());
        this.seekForCuesEnabled = (i & 1) == 0;
        this.varintReader = new VarintReader();
        this.tracks = new SparseArray<>();
        this.scratch = new ParsableByteArray(4);
        this.vorbisNumPageSamples = new ParsableByteArray(ByteBuffer.allocate(4).putInt(-1).array());
        this.seekEntryIdBytes = new ParsableByteArray(4);
        this.nalStartCode = new ParsableByteArray(NalUnitUtil.NAL_START_CODE);
        this.nalLength = new ParsableByteArray(4);
        this.sampleStrippedBytes = new ParsableByteArray();
        this.subtitleSample = new ParsableByteArray();
        this.encryptionInitializationVector = new ParsableByteArray(8);
        this.encryptionSubsampleData = new ParsableByteArray();
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws InterruptedException, IOException {
        return new Sniffer().sniff(extractorInput);
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        this.clusterTimecodeUs = -9223372036854775807L;
        this.blockState = 0;
        this.reader.reset();
        this.varintReader.reset();
        resetSample();
        for (int i = 0; i < this.tracks.size(); i++) {
            this.tracks.valueAt(i).reset();
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws InterruptedException, IOException {
        this.sampleRead = false;
        boolean z = true;
        while (z && !this.sampleRead) {
            z = this.reader.read(extractorInput);
            if (z && maybeSeekForCues(positionHolder, extractorInput.getPosition())) {
                return 1;
            }
        }
        if (z) {
            return 0;
        }
        for (int i = 0; i < this.tracks.size(); i++) {
            this.tracks.valueAt(i).outputPendingSampleMetadata();
        }
        return -1;
    }

    void startMasterElement(int i, long j, long j2) throws ParserException {
        if (i == 160) {
            this.sampleSeenReferenceBlock = false;
            return;
        }
        if (i == 174) {
            this.currentTrack = new Track();
            return;
        }
        if (i == 187) {
            this.seenClusterPositionForCurrentCuePoint = false;
            return;
        }
        if (i == 19899) {
            this.seekEntryId = -1;
            this.seekEntryPosition = -1L;
            return;
        }
        if (i == 20533) {
            this.currentTrack.hasContentEncryption = true;
            return;
        }
        if (i == 21968) {
            this.currentTrack.hasColorInfo = true;
            return;
        }
        if (i != 25152) {
            if (i == 408125543) {
                long j3 = this.segmentContentPosition;
                if (j3 != -1 && j3 != j) {
                    throw new ParserException("Multiple Segment elements not supported");
                }
                this.segmentContentPosition = j;
                this.segmentContentSize = j2;
                return;
            }
            if (i == 475249515) {
                this.cueTimesUs = new LongArray();
                this.cueClusterPositions = new LongArray();
            } else if (i == 524531317 && !this.sentSeekMap) {
                if (this.seekForCuesEnabled && this.cuesContentPosition != -1) {
                    this.seekForCues = true;
                } else {
                    this.extractorOutput.seekMap(new SeekMap.Unseekable(this.durationUs));
                    this.sentSeekMap = true;
                }
            }
        }
    }

    void endMasterElement(int i) throws ParserException {
        if (i == 160) {
            if (this.blockState != 2) {
                return;
            }
            if (!this.sampleSeenReferenceBlock) {
                this.blockFlags |= 1;
            }
            commitSampleToOutput(this.tracks.get(this.blockTrackNumber), this.blockTimeUs);
            this.blockState = 0;
            return;
        }
        if (i == 174) {
            if (isCodecSupported(this.currentTrack.codecId)) {
                Track track = this.currentTrack;
                track.initializeOutput(this.extractorOutput, track.number);
                this.tracks.put(this.currentTrack.number, this.currentTrack);
            }
            this.currentTrack = null;
            return;
        }
        if (i == 19899) {
            int i2 = this.seekEntryId;
            if (i2 != -1) {
                long j = this.seekEntryPosition;
                if (j != -1) {
                    if (i2 == 475249515) {
                        this.cuesContentPosition = j;
                        return;
                    }
                    return;
                }
            }
            throw new ParserException("Mandatory element SeekID or SeekPosition not found");
        }
        if (i == 25152) {
            if (this.currentTrack.hasContentEncryption) {
                if (this.currentTrack.cryptoData == null) {
                    throw new ParserException("Encrypted Track found but ContentEncKeyID was not found");
                }
                this.currentTrack.drmInitData = new DrmInitData(new DrmInitData.SchemeData(C0762C.UUID_NIL, "video/webm", this.currentTrack.cryptoData.encryptionKey));
                return;
            }
            return;
        }
        if (i == 28032) {
            if (this.currentTrack.hasContentEncryption && this.currentTrack.sampleStrippedBytes != null) {
                throw new ParserException("Combining encryption and compression is not supported");
            }
            return;
        }
        if (i == 357149030) {
            if (this.timecodeScale == -9223372036854775807L) {
                this.timecodeScale = 1000000L;
            }
            long j2 = this.durationTimecode;
            if (j2 != -9223372036854775807L) {
                this.durationUs = scaleTimecodeToUs(j2);
                return;
            }
            return;
        }
        if (i != 374648427) {
            if (i == 475249515 && !this.sentSeekMap) {
                this.extractorOutput.seekMap(buildSeekMap());
                this.sentSeekMap = true;
                return;
            }
            return;
        }
        if (this.tracks.size() == 0) {
            throw new ParserException("No valid tracks were found");
        }
        this.extractorOutput.endTracks();
    }

    void integerElement(int i, long j) throws ParserException {
        switch (i) {
            case 131:
                this.currentTrack.type = (int) j;
                return;
            case 136:
                this.currentTrack.flagForced = j == 1;
                return;
            case 155:
                this.blockDurationUs = scaleTimecodeToUs(j);
                return;
            case 159:
                this.currentTrack.channelCount = (int) j;
                return;
            case 176:
                this.currentTrack.width = (int) j;
                return;
            case 179:
                this.cueTimesUs.add(scaleTimecodeToUs(j));
                return;
            case 186:
                this.currentTrack.height = (int) j;
                return;
            case 215:
                this.currentTrack.number = (int) j;
                return;
            case 231:
                this.clusterTimecodeUs = scaleTimecodeToUs(j);
                return;
            case 241:
                if (this.seenClusterPositionForCurrentCuePoint) {
                    return;
                }
                this.cueClusterPositions.add(j);
                this.seenClusterPositionForCurrentCuePoint = true;
                return;
            case 251:
                this.sampleSeenReferenceBlock = true;
                return;
            case 16980:
                if (j == 3) {
                    return;
                }
                throw new ParserException("ContentCompAlgo " + j + " not supported");
            case 17029:
                if (j < 1 || j > 2) {
                    throw new ParserException("DocTypeReadVersion " + j + " not supported");
                }
                return;
            case 17143:
                if (j == 1) {
                    return;
                }
                throw new ParserException("EBMLReadVersion " + j + " not supported");
            case 18401:
                if (j == 5) {
                    return;
                }
                throw new ParserException("ContentEncAlgo " + j + " not supported");
            case 18408:
                if (j == 1) {
                    return;
                }
                throw new ParserException("AESSettingsCipherMode " + j + " not supported");
            case 20529:
                if (j == 0) {
                    return;
                }
                throw new ParserException("ContentEncodingOrder " + j + " not supported");
            case 20530:
                if (j == 1) {
                    return;
                }
                throw new ParserException("ContentEncodingScope " + j + " not supported");
            case 21420:
                this.seekEntryPosition = j + this.segmentContentPosition;
                return;
            case 21432:
                int i2 = (int) j;
                if (i2 == 3) {
                    this.currentTrack.stereoMode = 1;
                    return;
                }
                if (i2 != 15) {
                    switch (i2) {
                        case 0:
                            this.currentTrack.stereoMode = 0;
                            return;
                        case 1:
                            this.currentTrack.stereoMode = 2;
                            return;
                        default:
                            return;
                    }
                }
                this.currentTrack.stereoMode = 3;
                return;
            case 21680:
                this.currentTrack.displayWidth = (int) j;
                return;
            case 21682:
                this.currentTrack.displayUnit = (int) j;
                return;
            case 21690:
                this.currentTrack.displayHeight = (int) j;
                return;
            case 21930:
                this.currentTrack.flagDefault = j == 1;
                return;
            case 21945:
                switch ((int) j) {
                    case 1:
                        this.currentTrack.colorRange = 2;
                        return;
                    case 2:
                        this.currentTrack.colorRange = 1;
                        return;
                    default:
                        return;
                }
            case 21946:
                int i3 = (int) j;
                if (i3 != 1) {
                    if (i3 == 16) {
                        this.currentTrack.colorTransfer = 6;
                        return;
                    } else if (i3 == 18) {
                        this.currentTrack.colorTransfer = 7;
                        return;
                    } else {
                        switch (i3) {
                            case 6:
                            case 7:
                                break;
                            default:
                                return;
                        }
                    }
                }
                this.currentTrack.colorTransfer = 3;
                return;
            case 21947:
                Track track = this.currentTrack;
                track.hasColorInfo = true;
                int i4 = (int) j;
                if (i4 == 1) {
                    track.colorSpace = 1;
                    return;
                } else {
                    if (i4 != 9) {
                        switch (i4) {
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                                track.colorSpace = 2;
                                return;
                            default:
                                return;
                        }
                    }
                    track.colorSpace = 6;
                    return;
                }
            case 21948:
                this.currentTrack.maxContentLuminance = (int) j;
                return;
            case 21949:
                this.currentTrack.maxFrameAverageLuminance = (int) j;
                return;
            case 22186:
                this.currentTrack.codecDelayNs = j;
                return;
            case 22203:
                this.currentTrack.seekPreRollNs = j;
                return;
            case 25188:
                this.currentTrack.audioBitDepth = (int) j;
                return;
            case 2352003:
                this.currentTrack.defaultSampleDurationNs = (int) j;
                return;
            case 2807729:
                this.timecodeScale = j;
                return;
            default:
                return;
        }
    }

    void floatElement(int i, double d) {
        if (i == 181) {
            this.currentTrack.sampleRate = (int) d;
        }
        if (i == 17545) {
            this.durationTimecode = (long) d;
            return;
        }
        switch (i) {
            case 21969:
                this.currentTrack.primaryRChromaticityX = (float) d;
                break;
            case 21970:
                this.currentTrack.primaryRChromaticityY = (float) d;
                break;
            case 21971:
                this.currentTrack.primaryGChromaticityX = (float) d;
                break;
            case 21972:
                this.currentTrack.primaryGChromaticityY = (float) d;
                break;
            case 21973:
                this.currentTrack.primaryBChromaticityX = (float) d;
                break;
            case 21974:
                this.currentTrack.primaryBChromaticityY = (float) d;
                break;
            case 21975:
                this.currentTrack.whitePointChromaticityX = (float) d;
                break;
            case 21976:
                this.currentTrack.whitePointChromaticityY = (float) d;
                break;
            case 21977:
                this.currentTrack.maxMasteringLuminance = (float) d;
                break;
            case 21978:
                this.currentTrack.minMasteringLuminance = (float) d;
                break;
        }
    }

    void stringElement(int i, String str) throws ParserException {
        if (i == 134) {
            this.currentTrack.codecId = str;
            return;
        }
        if (i != 17026) {
            if (i != 2274716) {
                return;
            }
            this.currentTrack.language = str;
        } else {
            if ("webm".equals(str) || "matroska".equals(str)) {
                return;
            }
            throw new ParserException("DocType " + str + " not supported");
        }
    }

    void binaryElement(int i, int i2, ExtractorInput extractorInput) throws InterruptedException, IOException {
        int i3;
        long j;
        int i4;
        int i5;
        int[] iArr;
        int i6 = 0;
        int i7 = 1;
        if (i != 161 && i != 163) {
            if (i == 16981) {
                Track track = this.currentTrack;
                track.sampleStrippedBytes = new byte[i2];
                extractorInput.readFully(track.sampleStrippedBytes, 0, i2);
                return;
            }
            if (i == 18402) {
                byte[] bArr = new byte[i2];
                extractorInput.readFully(bArr, 0, i2);
                this.currentTrack.cryptoData = new TrackOutput.CryptoData(1, bArr, 0, 0);
                return;
            }
            if (i == 21419) {
                Arrays.fill(this.seekEntryIdBytes.data, (byte) 0);
                extractorInput.readFully(this.seekEntryIdBytes.data, 4 - i2, i2);
                this.seekEntryIdBytes.setPosition(0);
                this.seekEntryId = (int) this.seekEntryIdBytes.readUnsignedInt();
                return;
            }
            if (i == 25506) {
                Track track2 = this.currentTrack;
                track2.codecPrivate = new byte[i2];
                extractorInput.readFully(track2.codecPrivate, 0, i2);
                return;
            } else if (i == 30322) {
                Track track3 = this.currentTrack;
                track3.projectionData = new byte[i2];
                extractorInput.readFully(track3.projectionData, 0, i2);
                return;
            } else {
                throw new ParserException("Unexpected id: " + i);
            }
        }
        if (this.blockState == 0) {
            this.blockTrackNumber = (int) this.varintReader.readUnsignedVarint(extractorInput, false, true, 8);
            this.blockTrackNumberLength = this.varintReader.getLastLength();
            this.blockDurationUs = -9223372036854775807L;
            this.blockState = 1;
            this.scratch.reset();
        }
        Track track4 = this.tracks.get(this.blockTrackNumber);
        if (track4 == null) {
            extractorInput.skipFully(i2 - this.blockTrackNumberLength);
            this.blockState = 0;
            return;
        }
        if (this.blockState == 1) {
            readScratch(extractorInput, 3);
            int i8 = (this.scratch.data[2] & 6) >> 1;
            byte b = 255;
            if (i8 == 0) {
                this.blockLacingSampleCount = 1;
                this.blockLacingSampleSizes = ensureArrayCapacity(this.blockLacingSampleSizes, 1);
                this.blockLacingSampleSizes[0] = (i2 - this.blockTrackNumberLength) - 3;
            } else {
                if (i != 163) {
                    throw new ParserException("Lacing only supported in SimpleBlocks.");
                }
                readScratch(extractorInput, 4);
                this.blockLacingSampleCount = (this.scratch.data[3] & 255) + 1;
                this.blockLacingSampleSizes = ensureArrayCapacity(this.blockLacingSampleSizes, this.blockLacingSampleCount);
                if (i8 == 2) {
                    int i9 = (i2 - this.blockTrackNumberLength) - 4;
                    int i10 = this.blockLacingSampleCount;
                    Arrays.fill(this.blockLacingSampleSizes, 0, i10, i9 / i10);
                } else if (i8 == 1) {
                    int i11 = 0;
                    int i12 = 4;
                    int i13 = 0;
                    while (true) {
                        i4 = this.blockLacingSampleCount;
                        if (i11 >= i4 - 1) {
                            break;
                        }
                        this.blockLacingSampleSizes[i11] = 0;
                        do {
                            i12++;
                            readScratch(extractorInput, i12);
                            i5 = this.scratch.data[i12 - 1] & 255;
                            iArr = this.blockLacingSampleSizes;
                            iArr[i11] = iArr[i11] + i5;
                        } while (i5 == 255);
                        i13 += iArr[i11];
                        i11++;
                    }
                    this.blockLacingSampleSizes[i4 - 1] = ((i2 - this.blockTrackNumberLength) - i12) - i13;
                } else {
                    if (i8 != 3) {
                        throw new ParserException("Unexpected lacing value: " + i8);
                    }
                    int i14 = 0;
                    int i15 = 4;
                    int i16 = 0;
                    while (true) {
                        int i17 = this.blockLacingSampleCount;
                        if (i14 < i17 - 1) {
                            this.blockLacingSampleSizes[i14] = i6;
                            i15++;
                            readScratch(extractorInput, i15);
                            int i18 = i15 - 1;
                            if (this.scratch.data[i18] == 0) {
                                throw new ParserException("No valid varint length mask found");
                            }
                            int i19 = 0;
                            while (true) {
                                if (i19 >= 8) {
                                    j = 0;
                                    break;
                                }
                                int i20 = i7 << (7 - i19);
                                if ((this.scratch.data[i18] & i20) != 0) {
                                    i15 += i19;
                                    readScratch(extractorInput, i15);
                                    int i21 = i18 + 1;
                                    long j2 = this.scratch.data[i18] & b & (i20 ^ (-1));
                                    while (i21 < i15) {
                                        long j3 = (j2 << 8) | ((long) (this.scratch.data[i21] & b));
                                        i21++;
                                        b = 255;
                                        j2 = j3;
                                    }
                                    if (i14 <= 0) {
                                        j = j2;
                                        break;
                                    } else {
                                        j = j2 - ((1 << ((i19 * 7) + 6)) - 1);
                                        break;
                                    }
                                }
                                i19++;
                                i7 = 1;
                                b = 255;
                            }
                            if (j < -2147483648L || j > 2147483647L) {
                                throw new ParserException("EBML lacing sample size out of range.");
                            }
                            int i22 = (int) j;
                            int[] iArr2 = this.blockLacingSampleSizes;
                            if (i14 != 0) {
                                i22 += iArr2[i14 - 1];
                            }
                            iArr2[i14] = i22;
                            i16 += this.blockLacingSampleSizes[i14];
                            i14++;
                            i6 = 0;
                            i7 = 1;
                            b = 255;
                        } else {
                            this.blockLacingSampleSizes[i17 - 1] = ((i2 - this.blockTrackNumberLength) - i15) - i16;
                            break;
                        }
                    }
                }
            }
            this.blockTimeUs = this.clusterTimecodeUs + scaleTimecodeToUs((this.scratch.data[0] << 8) | (this.scratch.data[1] & 255));
            this.blockFlags = ((track4.type == 2 || (i == 163 && (this.scratch.data[2] & 128) == 128)) ? 1 : 0) | ((this.scratch.data[2] & 8) == 8 ? Integer.MIN_VALUE : 0);
            this.blockState = 2;
            this.blockLacingSampleIndex = 0;
            i3 = 163;
        } else {
            i3 = 163;
        }
        if (i != i3) {
            writeSampleData(extractorInput, track4, this.blockLacingSampleSizes[0]);
            return;
        }
        while (true) {
            int i23 = this.blockLacingSampleIndex;
            if (i23 < this.blockLacingSampleCount) {
                writeSampleData(extractorInput, track4, this.blockLacingSampleSizes[i23]);
                commitSampleToOutput(track4, this.blockTimeUs + ((long) ((this.blockLacingSampleIndex * track4.defaultSampleDurationNs) / 1000)));
                this.blockLacingSampleIndex++;
            } else {
                this.blockState = 0;
                return;
            }
        }
    }

    private void commitSampleToOutput(Track track, long j) {
        if (track.trueHdSampleRechunker != null) {
            track.trueHdSampleRechunker.sampleMetadata(track, j);
        } else {
            if ("S_TEXT/UTF8".equals(track.codecId)) {
                commitSubtitleSample(track, "%02d:%02d:%02d,%03d", 19, 1000L, SUBRIP_TIMECODE_EMPTY);
            } else if ("S_TEXT/ASS".equals(track.codecId)) {
                commitSubtitleSample(track, "%01d:%02d:%02d:%02d", 21, 10000L, SSA_TIMECODE_EMPTY);
            }
            track.output.sampleMetadata(j, this.blockFlags, this.sampleBytesWritten, 0, track.cryptoData);
        }
        this.sampleRead = true;
        resetSample();
    }

    private void resetSample() {
        this.sampleBytesRead = 0;
        this.sampleBytesWritten = 0;
        this.sampleCurrentNalBytesRemaining = 0;
        this.sampleEncodingHandled = false;
        this.sampleSignalByteRead = false;
        this.samplePartitionCountRead = false;
        this.samplePartitionCount = 0;
        this.sampleSignalByte = (byte) 0;
        this.sampleInitializationVectorRead = false;
        this.sampleStrippedBytes.reset();
    }

    private void readScratch(ExtractorInput extractorInput, int i) throws InterruptedException, IOException {
        if (this.scratch.limit() >= i) {
            return;
        }
        if (this.scratch.capacity() < i) {
            ParsableByteArray parsableByteArray = this.scratch;
            parsableByteArray.reset(Arrays.copyOf(parsableByteArray.data, Math.max(this.scratch.data.length * 2, i)), this.scratch.limit());
        }
        extractorInput.readFully(this.scratch.data, this.scratch.limit(), i - this.scratch.limit());
        this.scratch.setLimit(i);
    }

    private void writeSampleData(ExtractorInput extractorInput, Track track, int i) throws InterruptedException, IOException {
        int i2;
        if ("S_TEXT/UTF8".equals(track.codecId)) {
            writeSubtitleSampleData(extractorInput, SUBRIP_PREFIX, i);
            return;
        }
        if ("S_TEXT/ASS".equals(track.codecId)) {
            writeSubtitleSampleData(extractorInput, SSA_PREFIX, i);
            return;
        }
        TrackOutput trackOutput = track.output;
        if (!this.sampleEncodingHandled) {
            if (track.hasContentEncryption) {
                this.blockFlags &= -1073741825;
                if (!this.sampleSignalByteRead) {
                    extractorInput.readFully(this.scratch.data, 0, 1);
                    this.sampleBytesRead++;
                    if ((this.scratch.data[0] & 128) == 128) {
                        throw new ParserException("Extension bit is set in signal byte");
                    }
                    this.sampleSignalByte = this.scratch.data[0];
                    this.sampleSignalByteRead = true;
                }
                if ((this.sampleSignalByte & 1) == 1) {
                    boolean z = (this.sampleSignalByte & 2) == 2;
                    this.blockFlags |= 1073741824;
                    if (!this.sampleInitializationVectorRead) {
                        extractorInput.readFully(this.encryptionInitializationVector.data, 0, 8);
                        this.sampleBytesRead += 8;
                        this.sampleInitializationVectorRead = true;
                        this.scratch.data[0] = (byte) ((z ? 128 : 0) | 8);
                        this.scratch.setPosition(0);
                        trackOutput.sampleData(this.scratch, 1);
                        this.sampleBytesWritten++;
                        this.encryptionInitializationVector.setPosition(0);
                        trackOutput.sampleData(this.encryptionInitializationVector, 8);
                        this.sampleBytesWritten += 8;
                    }
                    if (z) {
                        if (!this.samplePartitionCountRead) {
                            extractorInput.readFully(this.scratch.data, 0, 1);
                            this.sampleBytesRead++;
                            this.scratch.setPosition(0);
                            this.samplePartitionCount = this.scratch.readUnsignedByte();
                            this.samplePartitionCountRead = true;
                        }
                        int i3 = this.samplePartitionCount * 4;
                        this.scratch.reset(i3);
                        extractorInput.readFully(this.scratch.data, 0, i3);
                        this.sampleBytesRead += i3;
                        short s = (short) ((this.samplePartitionCount / 2) + 1);
                        int i4 = (s * 6) + 2;
                        ByteBuffer byteBuffer = this.encryptionSubsampleDataBuffer;
                        if (byteBuffer == null || byteBuffer.capacity() < i4) {
                            this.encryptionSubsampleDataBuffer = ByteBuffer.allocate(i4);
                        }
                        this.encryptionSubsampleDataBuffer.position(0);
                        this.encryptionSubsampleDataBuffer.putShort(s);
                        int i5 = 0;
                        int i6 = 0;
                        while (true) {
                            i2 = this.samplePartitionCount;
                            if (i5 >= i2) {
                                break;
                            }
                            int unsignedIntToInt = this.scratch.readUnsignedIntToInt();
                            if (i5 % 2 == 0) {
                                this.encryptionSubsampleDataBuffer.putShort((short) (unsignedIntToInt - i6));
                            } else {
                                this.encryptionSubsampleDataBuffer.putInt(unsignedIntToInt - i6);
                            }
                            i5++;
                            i6 = unsignedIntToInt;
                        }
                        int i7 = (i - this.sampleBytesRead) - i6;
                        if (i2 % 2 == 1) {
                            this.encryptionSubsampleDataBuffer.putInt(i7);
                        } else {
                            this.encryptionSubsampleDataBuffer.putShort((short) i7);
                            this.encryptionSubsampleDataBuffer.putInt(0);
                        }
                        this.encryptionSubsampleData.reset(this.encryptionSubsampleDataBuffer.array(), i4);
                        trackOutput.sampleData(this.encryptionSubsampleData, i4);
                        this.sampleBytesWritten += i4;
                    }
                }
            } else if (track.sampleStrippedBytes != null) {
                this.sampleStrippedBytes.reset(track.sampleStrippedBytes, track.sampleStrippedBytes.length);
            }
            this.sampleEncodingHandled = true;
        }
        int iLimit = i + this.sampleStrippedBytes.limit();
        if ("V_MPEG4/ISO/AVC".equals(track.codecId) || "V_MPEGH/ISO/HEVC".equals(track.codecId)) {
            byte[] bArr = this.nalLength.data;
            bArr[0] = 0;
            bArr[1] = 0;
            bArr[2] = 0;
            int i8 = track.nalUnitLengthFieldLength;
            int i9 = 4 - track.nalUnitLengthFieldLength;
            while (this.sampleBytesRead < iLimit) {
                int i10 = this.sampleCurrentNalBytesRemaining;
                if (i10 == 0) {
                    readToTarget(extractorInput, bArr, i9, i8);
                    this.nalLength.setPosition(0);
                    this.sampleCurrentNalBytesRemaining = this.nalLength.readUnsignedIntToInt();
                    this.nalStartCode.setPosition(0);
                    trackOutput.sampleData(this.nalStartCode, 4);
                    this.sampleBytesWritten += 4;
                } else {
                    this.sampleCurrentNalBytesRemaining = i10 - readToOutput(extractorInput, trackOutput, i10);
                }
            }
        } else {
            if (track.trueHdSampleRechunker != null) {
                Assertions.checkState(this.sampleStrippedBytes.limit() == 0);
                track.trueHdSampleRechunker.startSample(extractorInput, this.blockFlags, iLimit);
            }
            while (true) {
                int i11 = this.sampleBytesRead;
                if (i11 >= iLimit) {
                    break;
                } else {
                    readToOutput(extractorInput, trackOutput, iLimit - i11);
                }
            }
        }
        if ("A_VORBIS".equals(track.codecId)) {
            this.vorbisNumPageSamples.setPosition(0);
            trackOutput.sampleData(this.vorbisNumPageSamples, 4);
            this.sampleBytesWritten += 4;
        }
    }

    private void writeSubtitleSampleData(ExtractorInput extractorInput, byte[] bArr, int i) throws InterruptedException, IOException {
        int length = bArr.length + i;
        if (this.subtitleSample.capacity() < length) {
            this.subtitleSample.data = Arrays.copyOf(bArr, length + i);
        } else {
            System.arraycopy(bArr, 0, this.subtitleSample.data, 0, bArr.length);
        }
        extractorInput.readFully(this.subtitleSample.data, bArr.length, i);
        this.subtitleSample.reset(length);
    }

    private void commitSubtitleSample(Track track, String str, int i, long j, byte[] bArr) {
        setSampleDuration(this.subtitleSample.data, this.blockDurationUs, str, i, j, bArr);
        TrackOutput trackOutput = track.output;
        ParsableByteArray parsableByteArray = this.subtitleSample;
        trackOutput.sampleData(parsableByteArray, parsableByteArray.limit());
        this.sampleBytesWritten += this.subtitleSample.limit();
    }

    private static void setSampleDuration(byte[] bArr, long j, String str, int i, long j2, byte[] bArr2) {
        byte[] utf8Bytes;
        if (j == -9223372036854775807L) {
            utf8Bytes = bArr2;
        } else {
            int i2 = (int) (j / 3600000000L);
            long j3 = j - (((long) (i2 * 3600)) * 1000000);
            int i3 = (int) (j3 / 60000000);
            long j4 = j3 - (((long) (i3 * 60)) * 1000000);
            int i4 = (int) (j4 / 1000000);
            utf8Bytes = Util.getUtf8Bytes(String.format(Locale.US, str, Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf((int) ((j4 - (((long) i4) * 1000000)) / j2))));
        }
        System.arraycopy(utf8Bytes, 0, bArr, i, bArr2.length);
    }

    private void readToTarget(ExtractorInput extractorInput, byte[] bArr, int i, int i2) throws InterruptedException, IOException {
        int iMin = Math.min(i2, this.sampleStrippedBytes.bytesLeft());
        extractorInput.readFully(bArr, i + iMin, i2 - iMin);
        if (iMin > 0) {
            this.sampleStrippedBytes.readBytes(bArr, i, iMin);
        }
        this.sampleBytesRead += i2;
    }

    private int readToOutput(ExtractorInput extractorInput, TrackOutput trackOutput, int i) throws InterruptedException, IOException {
        int iSampleData;
        int iBytesLeft = this.sampleStrippedBytes.bytesLeft();
        if (iBytesLeft > 0) {
            iSampleData = Math.min(i, iBytesLeft);
            trackOutput.sampleData(this.sampleStrippedBytes, iSampleData);
        } else {
            iSampleData = trackOutput.sampleData(extractorInput, i, false);
        }
        this.sampleBytesRead += iSampleData;
        this.sampleBytesWritten += iSampleData;
        return iSampleData;
    }

    private SeekMap buildSeekMap() {
        LongArray longArray;
        LongArray longArray2;
        if (this.segmentContentPosition == -1 || this.durationUs == -9223372036854775807L || (longArray = this.cueTimesUs) == null || longArray.size() == 0 || (longArray2 = this.cueClusterPositions) == null || longArray2.size() != this.cueTimesUs.size()) {
            this.cueTimesUs = null;
            this.cueClusterPositions = null;
            return new SeekMap.Unseekable(this.durationUs);
        }
        int size = this.cueTimesUs.size();
        int[] iArr = new int[size];
        long[] jArr = new long[size];
        long[] jArr2 = new long[size];
        long[] jArr3 = new long[size];
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            jArr3[i2] = this.cueTimesUs.get(i2);
            jArr[i2] = this.segmentContentPosition + this.cueClusterPositions.get(i2);
        }
        while (true) {
            int i3 = size - 1;
            if (i < i3) {
                int i4 = i + 1;
                iArr[i] = (int) (jArr[i4] - jArr[i]);
                jArr2[i] = jArr3[i4] - jArr3[i];
                i = i4;
            } else {
                iArr[i3] = (int) ((this.segmentContentPosition + this.segmentContentSize) - jArr[i3]);
                jArr2[i3] = this.durationUs - jArr3[i3];
                this.cueTimesUs = null;
                this.cueClusterPositions = null;
                return new ChunkIndex(iArr, jArr, jArr2, jArr3);
            }
        }
    }

    private boolean maybeSeekForCues(PositionHolder positionHolder, long j) {
        if (this.seekForCues) {
            this.seekPositionAfterBuildingCues = j;
            positionHolder.position = this.cuesContentPosition;
            this.seekForCues = false;
            return true;
        }
        if (this.sentSeekMap) {
            long j2 = this.seekPositionAfterBuildingCues;
            if (j2 != -1) {
                positionHolder.position = j2;
                this.seekPositionAfterBuildingCues = -1L;
                return true;
            }
        }
        return false;
    }

    private long scaleTimecodeToUs(long j) throws ParserException {
        long j2 = this.timecodeScale;
        if (j2 == -9223372036854775807L) {
            throw new ParserException("Can't scale timecode prior to timecodeScale being set.");
        }
        return Util.scaleLargeTimestamp(j, j2, 1000L);
    }

    private static boolean isCodecSupported(String str) {
        return "V_VP8".equals(str) || "V_VP9".equals(str) || "V_MPEG2".equals(str) || "V_MPEG4/ISO/SP".equals(str) || "V_MPEG4/ISO/ASP".equals(str) || "V_MPEG4/ISO/AP".equals(str) || "V_MPEG4/ISO/AVC".equals(str) || "V_MPEGH/ISO/HEVC".equals(str) || "V_MS/VFW/FOURCC".equals(str) || "V_THEORA".equals(str) || "A_OPUS".equals(str) || "A_VORBIS".equals(str) || "A_AAC".equals(str) || "A_MPEG/L2".equals(str) || "A_MPEG/L3".equals(str) || "A_AC3".equals(str) || "A_EAC3".equals(str) || "A_TRUEHD".equals(str) || "A_DTS".equals(str) || "A_DTS/EXPRESS".equals(str) || "A_DTS/LOSSLESS".equals(str) || "A_FLAC".equals(str) || "A_MS/ACM".equals(str) || "A_PCM/INT/LIT".equals(str) || "S_TEXT/UTF8".equals(str) || "S_TEXT/ASS".equals(str) || "S_VOBSUB".equals(str) || "S_HDMV/PGS".equals(str) || "S_DVBSUB".equals(str);
    }

    private static int[] ensureArrayCapacity(int[] iArr, int i) {
        if (iArr == null) {
            return new int[i];
        }
        return iArr.length >= i ? iArr : new int[Math.max(iArr.length * 2, i)];
    }

    private final class InnerEbmlReaderOutput implements EbmlReaderOutput {
        private InnerEbmlReaderOutput() {
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.EbmlReaderOutput
        public int getElementType(int i) {
            return MatroskaExtractor.this.getElementType(i);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.EbmlReaderOutput
        public boolean isLevel1Element(int i) {
            return MatroskaExtractor.this.isLevel1Element(i);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.EbmlReaderOutput
        public void startMasterElement(int i, long j, long j2) throws ParserException {
            MatroskaExtractor.this.startMasterElement(i, j, j2);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.EbmlReaderOutput
        public void endMasterElement(int i) throws ParserException {
            MatroskaExtractor.this.endMasterElement(i);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.EbmlReaderOutput
        public void integerElement(int i, long j) throws ParserException {
            MatroskaExtractor.this.integerElement(i, j);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.EbmlReaderOutput
        public void floatElement(int i, double d) throws ParserException {
            MatroskaExtractor.this.floatElement(i, d);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.EbmlReaderOutput
        public void stringElement(int i, String str) throws ParserException {
            MatroskaExtractor.this.stringElement(i, str);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.EbmlReaderOutput
        public void binaryElement(int i, int i2, ExtractorInput extractorInput) throws InterruptedException, IOException {
            MatroskaExtractor.this.binaryElement(i, i2, extractorInput);
        }
    }

    private static final class TrueHdSampleRechunker {
        private int blockFlags;
        private int chunkSize;
        private boolean foundSyncframe;
        private int sampleCount;
        private final byte[] syncframePrefix = new byte[12];
        private long timeUs;

        public void reset() {
            this.foundSyncframe = false;
        }

        public void startSample(ExtractorInput extractorInput, int i, int i2) throws InterruptedException, IOException {
            if (!this.foundSyncframe) {
                extractorInput.peekFully(this.syncframePrefix, 0, 12);
                extractorInput.resetPeekPosition();
                if (Ac3Util.parseTrueHdSyncframeAudioSampleCount(this.syncframePrefix) == -1) {
                    return;
                }
                this.foundSyncframe = true;
                this.sampleCount = 0;
            }
            if (this.sampleCount == 0) {
                this.blockFlags = i;
                this.chunkSize = 0;
            }
            this.chunkSize += i2;
        }

        public void sampleMetadata(Track track, long j) {
            if (this.foundSyncframe) {
                int i = this.sampleCount;
                this.sampleCount = i + 1;
                if (i == 0) {
                    this.timeUs = j;
                }
                if (this.sampleCount < 8) {
                    return;
                }
                track.output.sampleMetadata(this.timeUs, this.blockFlags, this.chunkSize, 0, track.cryptoData);
                this.sampleCount = 0;
            }
        }

        public void outputPendingSampleMetadata(Track track) {
            if (!this.foundSyncframe || this.sampleCount <= 0) {
                return;
            }
            track.output.sampleMetadata(this.timeUs, this.blockFlags, this.chunkSize, 0, track.cryptoData);
            this.sampleCount = 0;
        }
    }

    private static final class Track {
        public int audioBitDepth;
        public int channelCount;
        public long codecDelayNs;
        public String codecId;
        public byte[] codecPrivate;
        public int colorRange;
        public int colorSpace;
        public int colorTransfer;
        public TrackOutput.CryptoData cryptoData;
        public int defaultSampleDurationNs;
        public int displayHeight;
        public int displayUnit;
        public int displayWidth;
        public DrmInitData drmInitData;
        public boolean flagDefault;
        public boolean flagForced;
        public boolean hasColorInfo;
        public boolean hasContentEncryption;
        public int height;
        private String language;
        public int maxContentLuminance;
        public int maxFrameAverageLuminance;
        public float maxMasteringLuminance;
        public float minMasteringLuminance;
        public int nalUnitLengthFieldLength;
        public int number;
        public TrackOutput output;
        public float primaryBChromaticityX;
        public float primaryBChromaticityY;
        public float primaryGChromaticityX;
        public float primaryGChromaticityY;
        public float primaryRChromaticityX;
        public float primaryRChromaticityY;
        public byte[] projectionData;
        public int sampleRate;
        public byte[] sampleStrippedBytes;
        public long seekPreRollNs;
        public int stereoMode;
        public TrueHdSampleRechunker trueHdSampleRechunker;
        public int type;
        public float whitePointChromaticityX;
        public float whitePointChromaticityY;
        public int width;

        private Track() {
            this.width = -1;
            this.height = -1;
            this.displayWidth = -1;
            this.displayHeight = -1;
            this.displayUnit = 0;
            this.projectionData = null;
            this.stereoMode = -1;
            this.hasColorInfo = false;
            this.colorSpace = -1;
            this.colorTransfer = -1;
            this.colorRange = -1;
            this.maxContentLuminance = 1000;
            this.maxFrameAverageLuminance = 200;
            this.primaryRChromaticityX = -1.0f;
            this.primaryRChromaticityY = -1.0f;
            this.primaryGChromaticityX = -1.0f;
            this.primaryGChromaticityY = -1.0f;
            this.primaryBChromaticityX = -1.0f;
            this.primaryBChromaticityY = -1.0f;
            this.whitePointChromaticityX = -1.0f;
            this.whitePointChromaticityY = -1.0f;
            this.maxMasteringLuminance = -1.0f;
            this.minMasteringLuminance = -1.0f;
            this.channelCount = 1;
            this.audioBitDepth = -1;
            this.sampleRate = EventsFilesManager.MAX_BYTE_SIZE_PER_FILE;
            this.codecDelayNs = 0L;
            this.seekPreRollNs = 0L;
            this.flagDefault = true;
            this.language = "eng";
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:92:0x0160  */
        public void initializeOutput(ExtractorOutput extractorOutput, int i) throws ParserException {
            String str;
            List<byte[]> listSingletonList;
            int i2;
            int i3;
            Format formatCreateImageSampleFormat;
            int i4;
            int i5 = 3;
            switch (this.codecId) {
                case "V_VP8":
                    str = "video/x-vnd.on2.vp8";
                    listSingletonList = null;
                    i2 = -1;
                    i3 = -1;
                    break;
                case "V_VP9":
                    str = "video/x-vnd.on2.vp9";
                    listSingletonList = null;
                    i2 = -1;
                    i3 = -1;
                    break;
                case "V_MPEG2":
                    str = "video/mpeg2";
                    listSingletonList = null;
                    i2 = -1;
                    i3 = -1;
                    break;
                case "V_MPEG4/ISO/SP":
                case "V_MPEG4/ISO/ASP":
                case "V_MPEG4/ISO/AP":
                    byte[] bArr = this.codecPrivate;
                    listSingletonList = bArr == null ? null : Collections.singletonList(bArr);
                    str = "video/mp4v-es";
                    i2 = -1;
                    i3 = -1;
                    break;
                case "V_MPEG4/ISO/AVC":
                    AvcConfig avcConfig = AvcConfig.parse(new ParsableByteArray(this.codecPrivate));
                    List<byte[]> list = avcConfig.initializationData;
                    this.nalUnitLengthFieldLength = avcConfig.nalUnitLengthFieldLength;
                    str = "video/avc";
                    listSingletonList = list;
                    i2 = -1;
                    i3 = -1;
                    break;
                case "V_MPEGH/ISO/HEVC":
                    HevcConfig hevcConfig = HevcConfig.parse(new ParsableByteArray(this.codecPrivate));
                    List<byte[]> list2 = hevcConfig.initializationData;
                    this.nalUnitLengthFieldLength = hevcConfig.nalUnitLengthFieldLength;
                    str = "video/hevc";
                    listSingletonList = list2;
                    i2 = -1;
                    i3 = -1;
                    break;
                case "V_MS/VFW/FOURCC":
                    List<byte[]> fourCcVc1Private = parseFourCcVc1Private(new ParsableByteArray(this.codecPrivate));
                    if (fourCcVc1Private != null) {
                        str = "video/wvc1";
                        i2 = -1;
                        i3 = -1;
                        listSingletonList = fourCcVc1Private;
                        break;
                    } else {
                        Log.w("MatroskaExtractor", "Unsupported FourCC. Setting mimeType to video/x-unknown");
                        str = "video/x-unknown";
                        i2 = -1;
                        i3 = -1;
                        listSingletonList = fourCcVc1Private;
                        break;
                    }
                    break;
                case "V_THEORA":
                    str = "video/x-unknown";
                    listSingletonList = null;
                    i2 = -1;
                    i3 = -1;
                    break;
                case "A_VORBIS":
                    str = "audio/vorbis";
                    listSingletonList = parseVorbisCodecPrivate(this.codecPrivate);
                    i2 = 8192;
                    i3 = -1;
                    break;
                case "A_OPUS":
                    ArrayList arrayList = new ArrayList(3);
                    arrayList.add(this.codecPrivate);
                    arrayList.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(this.codecDelayNs).array());
                    arrayList.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(this.seekPreRollNs).array());
                    str = "audio/opus";
                    listSingletonList = arrayList;
                    i2 = 5760;
                    i3 = -1;
                    break;
                case "A_AAC":
                    listSingletonList = Collections.singletonList(this.codecPrivate);
                    str = "audio/mp4a-latm";
                    i2 = -1;
                    i3 = -1;
                    break;
                case "A_MPEG/L2":
                    str = "audio/mpeg-L2";
                    listSingletonList = null;
                    i2 = CodedOutputStream.DEFAULT_BUFFER_SIZE;
                    i3 = -1;
                    break;
                case "A_MPEG/L3":
                    str = "audio/mpeg";
                    listSingletonList = null;
                    i2 = CodedOutputStream.DEFAULT_BUFFER_SIZE;
                    i3 = -1;
                    break;
                case "A_AC3":
                    str = "audio/ac3";
                    listSingletonList = null;
                    i2 = -1;
                    i3 = -1;
                    break;
                case "A_EAC3":
                    str = "audio/eac3";
                    listSingletonList = null;
                    i2 = -1;
                    i3 = -1;
                    break;
                case "A_TRUEHD":
                    this.trueHdSampleRechunker = new TrueHdSampleRechunker();
                    str = "audio/true-hd";
                    listSingletonList = null;
                    i2 = -1;
                    i3 = -1;
                    break;
                case "A_DTS":
                case "A_DTS/EXPRESS":
                    str = "audio/vnd.dts";
                    listSingletonList = null;
                    i2 = -1;
                    i3 = -1;
                    break;
                case "A_DTS/LOSSLESS":
                    str = "audio/vnd.dts.hd";
                    listSingletonList = null;
                    i2 = -1;
                    i3 = -1;
                    break;
                case "A_FLAC":
                    listSingletonList = Collections.singletonList(this.codecPrivate);
                    str = "audio/flac";
                    i2 = -1;
                    i3 = -1;
                    break;
                case "A_MS/ACM":
                    if (!parseMsAcmCodecPrivate(new ParsableByteArray(this.codecPrivate))) {
                        Log.w("MatroskaExtractor", "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown");
                        str = "audio/x-unknown";
                        listSingletonList = null;
                        i2 = -1;
                        i3 = -1;
                        break;
                    } else {
                        int pcmEncoding = Util.getPcmEncoding(this.audioBitDepth);
                        if (pcmEncoding != 0) {
                            str = "audio/raw";
                            i3 = pcmEncoding;
                            listSingletonList = null;
                            i2 = -1;
                        } else {
                            Log.w("MatroskaExtractor", "Unsupported PCM bit depth: " + this.audioBitDepth + ". Setting mimeType to audio/x-unknown");
                            str = "audio/x-unknown";
                            listSingletonList = null;
                            i2 = -1;
                            i3 = -1;
                        }
                        break;
                    }
                    break;
                case "A_PCM/INT/LIT":
                    int pcmEncoding2 = Util.getPcmEncoding(this.audioBitDepth);
                    if (pcmEncoding2 == 0) {
                        Log.w("MatroskaExtractor", "Unsupported PCM bit depth: " + this.audioBitDepth + ". Setting mimeType to audio/x-unknown");
                        str = "audio/x-unknown";
                        listSingletonList = null;
                        i2 = -1;
                        i3 = -1;
                        break;
                    } else {
                        str = "audio/raw";
                        i3 = pcmEncoding2;
                        listSingletonList = null;
                        i2 = -1;
                        break;
                    }
                    break;
                case "S_TEXT/UTF8":
                    str = "application/x-subrip";
                    listSingletonList = null;
                    i2 = -1;
                    i3 = -1;
                    break;
                case "S_TEXT/ASS":
                    str = "text/x-ssa";
                    listSingletonList = null;
                    i2 = -1;
                    i3 = -1;
                    break;
                case "S_VOBSUB":
                    listSingletonList = Collections.singletonList(this.codecPrivate);
                    str = "application/vobsub";
                    i2 = -1;
                    i3 = -1;
                    break;
                case "S_HDMV/PGS":
                    str = "application/pgs";
                    listSingletonList = null;
                    i2 = -1;
                    i3 = -1;
                    break;
                case "S_DVBSUB":
                    byte[] bArr2 = this.codecPrivate;
                    listSingletonList = Collections.singletonList(new byte[]{bArr2[0], bArr2[1], bArr2[2], bArr2[3]});
                    str = "application/dvbsubs";
                    i2 = -1;
                    i3 = -1;
                    break;
                default:
                    throw new ParserException("Unrecognized codec identifier.");
            }
            int i6 = (this.flagDefault ? 1 : 0) | 0 | (this.flagForced ? 2 : 0);
            if (MimeTypes.isAudio(str)) {
                formatCreateImageSampleFormat = Format.createAudioSampleFormat(Integer.toString(i), str, null, -1, i2, this.channelCount, this.sampleRate, i3, listSingletonList, this.drmInitData, i6, this.language);
                i5 = 1;
            } else if (MimeTypes.isVideo(str)) {
                if (this.displayUnit == 0) {
                    int i7 = this.displayWidth;
                    if (i7 == -1) {
                        i7 = this.width;
                    }
                    this.displayWidth = i7;
                    int i8 = this.displayHeight;
                    if (i8 == -1) {
                        i8 = this.height;
                    }
                    this.displayHeight = i8;
                }
                int i9 = this.displayWidth;
                formatCreateImageSampleFormat = Format.createVideoSampleFormat(Integer.toString(i), str, null, -1, i2, this.width, this.height, -1.0f, listSingletonList, -1, (i9 == -1 || (i4 = this.displayHeight) == -1) ? -1.0f : (this.height * i9) / (this.width * i4), this.projectionData, this.stereoMode, this.hasColorInfo ? new ColorInfo(this.colorSpace, this.colorRange, this.colorTransfer, getHdrStaticInfo()) : null, this.drmInitData);
                i5 = 2;
            } else if ("application/x-subrip".equals(str)) {
                formatCreateImageSampleFormat = Format.createTextSampleFormat(Integer.toString(i), str, i6, this.language, this.drmInitData);
            } else if ("text/x-ssa".equals(str)) {
                ArrayList arrayList2 = new ArrayList(2);
                arrayList2.add(MatroskaExtractor.SSA_DIALOGUE_FORMAT);
                arrayList2.add(this.codecPrivate);
                formatCreateImageSampleFormat = Format.createTextSampleFormat(Integer.toString(i), str, null, -1, i6, this.language, -1, this.drmInitData, Long.MAX_VALUE, arrayList2);
            } else if ("application/vobsub".equals(str) || "application/pgs".equals(str) || "application/dvbsubs".equals(str)) {
                formatCreateImageSampleFormat = Format.createImageSampleFormat(Integer.toString(i), str, null, -1, i6, listSingletonList, this.language, this.drmInitData);
            } else {
                throw new ParserException("Unexpected MIME type.");
            }
            this.output = extractorOutput.track(this.number, i5);
            this.output.format(formatCreateImageSampleFormat);
        }

        public void outputPendingSampleMetadata() {
            TrueHdSampleRechunker trueHdSampleRechunker = this.trueHdSampleRechunker;
            if (trueHdSampleRechunker != null) {
                trueHdSampleRechunker.outputPendingSampleMetadata(this);
            }
        }

        public void reset() {
            TrueHdSampleRechunker trueHdSampleRechunker = this.trueHdSampleRechunker;
            if (trueHdSampleRechunker != null) {
                trueHdSampleRechunker.reset();
            }
        }

        private byte[] getHdrStaticInfo() {
            if (this.primaryRChromaticityX == -1.0f || this.primaryRChromaticityY == -1.0f || this.primaryGChromaticityX == -1.0f || this.primaryGChromaticityY == -1.0f || this.primaryBChromaticityX == -1.0f || this.primaryBChromaticityY == -1.0f || this.whitePointChromaticityX == -1.0f || this.whitePointChromaticityY == -1.0f || this.maxMasteringLuminance == -1.0f || this.minMasteringLuminance == -1.0f) {
                return null;
            }
            byte[] bArr = new byte[25];
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
            byteBufferWrap.put((byte) 0);
            byteBufferWrap.putShort((short) ((this.primaryRChromaticityX * 50000.0f) + 0.5f));
            byteBufferWrap.putShort((short) ((this.primaryRChromaticityY * 50000.0f) + 0.5f));
            byteBufferWrap.putShort((short) ((this.primaryGChromaticityX * 50000.0f) + 0.5f));
            byteBufferWrap.putShort((short) ((this.primaryGChromaticityY * 50000.0f) + 0.5f));
            byteBufferWrap.putShort((short) ((this.primaryBChromaticityX * 50000.0f) + 0.5f));
            byteBufferWrap.putShort((short) ((this.primaryBChromaticityY * 50000.0f) + 0.5f));
            byteBufferWrap.putShort((short) ((this.whitePointChromaticityX * 50000.0f) + 0.5f));
            byteBufferWrap.putShort((short) ((this.whitePointChromaticityY * 50000.0f) + 0.5f));
            byteBufferWrap.putShort((short) (this.maxMasteringLuminance + 0.5f));
            byteBufferWrap.putShort((short) (this.minMasteringLuminance + 0.5f));
            byteBufferWrap.putShort((short) this.maxContentLuminance);
            byteBufferWrap.putShort((short) this.maxFrameAverageLuminance);
            return bArr;
        }

        /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
        private static List<byte[]> parseFourCcVc1Private(ParsableByteArray parsableByteArray) throws ParserException {
            try {
                parsableByteArray.skipBytes(16);
                if (parsableByteArray.readLittleEndianUnsignedInt() != 826496599) {
                    return null;
                }
                byte[] bArr = parsableByteArray.data;
                for (int position = parsableByteArray.getPosition() + 20; position < bArr.length - 4; position++) {
                    if (bArr[position] == 0 && bArr[position + 1] == 0 && bArr[position + 2] == 1 && bArr[position + 3] == 15) {
                        return Collections.singletonList(Arrays.copyOfRange(bArr, position, bArr.length));
                    }
                }
                throw new ParserException("Failed to find FourCC VC1 initialization data");
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new ParserException("Error parsing FourCC VC1 codec private");
            }
        }

        /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
        private static List<byte[]> parseVorbisCodecPrivate(byte[] bArr) throws ParserException {
            try {
                if (bArr[0] != 2) {
                    throw new ParserException("Error parsing vorbis codec private");
                }
                int i = 1;
                int i2 = 0;
                while (bArr[i] == -1) {
                    i2 += 255;
                    i++;
                }
                int i3 = i + 1;
                int i4 = i2 + bArr[i];
                int i5 = 0;
                while (bArr[i3] == -1) {
                    i5 += 255;
                    i3++;
                }
                int i6 = i3 + 1;
                int i7 = i5 + bArr[i3];
                if (bArr[i6] != 1) {
                    throw new ParserException("Error parsing vorbis codec private");
                }
                byte[] bArr2 = new byte[i4];
                System.arraycopy(bArr, i6, bArr2, 0, i4);
                int i8 = i6 + i4;
                if (bArr[i8] != 3) {
                    throw new ParserException("Error parsing vorbis codec private");
                }
                int i9 = i8 + i7;
                if (bArr[i9] != 5) {
                    throw new ParserException("Error parsing vorbis codec private");
                }
                byte[] bArr3 = new byte[bArr.length - i9];
                System.arraycopy(bArr, i9, bArr3, 0, bArr.length - i9);
                ArrayList arrayList = new ArrayList(2);
                arrayList.add(bArr2);
                arrayList.add(bArr3);
                return arrayList;
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new ParserException("Error parsing vorbis codec private");
            }
        }

        private static boolean parseMsAcmCodecPrivate(ParsableByteArray parsableByteArray) throws ParserException {
            try {
                int littleEndianUnsignedShort = parsableByteArray.readLittleEndianUnsignedShort();
                if (littleEndianUnsignedShort == 1) {
                    return true;
                }
                if (littleEndianUnsignedShort != 65534) {
                    return false;
                }
                parsableByteArray.setPosition(24);
                return parsableByteArray.readLong() == MatroskaExtractor.WAVE_SUBFORMAT_PCM.getMostSignificantBits() && parsableByteArray.readLong() == MatroskaExtractor.WAVE_SUBFORMAT_PCM.getLeastSignificantBits();
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new ParserException("Error parsing MS/ACM codec private");
            }
        }
    }
}
