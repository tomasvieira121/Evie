package com.evie.sidescreen.webviewer;

import android.view.View;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;
import com.evie.sidescreen.personalize.TopicsFooterBar;
import com.google.android.material.appbar.AppBarLayout;

/* JADX INFO: loaded from: classes.dex */
public class WebViewerActivity_ViewBinding implements Unbinder {
    private WebViewerActivity target;

    public WebViewerActivity_ViewBinding(WebViewerActivity webViewerActivity, View view) {
        this.target = webViewerActivity;
        webViewerActivity.mContentView = Utils.findRequiredView(view, R.id.content, "field 'mContentView'");
        webViewerActivity.mAppBarLayout = (AppBarLayout) Utils.findRequiredViewAsType(view, R.id.app_bar_layout, "field 'mAppBarLayout'", AppBarLayout.class);
        webViewerActivity.mToolbar = (Toolbar) Utils.findRequiredViewAsType(view, R.id.toolbar, "field 'mToolbar'", Toolbar.class);
        webViewerActivity.mWebView = (WebView) Utils.findRequiredViewAsType(view, R.id.webview, "field 'mWebView'", WebView.class);
        webViewerActivity.mToolbarTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.toolbar_title, "field 'mToolbarTitle'", TextView.class);
        webViewerActivity.mProgressBar = (ProgressBar) Utils.findRequiredViewAsType(view, R.id.progress, "field 'mProgressBar'", ProgressBar.class);
        webViewerActivity.mLogo = (ImageView) Utils.findRequiredViewAsType(view, R.id.logo, "field 'mLogo'", ImageView.class);
        webViewerActivity.mTopicsFooterBar = (TopicsFooterBar) Utils.findRequiredViewAsType(view, R.id.footer, "field 'mTopicsFooterBar'", TopicsFooterBar.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        WebViewerActivity webViewerActivity = this.target;
        if (webViewerActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        webViewerActivity.mContentView = null;
        webViewerActivity.mAppBarLayout = null;
        webViewerActivity.mToolbar = null;
        webViewerActivity.mWebView = null;
        webViewerActivity.mToolbarTitle = null;
        webViewerActivity.mProgressBar = null;
        webViewerActivity.mLogo = null;
        webViewerActivity.mTopicsFooterBar = null;
    }
}
