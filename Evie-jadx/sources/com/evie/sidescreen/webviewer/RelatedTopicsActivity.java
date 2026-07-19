package com.evie.sidescreen.webviewer;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.evie.models.topics.data.ListTopicsRequestOptions;
import com.evie.sidescreen.R;
import com.evie.sidescreen.SideScreenActivity;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.personalize.TopicsListFragment;
import com.evie.sidescreen.tiles.videos.PopupViewProvider;
import dagger.android.AndroidInjector;
import dagger.android.support.HasSupportFragmentInjector;
import java.util.List;
import org.schema.evie.topics.Topic;
import uk.p007co.chrisjenx.calligraphy.CalligraphyContextWrapper;

/* JADX INFO: loaded from: classes.dex */
public class RelatedTopicsActivity extends SideScreenActivity implements HasSupportFragmentInjector {
    private String mReferringArticleId;

    @BindView
    Toolbar mToolbar;

    @BindView
    TextView mToolbarTitle;
    private static final String PREFIX = "com.evie.sidescreen.webviewer.RelatedTopicsActivity";
    public static final String EXTRA_TOPICS_KEY = PREFIX + ".topics";
    public static final String EXTRA_ARTICLE_ID_KEY = PREFIX + ".article_id";

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
        return "related-topics";
    }

    @Override // com.evie.sidescreen.SideScreenActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(context));
    }

    @Override // com.evie.sidescreen.SideScreenActivity
    protected String getScreenViewMetaData() {
        return this.mReferringArticleId;
    }

    @Override // com.evie.sidescreen.SideScreenActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        List<? extends Topic> list;
        onCreateInject();
        super.onCreate(bundle);
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.ss_related_topics_activity, (ViewGroup) null);
        setContentView(viewInflate);
        ButterKnife.bind(this, viewInflate);
        try {
            list = (List) getIntent().getExtras().getSerializable(EXTRA_TOPICS_KEY);
        } catch (Exception unused) {
            list = null;
        }
        if (list == null || list.isEmpty()) {
            finish();
        }
        this.mReferringArticleId = getIntent().getStringExtra(EXTRA_ARTICLE_ID_KEY);
        ListTopicsRequestOptions listTopicsRequestOptions = new ListTopicsRequestOptions();
        listTopicsRequestOptions.setIds(list);
        getSupportFragmentManager().beginTransaction().add(R.id.container, TopicsListFragment.createInstance(listTopicsRequestOptions, false, false, new ScreenInfo("related_topic", this.mReferringArticleId, null)), null).commit();
        setSupportActionBar(this.mToolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setDisplayShowHomeEnabled(true);
        getSupportActionBar().setDisplayShowTitleEnabled(false);
        this.mToolbarTitle.setText(R.string.ss_related_topics_title);
    }

    @Override // androidx.appcompat.app.AppCompatActivity
    public boolean onSupportNavigateUp() {
        finish();
        return true;
    }

    @Override // com.evie.sidescreen.SideScreenActivity
    public PopupViewProvider getPopupViewProvider() {
        return new PopupViewProvider(null);
    }

    @Override // dagger.android.support.HasSupportFragmentInjector
    public AndroidInjector<Fragment> supportFragmentInjector() {
        return getSupportFragmentInjector();
    }
}
