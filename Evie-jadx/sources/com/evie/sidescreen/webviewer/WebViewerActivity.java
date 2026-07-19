package com.evie.sidescreen.webviewer;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.GeolocationPermissions;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.R;
import com.evie.sidescreen.SideScreenActivity;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.personalize.TopicsFooterBar;
import com.evie.sidescreen.personalize.TopicsFooterBarHandler;
import com.evie.sidescreen.tiles.videos.PopupViewProvider;
import com.google.android.material.appbar.AppBarLayout;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import io.reactivex.Completable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import org.schema.evie.topics.Topic;
import uk.p007co.chrisjenx.calligraphy.CalligraphyContextWrapper;

/* JADX INFO: loaded from: classes.dex */
public class WebViewerActivity extends SideScreenActivity {
    ActivityStarter mActivityStarter;

    @BindView
    AppBarLayout mAppBarLayout;

    @BindView
    View mContentView;
    TopicsFooterBarHandler mFooterBarHandler;

    @BindView
    ImageView mLogo;

    @BindView
    ProgressBar mProgressBar;
    private String mProtobuf;
    private String mShareSubject;
    private Set<String> mStartUrls = new HashSet();
    private String mTileId;
    private String mTitle;

    @BindView
    Toolbar mToolbar;

    @BindView
    TextView mToolbarTitle;
    private List<? extends Topic> mTopics;

    @BindView
    TopicsFooterBar mTopicsFooterBar;

    @BindView
    WebView mWebView;
    private static final String PREFIX = "com.evie.sidescreen.webviewer.WebViewerActivity";
    public static final String EXTRA_URL_KEY = PREFIX + ".url";
    public static final String EXTRA_FALLBACK_URL_KEY = PREFIX + ".fallbackurl";
    public static final String EXTRA_TITLE_KEY = PREFIX + ".title";
    public static final String EXTRA_SHARE_SUBJECT_KEY = PREFIX + ".share";
    public static final String EXTRA_FAVICON_KEY = PREFIX + ".favicon";
    public static final String EXTRA_TOPICS_KEY = PREFIX + ".topics";
    public static final String EXTRA_TILE_ID_KEY = PREFIX + ".tileId";
    public static final String EXTRA_JSON_TOPICS_KEY = PREFIX + ".topics_json";
    public static final String EXTRA_ANALYTICS_PROTO_KEY = PREFIX + ".analytics_proto";

    @Override // com.evie.sidescreen.SideScreenActivity
    protected String getScreenViewSubType() {
        return "trending";
    }

    @Override // com.evie.sidescreen.SideScreenActivity
    protected String getScreenViewType() {
        return "web-viewer";
    }

