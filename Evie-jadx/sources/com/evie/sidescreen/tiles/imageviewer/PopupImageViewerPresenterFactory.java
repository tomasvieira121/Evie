package com.evie.sidescreen.tiles.imageviewer;

import android.widget.ImageView;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.LayerStack;
import com.evie.sidescreen.SideScreenDependencies;
import com.evie.sidescreen.tiles.TopLevelTilePresenterFactory;
import com.evie.sidescreen.tiles.videos.PopupViewProvider;
import javax.inject.Provider;
import org.schema.NewsArticle;

/* JADX INFO: loaded from: classes.dex */
public final class PopupImageViewerPresenterFactory {
    private final Provider<ActivityStarter> activityStarterProvider;
    private final Provider<LayerStack> layerStackProvider;
    private final Provider<SideScreenDependencies.PopupListener> popupListenerProvider;
    private final Provider<PopupViewProvider> popupViewProviderProvider;
    private final Provider<TopLevelTilePresenterFactory> topLevelTilePresenterFactoryProvider;

    public PopupImageViewerPresenterFactory(Provider<LayerStack> provider, Provider<PopupViewProvider> provider2, Provider<TopLevelTilePresenterFactory> provider3, Provider<ActivityStarter> provider4, Provider<SideScreenDependencies.PopupListener> provider5) {
        this.layerStackProvider = (Provider) checkNotNull(provider, 1);
        this.popupViewProviderProvider = (Provider) checkNotNull(provider2, 2);
        this.topLevelTilePresenterFactoryProvider = (Provider) checkNotNull(provider3, 3);
        this.activityStarterProvider = (Provider) checkNotNull(provider4, 4);
        this.popupListenerProvider = (Provider) checkNotNull(provider5, 5);
    }

    public PopupImageViewerPresenter create(String str, String str2, NewsArticle newsArticle, ImageView imageView) {
        return new PopupImageViewerPresenter((String) checkNotNull(str, 1), str2, (NewsArticle) checkNotNull(newsArticle, 3), imageView, (LayerStack) checkNotNull(this.layerStackProvider.get(), 5), (PopupViewProvider) checkNotNull(this.popupViewProviderProvider.get(), 6), (TopLevelTilePresenterFactory) checkNotNull(this.topLevelTilePresenterFactoryProvider.get(), 7), (ActivityStarter) checkNotNull(this.activityStarterProvider.get(), 8), (SideScreenDependencies.PopupListener) checkNotNull(this.popupListenerProvider.get(), 9));
    }

    private static <T> T checkNotNull(T t, int i) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("@AutoFactory method argument is null but is not marked @Nullable. Argument index: " + i);
    }
}
