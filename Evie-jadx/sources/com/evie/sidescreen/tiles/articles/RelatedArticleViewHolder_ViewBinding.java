package com.evie.sidescreen.tiles.articles;

import android.view.View;
import android.widget.TextView;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class RelatedArticleViewHolder_ViewBinding extends AbstractArticleTileViewHolder_ViewBinding {
    private RelatedArticleViewHolder target;

    public RelatedArticleViewHolder_ViewBinding(RelatedArticleViewHolder relatedArticleViewHolder, View view) {
        super(relatedArticleViewHolder, view);
        this.target = relatedArticleViewHolder;
        relatedArticleViewHolder.mSubtitle = (TextView) Utils.findRequiredViewAsType(view, R.id.subtitle, "field 'mSubtitle'", TextView.class);
        relatedArticleViewHolder.mPlayButton = Utils.findRequiredView(view, R.id.play_button, "field 'mPlayButton'");
    }

    @Override // com.evie.sidescreen.tiles.articles.AbstractArticleTileViewHolder_ViewBinding, butterknife.Unbinder
    public void unbind() {
        RelatedArticleViewHolder relatedArticleViewHolder = this.target;
        if (relatedArticleViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        relatedArticleViewHolder.mSubtitle = null;
        relatedArticleViewHolder.mPlayButton = null;
        super.unbind();
    }
}
