package com.aol.mobile.sdk.controls.view;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.aol.mobile.sdk.annotations.PublicApi;
import com.aol.mobile.sdk.controls.AdControls;
import com.aol.mobile.sdk.controls.C0234R;
import com.aol.mobile.sdk.controls.Themed;
import com.aol.mobile.sdk.controls.utils.ViewUtils;

/* JADX INFO: loaded from: classes.dex */
@PublicApi
public final class AdControlsView extends RelativeLayout implements AdControls, Themed {

    /* JADX INFO: renamed from: a */
    private final FrameLayout f63a;

    /* JADX INFO: renamed from: b */
    private final ProgressBar f64b;

    /* JADX INFO: renamed from: c */
    private final TintableImageButton f65c;

    /* JADX INFO: renamed from: d */
    private final TintableImageButton f66d;

    /* JADX INFO: renamed from: e */
    private final TintableImageButton f67e;

    /* JADX INFO: renamed from: f */
    private final SeekBar f68f;

    /* JADX INFO: renamed from: g */
    private final TextView f69g;

    /* JADX INFO: renamed from: h */
    private final TextView f70h;

    /* JADX INFO: renamed from: i */
    private final Themed[] f71i;

    /* JADX INFO: renamed from: j */
    private AdControls.Listener f72j;

    /* JADX INFO: renamed from: k */
    private final View.OnClickListener f73k;

    /* JADX INFO: renamed from: l */
    private int f74l;

    /* JADX INFO: renamed from: m */
    private int f75m;

    /* JADX INFO: renamed from: n */
    private String f76n;

    public AdControlsView(Context context) {
        this(context, null);
    }

