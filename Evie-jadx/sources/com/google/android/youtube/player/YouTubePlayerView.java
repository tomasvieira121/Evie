package com.google.android.youtube.player;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import com.google.android.youtube.player.internal.AbstractC0906aa;
import com.google.android.youtube.player.internal.C0907ab;
import com.google.android.youtube.player.internal.C0921n;
import com.google.android.youtube.player.internal.C0925s;
import com.google.android.youtube.player.internal.C0929w;
import com.google.android.youtube.player.internal.C0931y;
import com.google.android.youtube.player.internal.InterfaceC0909b;
import com.google.android.youtube.player.internal.InterfaceC0926t;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class YouTubePlayerView extends ViewGroup implements YouTubePlayer.Provider {

    /* JADX INFO: renamed from: a */
    private final ViewTreeObserverOnGlobalFocusChangeListenerC0904a f428a;

    /* JADX INFO: renamed from: b */
    private final Set<View> f429b;

    /* JADX INFO: renamed from: c */
    private final InterfaceC0905b f430c;

    /* JADX INFO: renamed from: d */
    private InterfaceC0909b f431d;

    /* JADX INFO: renamed from: e */
    private C0925s f432e;

    /* JADX INFO: renamed from: f */
    private View f433f;

    /* JADX INFO: renamed from: g */
    private C0921n f434g;

    /* JADX INFO: renamed from: h */
    private YouTubePlayer.Provider f435h;

    /* JADX INFO: renamed from: i */
    private Bundle f436i;

    /* JADX INFO: renamed from: j */
    private YouTubePlayer.OnInitializedListener f437j;

    /* JADX INFO: renamed from: k */
    private boolean f438k;

    /* JADX INFO: renamed from: l */
    private boolean f439l;

    /* JADX INFO: renamed from: com.google.android.youtube.player.YouTubePlayerView$a */
    private final class ViewTreeObserverOnGlobalFocusChangeListenerC0904a implements ViewTreeObserver.OnGlobalFocusChangeListener {
        private ViewTreeObserverOnGlobalFocusChangeListenerC0904a() {
        }

        /* synthetic */ ViewTreeObserverOnGlobalFocusChangeListenerC0904a(YouTubePlayerView youTubePlayerView, byte b) {
            this();
        }

        @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
        public final void onGlobalFocusChanged(View view, View view2) {
            if (YouTubePlayerView.this.f432e == null || !YouTubePlayerView.this.f429b.contains(view2) || YouTubePlayerView.this.f429b.contains(view)) {
                return;
            }
            YouTubePlayerView.this.f432e.m518g();
        }
    }

    /* JADX INFO: renamed from: com.google.android.youtube.player.YouTubePlayerView$b */
    interface InterfaceC0905b {
        /* JADX INFO: renamed from: a */
        void mo366a(YouTubePlayerView youTubePlayerView);
    }

    YouTubePlayerView(Context context, AttributeSet attributeSet, int i, InterfaceC0905b interfaceC0905b) {
        super((Context) C0907ab.m397a(context, "context cannot be null"), attributeSet, i);
        this.f430c = (InterfaceC0905b) C0907ab.m397a(interfaceC0905b, "listener cannot be null");
        if (getBackground() == null) {
            setBackgroundColor(-16777216);
        }
        setClipToPadding(false);
        this.f434g = new C0921n(context);
        requestTransparentRegion(this.f434g);
        addView(this.f434g);
        this.f429b = new HashSet();
        this.f428a = new ViewTreeObserverOnGlobalFocusChangeListenerC0904a(this, (byte) 0);
    }

    /* JADX INFO: renamed from: a */
    private void m368a(View view) {
        if (!(view == this.f434g || (this.f432e != null && view == this.f433f))) {
            throw new UnsupportedOperationException("No views can be added on top of the player");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a */
    public void m369a(YouTubeInitializationResult youTubeInitializationResult) {
        this.f432e = null;
        this.f434g.m479c();
        YouTubePlayer.OnInitializedListener onInitializedListener = this.f437j;
        if (onInitializedListener != null) {
            onInitializedListener.onInitializationFailure(this.f435h, youTubeInitializationResult);
            this.f437j = null;
        }
    }

    /* JADX INFO: renamed from: a */
    static /* synthetic */ void m370a(YouTubePlayerView youTubePlayerView, Activity activity) {
        try {
            youTubePlayerView.f432e = new C0925s(youTubePlayerView.f431d, AbstractC0906aa.m392a().mo395a(activity, youTubePlayerView.f431d, youTubePlayerView.f438k));
            youTubePlayerView.f433f = youTubePlayerView.f432e.m506a();
            youTubePlayerView.addView(youTubePlayerView.f433f);
            youTubePlayerView.removeView(youTubePlayerView.f434g);
            youTubePlayerView.f430c.mo366a(youTubePlayerView);
            if (youTubePlayerView.f437j != null) {
                boolean zM510a = false;
                Bundle bundle = youTubePlayerView.f436i;
                if (bundle != null) {
                    zM510a = youTubePlayerView.f432e.m510a(bundle);
                    youTubePlayerView.f436i = null;
                }
                youTubePlayerView.f437j.onInitializationSuccess(youTubePlayerView.f435h, youTubePlayerView.f432e, zM510a);
                youTubePlayerView.f437j = null;
            }
        } catch (C0929w.a e) {
            C0931y.m528a("Error creating YouTubePlayerView", e);
            youTubePlayerView.m369a(YouTubeInitializationResult.INTERNAL_ERROR);
        }
    }

    /* JADX INFO: renamed from: b */
    static /* synthetic */ InterfaceC0909b m372b(YouTubePlayerView youTubePlayerView) {
        youTubePlayerView.f431d = null;
        return null;
    }

    /* JADX INFO: renamed from: g */
    static /* synthetic */ View m377g(YouTubePlayerView youTubePlayerView) {
        youTubePlayerView.f433f = null;
        return null;
    }

    /* JADX INFO: renamed from: h */
    static /* synthetic */ C0925s m378h(YouTubePlayerView youTubePlayerView) {
        youTubePlayerView.f432e = null;
        return null;
    }

    /* JADX INFO: renamed from: a */
    final void m380a() {
        C0925s c0925s = this.f432e;
        if (c0925s != null) {
            c0925s.m511b();
        }
    }

    /* JADX INFO: renamed from: a */
    final void m381a(final Activity activity, YouTubePlayer.Provider provider, String str, YouTubePlayer.OnInitializedListener onInitializedListener, Bundle bundle) {
        if (this.f432e == null && this.f437j == null) {
            C0907ab.m397a(activity, "activity cannot be null");
            this.f435h = (YouTubePlayer.Provider) C0907ab.m397a(provider, "provider cannot be null");
            this.f437j = (YouTubePlayer.OnInitializedListener) C0907ab.m397a(onInitializedListener, "listener cannot be null");
            this.f436i = bundle;
            this.f434g.m478b();
            this.f431d = AbstractC0906aa.m392a().mo394a(getContext(), str, new InterfaceC0926t.a() { // from class: com.google.android.youtube.player.YouTubePlayerView.1
                @Override // com.google.android.youtube.player.internal.InterfaceC0926t.a
                /* JADX INFO: renamed from: a */
                public final void mo389a() {
                    if (YouTubePlayerView.this.f431d != null) {
                        YouTubePlayerView.m370a(YouTubePlayerView.this, activity);
                    }
                    YouTubePlayerView.m372b(YouTubePlayerView.this);
                }

                @Override // com.google.android.youtube.player.internal.InterfaceC0926t.a
                /* JADX INFO: renamed from: b */
                public final void mo390b() {
                    if (!YouTubePlayerView.this.f439l && YouTubePlayerView.this.f432e != null) {
                        YouTubePlayerView.this.f432e.m517f();
                    }
                    YouTubePlayerView.this.f434g.m477a();
                    YouTubePlayerView youTubePlayerView = YouTubePlayerView.this;
                    if (youTubePlayerView.indexOfChild(youTubePlayerView.f434g) < 0) {
                        YouTubePlayerView youTubePlayerView2 = YouTubePlayerView.this;
                        youTubePlayerView2.addView(youTubePlayerView2.f434g);
                        YouTubePlayerView youTubePlayerView3 = YouTubePlayerView.this;
                        youTubePlayerView3.removeView(youTubePlayerView3.f433f);
                    }
                    YouTubePlayerView.m377g(YouTubePlayerView.this);
                    YouTubePlayerView.m378h(YouTubePlayerView.this);
                    YouTubePlayerView.m372b(YouTubePlayerView.this);
                }
            }, new InterfaceC0926t.b() { // from class: com.google.android.youtube.player.YouTubePlayerView.2
                @Override // com.google.android.youtube.player.internal.InterfaceC0926t.b
                /* JADX INFO: renamed from: a */
                public final void mo391a(YouTubeInitializationResult youTubeInitializationResult) {
                    YouTubePlayerView.this.m369a(youTubeInitializationResult);
                    YouTubePlayerView.m372b(YouTubePlayerView.this);
                }
            });
            this.f431d.mo497e();
        }
    }

    /* JADX INFO: renamed from: a */
    final void m382a(boolean z) {
        if (!z || Build.VERSION.SDK_INT >= 14) {
            this.f438k = z;
        } else {
            C0931y.m529a("Could not enable TextureView because API level is lower than 14", new Object[0]);
            this.f438k = false;
        }
    }

    @Override // android.view.View
    public final void addFocusables(ArrayList<View> arrayList, int i) {
        ArrayList<View> arrayList2 = new ArrayList<>();
        super.addFocusables(arrayList2, i);
        arrayList.addAll(arrayList2);
        this.f429b.clear();
        this.f429b.addAll(arrayList2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        ArrayList<View> arrayList2 = new ArrayList<>();
        super.addFocusables(arrayList2, i, i2);
        arrayList.addAll(arrayList2);
        this.f429b.clear();
        this.f429b.addAll(arrayList2);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view) {
        m368a(view);
        super.addView(view);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i) {
        m368a(view);
        super.addView(view, i);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, int i2) {
        m368a(view);
        super.addView(view, i, i2);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        m368a(view);
        super.addView(view, i, layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        m368a(view);
        super.addView(view, layoutParams);
    }

    /* JADX INFO: renamed from: b */
    final void m383b() {
        C0925s c0925s = this.f432e;
        if (c0925s != null) {
            c0925s.m514c();
        }
    }

    /* JADX INFO: renamed from: b */
    final void m384b(boolean z) {
        C0925s c0925s = this.f432e;
        if (c0925s != null) {
            c0925s.m512b(z);
            m386c(z);
        }
    }

    /* JADX INFO: renamed from: c */
    final void m385c() {
        C0925s c0925s = this.f432e;
        if (c0925s != null) {
            c0925s.m515d();
        }
    }

    /* JADX INFO: renamed from: c */
    final void m386c(boolean z) {
        this.f439l = true;
        C0925s c0925s = this.f432e;
        if (c0925s != null) {
            c0925s.m508a(z);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void clearChildFocus(View view) {
        if (hasFocusable()) {
            requestFocus();
        } else {
            super.clearChildFocus(view);
        }
    }

    /* JADX INFO: renamed from: d */
    final void m387d() {
        C0925s c0925s = this.f432e;
        if (c0925s != null) {
            c0925s.m516e();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (this.f432e != null) {
            if (keyEvent.getAction() == 0) {
                return this.f432e.m509a(keyEvent.getKeyCode(), keyEvent) || super.dispatchKeyEvent(keyEvent);
            }
            if (keyEvent.getAction() == 1) {
                return this.f432e.m513b(keyEvent.getKeyCode(), keyEvent) || super.dispatchKeyEvent(keyEvent);
            }
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    /* JADX INFO: renamed from: e */
    final Bundle m388e() {
        C0925s c0925s = this.f432e;
        return c0925s == null ? this.f436i : c0925s.m519h();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void focusableViewAvailable(View view) {
        super.focusableViewAvailable(view);
        this.f429b.add(view);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnGlobalFocusChangeListener(this.f428a);
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        C0925s c0925s = this.f432e;
        if (c0925s != null) {
            c0925s.m507a(configuration);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnGlobalFocusChangeListener(this.f428a);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (getChildCount() > 0) {
            getChildAt(0).layout(0, 0, i3 - i, i4 - i2);
        }
    }

    @Override // android.view.View
    protected final void onMeasure(int i, int i2) {
        if (getChildCount() <= 0) {
            setMeasuredDimension(0, 0);
            return;
        }
        View childAt = getChildAt(0);
        childAt.measure(i, i2);
        setMeasuredDimension(childAt.getMeasuredWidth(), childAt.getMeasuredHeight());
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        this.f429b.add(view2);
    }

    @Override // android.view.ViewGroup
    public final void setClipToPadding(boolean z) {
    }

    @Override // android.view.View
    public final void setPadding(int i, int i2, int i3, int i4) {
    }
}
