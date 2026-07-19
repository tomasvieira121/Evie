package com.evie.sidescreen.topicdetail;

import android.content.Intent;
import android.os.Bundle;
import android.widget.FrameLayout;
import androidx.fragment.app.Fragment;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.evie.sidescreen.R;
import com.evie.sidescreen.SideScreenActivity;
import com.evie.sidescreen.tiles.videos.PopupViewProvider;
import dagger.android.AndroidInjector;
import dagger.android.support.HasSupportFragmentInjector;
import org.schema.NewsArticle;

/* JADX INFO: loaded from: classes.dex */
public class TopicDetailActivity extends SideScreenActivity implements TopicDetailFragment.TopicDetailIdProvider, HasSupportFragmentInjector {
    private boolean mFromRelatedVideos;

    @BindView
    FrameLayout mPopupView;
    PopupViewProvider mPopupViewProvider = new PopupViewProvider(null);
    private Intent mResult;
    private String mTopicId;
    private static final String PREFIX = "com.evie.sidescreen.topicdetail.TopicDetailActivity";
    public static final String INTENT_KEY_TOPIC_ID = PREFIX + ".topicId";
    public static final String INTENT_FROM_RELATED_VIDEOS = PREFIX + ".from_related_videos";

    @Override // com.evie.sidescreen.SideScreenActivity
    protected String getScreenViewProtobuf() {
        return null;
    }

    @Override // com.evie.sidescreen.SideScreenActivity
    protected String getScreenViewSubType() {
        return null;
    }

    @Override // com.evie.sidescreen.SideScreenActivity
    protected String getScreenViewTitle() {
        return null;
    }

    @Override // com.evie.sidescreen.SideScreenActivity
    protected String getScreenViewType() {
        return "topic-detail";
    }

    @Override // com.evie.sidescreen.SideScreenActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        onCreateInject();
        super.onCreate(bundle);
        this.mTopicId = getIntent().getStringExtra(INTENT_KEY_TOPIC_ID);
        this.mFromRelatedVideos = getIntent().getBooleanExtra(INTENT_FROM_RELATED_VIDEOS, false);
        if (this.mTopicId == null) {
            finish();
            return;
        }
        setContentView(R.layout.ss_topic_detail_activity);
        ButterKnife.bind(this);
        this.mPopupViewProvider.setPopupView(this.mPopupView);
    }

    @Override // com.evie.sidescreen.topicdetail.TopicDetailFragment.TopicDetailIdProvider
    public String getTopicId() {
        return this.mTopicId;
    }

    @Override // com.evie.sidescreen.SideScreenActivity
    public PopupViewProvider getPopupViewProvider() {
        return this.mPopupViewProvider;
    }

    @Override // dagger.android.support.HasSupportFragmentInjector
    public AndroidInjector<Fragment> supportFragmentInjector() {
        return getSupportFragmentInjector();
    }

    @Override // com.evie.sidescreen.SideScreenActivity
    protected String getScreenViewMetaData() {
        return this.mTopicId;
    }

    public void setIsFollowingResult(boolean z) {
        if (this.mFromRelatedVideos) {
            if (this.mResult == null) {
                this.mResult = new Intent();
                setResult(-1, this.mResult);
            }
            this.mResult.putExtra("following", z);
        }
    }

    public boolean setArticleResult(NewsArticle newsArticle) {
        if (!this.mFromRelatedVideos) {
            return false;
        }
        if (this.mResult == null) {
            this.mResult = new Intent();
            setResult(-1, this.mResult);
        }
        this.mResult.putExtra("article", newsArticle);
        finish();
        return true;
    }
}