    @Override // com.evie.sidescreen.SideScreenActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        onCreateInject();
        super.onCreate(bundle);
        if (getIntent() == null) {
            finish();
            return;
        }
        Intent intent = getIntent();
        String stringExtra = intent.getStringExtra(EXTRA_URL_KEY);
        if (stringExtra == null) {
            finish();
            return;
        }
        this.mStartUrls.clear();
        this.mStartUrls.add(stringExtra);
        final String stringExtra2 = intent.getStringExtra(EXTRA_FALLBACK_URL_KEY);
        if (!TextUtils.isEmpty(stringExtra2)) {
            this.mStartUrls.add(stringExtra2);
        }
        this.mTitle = intent.getStringExtra(EXTRA_TITLE_KEY);
        String str = this.mTitle;
        if (str == null) {
            str = "";
        }
        this.mTitle = str;
        this.mProtobuf = intent.getStringExtra(EXTRA_ANALYTICS_PROTO_KEY);
        this.mShareSubject = intent.getStringExtra(EXTRA_SHARE_SUBJECT_KEY);
        String stringExtra3 = intent.getStringExtra(EXTRA_FAVICON_KEY);
        Uri uri = null;
        try {
            uri = Uri.parse(stringExtra3);
        } catch (Exception unused) {
        }
        if (intent.getBooleanExtra("analytics.send_tap_event", false)) {
            AnalyticsHandler.EventProp eventProp = new AnalyticsHandler.EventProp();
            eventProp.add("item_type", intent.getStringExtra("analytics.item_type"));
            eventProp.add("analytics_proto", intent.getStringExtra("analytics.proto"));
            eventProp.add("screen_type", "notification");
            eventProp.add("entity_id", intent.getStringExtra("com.evie.sidescreen.article_id"));
            eventProp.add("impression_id", intent.getStringExtra("analytics.impression_id"));
            this.mAnalyticsHandler.logEvent("ev_ss_tap", eventProp);
            this.mTopics = (List) new Gson().fromJson(intent.getStringExtra(EXTRA_JSON_TOPICS_KEY), new TypeToken<List<? extends Topic>>() { // from class: com.evie.sidescreen.webviewer.WebViewerActivity.1
            }.getType());
        } else {
            try {
                this.mTopics = (List) intent.getSerializableExtra(EXTRA_TOPICS_KEY);
            } catch (Exception unused2) {
            }
        }
        if (this.mTopics == null) {
            this.mTopics = Collections.emptyList();
        }
        this.mTileId = intent.getStringExtra(EXTRA_TILE_ID_KEY);
        this.mActivityStarter = new ActivityStarter(this, this.mAnalyticsModel);
        this.mFooterBarHandler = new TopicsFooterBarHandler(this.mActivityStarter, this.mAnalyticsModel);
        setContentView(R.layout.ss_web_viewer_activity);
        ButterKnife.bind(this);
        setSupportActionBar(this.mToolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setDisplayShowHomeEnabled(true);
        getSupportActionBar().setDisplayShowTitleEnabled(false);
        this.mToolbarTitle.setText(this.mTitle);
        this.mProgressBar.setProgress(0);
        this.mProgressBar.setMax(100);
        if (uri == null) {
            this.mLogo.setVisibility(8);
        } else {
            this.mLogo.setImageURI(Uri.parse(stringExtra3));
            this.mLogo.setVisibility(0);
        }
        this.mDisposables.add(clearCookies(this));
        this.mWebView.setWebChromeClient(new WebChromeClient() { // from class: com.evie.sidescreen.webviewer.WebViewerActivity.2
            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i) {
                WebViewerActivity.this.mProgressBar.setProgress(i);
                if (i == 100) {
                    WebViewerActivity.this.mProgressBar.setVisibility(4);
                } else {
                    WebViewerActivity.this.mProgressBar.setVisibility(0);
                }
            }

            @Override // android.webkit.WebChromeClient
            public void onGeolocationPermissionsShowPrompt(String str2, GeolocationPermissions.Callback callback) {
                callback.invoke(str2, true, false);
            }
        });
        this.mWebView.setWebViewClient(new WebViewClient() { // from class: com.evie.sidescreen.webviewer.WebViewerActivity.3
            boolean hasCommittedFirstLoad = false;
            String clearHistoryTarget = null;

            void clearHistory(String str2) {
                this.clearHistoryTarget = str2;
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str2) {
                if (Objects.equals(str2, this.clearHistoryTarget)) {
                    this.clearHistoryTarget = null;
                    webView.clearHistory();
                }
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i, String str2, String str3) {
                if (!WebViewerActivity.this.mStartUrls.contains(str3) || TextUtils.isEmpty(stringExtra2) || stringExtra2.equals(str3)) {
                    return;
                }
                clearHistory(stringExtra2);
                webView.loadUrl(stringExtra2);
            }

            @Override // android.webkit.WebViewClient
            @TargetApi(23)
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                if (webResourceRequest.isForMainFrame()) {
                    onReceivedError(webView, webResourceError.getErrorCode(), webResourceError.getDescription().toString(), webResourceRequest.getUrl().toString());
                }
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str2) {
                if (this.hasCommittedFirstLoad) {
                    return false;
                }
                WebViewerActivity.this.mStartUrls.add(str2);
                return false;
            }

            @Override // android.webkit.WebViewClient
            @TargetApi(24)
            public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
                if (webResourceRequest.isForMainFrame() && webResourceRequest.isRedirect()) {
                    return shouldOverrideUrlLoading(webView, webResourceRequest.getUrl().toString());
                }
                return false;
            }

