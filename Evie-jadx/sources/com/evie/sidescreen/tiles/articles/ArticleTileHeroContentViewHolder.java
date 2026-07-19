package com.evie.sidescreen.tiles.articles;

import android.view.View;
import android.widget.TextView;
import butterknife.BindView;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class ArticleTileHeroContentViewHolder extends AbstractArticleTileViewHolder<ArticleTileHeroCaptionPresenter> {

    /* JADX INFO: renamed from: ID */
    public static final int f351ID = R.layout.tile_article_hero_content;

    @BindView
    TextView mSubtitle;

    public ArticleTileHeroContentViewHolder(View view) {
        super(view);
    }

    public void showSubtitle(String str) {
        this.mSubtitle.setText(str);
        this.mSubtitle.setMaxLines(2);
        this.mSubtitle.setVisibility(0);
    }

    public void hideSubtitle() {
        this.mSubtitle.setVisibility(8);
    }
}
