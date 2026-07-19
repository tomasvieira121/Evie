package com.evie.sidescreen.topicdetail;

import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindDimen;
import butterknife.BindView;
import butterknife.OnClick;
import com.evie.sidescreen.R;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.mvp.MvpViewHolder;
import com.evie.sidescreen.personalize.FollowButtonViewHolder;
import org.schema.evie.topics.Topic;

/* JADX INFO: loaded from: classes.dex */
public class TopicDetailHeaderViewHolder extends MvpViewHolder<TopicDetailHeaderPresenter> {

    /* JADX INFO: renamed from: ID */
    public static final int f374ID = R.layout.ss_topic_detail_header;

    @BindView
    ImageView mBackdrop;

    @BindView
    TextView mDescription;

    @BindView
    View mFollowButton;
    private final FollowButtonViewHolder mFollowButtonViewHolder;

    @BindView
    ImageView mLogo;

    @BindDimen
    int mLogoWidth;

    @BindView
    TextView mTitle;

    public float getBackdropAspectRatio() {
        return 3.5714285f;
    }

    public float getLogoAspectRatio() {
        return 1.0f;
    }

    public TopicDetailHeaderViewHolder(View view) {
        super(view);
        this.mFollowButtonViewHolder = new FollowButtonViewHolder(this.mFollowButton);
        this.mFollowButtonViewHolder.setOnFollowButtonClickListener(new FollowButtonViewHolder.OnFollowButtonClickListener() { // from class: com.evie.sidescreen.topicdetail.TopicDetailHeaderViewHolder.1
            @Override // com.evie.sidescreen.personalize.FollowButtonViewHolder.OnFollowButtonClickListener
            public void onFollowButtonClick(FollowButtonViewHolder followButtonViewHolder, Topic topic, ScreenInfo screenInfo) {
                ((TopicDetailHeaderPresenter) TopicDetailHeaderViewHolder.this.mPresenter).getFollowButtonHandler().onFollowButtonClick(followButtonViewHolder, topic, screenInfo);
            }

            @Override // com.evie.sidescreen.personalize.FollowButtonViewHolder.OnFollowButtonClickListener
            public void onFollowingButtonClick(FollowButtonViewHolder followButtonViewHolder, Topic topic, ScreenInfo screenInfo) {
                ((TopicDetailHeaderPresenter) TopicDetailHeaderViewHolder.this.mPresenter).getFollowButtonHandler().onFollowingButtonClick(followButtonViewHolder, topic, screenInfo);
            }

            @Override // com.evie.sidescreen.personalize.FollowButtonViewHolder.OnFollowButtonClickListener
            public void onBlockedButtonClick(FollowButtonViewHolder followButtonViewHolder, Topic topic, ScreenInfo screenInfo) {
                ((TopicDetailHeaderPresenter) TopicDetailHeaderViewHolder.this.mPresenter).getFollowButtonHandler().onBlockedButtonClick(followButtonViewHolder, topic, screenInfo);
            }
        });
    }

    @OnClick
    public void onClickBackButton() {
        ((TopicDetailHeaderPresenter) this.mPresenter).onBack();
    }

    @OnClick
    public void onClickFollowContextButton(View view) {
        ((TopicDetailHeaderPresenter) this.mPresenter).onClickFollowContextButton(view);
    }

    public void setBackdropUri(String str) {
        if (str == null) {
            this.mBackdrop.setImageDrawable(null);
        } else {
            this.mBackdrop.setImageURI(Uri.parse(str));
        }
    }

    public void setLogoUri(String str) {
        if (str == null) {
            this.mLogo.setImageDrawable(null);
        } else {
            this.mLogo.setImageURI(Uri.parse(str));
        }
    }

    public void setTitle(String str) {
        this.mTitle.setText(str);
        if (TextUtils.isEmpty(str)) {
            this.mTitle.setVisibility(8);
        } else {
            this.mTitle.setVisibility(0);
        }
    }

    public void setDescription(String str) {
        this.mDescription.setText(str);
        if (TextUtils.isEmpty(str)) {
            this.mDescription.setVisibility(8);
        } else {
            this.mDescription.setVisibility(0);
        }
    }

    public FollowButtonViewHolder getFollowButtonViewHolder() {
        return this.mFollowButtonViewHolder;
    }

    public int getLogoWidth() {
        return this.mLogoWidth;
    }

    public int getBackdropWidth() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) this.itemView.getContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    public void setBackdrop(ColorDrawable colorDrawable) {
        this.mBackdrop.setImageDrawable(colorDrawable);
    }

    public void setLogo(ColorDrawable colorDrawable) {
        this.mLogo.setImageDrawable(colorDrawable);
    }
}
