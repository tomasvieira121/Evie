package com.evie.sidescreen.tiles.articles;

import android.view.View;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;
import com.facebook.drawee.view.SimpleDraweeView;

/* JADX INFO: loaded from: classes.dex */
public class ArticleTileHeroImageViewHolder_ViewBinding extends AbstractHeroViewHolder_ViewBinding {
    private ArticleTileHeroImageViewHolder target;
    private View view7f0b008f;

    public ArticleTileHeroImageViewHolder_ViewBinding(final ArticleTileHeroImageViewHolder articleTileHeroImageViewHolder, View view) {
        super(articleTileHeroImageViewHolder, view.getContext());
        this.target = articleTileHeroImageViewHolder;
        articleTileHeroImageViewHolder.mImage = (SimpleDraweeView) Utils.findRequiredViewAsType(view, R.id.image, "field 'mImage'", SimpleDraweeView.class);
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.content, "method 'onContentClick'");
        this.view7f0b008f = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.tiles.articles.ArticleTileHeroImageViewHolder_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                articleTileHeroImageViewHolder.onContentClick(view2);
            }
        });
    }

    @Override // com.evie.sidescreen.tiles.articles.AbstractHeroViewHolder_ViewBinding, butterknife.Unbinder
    public void unbind() {
        ArticleTileHeroImageViewHolder articleTileHeroImageViewHolder = this.target;
        if (articleTileHeroImageViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        articleTileHeroImageViewHolder.mImage = null;
        this.view7f0b008f.setOnClickListener(null);
        this.view7f0b008f = null;
        super.unbind();
    }
}
