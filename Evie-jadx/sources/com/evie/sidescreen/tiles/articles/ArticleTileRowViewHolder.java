package com.evie.sidescreen.tiles.articles;

import android.view.View;
import android.widget.TextView;
import butterknife.BindView;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class ArticleTileRowViewHolder extends AbstractArticleTileViewHolder {

    /* JADX INFO: renamed from: ID */
    public static final int f357ID = R.layout.tile_article_row;

    @BindView
    protected TextView mSubtitle;

    public ArticleTileRowViewHolder(View view) {
        super(view);
    }

    public void showSubtitle(String str) {
        this.mSubtitle.setText(str);
        this.mSubtitle.setVisibility(0);
    }

    public void hideSubtitle() {
        this.mSubtitle.setVisibility(8);
    }
}
