package com.evie.sidescreen.relatedcontent;

import android.content.Context;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.net.Uri;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.R;
import com.evie.sidescreen.SideScreenActivity;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.tiles.videos.PopupViewProvider;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import dagger.android.AndroidInjector;
import dagger.android.support.HasSupportFragmentInjector;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import org.schema.NewsArticle;
import org.schema.Organization;
import uk.p007co.chrisjenx.calligraphy.CalligraphyContextWrapper;
import uk.p007co.chrisjenx.calligraphy.TypefaceUtils;

/* JADX INFO: loaded from: classes.dex */
public class RelatedArticlesActivity extends SideScreenActivity implements HasSupportFragmentInjector {
    private NewsArticle mArticle;
    private String mArticleId;

    @BindView
    FrameLayout mContainer;

    @BindView
    ImageView mLogo;

    @BindView
    ViewGroup mPopupView;
    PopupViewProvider mPopupViewProvider = new PopupViewProvider(null);
    private RelatedArticlesFragment mRelatedContentFragment;
    private ScreenInfo mScreenInfo;

    @BindView
    Toolbar mToolbar;

    @BindView
    TextView mToolbarTitle;
    private static final String PREFIX = "com.evie.sidescreen.relatedcontent.RelatedArticlesActivity";
    public static final String EXTRA_ARTICLE = PREFIX + ".article";

    @Override // com.evie.sidescreen.SideScreenActivity
    protected String getScreenViewSubType() {
        return "trending";
    }

    @Override // com.evie.sidescreen.SideScreenActivity
    protected String getScreenViewTitle() {
        return null;
    }

    @Override // com.evie.sidescreen.SideScreenActivity
    protected String getScreenViewType() {
        return "related-articles";
    }

    @Override // com.evie.sidescreen.SideScreenActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(context));
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        MenuItem menuItemAdd = menu.add(0, 101, 0, "Share");
        menuItemAdd.setIcon(R.drawable.ic_share_black_24dp);
        menuItemAdd.setShowAsAction(2);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 101) {
            shareArticle();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.evie.sidescreen.SideScreenActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        onCreateInject();
        super.onCreate(bundle);
        setContentView(R.layout.ss_related_articles_activity);
        ButterKnife.bind(this);
        this.mPopupViewProvider.setPopupView(this.mPopupView);
        Intent intent = getIntent();
        if (intent.getBooleanExtra("analytics.send_tap_event", false)) {
            AnalyticsHandler.EventProp eventProp = new AnalyticsHandler.EventProp();
            eventProp.add("item_type", intent.getStringExtra("analytics.item_type"));
            eventProp.add("analytics_proto", intent.getStringExtra("analytics.proto"));
            eventProp.add("screen_type", "notification");
            eventProp.add("entity_id", intent.getStringExtra("com.evie.sidescreen.article_id"));
            eventProp.add("impression_id", intent.getStringExtra("analytics.impression_id"));
            this.mAnalyticsHandler.logEvent("ev_ss_tap", eventProp);
        }
        setSupportActionBar(this.mToolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setDisplayShowHomeEnabled(true);
        getSupportActionBar().setDisplayShowTitleEnabled(false);
        this.mToolbar.getNavigationIcon().setColorFilter(-16777216, PorterDuff.Mode.SRC_ATOP);
        this.mToolbarTitle.setTextColor(-12632257);
        this.mToolbarTitle.setTextSize(14.0f);
        this.mToolbarTitle.setTypeface(TypefaceUtils.load(getAssets(), getString(R.string.circular_font_regular)));
        NewsArticle newsArticle = (NewsArticle) intent.getSerializableExtra(EXTRA_ARTICLE);
        if (newsArticle != null) {
            setArticle(newsArticle, false);
        } else {
            this.mArticleId = intent.getStringExtra("com.evie.sidescreen.article_id");
            this.mScreenInfo = new ScreenInfo("related_content", this.mArticleId, "related_articles");
        }
        this.mRelatedContentFragment = RelatedArticlesFragment.createInstance(this.mArticle, this.mArticleId, this.mScreenInfo);
        FragmentTransaction fragmentTransactionBeginTransaction = getSupportFragmentManager().beginTransaction();
        fragmentTransactionBeginTransaction.add(this.mContainer.getId(), this.mRelatedContentFragment);
        fragmentTransactionBeginTransaction.commit();
    }

    @Override // com.evie.sidescreen.SideScreenActivity
    protected String getScreenViewMetaData() {
        NewsArticle newsArticle = this.mArticle;
        if (newsArticle != null) {
            return newsArticle.getId();
        }
        return this.mArticleId;
    }

    @Override // com.evie.sidescreen.SideScreenActivity
    protected String getScreenViewProtobuf() {
        return (String) this.mArticle.getAnalytics().get("analytics_proto");
    }

    public void setArticle(NewsArticle newsArticle, boolean z) {
        RelatedArticlesFragment relatedArticlesFragment;
        if (newsArticle == null) {
            finish();
            return;
        }
        this.mArticle = newsArticle;
        this.mScreenInfo = new ScreenInfo("related_content", this.mArticle.getId(), "related_articles");
        setHeader();
        if (z || (relatedArticlesFragment = this.mRelatedContentFragment) == null) {
            return;
        }
        relatedArticlesFragment.setArticle(this.mArticle, this.mScreenInfo);
    }

    private void setHeader() {
        if (this.mArticle.getPublisherOrganization() != null) {
            this.mToolbarTitle.setText(this.mArticle.getPublisherOrganization().getName());
        }
        Organization publisherOrganization = this.mArticle.getPublisherOrganization();
        String faviconUrl = publisherOrganization != null ? publisherOrganization.getFaviconUrl() : null;
        if (faviconUrl == null) {
            this.mLogo.setVisibility(8);
        } else {
            this.mLogo.setImageURI(Uri.parse(faviconUrl));
            this.mLogo.setVisibility(0);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity
    public boolean onSupportNavigateUp() {
        finish();
        return true;
    }

    @Override // com.evie.sidescreen.SideScreenActivity
    public PopupViewProvider getPopupViewProvider() {
        return this.mPopupViewProvider;
    }

    @Override // dagger.android.support.HasSupportFragmentInjector
    public AndroidInjector<Fragment> supportFragmentInjector() {
        return getSupportFragmentInjector();
    }

    private void shareArticle() {
        if (this.mArticle.getUrl() == null) {
            return;
        }
        final ActivityStarter activityStarter = new ActivityStarter(this, this.mAnalyticsModel);
        this.mDisposables.add(this.mSideScreenRelatedContentModel.getShortLink(this.mArticle.getUrl()).subscribeOn(Schedulers.m548io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.evie.sidescreen.relatedcontent.-$$Lambda$RelatedArticlesActivity$TM7hoyzFJckwH4HBO9X1dMqqdm4
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                RelatedArticlesActivity relatedArticlesActivity = this.f$0;
                activityStarter.startShareActivity((String) obj, relatedArticlesActivity.mArticle.getHeadline(), relatedArticlesActivity.mScreenInfo);
            }
        }));
    }
}
