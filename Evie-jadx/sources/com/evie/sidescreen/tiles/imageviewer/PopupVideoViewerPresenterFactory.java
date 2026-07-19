package com.evie.sidescreen.tiles.imageviewer;

import android.view.TextureView;
import android.view.View;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.LayerStack;
import com.evie.sidescreen.SideScreenDependencies;
import com.evie.sidescreen.exoplayer.ExoPlayerObservable;
import com.evie.sidescreen.exoplayer.VideoFocusHandler;
import com.evie.sidescreen.lifecycle.LifecycleCallbacks;
import com.evie.sidescreen.tiles.TopLevelTilePresenterFactory;
import com.evie.sidescreen.tiles.videos.PopupViewProvider;
import javax.inject.Provider;
import org.schema.MediaObject;
import org.schema.NewsArticle;

/* JADX INFO: loaded from: classes.dex */
public final class PopupVideoViewerPresenterFactory {
    private final Provider<ActivityStarter> activityStarterProvider;
    private final Provider<LayerStack> layerStackProvider;
    private final Provider<LifecycleCallbacks> lifecycleCallbacksProvider;
    private final Provider<ExoPlayerObservable> playerProvider;
    private final Provider<SideScreenDependencies.PopupListener> popupListenerProvider;
    private final Provider<PopupViewProvider> popupViewProviderProvider;
    private final Provider<TopLevelTilePresenterFactory> topLevelTilePresenterFactoryProvider;
    private final Provider<VideoFocusHandler> videoFocusHandlerProvider;

    public PopupVideoViewerPresenterFactory(Provider<ExoPlayerObservable> provider, Provider<LayerStack> provider2, Provider<PopupViewProvider> provider3, Provider<TopLevelTilePresenterFactory> provider4, Provider<ActivityStarter> provider5, Provider<LifecycleCallbacks> provider6, Provider<VideoFocusHandler> provider7, Provider<SideScreenDependencies.PopupListener> provider8) {
        this.playerProvider = (Provider) checkNotNull(provider, 1);
        this.layerStackProvider = (Provider) checkNotNull(provider2, 2);
        this.popupViewProviderProvider = (Provider) checkNotNull(provider3, 3);
        this.topLevelTilePresenterFactoryProvider = (Provider) checkNotNull(provider4, 4);
        this.activityStarterProvider = (Provider) checkNotNull(provider5, 5);
        this.lifecycleCallbacksProvider = (Provider) checkNotNull(provider6, 6);
        this.videoFocusHandlerProvider = (Provider) checkNotNull(provider7, 7);
        this.popupListenerProvider = (Provider) checkNotNull(provider8, 8);
    }

    public PopupVideoViewerPresenter create(String str, String str2, NewsArticle newsArticle, MediaObject mediaObject, View view, long j, TextureView textureView, PopupVideoViewerPresenter.VideoPopupDismissListener videoPopupDismissListener) {
        return new PopupVideoViewerPresenter((String) checkNotNull(str, 1), str2, (NewsArticle) checkNotNull(newsArticle, 3), mediaObject, view, j, textureView, (PopupVideoViewerPresenter.VideoPopupDismissListener) checkNotNull(videoPopupDismissListener, 8), (ExoPlayerObservable) checkNotNull(this.playerProvider.get(), 9), (LayerStack) checkNotNull(this.layerStackProvider.get(), 10), (PopupViewProvider) checkNotNull(this.popupViewProviderProvider.get(), 11), (TopLevelTilePresenterFactory) checkNotNull(this.topLevelTilePresenterFactoryProvider.get(), 12), (ActivityStarter) checkNotNull(this.activityStarterProvider.get(), 13), (LifecycleCallbacks) checkNotNull(this.lifecycleCallbacksProvider.get(), 14), (VideoFocusHandler) checkNotNull(this.videoFocusHandlerProvider.get(), 15), (SideScreenDependencies.PopupListener) checkNotNull(this.popupListenerProvider.get(), 16));
    }

    private static <T> T checkNotNull(T t, int i) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("@AutoFactory method argument is null but is not marked @Nullable. Argument index: " + i);
    }
}
