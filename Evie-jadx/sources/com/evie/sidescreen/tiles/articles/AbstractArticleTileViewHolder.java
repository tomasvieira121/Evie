package com.evie.sidescreen.tiles.articles;

import android.graphics.Color;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindDimen;
import butterknife.BindView;
import butterknife.OnClick;
import com.evie.sidescreen.R;
import com.evie.sidescreen.tiles.TileViewHolder;
import com.evie.sidescreen.tiles.articles.AbstractArticleTilePresenter;
import com.evie.sidescreen.util.HackedTouchDelegate;
import com.facebook.drawee.view.SimpleDraweeView;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractArticleTileViewHolder<P extends AbstractArticleTilePresenter> extends TileViewHolder<P> {

    @BindDimen
    protected int mButtonTouchDelegateSize;

    @BindView
    protected View mContent;

    @BindView
    protected ViewGroup mHeader;

    @BindView
    protected View mHeaderContextButton;

    @BindView
    protected LinearLayout mHeaderLayout;

    @BindView
    protected TextView mHeaderLink;

    @BindView
    protected TextView mHeaderLinkDivider;

    @BindView
    protected SimpleDraweeView mHeaderLogo;

    @BindView
    protected TextView mHeaderPublisher;

    @BindView
    protected ViewGroup mHeaderTagContainer;

    @BindView
    protected TextView mHeaderTimeElapsed;

    @BindView
    protected TextView mHeaderTimeElapsedDivider;

    @BindView
    protected TextView mHeaderTopic;

    @BindView
    protected TextView mHeaderTopicDivider;

    @BindView
    protected SimpleDraweeView mImage;

    @BindView
    protected TextView mTitle;

    public AbstractArticleTileViewHolder(final View view) {
        super(view);
        view.post(new Runnable() { // from class: com.evie.sidescreen.tiles.articles.-$$Lambda$AbstractArticleTileViewHolder$rP5qnAVGzWfu-bF733uvI_YZT0Y
            @Override // java.lang.Runnable
            public final void run() {
                AbstractArticleTileViewHolder.lambda$new$0(this.f$0, view);
            }
        });
    }

    public static /* synthetic */ void lambda$new$0(AbstractArticleTileViewHolder abstractArticleTileViewHolder, View view) {
        if (view instanceof ViewGroup) {
            Rect rect = new Rect();
            int i = abstractArticleTileViewHolder.mButtonTouchDelegateSize / 2;
            int i2 = -i;
            rect.left = i2;
            rect.top = i2;
            rect.right = i;
            rect.bottom = i;
            rect.offset(abstractArticleTileViewHolder.mHeaderContextButton.getWidth() / 2, abstractArticleTileViewHolder.mHeaderContextButton.getHeight() / 2);
            ViewGroup viewGroup = (ViewGroup) view;
            View view2 = abstractArticleTileViewHolder.mHeaderContextButton;
            while (view2 != viewGroup) {
                View view3 = (View) view2.getParent();
                rect.offset(view2.getLeft() + Math.round(view2.getTranslationX()), view2.getTop() + Math.round(view2.getTranslationY()));
                view2 = view3;
            }
            view.setTouchDelegate(new HackedTouchDelegate(rect, abstractArticleTileViewHolder.mHeaderContextButton));
        }
    }

    @OnClick
    public void onClick(View view) {
        AbstractArticleTilePresenter abstractArticleTilePresenter = (AbstractArticleTilePresenter) this.mPresenter;
        SimpleDraweeView simpleDraweeView = this.mImage;
        if (simpleDraweeView != null) {
            view = simpleDraweeView;
        }
        abstractArticleTilePresenter.onArticleClick(view);
    }

    public void showTitle(String str) {
        this.mTitle.setText(str);
    }

    public void showImage(String str) {
        SimpleDraweeView simpleDraweeView = this.mImage;
        if (simpleDraweeView != null) {
            simpleDraweeView.setImageURI(str);
            this.mImage.setVisibility(0);
        }
    }

    public void hideImage() {
        SimpleDraweeView simpleDraweeView = this.mImage;
        if (simpleDraweeView != null) {
            simpleDraweeView.setVisibility(8);
        }
    }

    public void showHeaderLogo(String str) {
        this.mHeaderLogo.setImageURI(str);
        this.mHeaderLogo.setVisibility(0);
    }

    public void hideHeaderLogo() {
        this.mHeaderLogo.setImageURI((String) null);
        this.mHeaderLogo.setVisibility(8);
    }

    public void showPublisher(String str) {
        this.mHeaderPublisher.setText(str);
        this.mHeaderPublisher.setVisibility(0);
    }

    public void hidePublisher() {
        this.mHeaderPublisher.setVisibility(8);
    }

    public void showTopic(String str) {
        this.mHeaderTopic.setText(str);
        this.mHeaderTopic.setVisibility(0);
    }

    public void hideTopic() {
        this.mHeaderTopic.setVisibility(8);
    }

    public void showTimeElapsed(String str) {
        this.mHeaderTimeElapsed.setText(str);
        this.mHeaderTimeElapsed.setVisibility(0);
    }

    public void hideTimeElapsed() {
        this.mHeaderTimeElapsed.setVisibility(8);
    }

    public void hideLink() {
        this.mHeaderLink.setVisibility(8);
    }

    public ArticleTileTagViewHolder getTagView(int i) {
        View childAt;
        if (i >= this.mHeaderTagContainer.getChildCount()) {
            childAt = LayoutInflater.from(this.mHeaderTagContainer.getContext()).inflate(R.layout.tile_article_header_tag, (ViewGroup) null, false);
            this.mHeaderTagContainer.addView(childAt);
        } else {
            childAt = this.mHeaderTagContainer.getChildAt(i);
        }
        return new ArticleTileTagViewHolder(childAt);
    }

    public void removeExtraTagViews(int i) {
        int childCount = this.mHeaderTagContainer.getChildCount();
        if (childCount > i) {
            int i2 = childCount - i;
            this.mHeaderTagContainer.removeViews(childCount - i2, i2);
        }
    }

    public void showTagText(ArticleTileTagViewHolder articleTileTagViewHolder, String str) {
        articleTileTagViewHolder.text.setText(str);
        articleTileTagViewHolder.text.setVisibility(0);
    }

    public void hideTagText(ArticleTileTagViewHolder articleTileTagViewHolder) {
        articleTileTagViewHolder.text.setVisibility(8);
    }

    public void showTagImage(ArticleTileTagViewHolder articleTileTagViewHolder, String str) {
        articleTileTagViewHolder.image.setImageURI(str);
        articleTileTagViewHolder.image.setVisibility(0);
    }

    public void hideTagImage(ArticleTileTagViewHolder articleTileTagViewHolder) {
        articleTileTagViewHolder.image.setImageURI((String) null);
        articleTileTagViewHolder.image.setVisibility(8);
    }

    public void showTagDivider(ArticleTileTagViewHolder articleTileTagViewHolder) {
        articleTileTagViewHolder.divider.setVisibility(0);
    }

    public void hideTagDivider(ArticleTileTagViewHolder articleTileTagViewHolder) {
        articleTileTagViewHolder.divider.setVisibility(8);
    }

    public void setTagTint(ArticleTileTagViewHolder articleTileTagViewHolder, String str) {
        articleTileTagViewHolder.text.setTextColor(Color.parseColor(str));
        articleTileTagViewHolder.image.setColorFilter(Color.parseColor(str));
    }

    public void updateDividers() {
        this.mHeaderTopicDivider.setVisibility(this.mHeaderTopic.getVisibility());
        this.mHeaderTimeElapsedDivider.setVisibility(this.mHeaderTimeElapsed.getVisibility());
        this.mHeaderLinkDivider.setVisibility(this.mHeaderLink.getVisibility());
        if (this.mHeaderLogo.getVisibility() == 8 && this.mHeaderPublisher.getVisibility() == 8) {
            if (this.mHeaderTopicDivider.getVisibility() == 0) {
                this.mHeaderTopicDivider.setVisibility(8);
            } else if (this.mHeaderTimeElapsedDivider.getVisibility() == 0) {
                this.mHeaderTimeElapsedDivider.setVisibility(8);
            } else if (this.mHeaderLinkDivider.getVisibility() == 0) {
                this.mHeaderLinkDivider.setVisibility(8);
            }
        }
    }

    public void hideHeader() {
        ViewGroup viewGroup = this.mHeader;
        if (viewGroup != null) {
            viewGroup.setVisibility(8);
        }
    }

    public void hideHeaderContextButton() {
        View view = this.mHeaderContextButton;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    public void setHeaderContextButtonClickability(boolean z) {
        this.mHeaderContextButton.setClickable(z);
    }

    @OnClick
    public void onContextMenuClick(View view) {
        ((AbstractArticleTilePresenter) this.mPresenter).onContextMenuClick(view);
    }
}
