package com.aol.mobile.sdk.controls.view;

import android.R;
import android.animation.Animator;
import android.animation.ValueAnimator;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.PackageManager;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.accessibility.AccessibilityManager;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.aol.mobile.sdk.annotations.PublicApi;
import com.aol.mobile.sdk.chromecast.OneCastManager;
import com.aol.mobile.sdk.controls.C0234R;
import com.aol.mobile.sdk.controls.C0235a;
import com.aol.mobile.sdk.controls.C0236b;
import com.aol.mobile.sdk.controls.C0237c;
import com.aol.mobile.sdk.controls.C0238d;
import com.aol.mobile.sdk.controls.ContentControls;
import com.aol.mobile.sdk.controls.ImageLoader;
import com.aol.mobile.sdk.controls.Themed;
import com.aol.mobile.sdk.controls.utils.ViewUtils;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes.dex */
@PublicApi
public class ContentControlsView extends RelativeLayout implements ContentControls, Themed {

    /* JADX INFO: renamed from: a */
    static final /* synthetic */ boolean f81a = !ContentControlsView.class.desiredAssertionStatus();

    /* JADX INFO: renamed from: A */
    private final LinkedList<ContentControls.ViewModel.TrackOptionVM> f82A;

    /* JADX INFO: renamed from: B */
    private FrameLayout f83B;

    /* JADX INFO: renamed from: C */
    private View f84C;

    /* JADX INFO: renamed from: D */
    private ValueAnimator f85D;

    /* JADX INFO: renamed from: E */
    private ContentControls.Listener f86E;

    /* JADX INFO: renamed from: F */
    private final SeekBar.OnSeekBarChangeListener f87F;

    /* JADX INFO: renamed from: G */
    private final GestureDetector f88G;

    /* JADX INFO: renamed from: H */
    private boolean f89H;

    /* JADX INFO: renamed from: I */
    private Dialog f90I;

    /* JADX INFO: renamed from: J */
    private final View.OnClickListener f91J;

    /* JADX INFO: renamed from: K */
    private String f92K;

    /* JADX INFO: renamed from: L */
    private ImageLoader f93L;

    /* JADX INFO: renamed from: M */
    private boolean f94M;

    /* JADX INFO: renamed from: N */
    private double f95N;

    /* JADX INFO: renamed from: O */
    private int f96O;

    /* JADX INFO: renamed from: P */
    private int f97P;

    /* JADX INFO: renamed from: Q */
    private int f98Q;

    /* JADX INFO: renamed from: R */
    private boolean f99R;

    /* JADX INFO: renamed from: S */
    private AccessibilityManager f100S;

    /* JADX INFO: renamed from: T */
    private OneCastManager f101T;

    /* JADX INFO: renamed from: b */
    private final RelativeLayout f102b;

    /* JADX INFO: renamed from: c */
    private final FrameLayout f103c;

    /* JADX INFO: renamed from: d */
    private final ProgressBar f104d;

    /* JADX INFO: renamed from: e */
    private final TextView f105e;

    /* JADX INFO: renamed from: f */
    private final C0238d<TintableImageButton> f106f;

    /* JADX INFO: renamed from: g */
    private final C0238d<TintableImageButton> f107g;

    /* JADX INFO: renamed from: h */
    private final C0238d<TintableImageButton> f108h;

    /* JADX INFO: renamed from: i */
    private final TintableImageButton f109i;

    /* JADX INFO: renamed from: j */
    private final TintableImageButton f110j;

    /* JADX INFO: renamed from: k */
    private final TintableImageButton f111k;

    /* JADX INFO: renamed from: l */
    private final LinearLayout f112l;

    /* JADX INFO: renamed from: m */
    private final TintableImageButton f113m;

    /* JADX INFO: renamed from: n */
    private final TintableImageButton f114n;

    /* JADX INFO: renamed from: o */
    private final ImageView f115o;

    /* JADX INFO: renamed from: p */
    private final ImageView f116p;

