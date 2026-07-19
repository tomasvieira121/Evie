package com.evie.jigsaw;

import android.app.Activity;
import android.net.Uri;
import android.net.UrlQuerySanitizer;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.crashlytics.android.Crashlytics;
import com.evie.common.services.analytics.models.CloseMethod;
import com.evie.jigsaw.components.base.AbstractComponent;
import com.evie.jigsaw.components.containers.StackComponent;
import com.evie.jigsaw.components.content.DialogComponent;
import com.evie.jigsaw.services.layout.LayoutService;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public class JigsawActivity extends Activity {
    private static final String LOG_TAG = "JigsawActivity";
    private AbstractComponent error;
    Jigsaw jigsaw;
    LayoutService layouts;
    private Uri link;
    private ViewGroup root;
    private View spinner;
    private final AtomicReference<AbstractComponent> mComponent = new AtomicReference<>();
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private final Runnable mShowSpinnerRunnable = new Runnable() { // from class: com.evie.jigsaw.JigsawActivity.1
        @Override // java.lang.Runnable
        public void run() {
            JigsawActivity.this.spinner.setVisibility(0);
        }
    };
    private final Runnable mShowComponentRunnable = new Runnable() { // from class: com.evie.jigsaw.JigsawActivity.2
        @Override // java.lang.Runnable
        public void run() {
            AbstractComponent abstractComponent = (AbstractComponent) JigsawActivity.this.mComponent.get();
            JigsawActivity.this.root.removeAllViews();
            abstractComponent.inflate(JigsawActivity.this.root.getContext(), JigsawActivity.this.root);
        }
    };
    private final Callback<AbstractComponent> mLayoutCallback = new Callback<AbstractComponent>() { // from class: com.evie.jigsaw.JigsawActivity.3
        @Override // retrofit2.Callback
        public void onResponse(Call<AbstractComponent> call, Response<AbstractComponent> response) {
            if (response.isSuccessful()) {
                AbstractComponent abstractComponentBody = response.body();
                abstractComponentBody.initialize(JigsawActivity.this.jigsaw);
                abstractComponentBody.recordOpenEvent();
                JigsawActivity.this.mComponent.set(abstractComponentBody);
                JigsawActivity jigsawActivity = JigsawActivity.this;
                jigsawActivity.runOnUiThread(jigsawActivity.mShowComponentRunnable);
                return;
            }
            onFailure(call, new IOException(response.message()));
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<AbstractComponent> call, Throwable th) {
            JigsawActivity.this.mComponent.set(JigsawActivity.this.error);
            JigsawActivity jigsawActivity = JigsawActivity.this;
            jigsawActivity.runOnUiThread(jigsawActivity.mShowComponentRunnable);
            Log.e(JigsawActivity.LOG_TAG, "Failed to fetch link " + JigsawActivity.this.link + ".", th);
        }
    };
    private CloseMethod closeMethod = CloseMethod.HARDWARE_TOUCH;

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.jigsaw = ((JigsawInjector) getApplicationContext()).getJigsaw();
        this.jigsaw.inject(this);
        setContentView(R.layout.activity_jigsaw);
        this.root = (ViewGroup) findViewById(R.id.root);
        this.spinner = findViewById(R.id.spinner);
        this.mHandler.postDelayed(this.mShowSpinnerRunnable, 750L);
        this.error = new StackComponent().setItems(Arrays.asList(new DialogComponent().setImage(this.jigsaw.settings().errorImage()).setTextResource(R.string.confab_generic_error_text).setSubtextResource(R.string.confab_generic_error_subtext).setPositiveButtonTextResource(R.string.confab_generic_error_button).setPositiveButtonListener(new View.OnClickListener() { // from class: com.evie.jigsaw.JigsawActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                JigsawActivity jigsawActivity = JigsawActivity.this;
                JigsawActivity.this.startActivity(Jigsaw.prepare(jigsawActivity, jigsawActivity.link));
                JigsawActivity.this.finish();
            }
        }).setBackgroundResource(R.color.evie_bluish_gray))).setStyle(new AbstractComponent.Style().setFullscreen(true));
        this.error.initialize(this.jigsaw);
        this.link = getIntent().getData();
        if (this.link == null) {
            Crashlytics.log("JigsawActivity with null JIGSAW_LINK_EXTRA");
            finish();
        }
        this.layouts.resolve(this.link).enqueue(this.mLayoutCallback);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        AbstractComponent abstractComponent = this.mComponent.get();
        if (abstractComponent != null) {
            abstractComponent.resume();
        }
        recordScreenViewEvent();
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00f3  */
    private void recordScreenViewEvent() {
        String str;
        Uri uri = this.link;
        if (uri == null) {
            return;
        }
        try {
            String strDecode = URLDecoder.decode(uri.toString(), "UTF-8");
            Timber.m551d("link: %s", strDecode);
            switch (strDecode) {
                case "jigsaw:/layouts/discovery?topic=movies":
                    this.jigsaw.analyticsService().recordScreenViewEvent("discovery", "movies", null, null, null);
                    break;
                case "jigsaw:/layouts/discovery?topic=music":
                    this.jigsaw.analyticsService().recordScreenViewEvent("discovery", "music", null, null, null);
                    break;
                case "jigsaw:/layouts/discovery?topic=apps":
                    this.jigsaw.analyticsService().recordScreenViewEvent("discovery", "apps", null, null, null);
                    break;
            }
            if (strDecode.startsWith("jigsaw:/layouts/card?categories=")) {
                List<String> queryParameters = this.link.getQueryParameters("categories");
                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < queryParameters.size(); i++) {
                    if (i > 0) {
                        sb.append("&");
                    }
                    sb.append("categories=");
                    sb.append(queryParameters.get(i));
                }
                this.jigsaw.analyticsService().recordScreenViewEvent("collection", null, this.link.getQueryParameter("query"), sb.toString(), null);
                return;
            }
            if (strDecode.startsWith("jigsaw:/layouts/card?entity=")) {
                String value = new UrlQuerySanitizer(strDecode).getValue("entity");
                if (value != null) {
                    String[] strArrSplit = value.split("\\|");
                    if (strArrSplit.length > 1) {
                        str = strArrSplit[1];
                    } else {
                        str = null;
                    }
                } else {
                    str = null;
                }
                Timber.m551d("entity: %s, subtype: %s", value, str);
                if ("collection".equals(str)) {
                    this.jigsaw.analyticsService().recordScreenViewEvent("collection", null, null, value, null);
                    return;
                } else {
                    this.jigsaw.analyticsService().recordScreenViewEvent("entity", str, null, value, null);
                    return;
                }
            }
            if (strDecode.startsWith("contact:content:")) {
                this.jigsaw.analyticsService().recordScreenViewEvent("entity", "contact", null, null, null);
            }
        } catch (UnsupportedEncodingException e) {
            Timber.m555e(e, "Unabled to decode url", new Object[0]);
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        AbstractComponent abstractComponent = this.mComponent.get();
        if (abstractComponent != null) {
            abstractComponent.recordCloseEvent(this.closeMethod);
        }
    }

    public void finish(CloseMethod closeMethod) {
        this.closeMethod = closeMethod;
        finish();
    }
}
