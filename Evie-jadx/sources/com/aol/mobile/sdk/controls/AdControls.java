package com.aol.mobile.sdk.controls;

import com.aol.mobile.sdk.annotations.PublicApi;

/* JADX INFO: loaded from: classes.dex */
@PublicApi
public interface AdControls {

    public enum Button {
        PLAY,
        PAUSE
    }

    public interface Listener {
        void onAdClicked();

        void onAdPresented();

        void onButtonClick(Button button);
    }

    public static final class ViewModel {
        public String adUrl;
        public String currentTimeText;
        public String durationText;
        public boolean embedClickThroughUrl;
        public boolean isAdTimeViewVisible;
        public boolean isCloseButtonVisible;
        public boolean isPauseButtonVisible;
        public boolean isPlayButtonVisible;
        public boolean isProgressViewVisible;
        public int seekerMaxValue;
        public double seekerProgress;
        public String timeLeftText;
    }

    void render(ViewModel viewModel);

    void setListener(Listener listener);
}
