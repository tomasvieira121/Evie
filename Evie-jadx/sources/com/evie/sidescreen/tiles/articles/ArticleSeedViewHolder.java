package com.evie.sidescreen.tiles.articles;

import android.text.Html;
import android.view.View;
import android.widget.TextView;
import butterknife.BindView;
import com.evie.sidescreen.R;
import com.facebook.drawee.view.SimpleDraweeView;

/* JADX INFO: loaded from: classes.dex */
public class ArticleSeedViewHolder extends AbstractArticleTileViewHolder<ArticleSeedPresenter> {

    /* JADX INFO: renamed from: ID */
    public static final int f350ID = R.layout.tile_article_related_seed;

    @BindView
    SimpleDraweeView mImage;

    @BindView
    TextView mSubtitle;

    public ArticleSeedViewHolder(View view) {
        super(view);
    }

    public void showSubtitle(String str) {
        this.mSubtitle.setText(str);
        this.mSubtitle.setVisibility(0);
    }

    public void showArticleBody(String str) {
        this.mSubtitle.setText(trimTrailingWhitespace(Html.fromHtml(str)));
        this.mSubtitle.setVisibility(0);
    }

    public void hideSubtitle() {
        this.mSubtitle.setVisibility(8);
    }

    public void showImage(String str, float f) {
        this.mImage.setImageURI((String) null);
        this.mImage.setAspectRatio(f);
        this.mImage.setImageURI(str);
        this.mImage.setVisibility(0);
    }

    public static CharSequence trimTrailingWhitespace(CharSequence charSequence) {
        if (charSequence == null) {
            return "";
        }
        int length = charSequence.length();
        do {
            length--;
            if (length < 0) {
                break;
            }
        } while (Character.isWhitespace(charSequence.charAt(length)));
        return charSequence.subSequence(0, length + 1);
    }
}
