package com.aol.mobile.sdk.player.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.aol.mobile.sdk.C0233R;
import com.aol.mobile.sdk.controls.AdControls;
import com.aol.mobile.sdk.controls.C0234R;
import com.aol.mobile.sdk.controls.ContentControls;
import com.aol.mobile.sdk.controls.utils.ViewUtils;
import com.aol.mobile.sdk.controls.view.AdControlsView;
import com.aol.mobile.sdk.controls.view.ContentControlsView;
import com.aol.mobile.sdk.renderer.RenderersRegistry;
import com.aol.mobile.sdk.renderer.VideoRenderer;

/* JADX INFO: loaded from: classes.dex */
public class PlayerView extends FrameLayout implements PlayerViewport {
    private final AdControls adControls;
    private VideoRenderer adView;
    private final boolean hasRatio;
    private final float ratio;
    private String rendererId;
    private RenderersRegistry renderersRegistry;
    private ContentControls videoControls;
    private VideoRenderer videoView;

    public PlayerView(Context context) {
        this(context, null);
    }

    public PlayerView(Context context, AttributeSet attributeSet) {
        this(context, new RenderersRegistry(context), attributeSet);
    }

    public PlayerView(Context context, RenderersRegistry renderersRegistry, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.rendererId = "com.onemobilesdk.videorenderer.flat@2.11";
        this.renderersRegistry = renderersRegistry;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0233R.styleable.PlayerView);
            try {
                String string = typedArrayObtainStyledAttributes.getString(C0233R.styleable.PlayerView_ratio);
                if (string != null && string.contains(":")) {
                    String[] strArrSplit = string.split(":");
                    this.ratio = Float.parseFloat(strArrSplit[1]) / Float.parseFloat(strArrSplit[0]);
                    this.hasRatio = true;
                } else {
                    this.ratio = 0.0f;
                    this.hasRatio = false;
                }
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            this.ratio = 0.0f;
            this.hasRatio = false;
        }
        this.adControls = new AdControlsView(context);
        this.videoControls = new ContentControlsView(context);
        this.adView = renderersRegistry.getRenderer("com.onemobilesdk.videorenderer.flat@2.11", context);
        this.videoView = renderersRegistry.getRenderer(this.rendererId, context);
        setInternalViews();
        ((View) this.videoControls).setVisibility(0);
        ((View) this.adControls).setVisibility(4);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        View view = (View) this.videoView;
        if (view.getVisibility() == 0 && view.getParent() != null) {
            view.dispatchTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    private void setInternalViews() {
        removeAllViews();
        ((View) this.adView).setPadding(0, 0, 0, getResources().getDimensionPixelSize(C0234R.dimen.ad_controls_height));
        addView((View) this.videoView);
        addView((View) this.adView);
        addView((View) this.videoControls);
        addView((View) this.adControls);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (!this.hasRatio) {
            super.onMeasure(i, i2);
        } else {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec((int) (this.ratio * getMeasuredWidth()), 1073741824));
        }
    }

    @Override // com.aol.mobile.sdk.player.utils.Disposable
    public void dispose() {
        ((View) this.videoView).setVisibility(4);
        this.videoView.dispose();
        ((View) this.adView).setVisibility(4);
        this.adView.dispose();
        ((View) this.videoControls).setVisibility(4);
        ((View) this.adControls).setVisibility(4);
    }

    @Override // com.aol.mobile.sdk.player.view.PlayerViewport
    public ContentControls getContentControls() {
        return this.videoControls;
    }

    public void setContentControls(ContentControls contentControls) {
        this.videoControls = contentControls;
        setInternalViews();
    }

    @Override // com.aol.mobile.sdk.player.view.PlayerViewport
    public AdControls getAdControls() {
        return this.adControls;
    }

    @Override // com.aol.mobile.sdk.player.view.PlayerViewport
    public void render(PlayerViewport.ViewModel viewModel) {
        renderContentRenderer(viewModel.contentRendererId);
        ViewUtils.renderVisibility(viewModel.isAdControlsVisible, (View) this.adControls);
        ViewUtils.renderVisibility(viewModel.isContentControlsVisible, (View) this.videoControls);
        ViewUtils.renderVisibility(viewModel.isAdVisible, (View) this.adView);
        ViewUtils.renderVisibility(viewModel.isContentVisible, (View) this.videoView);
    }

    private void renderContentRenderer(String str) {
        if (str == null || str.equals(this.rendererId)) {
            return;
        }
        this.rendererId = str;
        this.videoView.dispose();
        this.videoView = this.renderersRegistry.getRenderer(this.rendererId, getContext());
        setInternalViews();
    }

    @Override // com.aol.mobile.sdk.player.view.PlayerViewport
    public VideoRenderer getAdVideoRenderer() {
        return this.adView;
    }

    @Override // com.aol.mobile.sdk.player.view.PlayerViewport
    public VideoRenderer getContentVideoRenderer() {
        return this.videoView;
    }
}
