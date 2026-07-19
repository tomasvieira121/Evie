package com.evie.sidescreen.tiles.imageviewer;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.LayerStack;
import com.evie.sidescreen.SideScreenDependencies;
import com.evie.sidescreen.StackLayer;
import com.evie.sidescreen.tiles.TopLevelTilePresenterFactory;
import com.evie.sidescreen.tiles.videos.PopupViewProvider;
import com.google.auto.factory.AutoFactory;
import com.google.auto.factory.Provided;
import org.schema.NewsArticle;

/* JADX INFO: loaded from: classes.dex */
@AutoFactory
public class PopupImageViewerPresenter extends PopupPresenter<PopupImageViewerViewHolder> implements StackLayer {
    PopupImageViewerPresenter(String str, String str2, NewsArticle newsArticle, ImageView imageView, @Provided LayerStack layerStack, @Provided PopupViewProvider popupViewProvider, @Provided TopLevelTilePresenterFactory topLevelTilePresenterFactory, @Provided ActivityStarter activityStarter, @Provided SideScreenDependencies.PopupListener popupListener) {
        super(str, str2, newsArticle, null, imageView, layerStack, popupViewProvider, topLevelTilePresenterFactory, activityStarter, popupListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.evie.sidescreen.tiles.imageviewer.PopupPresenter
    public PopupImageViewerViewHolder createNewViewHolderInstance(View view, ViewGroup viewGroup) {
        return new PopupImageViewerViewHolder(view, viewGroup);
    }

    @Override // com.evie.sidescreen.tiles.imageviewer.PopupPresenter
    public int getPopupType() {
        return PopupImageViewerViewHolder.f364ID;
    }
}
