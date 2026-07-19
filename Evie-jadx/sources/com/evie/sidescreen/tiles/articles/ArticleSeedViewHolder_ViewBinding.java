package com.evie.sidescreen.tiles.articles;

import android.view.View;
import android.widget.TextView;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;
import com.facebook.drawee.view.SimpleDraweeView;

/* JADX INFO: loaded from: classes.dex */
public class ArticleSeedViewHolder_ViewBinding extends AbstractArticleTileViewHolder_ViewBinding {
    private ArticleSeedViewHolder target;

    public ArticleSeedViewHolder_ViewBinding(ArticleSeedViewHolder articleSeedViewHolder, View view) {
        super(articleSeedViewHolder, view);
        this.target = articleSeedViewHolder;
        articleSeedViewHolder.mSubtitle = (TextView) Utils.findRequiredViewAsType(view, R.id.subtitle, "field 'mSubtitle'", TextView.class);
        articleSeedViewHolder.mImage = (SimpleDraweeView) Utils.findRequiredViewAsType(view, R.id.image, "field 'mImage'", SimpleDraweeView.class);
    }

    @Override // com.evie.sidescreen.tiles.articles.AbstractArticleTileViewHolder_ViewBinding, butterknife.Unbinder
    public void unbind() {
        ArticleSeedViewHolder articleSeedViewHolder = this.target;
        if (articleSeedViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        articleSeedViewHolder.mSubtitle = null;
        articleSeedViewHolder.mImage = null;
        super.unbind();
    }
}
