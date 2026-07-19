package com.aol.mobile.sdk.controls;

import com.aol.mobile.sdk.annotations.PublicApi;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
@PublicApi
public interface ContentControls {

    public enum Button {
        PLAY,
        PAUSE,
        REPLAY,
        NEXT,
        PREVIOUS,
        SEEK_FORWARD,
        SEEK_BACKWARD,
        COMPASS
    }

    public interface Listener {
        void onAudioTrackSelected(int i);

        void onButtonClick(Button button);

        void onCastDisabled();

        void onCastEnabled();

        void onCcTrackSelected(int i);

        void onScroll(float f, float f2);

        void onSeekStarted();

        void onSeekStopped();

        void onSeekTo(double d);
    }

    public static final class ViewModel {
        public double compassLatitude;
        public double compassLongitude;
        public boolean isCastButtonVisible;
        public boolean isCasting;
        public boolean isCompassViewVisible;
        public boolean isLiveIndicatorVisible;
        public boolean isLoading;
        public boolean isNextButtonEnabled;
        public boolean isNextButtonVisible;
        public boolean isOnLiveEdge;
        public boolean isPauseButtonVisible;
        public boolean isPlayButtonVisible;
        public boolean isPrevButtonEnabled;
        public boolean isPrevButtonVisible;
        public boolean isReplayButtonVisible;
        public boolean isSeekBackButtonVisible;
        public boolean isSeekForwardButtonVisible;
        public boolean isSeekerVisible;
        public boolean isStreamPlaying;
        public boolean isThumbnailImageVisible;
        public boolean isTitleVisible;
        public boolean isTrackChooserButtonEnabled;
        public boolean isTrackChooserButtonVisible;
        public int seekerBufferedProgress;
        public String seekerCurrentTimeText;
        public String seekerDurationText;
        public int seekerMaxValue;
        public double seekerProgress;
        public String seekerTimeLeftText;
        public String thumbnailImageUrl;
        public String titleText;
        public final LinkedList<TrackOptionVM> audioTracks = new LinkedList<>();
        public final LinkedList<TrackOptionVM> ccTracks = new LinkedList<>();
        public final Set<Double> adCues = new HashSet();

        public static final class TrackOptionVM {
            public boolean isSelected;
            public String title;

            public TrackOptionVM(String str, boolean z) {
                this.title = str;
                this.isSelected = z;
            }
        }
    }

    void render(ViewModel viewModel);

    void setListener(Listener listener);
}