    /* JADX INFO: renamed from: q */
    private final SidePanel f117q;

    /* JADX INFO: renamed from: r */
    private final RelativeLayout f118r;

    /* JADX INFO: renamed from: s */
    private final AdsSeekBar f119s;

    /* JADX INFO: renamed from: t */
    private final TextView f120t;

    /* JADX INFO: renamed from: u */
    private final TextView f121u;

    /* JADX INFO: renamed from: v */
    private final C0235a f122v;

    /* JADX INFO: renamed from: w */
    private final C0237c f123w;

    /* JADX INFO: renamed from: x */
    private final Themed[] f124x;

    /* JADX INFO: renamed from: y */
    private final C0236b f125y;

    /* JADX INFO: renamed from: z */
    private final LinkedList<ContentControls.ViewModel.TrackOptionVM> f126z;

    public ContentControlsView(Context context) {
        this(context, null);
    }

    public ContentControlsView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ContentControlsView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f122v = new C0235a(new Handler());
        this.f125y = new C0236b();
        this.f126z = new LinkedList<>();
        this.f82A = new LinkedList<>();
        this.f87F = new SeekBar.OnSeekBarChangeListener() { // from class: com.aol.mobile.sdk.controls.view.ContentControlsView.1
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i2, boolean z) {
                int width;
                if (ContentControlsView.this.f86E == null) {
                    return;
                }
                if (z) {
                    ContentControlsView.this.f123w.m19e();
                }
                if (z) {
                    ContentControlsView.this.f86E.onSeekTo(i2 / seekBar.getMax());
                }
                int dimensionPixelSize = ContentControlsView.this.getResources().getDimensionPixelSize(C0234R.dimen.thumb_size);
                int width2 = (i2 * (seekBar.getWidth() - dimensionPixelSize)) / seekBar.getMax();
                if (width2 < (ContentControlsView.this.f120t.getWidth() - dimensionPixelSize) / 2) {
                    width = 0;
                } else {
                    width = width2 > seekBar.getWidth() - ((ContentControlsView.this.f120t.getWidth() + dimensionPixelSize) / 2) ? seekBar.getWidth() - ContentControlsView.this.f120t.getWidth() : width2 - ((ContentControlsView.this.f120t.getWidth() - dimensionPixelSize) / 2);
                }
                ContentControlsView.this.f120t.setX(width);
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                if (ContentControlsView.this.f86E == null) {
                    return;
                }
                ContentControlsView.this.f86E.onSeekStarted();
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                if (ContentControlsView.this.f86E == null) {
                    return;
                }
                ContentControlsView.this.f86E.onSeekStopped();
            }
        };
        this.f88G = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: com.aol.mobile.sdk.controls.view.ContentControlsView.7
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                if (ContentControlsView.this.f86E == null) {
                    return false;
                }
                ContentControlsView.this.f86E.onScroll(f, f2);
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                if (ContentControlsView.this.f86E == null) {
                    return false;
                }
                ContentControlsView.this.f123w.m17c();
                return true;
            }
        });
        this.f89H = true;
        this.f91J = new View.OnClickListener() { // from class: com.aol.mobile.sdk.controls.view.ContentControlsView.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ContentControlsView.this.f86E == null) {
                    return;
                }
                ContentControlsView.this.f123w.m19e();
                if (view == ContentControlsView.this.f106f.f61a) {
                    ContentControlsView.this.f86E.onButtonClick(ContentControls.Button.PLAY);
                }
                if (view == ContentControlsView.this.f107g.f61a) {
                    ContentControlsView.this.f86E.onButtonClick(ContentControls.Button.PAUSE);
                }
                if (view == ContentControlsView.this.f108h.f61a) {
                    ContentControlsView.this.f86E.onButtonClick(ContentControls.Button.REPLAY);
                }
                if (view == ContentControlsView.this.f113m) {
                    ContentControlsView.this.f86E.onButtonClick(ContentControls.Button.NEXT);
                }
                if (view == ContentControlsView.this.f114n) {
                    ContentControlsView.this.f86E.onButtonClick(ContentControls.Button.PREVIOUS);
                }
                if (view == ContentControlsView.this.f111k) {
                    ContentControlsView.this.f86E.onButtonClick(ContentControls.Button.SEEK_FORWARD);
                }
                if (view == ContentControlsView.this.f110j) {
                    ContentControlsView.this.f86E.onButtonClick(ContentControls.Button.SEEK_BACKWARD);
                }
                if (view == ContentControlsView.this.f116p) {
                    ContentControlsView.this.f86E.onButtonClick(ContentControls.Button.COMPASS);
                }
                if (view == ContentControlsView.this.f109i) {
                    ContentControlsView.this.f125y.m7a(ContentControlsView.this.getContext(), ContentControlsView.this.f126z, ContentControlsView.this.f82A);
                    ContentControlsView contentControlsView = ContentControlsView.this;
                    contentControlsView.f90I = new Dialog(contentControlsView.getContext(), R.style.Theme.Black.NoTitleBar.Fullscreen);
                    ContentControlsView.this.f90I.setCanceledOnTouchOutside(true);
                    ContentControlsView.this.f90I.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.aol.mobile.sdk.controls.view.ContentControlsView.8.1
                        @Override // android.content.DialogInterface.OnDismissListener
                        public void onDismiss(DialogInterface dialogInterface) {
                            ContentControlsView.this.f90I = null;
                        }
                    });
                    ListView listView = new ListView(ContentControlsView.this.getContext());
                    listView.setDivider(null);
                    listView.setAdapter((ListAdapter) ContentControlsView.this.f125y);
                    listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.aol.mobile.sdk.controls.view.ContentControlsView.8.2
                        @Override // android.widget.AdapterView.OnItemClickListener
                        public void onItemClick(AdapterView<?> adapterView, View view2, int i2, long j) {
                            ContentControlsView.this.f125y.m6a(i2);
                            C0236b.a item = ContentControlsView.this.f125y.getItem(i2);
                            switch (item.f35a) {
                                case CC:
                                    ContentControlsView.this.f86E.onCcTrackSelected(item.f36b);
                                    break;
                                case AUDIO:
                                    ContentControlsView.this.f86E.onAudioTrackSelected(item.f36b);
                                    break;
                                case CLOSE:
                                    ContentControlsView.this.f90I.dismiss();
                                    break;
                            }
                        }
                    });
                    ContentControlsView.this.f90I.setContentView(listView);
                    Window window = ContentControlsView.this.f90I.getWindow();
                    if (window != null) {
                        window.setBackgroundDrawable(new ColorDrawable(-1));
                        window.getAttributes().windowAnimations = C0234R.style.TracksDialogAnimation;
                        window.getAttributes().gravity = 87;
                        window.setLayout(-1, -2);
                    }
                    ContentControlsView.this.f90I.show();
                }
            }
        };
        this.f94M = false;
        m43a(context, attributeSet);
        inflate(getContext(), C0234R.layout.player_controls_view, this);
        this.f100S = (AccessibilityManager) context.getSystemService("accessibility");
        this.f102b = (RelativeLayout) ViewUtils.findView(this, C0234R.id.controls_container);
        this.f104d = (ProgressBar) ViewUtils.findView(this, C0234R.id.progressbar);
        this.f106f = new C0238d<>((TintableImageButton) ViewUtils.findView(this, C0234R.id.play_button));
        this.f107g = new C0238d<>((TintableImageButton) ViewUtils.findView(this, C0234R.id.pause_button));
        this.f108h = new C0238d<>((TintableImageButton) ViewUtils.findView(this, C0234R.id.replay_button));
        this.f113m = (TintableImageButton) ViewUtils.findView(this, C0234R.id.next_button);
        this.f114n = (TintableImageButton) ViewUtils.findView(this, C0234R.id.prev_button);
        this.f109i = (TintableImageButton) ViewUtils.findView(this, C0234R.id.tracks_button);
        this.f111k = (TintableImageButton) ViewUtils.findView(this, C0234R.id.forward_seek_button);
        this.f110j = (TintableImageButton) ViewUtils.findView(this, C0234R.id.backward_seek_button);
        this.f112l = (LinearLayout) ViewUtils.findView(this, C0234R.id.live_indicator);
        this.f118r = (RelativeLayout) ViewUtils.findView(this, C0234R.id.seekbar_container);
        this.f119s = (AdsSeekBar) ViewUtils.findView(this, C0234R.id.seekbar);
        this.f105e = (TextView) ViewUtils.findView(this, C0234R.id.title_view);
        this.f103c = (FrameLayout) ViewUtils.findView(this, C0234R.id.compass_container);
        this.f116p = (ImageView) ViewUtils.findView(this, C0234R.id.compass_view);
        this.f115o = (ImageView) ViewUtils.findView(this, C0234R.id.thumbnail);
        this.f117q = (SidePanel) ViewUtils.findView(this, C0234R.id.side_panel);
        this.f121u = (TextView) ViewUtils.findView(this, C0234R.id.duration);
        this.f120t = (TextView) ViewUtils.findView(this, C0234R.id.current_time);
        this.f83B = (FrameLayout) ViewUtils.findView(this, C0234R.id.cast_placeholder);
        m41a();
        if (this.f99R) {
            this.f101T = new OneCastManager(context);
            this.f83B.addView(this.f101T.constructCastButton());
        }
        TintableImageButton tintableImageButton = this.f113m;
        this.f124x = new Themed[]{(Themed) this.f106f.f61a, (Themed) this.f107g.f61a, (Themed) this.f108h.f61a, this.f109i, this.f110j, this.f111k, this.f114n, tintableImageButton};
        ViewUtils.renderAvailability(false, tintableImageButton);
        ViewUtils.renderAvailability(false, this.f114n);
        this.f119s.setPadding(0, 0, 0, 0);
        this.f119s.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.aol.mobile.sdk.controls.view.ContentControlsView.9
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                ContentControlsView.this.f87F.onProgressChanged(ContentControlsView.this.f119s, ContentControlsView.this.f119s.getProgress(), false);
            }
        });
        m51c();
        m53d();
        m49b();
        this.f123w = new C0237c(this);
    }

    public ContentControlsView(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, attributeSet, i);
    }

    /* JADX INFO: renamed from: a */
    private void m41a() {
        Context context = getContext();
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            this.f99R = (bundle == null || bundle.getString("com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME") == null) ? false : true;
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }

    /* JADX INFO: renamed from: a */
    private void m42a(double d) {
        if (Math.abs(this.f95N - d) > 9.999999960041972E-12d) {
            this.f116p.setRotation((float) Math.toDegrees(-d));
        }
    }

    /* JADX INFO: renamed from: a */
    private void m43a(Context context, AttributeSet attributeSet) {
        this.f96O = context.getResources().getColor(C0234R.color.default_main_color);
        this.f97P = context.getResources().getColor(C0234R.color.default_accent_color);
        this.f98Q = -65536;
        if (attributeSet == null) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C0234R.styleable.ContentControlsView, 0, 0);
        try {
            this.f96O = typedArrayObtainStyledAttributes.getColor(C0234R.styleable.ContentControlsView_mainColor, this.f96O);
            this.f97P = typedArrayObtainStyledAttributes.getInteger(C0234R.styleable.ContentControlsView_accentColor, this.f97P);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: renamed from: a */
    private void m44a(View view) {
        UiModeManager uiModeManager = (UiModeManager) getContext().getSystemService("uimode");
        if (uiModeManager == null || uiModeManager.getCurrentModeType() != 4) {
            view.requestFocus();
        } else {
            view.requestFocusFromTouch();
        }
    }

    /* JADX INFO: renamed from: a */
    private void m45a(String str) {
        ImageLoader imageLoader;
        if (((str != null || this.f92K == null) && (str == null || str.equals(this.f92K))) || (imageLoader = this.f93L) == null) {
            return;
        }
        imageLoader.cancelLoad(this.f115o);
        this.f93L.load(str, this.f115o);
    }

    /* JADX INFO: renamed from: a */
    private void m46a(LinkedList<ContentControls.ViewModel.TrackOptionVM> linkedList, LinkedList<ContentControls.ViewModel.TrackOptionVM> linkedList2) {
        Dialog dialog;
        this.f126z.clear();
        this.f126z.addAll(linkedList);
        this.f82A.clear();
        this.f82A.addAll(linkedList2);
        if (linkedList.isEmpty() && linkedList2.isEmpty() && (dialog = this.f90I) != null) {
            dialog.dismiss();
            this.f90I = null;
        }
    }

    /* JADX INFO: renamed from: a */
    private void m47a(boolean z) {
        if (this.f94M != z) {
            if (z) {
                this.f123w.m15a();
            } else {
                this.f123w.m16b();
            }
        }
    }

    /* JADX INFO: renamed from: b */
    private void m49b() {
        ((LayerDrawable) this.f119s.getProgressDrawable()).findDrawableByLayerId(R.id.progress).mutate().setColorFilter(this.f97P, PorterDuff.Mode.MULTIPLY);
        Drawable drawableMutate = ((LayerDrawable) this.f119s.getProgressDrawable()).findDrawableByLayerId(R.id.secondaryProgress).mutate();
        drawableMutate.setColorFilter(this.f97P, PorterDuff.Mode.MULTIPLY);
        drawableMutate.setAlpha(120);
        Drawable thumb = this.f119s.getThumb();
        if (thumb != null) {
            thumb.setColorFilter(this.f97P, PorterDuff.Mode.MULTIPLY);
        }
        if (Build.VERSION.SDK_INT >= 21) {
            ((LayerDrawable) this.f119s.getProgressDrawable()).findDrawableByLayerId(R.id.background).mutate().setColorFilter(this.f96O, PorterDuff.Mode.MULTIPLY);
        }
        for (Themed themed : this.f124x) {
            themed.setAccentColor(this.f97P);
            themed.setMainColor(this.f96O);
        }
        ((TextView) this.f112l.getChildAt(1)).setTextColor(this.f96O);
        this.f121u.setTextColor(this.f96O);
        this.f105e.setTextColor(this.f96O);
        this.f120t.setTextColor(this.f97P);
        this.f104d.getIndeterminateDrawable().setColorFilter(this.f96O, PorterDuff.Mode.MULTIPLY);
        View childAt = this.f83B.getChildAt(0);
        if (childAt != null) {
            childAt.getBackground().setColorFilter(this.f96O, PorterDuff.Mode.MULTIPLY);
        }
    }

    /* JADX INFO: renamed from: c */
    private void m51c() {
        this.f106f.m26a(this.f91J);
        this.f107g.m26a(this.f91J);
        this.f108h.m26a(this.f91J);
        this.f113m.setOnClickListener(this.f91J);
        this.f114n.setOnClickListener(this.f91J);
        this.f111k.setOnClickListener(this.f91J);
        this.f110j.setOnClickListener(this.f91J);
        this.f116p.setOnClickListener(this.f91J);
        this.f109i.setOnClickListener(this.f91J);
        this.f119s.setOnSeekBarChangeListener(this.f87F);
    }

    /* JADX INFO: renamed from: d */
    private void m53d() {
        this.f106f.m27a(new C0238d.a() { // from class: com.aol.mobile.sdk.controls.view.ContentControlsView.11
        });
        this.f107g.m27a(new C0238d.a() { // from class: com.aol.mobile.sdk.controls.view.ContentControlsView.12
        });
        this.f108h.m27a(new C0238d.a() { // from class: com.aol.mobile.sdk.controls.view.ContentControlsView.13
        });
        View.OnFocusChangeListener onFocusChangeListener = new View.OnFocusChangeListener() { // from class: com.aol.mobile.sdk.controls.view.ContentControlsView.14
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    if (ContentControlsView.this.f106f.m25a() == 0 || ContentControlsView.this.f107g.m25a() == 0 || ContentControlsView.this.f108h.m25a() == 0) {
                        ContentControlsView.this.f84C = null;
                    }
                }
            }
        };
        this.f113m.setOnFocusChangeListener(onFocusChangeListener);
        this.f114n.setOnFocusChangeListener(onFocusChangeListener);
        this.f110j.setOnFocusChangeListener(onFocusChangeListener);
        this.f111k.setOnFocusChangeListener(onFocusChangeListener);
        this.f109i.setOnFocusChangeListener(onFocusChangeListener);
        this.f119s.setOnFocusChangeListener(onFocusChangeListener);
        this.f84C = this.f108h.f61a;
    }

    /* JADX INFO: renamed from: e */
    private void m55e() {
        ValueAnimator valueAnimator = this.f85D;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.f102b.setVisibility(0);
    }

    public void cancelTimer() {
        this.f122v.m5b();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (this.f86E != null) {
            if (this.f102b.getVisibility() == 0) {
                this.f123w.m19e();
            } else {
                this.f123w.m17c();
            }
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        this.f123w.m19e();
        return super.dispatchTouchEvent(motionEvent);
    }

    public SidePanel getSidePanel() {
        return this.f117q;
    }

    public void hide() {
        if (this.f89H) {
            m55e();
            this.f84C = this.f102b.findFocus();
            setFocusable(true);
            this.f85D = ValueAnimator.ofFloat(1.0f, 0.0f);
            if (!f81a && this.f85D == null) {
                throw new AssertionError();
            }
            this.f85D.addListener(new Animator.AnimatorListener() { // from class: com.aol.mobile.sdk.controls.view.ContentControlsView.3
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ContentControlsView.this.f102b.setVisibility(4);
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                }
            });
            this.f85D.setDuration(400L);
            this.f85D.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.aol.mobile.sdk.controls.view.ContentControlsView.4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ContentControlsView.this.f102b.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                }
            });
            this.f85D.start();
            this.f117q.hide();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.f88G.onTouchEvent(motionEvent);
        return true;
    }

    @Override // com.aol.mobile.sdk.controls.ContentControls
    public void render(ContentControls.ViewModel viewModel) {
        AccessibilityManager accessibilityManager;
        m47a(viewModel.isStreamPlaying);
        ViewUtils.renderVisibility(viewModel.isLoading, this.f104d);
        ViewUtils.renderVisibility(viewModel.isPlayButtonVisible, this.f106f.f61a);
        ViewUtils.renderVisibility(viewModel.isPauseButtonVisible, this.f107g.f61a);
        ViewUtils.renderVisibility(viewModel.isReplayButtonVisible, this.f108h.f61a);
        ViewUtils.renderVisibility(viewModel.isNextButtonVisible, this.f113m);
        ViewUtils.renderVisibility(viewModel.isPrevButtonVisible, this.f114n);
        ViewUtils.renderVisibility(viewModel.isSeekForwardButtonVisible, this.f111k);
        ViewUtils.renderVisibility(viewModel.isSeekBackButtonVisible, this.f110j);
        ViewUtils.renderVisibility(viewModel.isSeekerVisible, this.f118r);
        ViewUtils.renderVisibility(viewModel.isCompassViewVisible, this.f103c);
        ViewUtils.renderVisibility(viewModel.isTitleVisible, this.f105e);
        ViewUtils.renderVisibility(viewModel.isThumbnailImageVisible, this.f115o);
        ViewUtils.renderVisibility(viewModel.isTrackChooserButtonVisible, this.f109i);
        ViewUtils.renderAvailability(viewModel.isNextButtonEnabled, this.f113m);
        ViewUtils.renderAvailability(viewModel.isPrevButtonEnabled, this.f114n);
        ViewUtils.renderAvailability(viewModel.isTrackChooserButtonEnabled, this.f109i);
        ViewUtils.renderText(viewModel.titleText, this.f105e);
        ViewUtils.renderText(viewModel.seekerCurrentTimeText, this.f120t);
        ViewUtils.renderText(viewModel.seekerDurationText, this.f121u);
        ViewUtils.renderSeekerMaxValue(viewModel.seekerMaxValue, this.f119s);
        ViewUtils.renderSeekerProgress(viewModel.seekerProgress, this.f119s);
        ViewUtils.renderSeekerBufferProgress(viewModel.seekerBufferedProgress, this.f119s);
        m45a(viewModel.thumbnailImageUrl);
        m42a(viewModel.compassLongitude);
        m46a(viewModel.audioTracks, viewModel.ccTracks);
        this.f112l.setVisibility(viewModel.isLiveIndicatorVisible ? 0 : 8);
        this.f112l.getChildAt(0).getBackground().setColorFilter(viewModel.isOnLiveEdge ? this.f98Q : this.f96O, PorterDuff.Mode.MULTIPLY);
        this.f94M = viewModel.isStreamPlaying;
        this.f92K = viewModel.thumbnailImageUrl;
        this.f95N = viewModel.compassLongitude;
        if (viewModel.isCasting || ((accessibilityManager = this.f100S) != null && accessibilityManager.isEnabled())) {
            if (this.f89H) {
                show();
            }
            this.f89H = false;
        } else if (!this.f89H) {
            if (this.f94M) {
                this.f89H = true;
                this.f123w.m15a();
            } else {
                this.f89H = true;
                this.f123w.m16b();
            }
        }
        this.f83B.setVisibility(viewModel.isCastButtonVisible ? 0 : 8);
        this.f119s.renderAdCues(viewModel.adCues);
    }

    @Override // com.aol.mobile.sdk.controls.Themed
    public void setAccentColor(int i) {
        this.f97P = i;
        m49b();
    }

    public void setImageLoader(ImageLoader imageLoader) {
        this.f93L = imageLoader;
    }

    @Override // com.aol.mobile.sdk.controls.ContentControls
    public void setListener(final ContentControls.Listener listener) {
        this.f86E = listener;
        OneCastManager oneCastManager = this.f101T;
        if (oneCastManager != null) {
            oneCastManager.setCastListener(new OneCastManager.CastListener() { // from class: com.aol.mobile.sdk.controls.view.ContentControlsView.10
                public void disableCast() {
                    ContentControls.Listener listener2 = listener;
                    if (listener2 != null) {
                        listener2.onCastDisabled();
                    }
                }

                public void enableCast() {
                    ContentControls.Listener listener2 = listener;
                    if (listener2 != null) {
                        listener2.onCastEnabled();
                    }
                }
            });
        }
    }

    public void setLiveDotColor(int i) {
        this.f98Q = i;
    }

    @Override // com.aol.mobile.sdk.controls.Themed
    public void setMainColor(int i) {
        this.f96O = i;
        m49b();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i == 4) {
            this.f123w.m18d();
        }
    }

    public void show() {
        if (ViewUtils.isVisible(this.f102b)) {
            return;
        }
        View view = this.f84C;
        m55e();
        setFocusable(false);
        this.f85D = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f85D.setDuration(400L);
        this.f85D.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.aol.mobile.sdk.controls.view.ContentControlsView.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                ContentControlsView.this.f102b.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        this.f85D.start();
        if (view != null) {
            m44a(view);
        }
        this.f117q.show();
    }

    public void startTimer() {
        this.f122v.m4a(3000L, new Runnable() { // from class: com.aol.mobile.sdk.controls.view.ContentControlsView.5
            @Override // java.lang.Runnable
            public void run() {
                ContentControlsView.this.f123w.m18d();
            }
        });
        this.f122v.m3a();
    }
}
