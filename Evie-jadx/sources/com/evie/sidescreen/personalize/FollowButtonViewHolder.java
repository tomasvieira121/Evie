package com.evie.sidescreen.personalize;

import android.content.Context;
import android.view.View;
import android.widget.Toast;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Optional;
import com.evie.sidescreen.R;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.topicdetail.TopicDetailActivity;
import org.schema.evie.topics.Topic;

/* JADX INFO: loaded from: classes.dex */
public class FollowButtonViewHolder {

    /* JADX INFO: renamed from: ID */
    public static final int f333ID = R.layout.ss_follow_button;

    @BindView
    View mBlockedButton;

    @BindView
    View mFollowButton;

    @BindView
    View mFollowingButton;
    private OnFollowButtonClickListener mOnFollowButtonClickListener;
    private Topic mTopic = null;
    private ScreenInfo mScreenInfo = null;

    public interface OnFollowButtonClickListener {
        void onBlockedButtonClick(FollowButtonViewHolder followButtonViewHolder, Topic topic, ScreenInfo screenInfo);

        void onFollowButtonClick(FollowButtonViewHolder followButtonViewHolder, Topic topic, ScreenInfo screenInfo);

        void onFollowingButtonClick(FollowButtonViewHolder followButtonViewHolder, Topic topic, ScreenInfo screenInfo);
    }

    public FollowButtonViewHolder(View view) {
        ButterKnife.bind(this, view);
    }

    public void setTopic(Topic topic) {
        this.mTopic = topic;
    }

    public void setScreenInfo(ScreenInfo screenInfo) {
        this.mScreenInfo = screenInfo;
    }

    public void setState(FollowState followState) {
        View view;
        this.mFollowButton.setVisibility(8);
        this.mFollowingButton.setVisibility(8);
        View view2 = this.mBlockedButton;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        switch (followState) {
            case FOLLOW:
                view = this.mFollowButton;
                break;
            case FOLLOWING:
                view = this.mFollowingButton;
                break;
            case BLOCKED:
                view = this.mBlockedButton;
                break;
            default:
                throw new IllegalArgumentException("Unhandled State argument!");
        }
        view.setVisibility(0);
        boolean zEquals = FollowState.FOLLOWING.equals(followState);
        Context context = this.mFollowButton.getContext();
        if (context instanceof TopicDetailActivity) {
            ((TopicDetailActivity) context).setIsFollowingResult(zEquals);
        }
    }

    @OnClick
    public void onFollowButtonClick() {
        OnFollowButtonClickListener onFollowButtonClickListener = this.mOnFollowButtonClickListener;
        if (onFollowButtonClickListener != null) {
            onFollowButtonClickListener.onFollowButtonClick(this, this.mTopic, this.mScreenInfo);
        }
    }

    @OnClick
    @Optional
    public void onBlockedButtonClick() {
        OnFollowButtonClickListener onFollowButtonClickListener = this.mOnFollowButtonClickListener;
        if (onFollowButtonClickListener != null) {
            onFollowButtonClickListener.onBlockedButtonClick(this, this.mTopic, this.mScreenInfo);
        }
    }

    @OnClick
    public void onFollowingButtonClick() {
        OnFollowButtonClickListener onFollowButtonClickListener = this.mOnFollowButtonClickListener;
        if (onFollowButtonClickListener != null) {
            onFollowButtonClickListener.onFollowingButtonClick(this, this.mTopic, this.mScreenInfo);
        }
    }

    public void showError() {
        Toast.makeText(this.mFollowButton.getContext(), R.string.ss_follow_error_message, 1).show();
    }

    public void setOnFollowButtonClickListener(OnFollowButtonClickListener onFollowButtonClickListener) {
        this.mOnFollowButtonClickListener = onFollowButtonClickListener;
    }
}