    public AdControlsView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AdControlsView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f73k = new View.OnClickListener() { // from class: com.aol.mobile.sdk.controls.view.AdControlsView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (AdControlsView.this.f72j == null) {
                    return;
                }
                AdControlsView adControlsView = AdControlsView.this;
                if (view == adControlsView) {
                    adControlsView.f72j.onAdClicked();
                }
                if (view == AdControlsView.this.f65c) {
                    AdControlsView.this.f72j.onAdPresented();
                }
                if (view == AdControlsView.this.f66d) {
                    AdControlsView.this.f72j.onButtonClick(AdControls.Button.PLAY);
                }
                if (view == AdControlsView.this.f67e) {
                    AdControlsView.this.f72j.onButtonClick(AdControls.Button.PAUSE);
                }
            }
        };
        m30a(context, attributeSet);
        inflate(context, C0234R.layout.ad_controls_view, this);
        setClickable(true);
        this.f63a = (FrameLayout) findViewById(C0234R.id.clickthrough_container);
        this.f65c = (TintableImageButton) findViewById(C0234R.id.clickthrough_close);
        this.f64b = (ProgressBar) findViewById(C0234R.id.ad_progress_bar);
        this.f66d = (TintableImageButton) findViewById(C0234R.id.ad_play_button);
        this.f67e = (TintableImageButton) findViewById(C0234R.id.ad_pause_button);
        this.f68f = (SeekBar) findViewById(C0234R.id.ad_seekbar);
        this.f69g = (TextView) findViewById(C0234R.id.ad_time_left);
        this.f70h = (TextView) findViewById(C0234R.id.ad_title);
        this.f71i = new Themed[]{this.f66d, this.f67e, this.f65c};
        this.f68f.setPadding(0, 0, 0, 0);
        updateColors();
        m29a();
    }

    public AdControlsView(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, attributeSet, i);
    }

    /* JADX INFO: renamed from: a */
    private void m29a() {
        this.f65c.setOnClickListener(this.f73k);
        this.f66d.setOnClickListener(this.f73k);
        this.f67e.setOnClickListener(this.f73k);
        setOnClickListener(this.f73k);
        this.f68f.setOnTouchListener(new View.OnTouchListener() { // from class: com.aol.mobile.sdk.controls.view.AdControlsView.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
    }

    /* JADX INFO: renamed from: a */
    private void m30a(Context context, AttributeSet attributeSet) {
        this.f74l = context.getResources().getColor(C0234R.color.default_main_color);
        this.f75m = context.getResources().getColor(C0234R.color.default_ad_accent_color);
        if (attributeSet == null) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C0234R.styleable.AdControlsView, 0, 0);
        try {
            this.f74l = typedArrayObtainStyledAttributes.getColor(C0234R.styleable.AdControlsView_mainColor, this.f74l);
            this.f75m = typedArrayObtainStyledAttributes.getInteger(C0234R.styleable.AdControlsView_accentColor, this.f75m);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: renamed from: b */
    private void m32b(String str, boolean z) {
        if ((str == null || str.equals(this.f76n)) && (str != null || this.f76n == null)) {
            return;
        }
        this.f76n = str;
        if (z) {
            m35a(str);
        } else {
            m36a(str, this.f65c.getVisibility() == 0);
        }
    }

    /* JADX INFO: renamed from: a */
    void m35a(String str) {
        if (this.f72j == null) {
            return;
        }
        this.f63a.removeAllViews();
        if (str == null) {
            this.f63a.setVisibility(8);
            return;
        }
        WebView webView = new WebView(getContext());
        webView.getSettings().setJavaScriptEnabled(true);
        webView.setWebViewClient(new WebViewClient());
        this.f63a.addView(webView, -1, -1);
        this.f63a.setVisibility(0);
        webView.loadUrl(str);
    }

    /* JADX INFO: renamed from: a */
    void m36a(String str, boolean z) {
        AdControls.Listener listener = this.f72j;
        if (listener == null || str == null) {
            return;
        }
        listener.onAdPresented();
        Context context = getContext();
        context.startActivity(new Intent(context, (Class<?>) TargetUrlActivity.class).setFlags(268435456).putExtra(TargetUrlActivity.KEY_TARGET_URL, str).putExtra(TargetUrlActivity.KEY_SHOW_CLOSE, z));
    }

    @Override // com.aol.mobile.sdk.controls.AdControls
    public void render(AdControls.ViewModel viewModel) {
        ViewUtils.renderVisibility(viewModel.isProgressViewVisible, this.f64b);
        ViewUtils.renderVisibility(viewModel.isPlayButtonVisible, this.f66d);
        ViewUtils.renderVisibility(viewModel.isPauseButtonVisible, this.f67e);
        ViewUtils.renderVisibility(viewModel.isAdTimeViewVisible, this.f69g);
        ViewUtils.renderVisibility(viewModel.isAdTimeViewVisible, this.f68f);
        ViewUtils.renderVisibility(viewModel.isCloseButtonVisible, this.f65c);
        ViewUtils.renderSeekerMaxValue(viewModel.seekerMaxValue, this.f68f);
        ViewUtils.renderSeekerProgress(viewModel.seekerProgress, this.f68f);
        ViewUtils.renderText(viewModel.timeLeftText, this.f69g);
        m32b(viewModel.adUrl, viewModel.embedClickThroughUrl);
    }

    @Override // com.aol.mobile.sdk.controls.Themed
    public void setAccentColor(int i) {
        this.f75m = i;
        updateColors();
    }

    @Override // com.aol.mobile.sdk.controls.AdControls
    public void setListener(AdControls.Listener listener) {
        this.f72j = listener;
    }

    @Override // com.aol.mobile.sdk.controls.Themed
    public void setMainColor(int i) {
        this.f74l = i;
        updateColors();
    }

    protected void updateColors() {
        this.f64b.getIndeterminateDrawable().setColorFilter(this.f74l, PorterDuff.Mode.MULTIPLY);
        ((LayerDrawable) this.f68f.getProgressDrawable()).findDrawableByLayerId(R.id.progress).mutate().setColorFilter(this.f75m, PorterDuff.Mode.MULTIPLY);
        Drawable drawableMutate = ((LayerDrawable) this.f68f.getProgressDrawable()).findDrawableByLayerId(R.id.secondaryProgress).mutate();
        drawableMutate.setColorFilter(this.f75m, PorterDuff.Mode.MULTIPLY);
        drawableMutate.setAlpha(120);
        Drawable thumb = this.f68f.getThumb();
        if (thumb != null) {
            thumb.setColorFilter(this.f75m, PorterDuff.Mode.MULTIPLY);
        }
        if (Build.VERSION.SDK_INT >= 21) {
            ((LayerDrawable) this.f68f.getProgressDrawable()).findDrawableByLayerId(R.id.background).mutate().setColorFilter(this.f74l, PorterDuff.Mode.MULTIPLY);
        }
        for (Themed themed : this.f71i) {
            themed.setAccentColor(this.f75m);
            themed.setMainColor(this.f74l);
        }
        this.f69g.setTextColor(this.f75m);
        this.f70h.setTextColor(this.f74l);
    }
}
