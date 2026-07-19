package com.evie.sidescreen.tiles.articles;

import android.view.View;
import android.widget.ImageView;
import butterknife.BindView;
import butterknife.OnClick;
import com.evie.sidescreen.R;
import com.facebook.drawee.view.SimpleDraweeView;

/* JADX INFO: loaded from: classes.dex */
public class ArticleTileHeroImageViewHolder extends AbstractHeroViewHolder<ArticleTileHeroImagePresenter> {

    /* JADX INFO: renamed from: ID */
    public static final int f352ID = R.layout.tile_article_hero_image;

    @BindView
    SimpleDraweeView mImage;

    public ArticleTileHeroImageViewHolder(View view) {
        super(view);
    }

    @OnClick
    public void onContentClick(View view) {
        ((ArticleTileHeroImagePresenter) this.mPresenter).onArticleClick(this.mImage, view.getContext());
    }

    public ImageView getImage() {
        return this.mImage;
    }

    public void showImage(String str, float f) {
        this.mImage.setImageURI((String) null);
        this.mImage.setAspectRatio(f);
        this.mImage.setImageURI(str);
        this.mImage.setVisibility(0);
    }

    public void hideImage() {
        this.mImage.setImageURI((String) null);
        this.mImage.setVisibility(8);
    }
}
