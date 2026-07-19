package com.evie.sidescreen.tiles.articles;

import android.view.View;
import android.widget.TextView;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class ArticleTileRowViewHolder_ViewBinding extends AbstractArticleTileViewHolder_ViewBinding {
    private ArticleTileRowViewHolder target;

    public ArticleTileRowViewHolder_ViewBinding(ArticleTileRowViewHolder articleTileRowViewHolder, View view) {
        super(articleTileRowViewHolder, view);
        this.target = articleTileRowViewHolder;
        articleTileRowViewHolder.mSubtitle = (TextView) Utils.findRequiredViewAsType(view, R.id.subtitle, "field 'mSubtitle'", TextView.class);
    }

    @Override // com.evie.sidescreen.tiles.articles.AbstractArticleTileViewHolder_ViewBinding, butterknife.Unbinder
    public void unbind() {
        ArticleTileRowViewHolder articleTileRowViewHolder = this.target;
        if (articleTileRowViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        articleTileRowViewHolder.mSubtitle = null;
        super.unbind();
    }
}
