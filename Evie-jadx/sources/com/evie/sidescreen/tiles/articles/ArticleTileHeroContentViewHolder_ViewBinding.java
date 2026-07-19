package com.evie.sidescreen.tiles.articles;

import android.view.View;
import android.widget.TextView;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class ArticleTileHeroContentViewHolder_ViewBinding extends AbstractArticleTileViewHolder_ViewBinding {
    private ArticleTileHeroContentViewHolder target;

    public ArticleTileHeroContentViewHolder_ViewBinding(ArticleTileHeroContentViewHolder articleTileHeroContentViewHolder, View view) {
        super(articleTileHeroContentViewHolder, view);
        this.target = articleTileHeroContentViewHolder;
        articleTileHeroContentViewHolder.mSubtitle = (TextView) Utils.findRequiredViewAsType(view, R.id.subtitle, "field 'mSubtitle'", TextView.class);
    }

    @Override // com.evie.sidescreen.tiles.articles.AbstractArticleTileViewHolder_ViewBinding, butterknife.Unbinder
    public void unbind() {
        ArticleTileHeroContentViewHolder articleTileHeroContentViewHolder = this.target;
        if (articleTileHeroContentViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        articleTileHeroContentViewHolder.mSubtitle = null;
        super.unbind();
    }
}
