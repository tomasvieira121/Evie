package com.evie.sidescreen.tiles.articles;

import android.view.View;
import android.widget.TextView;
import butterknife.BindView;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class RelatedArticleViewHolder extends AbstractArticleTileViewHolder {

    /* JADX INFO: renamed from: ID */
    public static final int f358ID = R.layout.tile_related_article;

    @BindView
    protected View mPlayButton;

    @BindView
    protected TextView mSubtitle;

    public RelatedArticleViewHolder(View view) {
        super(view);
    }

    public void showSubtitle(String str) {
        this.mSubtitle.setText(str);
        this.mSubtitle.setVisibility(0);
    }

    public void hideSubtitle() {
        this.mSubtitle.setVisibility(8);
    }

    public void showPlayButton() {
        this.mPlayButton.setVisibility(0);
    }

    public void hidePlayButton() {
        this.mPlayButton.setVisibility(8);
    }
}
