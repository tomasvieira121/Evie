package com.evie.sidescreen.personalize;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import butterknife.BindDimen;
import butterknife.BindView;
import butterknife.OnClick;
import com.evie.sidescreen.R;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.mvp.MvpViewHolder;
import com.facebook.drawee.view.SimpleDraweeView;
import org.schema.evie.topics.Topic;

/* JADX INFO: loaded from: classes.dex */
public class TopicItemViewHolder extends MvpViewHolder<TopicItemPresenter> {

    /* JADX INFO: renamed from: ID */
    public static final int f336ID = R.layout.ss_topic_list_item;
    private boolean mCheckFollowStyle;
    private boolean mDarkTheme;

    @BindView
    View mDivider;

    @BindView
    View mFollowButton;
    private FollowButtonViewHolder mFollowButtonViewHolder;

    @BindView
    ViewGroup mFollowContainer;
    private final FollowButtonViewHolder.OnFollowButtonClickListener mFollowListener;

    @BindView
    SimpleDraweeView mIcon;

    @BindDimen
    int mIconWidth;

    @BindView
    TextView mTextView;

    public TopicItemViewHolder(View view) {
        super(view);
        this.mCheckFollowStyle = false;
        this.mDarkTheme = false;
        this.mFollowListener = new FollowButtonViewHolder.OnFollowButtonClickListener() { // from class: com.evie.sidescreen.personalize.TopicItemViewHolder.1
            @Override // com.evie.sidescreen.personalize.FollowButtonViewHolder.OnFollowButtonClickListener
            public void onFollowButtonClick(FollowButtonViewHolder followButtonViewHolder, Topic topic, ScreenInfo screenInfo) {
                ((TopicItemPresenter) TopicItemViewHolder.this.mPresenter).getFollowButtonHandler().onFollowButtonClick(followButtonViewHolder, topic, screenInfo);
                ((TopicItemPresenter) TopicItemViewHolder.this.mPresenter).followStateChanged();
            }

            @Override // com.evie.sidescreen.personalize.FollowButtonViewHolder.OnFollowButtonClickListener
            public void onFollowingButtonClick(FollowButtonViewHolder followButtonViewHolder, Topic topic, ScreenInfo screenInfo) {
                ((TopicItemPresenter) TopicItemViewHolder.this.mPresenter).getFollowButtonHandler().onFollowingButtonClick(followButtonViewHolder, topic, screenInfo);
                ((TopicItemPresenter) TopicItemViewHolder.this.mPresenter).followStateChanged();
            }

            @Override // com.evie.sidescreen.personalize.FollowButtonViewHolder.OnFollowButtonClickListener
            public void onBlockedButtonClick(FollowButtonViewHolder followButtonViewHolder, Topic topic, ScreenInfo screenInfo) {
                ((TopicItemPresenter) TopicItemViewHolder.this.mPresenter).getFollowButtonHandler().onBlockedButtonClick(followButtonViewHolder, topic, screenInfo);
                ((TopicItemPresenter) TopicItemViewHolder.this.mPresenter).followStateChanged();
            }
        };
        this.mFollowButtonViewHolder = new FollowButtonViewHolder(this.mFollowButton);
        this.mFollowButtonViewHolder.setOnFollowButtonClickListener(this.mFollowListener);
    }

    public int getIconWidth() {
        return this.mIconWidth;
    }

    public void setIconUrl(String str) {
        this.mIcon.setImageURI(str);
    }

    public void setLabel(String str) {
        this.mTextView.setText(str);
    }

    public void setDarkTheme() {
        this.mDarkTheme = true;
    }

    @OnClick
    public void onItemViewClick() {
        ((TopicItemPresenter) this.mPresenter).onItemClick();
    }

    public FollowButtonViewHolder getFollowButtonViewHolder() {
        return this.mFollowButtonViewHolder;
    }

    public void showDivider() {
        View view = this.mDivider;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    public void hideDivider() {
        View view = this.mDivider;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    public void setCheckFollowStyle() {
        if (this.mCheckFollowStyle) {
            return;
        }
        this.mFollowContainer.removeAllViews();
        this.mFollowButton = LayoutInflater.from(this.itemView.getContext()).inflate(R.layout.ss_follow_onboarding_button, this.mFollowContainer, false);
        this.mFollowButtonViewHolder = new FollowButtonViewHolder(this.mFollowButton);
        this.mFollowButtonViewHolder.setOnFollowButtonClickListener(this.mFollowListener);
        this.mFollowContainer.addView(this.mFollowButton);
    }

    public void setTextFollowStyle() {
        if (this.mCheckFollowStyle) {
            this.mFollowContainer.removeAllViews();
            this.mFollowButton = LayoutInflater.from(this.itemView.getContext()).inflate(R.layout.ss_follow_button, this.mFollowContainer, false);
            this.mFollowButtonViewHolder = new FollowButtonViewHolder(this.mFollowButton);
            this.mFollowButtonViewHolder.setOnFollowButtonClickListener(this.mFollowListener);
            this.mFollowContainer.addView(this.mFollowButton);
        }
    }

    public void clearAll() {
        this.mTextView.setText("");
        this.mIcon.setImageURI("");
    }
}
