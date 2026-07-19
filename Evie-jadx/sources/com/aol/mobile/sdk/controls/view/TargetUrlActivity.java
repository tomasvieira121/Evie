package com.aol.mobile.sdk.controls.view;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.aol.mobile.sdk.annotations.PrivateApi;
import com.aol.mobile.sdk.controls.C0234R;

/* JADX INFO: loaded from: classes.dex */
@PrivateApi
public final class TargetUrlActivity extends Activity {
    public static final String KEY_SHOW_CLOSE = "KEY_SHOW_CLOSE";
    public static final String KEY_TARGET_URL = "KEY_TARGET_URL";

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C0234R.layout.target_url_activity);
        String stringExtra = getIntent().getStringExtra(KEY_TARGET_URL);
        boolean booleanExtra = getIntent().getBooleanExtra(KEY_SHOW_CLOSE, false);
        View viewFindViewById = findViewById(C0234R.id.clickthrough_close);
        viewFindViewById.setVisibility(booleanExtra ? 0 : 8);
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.aol.mobile.sdk.controls.view.TargetUrlActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TargetUrlActivity.this.finish();
            }
        });
        WebView webView = (WebView) findViewById(C0234R.id.web_view);
        webView.getSettings().setJavaScriptEnabled(true);
        webView.setWebViewClient(new WebViewClient());
        webView.loadUrl(stringExtra);
    }
}