            @Override // android.webkit.WebViewClient
            public void onPageCommitVisible(WebView webView, String str2) {
                this.hasCommittedFirstLoad = true;
                super.onPageCommitVisible(webView, str2);
                WebViewerActivity.this.updateTopicsFooterBarVisibility(str2);
            }
        });
        WebSettings settings = this.mWebView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setAppCacheEnabled(true);
        settings.setGeolocationEnabled(true);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        File externalCacheDir = getApplicationContext().getExternalCacheDir();
        if (externalCacheDir != null) {
            settings.setAppCachePath(externalCacheDir.getAbsolutePath());
        }
        settings.setDatabaseEnabled(true);
        this.mWebView.loadUrl(stringExtra);
        this.mFooterBarHandler.bindFooterBarWithItems(this.mTopicsFooterBar, this.mTileId, this.mTopics);
        this.mAppBarLayout.addOnOffsetChangedListener(new AppBarLayout.OnOffsetChangedListener() { // from class: com.evie.sidescreen.webviewer.-$$Lambda$WebViewerActivity$9iYs8AaDpAg7nVX99ECXs90TREQ
            @Override // com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
            public final void onOffsetChanged(AppBarLayout appBarLayout, int i) {
                this.f$0.mTopicsFooterBar.setTranslationY(-i);
            }
        });
    }

    public static Disposable clearCookies(final Context context) {
        return Completable.fromRunnable(new Runnable() { // from class: com.evie.sidescreen.webviewer.-$$Lambda$WebViewerActivity$NVbEB2tGP8cPvuc4WtskfKjxckA
            @Override // java.lang.Runnable
            public final void run() {
                WebViewerActivity.lambda$clearCookies$1(context);
            }
        }).subscribe();
    }

    static /* synthetic */ void lambda$clearCookies$1(Context context) {
        if (Build.VERSION.SDK_INT >= 22) {
            CookieManager.getInstance().removeAllCookies(null);
            CookieManager.getInstance().flush();
            return;
        }
        CookieSyncManager cookieSyncManagerCreateInstance = CookieSyncManager.createInstance(context);
        cookieSyncManagerCreateInstance.startSync();
        CookieManager cookieManager = CookieManager.getInstance();
        cookieManager.removeAllCookie();
        cookieManager.removeSessionCookie();
        cookieSyncManagerCreateInstance.stopSync();
        cookieSyncManagerCreateInstance.sync();
    }

    @Override // com.evie.sidescreen.SideScreenActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // com.evie.sidescreen.SideScreenActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // com.evie.sidescreen.SideScreenActivity
    protected String getScreenViewTitle() {
        return this.mTitle;
    }

    @Override // com.evie.sidescreen.SideScreenActivity
    protected String getScreenViewMetaData() {
        return this.mTileId;
    }

    @Override // com.evie.sidescreen.SideScreenActivity
    protected String getScreenViewProtobuf() {
        return this.mProtobuf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTopicsFooterBarVisibility(String str) {
        boolean z;
        List<? extends Topic> list = this.mTopics;
        if (list == null || list.isEmpty() || str == null) {
            this.mTopicsFooterBar.setVisibility(8);
            return;
        }
        Iterator<String> it = this.mStartUrls.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            } else if (str.contains(it.next())) {
                z = true;
                break;
            }
        }
        if (z) {
            this.mTopicsFooterBar.setVisibility(0);
        } else {
            this.mTopicsFooterBar.setVisibility(8);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity
    public boolean onSupportNavigateUp() {
        finish();
        return true;
    }

    @Override // com.evie.sidescreen.SideScreenActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.mWebView.canGoBack()) {
            this.mWebView.goBack();
        } else {
            super.onBackPressed();
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.ss_web_viewer_menu, menu);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        final ScreenInfo screenInfo = new ScreenInfo("article_viewer", this.mTileId, null);
        if (itemId == R.id.action_share) {
            this.mDisposables.add(this.mSideScreenRelatedContentModel.getShortLink(this.mWebView.getUrl()).subscribeOn(Schedulers.m548io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.evie.sidescreen.webviewer.-$$Lambda$WebViewerActivity$VsuGW5i2dFE3xvZSzfJODAU3Q-Q
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    WebViewerActivity webViewerActivity = this.f$0;
                    webViewerActivity.mActivityStarter.startShareActivity((String) obj, webViewerActivity.mShareSubject, screenInfo);
                }
            }));
            return true;
        }
        if (itemId == R.id.action_browser) {
            onBrowserSelected(screenInfo);
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    private void onBrowserSelected(ScreenInfo screenInfo) {
        HashMap map = new HashMap();
        map.put("item_type", "open_in_browser");
        map.put("attribute_screen_info", screenInfo);
        this.mAnalyticsModel.trackEvent("ev_ss_tap", map);
        if (this.mActivityStarter.startActivity(null, new Intent("android.intent.action.VIEW", Uri.parse(this.mWebView.getUrl())), true)) {
            finish();
        }
    }

    @Override // com.evie.sidescreen.SideScreenActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(context));
    }

    @Override // com.evie.sidescreen.SideScreenActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // com.evie.sidescreen.SideScreenActivity
    public PopupViewProvider getPopupViewProvider() {
        return new PopupViewProvider(null);
    }
}
