package com.evie.sidescreen.relatedcontent;

import android.view.View;
import androidx.fragment.app.FragmentManager;
import com.evie.sidescreen.analytics.AnalyticsModel;
import java.util.List;
import org.schema.VideoObject;

/* JADX INFO: loaded from: classes.dex */
public interface VideoHandler {

    public interface VideoHelperInterface {
        float getAspectRatioLowerLimit();

        float getDefaultAspectRatio();

        boolean getIsFullScreen();

        boolean getIsPlaylistAutoplayEnabled();

        float getMediaAspectRatio();

        int getMinimumImpressionDuration();

        int getScreenWidthPixels();

        long getStartDuration();

        long getStartPosition();

        FragmentManager getSupportFragmentManager();

        List<VideoObject> getVideoObjectList();

        boolean isActivityStarted();

        void manuallyExitFullScreen();

        void onVideoEnded();

        void onVideoVisibilityChanged(boolean z);

        void setIsFullScreen(boolean z);

        void setPersistentImmersiveMode();

        void setStartPosition(long j);

        void setToolBarVisibility(boolean z);

        void trackAdTap(String str, String str2);

        AnalyticsModel trackAnalyticsModel();
    }

    void enterFullscreen();

    void exitFullscreen();

    View getContainerView();

    void initializeParams();

    boolean isInitialized();

    void onActivityDestroy();

    void onActivityPause();

    void onActivityResume();

    void onAdInterrupted();

    void onVideoPause();

    void onVideoPlay();

    void onVideoScrub(long j);

    void samePlayerTransition();

    void setUp();

    void tearDown();
}
