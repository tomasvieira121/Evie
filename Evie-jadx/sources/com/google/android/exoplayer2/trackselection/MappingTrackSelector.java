package com.google.android.exoplayer2.trackselection;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.RendererCapabilities;
import com.google.android.exoplayer2.RendererConfiguration;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.util.Util;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class MappingTrackSelector extends TrackSelector {
    private MappedTrackInfo currentMappedTrackInfo;
    private final SparseArray<Map<TrackGroupArray, SelectionOverride>> selectionOverrides = new SparseArray<>();
    private final SparseBooleanArray rendererDisabledFlags = new SparseBooleanArray();
    private int tunnelingAudioSessionId = 0;

    protected abstract TrackSelection[] selectTracks(RendererCapabilities[] rendererCapabilitiesArr, TrackGroupArray[] trackGroupArrayArr, int[][][] iArr) throws ExoPlaybackException;

    public static final class MappedTrackInfo {
        private final int[][][] formatSupport;
        public final int length;
        private final int[] mixedMimeTypeAdaptiveSupport;
        private final int[] rendererTrackTypes;
        private final TrackGroupArray[] trackGroups;
        private final TrackGroupArray unassociatedTrackGroups;

        MappedTrackInfo(int[] iArr, TrackGroupArray[] trackGroupArrayArr, int[] iArr2, int[][][] iArr3, TrackGroupArray trackGroupArray) {
            this.rendererTrackTypes = iArr;
            this.trackGroups = trackGroupArrayArr;
            this.formatSupport = iArr3;
            this.mixedMimeTypeAdaptiveSupport = iArr2;
            this.unassociatedTrackGroups = trackGroupArray;
            this.length = trackGroupArrayArr.length;
        }

        public TrackGroupArray getTrackGroups(int i) {
            return this.trackGroups[i];
        }

        public int getTrackFormatSupport(int i, int i2, int i3) {
            return this.formatSupport[i][i2][i3] & 7;
        }
    }

    public static final class SelectionOverride {
        public final TrackSelection.Factory factory;
        public final int groupIndex;
        public final int length;
        public final int[] tracks;

        public SelectionOverride(TrackSelection.Factory factory, int i, int... iArr) {
            this.factory = factory;
            this.groupIndex = i;
            this.tracks = iArr;
            this.length = iArr.length;
        }

        public TrackSelection createTrackSelection(TrackGroupArray trackGroupArray) {
            return this.factory.createTrackSelection(trackGroupArray.get(this.groupIndex), this.tracks);
        }
    }

    public final MappedTrackInfo getCurrentMappedTrackInfo() {
        return this.currentMappedTrackInfo;
    }

    public final void setRendererDisabled(int i, boolean z) {
        if (this.rendererDisabledFlags.get(i) == z) {
            return;
        }
        this.rendererDisabledFlags.put(i, z);
        invalidate();
    }

    public final void setSelectionOverride(int i, TrackGroupArray trackGroupArray, SelectionOverride selectionOverride) {
        Map<TrackGroupArray, SelectionOverride> map = this.selectionOverrides.get(i);
        if (map == null) {
            map = new HashMap<>();
            this.selectionOverrides.put(i, map);
        }
        if (map.containsKey(trackGroupArray) && Util.areEqual(map.get(trackGroupArray), selectionOverride)) {
            return;
        }
        map.put(trackGroupArray, selectionOverride);
        invalidate();
    }

    public final boolean hasSelectionOverride(int i, TrackGroupArray trackGroupArray) {
        Map<TrackGroupArray, SelectionOverride> map = this.selectionOverrides.get(i);
        return map != null && map.containsKey(trackGroupArray);
    }

    public final void clearSelectionOverrides(int i) {
        Map<TrackGroupArray, SelectionOverride> map = this.selectionOverrides.get(i);
        if (map == null || map.isEmpty()) {
            return;
        }
        this.selectionOverrides.remove(i);
        invalidate();
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelector
    public final TrackSelectorResult selectTracks(RendererCapabilities[] rendererCapabilitiesArr, TrackGroupArray trackGroupArray) throws ExoPlaybackException {
        int[] iArr = new int[rendererCapabilitiesArr.length + 1];
        TrackGroup[][] trackGroupArr = new TrackGroup[rendererCapabilitiesArr.length + 1][];
        int[][][] iArr2 = new int[rendererCapabilitiesArr.length + 1][][];
        for (int i = 0; i < trackGroupArr.length; i++) {
            trackGroupArr[i] = new TrackGroup[trackGroupArray.length];
            iArr2[i] = new int[trackGroupArray.length][];
        }
        int[] mixedMimeTypeAdaptationSupport = getMixedMimeTypeAdaptationSupport(rendererCapabilitiesArr);
        for (int i2 = 0; i2 < trackGroupArray.length; i2++) {
            TrackGroup trackGroup = trackGroupArray.get(i2);
            int iFindRenderer = findRenderer(rendererCapabilitiesArr, trackGroup);
            int[] formatSupport = iFindRenderer == rendererCapabilitiesArr.length ? new int[trackGroup.length] : getFormatSupport(rendererCapabilitiesArr[iFindRenderer], trackGroup);
            int i3 = iArr[iFindRenderer];
            trackGroupArr[iFindRenderer][i3] = trackGroup;
            iArr2[iFindRenderer][i3] = formatSupport;
            iArr[iFindRenderer] = iArr[iFindRenderer] + 1;
        }
        TrackGroupArray[] trackGroupArrayArr = new TrackGroupArray[rendererCapabilitiesArr.length];
        int[] iArr3 = new int[rendererCapabilitiesArr.length];
        for (int i4 = 0; i4 < rendererCapabilitiesArr.length; i4++) {
            int i5 = iArr[i4];
            trackGroupArrayArr[i4] = new TrackGroupArray((TrackGroup[]) Arrays.copyOf(trackGroupArr[i4], i5));
            iArr2[i4] = (int[][]) Arrays.copyOf(iArr2[i4], i5);
            iArr3[i4] = rendererCapabilitiesArr[i4].getTrackType();
        }
        TrackGroupArray trackGroupArray2 = new TrackGroupArray((TrackGroup[]) Arrays.copyOf(trackGroupArr[rendererCapabilitiesArr.length], iArr[rendererCapabilitiesArr.length]));
        TrackSelection[] trackSelectionArrSelectTracks = selectTracks(rendererCapabilitiesArr, trackGroupArrayArr, iArr2);
        int i6 = 0;
        while (true) {
            if (i6 >= rendererCapabilitiesArr.length) {
                break;
            }
            if (this.rendererDisabledFlags.get(i6)) {
                trackSelectionArrSelectTracks[i6] = null;
            } else {
                TrackGroupArray trackGroupArray3 = trackGroupArrayArr[i6];
                if (hasSelectionOverride(i6, trackGroupArray3)) {
                    SelectionOverride selectionOverride = this.selectionOverrides.get(i6).get(trackGroupArray3);
                    trackSelectionArrSelectTracks[i6] = selectionOverride != null ? selectionOverride.createTrackSelection(trackGroupArray3) : null;
                }
            }
            i6++;
        }
        boolean[] zArrDetermineEnabledRenderers = determineEnabledRenderers(rendererCapabilitiesArr, trackSelectionArrSelectTracks);
        MappedTrackInfo mappedTrackInfo = new MappedTrackInfo(iArr3, trackGroupArrayArr, mixedMimeTypeAdaptationSupport, iArr2, trackGroupArray2);
        RendererConfiguration[] rendererConfigurationArr = new RendererConfiguration[rendererCapabilitiesArr.length];
        for (int i7 = 0; i7 < rendererCapabilitiesArr.length; i7++) {
            rendererConfigurationArr[i7] = zArrDetermineEnabledRenderers[i7] ? RendererConfiguration.DEFAULT : null;
        }
        maybeConfigureRenderersForTunneling(rendererCapabilitiesArr, trackGroupArrayArr, iArr2, rendererConfigurationArr, trackSelectionArrSelectTracks, this.tunnelingAudioSessionId);
        return new TrackSelectorResult(trackGroupArray, zArrDetermineEnabledRenderers, new TrackSelectionArray(trackSelectionArrSelectTracks), mappedTrackInfo, rendererConfigurationArr);
    }

    private boolean[] determineEnabledRenderers(RendererCapabilities[] rendererCapabilitiesArr, TrackSelection[] trackSelectionArr) {
        boolean[] zArr = new boolean[trackSelectionArr.length];
        for (int i = 0; i < zArr.length; i++) {
            zArr[i] = !this.rendererDisabledFlags.get(i) && (rendererCapabilitiesArr[i].getTrackType() == 5 || trackSelectionArr[i] != null);
        }
        return zArr;
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelector
    public final void onSelectionActivated(Object obj) {
        this.currentMappedTrackInfo = (MappedTrackInfo) obj;
    }

    private static int findRenderer(RendererCapabilities[] rendererCapabilitiesArr, TrackGroup trackGroup) throws ExoPlaybackException {
        int length = rendererCapabilitiesArr.length;
        int i = 0;
        int i2 = 0;
        while (i < rendererCapabilitiesArr.length) {
            RendererCapabilities rendererCapabilities = rendererCapabilitiesArr[i];
            int i3 = i2;
            int i4 = length;
            for (int i5 = 0; i5 < trackGroup.length; i5++) {
                int iSupportsFormat = rendererCapabilities.supportsFormat(trackGroup.getFormat(i5)) & 7;
                if (iSupportsFormat > i3) {
                    if (iSupportsFormat == 4) {
                        return i;
                    }
                    i4 = i;
                    i3 = iSupportsFormat;
                }
            }
            i++;
            length = i4;
            i2 = i3;
        }
        return length;
    }

    private static int[] getFormatSupport(RendererCapabilities rendererCapabilities, TrackGroup trackGroup) throws ExoPlaybackException {
        int[] iArr = new int[trackGroup.length];
        for (int i = 0; i < trackGroup.length; i++) {
            iArr[i] = rendererCapabilities.supportsFormat(trackGroup.getFormat(i));
        }
        return iArr;
    }

    private static int[] getMixedMimeTypeAdaptationSupport(RendererCapabilities[] rendererCapabilitiesArr) throws ExoPlaybackException {
        int[] iArr = new int[rendererCapabilitiesArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = rendererCapabilitiesArr[i].supportsMixedMimeTypeAdaptation();
        }
        return iArr;
    }

    private static void maybeConfigureRenderersForTunneling(RendererCapabilities[] rendererCapabilitiesArr, TrackGroupArray[] trackGroupArrayArr, int[][][] iArr, RendererConfiguration[] rendererConfigurationArr, TrackSelection[] trackSelectionArr, int i) {
        boolean z;
        if (i == 0) {
            return;
        }
        boolean z2 = false;
        int i2 = 0;
        int i3 = -1;
        int i4 = -1;
        while (true) {
            if (i2 >= rendererCapabilitiesArr.length) {
                z = true;
                break;
            }
            int trackType = rendererCapabilitiesArr[i2].getTrackType();
            TrackSelection trackSelection = trackSelectionArr[i2];
            if ((trackType == 1 || trackType == 2) && trackSelection != null && rendererSupportsTunneling(iArr[i2], trackGroupArrayArr[i2], trackSelection)) {
                if (trackType == 1) {
                    if (i4 != -1) {
                        z = false;
                        break;
                    }
                    i4 = i2;
                } else {
                    if (i3 != -1) {
                        z = false;
                        break;
                    }
                    i3 = i2;
                }
            }
            i2++;
        }
        if (i4 != -1 && i3 != -1) {
            z2 = true;
        }
        if (z && z2) {
            RendererConfiguration rendererConfiguration = new RendererConfiguration(i);
            rendererConfigurationArr[i4] = rendererConfiguration;
            rendererConfigurationArr[i3] = rendererConfiguration;
        }
    }

    private static boolean rendererSupportsTunneling(int[][] iArr, TrackGroupArray trackGroupArray, TrackSelection trackSelection) {
        if (trackSelection == null) {
            return false;
        }
        int iIndexOf = trackGroupArray.indexOf(trackSelection.getTrackGroup());
        for (int i = 0; i < trackSelection.length(); i++) {
            if ((iArr[iIndexOf][trackSelection.getIndexInTrackGroup(i)] & 32) != 32) {
                return false;
            }
        }
        return true;
    }
}
