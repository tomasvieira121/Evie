package com.evie.jigsaw.components.base;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import com.evie.common.services.analytics.AnalyticsService;
import com.evie.common.services.analytics.models.AnalyticsData;
import com.evie.common.services.analytics.models.CloseMethod;
import com.evie.jigsaw.Jigsaw;
import com.evie.jigsaw.R;
import com.evie.jigsaw.internal.Library;
import com.evie.jigsaw.services.images.ImageResolver;
import com.evie.jigsaw.services.images.models.Image;
import com.evie.jigsaw.views.RichTextView;
import com.facebook.drawee.view.SimpleDraweeView;
import java.util.Stack;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractComponent<VH extends RecyclerView.ViewHolder> {
    private static final Style NO_STYLE = new Style();
    private AnalyticsData analytics;
    private transient AnalyticsService analyticsService;
    private transient ImageResolver imageResolver;
    private boolean inset;
    private transient VH mLastHolder;
    public transient AbstractComponent<?> parent;
    protected Style style = NO_STYLE;
    private final transient Stack<View> mFadedViews = new Stack<>();
    private final transient Handler mHandler = new Handler(Looper.getMainLooper());
    private final transient Runnable mBindTask = new Runnable() { // from class: com.evie.jigsaw.components.base.AbstractComponent.1
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            if (AbstractComponent.this.mLastHolder == null || AbstractComponent.this.mLastHolder.itemView == null) {
                return;
            }
            Object tag = AbstractComponent.this.mLastHolder.itemView.getTag(R.id.jigsaw_component);
            AbstractComponent abstractComponent = AbstractComponent.this;
            if (tag == abstractComponent) {
                abstractComponent.bind(abstractComponent.mLastHolder.itemView.getContext(), AbstractComponent.this.mLastHolder);
            }
        }
    };

    public void proliferate() {
    }

    public boolean ready() {
        return true;
    }

    public void initialize(Jigsaw jigsaw) {
        this.analyticsService = jigsaw.analyticsService();
        this.imageResolver = jigsaw.imageResolver();
    }

    public void bind(Context context, VH vh) {
        this.mLastHolder = vh;
        if (isInset()) {
            inset(vh, getInset(context));
        }
        applyStyle(context, vh);
        vh.itemView.setTag(R.id.jigsaw_component, this);
    }

    public void resume() {
        unfade();
    }

    public final View inflate(Context context, ViewGroup viewGroup) {
        return inflate(context, viewGroup, viewGroup != null);
    }

    public final View inflate(Context context, ViewGroup viewGroup, boolean z) {
        int iLayoutForComponent = Library.layoutForComponent(this);
        View viewInflate = LayoutInflater.from(context).inflate(iLayoutForComponent, viewGroup, false);
        viewInflate.setTag(this);
        RecyclerView.ViewHolder viewHolderHolderForLayout = Library.holderForLayout(iLayoutForComponent, viewInflate);
        proliferate();
        bind(context, viewHolderHolderForLayout);
        if (!z) {
            return viewInflate;
        }
        viewGroup.addView(viewInflate);
        return viewGroup;
    }

    public Point measure(Context context) {
        AbstractComponent<?> abstractComponent = this.parent;
        if (abstractComponent != null) {
            return abstractComponent.measure(context);
        }
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        point.y = 0;
        return point;
    }

    public boolean isInset() {
        return this.inset;
    }

    public AbstractComponent<VH> setInset(boolean z) {
        this.inset = z;
        return this;
    }

    protected void inset(VH vh, int i) {
        vh.itemView.setPadding(i, i, i, i);
    }

    protected int getInset(Context context) {
        return context.getResources().getDimensionPixelSize(R.dimen.half_spacing);
    }

    public enum BackgroundColor {
        light(R.color.white),
        gray(R.color.evie_bluish_gray),
        dark(R.color.black);

        private final int resource;

        BackgroundColor(int i) {
            this.resource = i;
        }

        public int getColor(Context context) {
            return context.getResources().getColor(this.resource);
        }
    }

    public static class Style {
        private BackgroundColor background;
        private boolean fullscreen;

        public Style setBackground(BackgroundColor backgroundColor) {
            this.background = backgroundColor;
            return this;
        }

        public Style setFullscreen(boolean z) {
            this.fullscreen = z;
            return this;
        }
    }

    public AbstractComponent<VH> setStyle(Style style) {
        this.style = style;
        return this;
    }

    protected void applyStyle(Context context, VH vh) {
        View view = vh.itemView;
        if (this.style.fullscreen) {
            view.getLayoutParams().height = -1;
        }
        if (this.style.background != null) {
            view.setBackgroundColor(this.style.background.getColor(context));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void fade(View view) {
        this.mFadedViews.push(view).setAlpha(0.45f);
    }

    protected void unfade() {
        while (!this.mFadedViews.empty()) {
            this.mFadedViews.pop().setAlpha(1.0f);
        }
    }

    public void invalidate() {
        if (this.mLastHolder != null) {
            post(this.mBindTask);
        }
    }

    protected void post(Runnable runnable) {
        this.mHandler.post(runnable);
    }

    public AbstractComponent<VH> setAnalytics(AnalyticsData analyticsData) {
        this.analytics = analyticsData;
        return this;
    }

    public AnalyticsData getAnalytics() {
        AnalyticsData analyticsData = this.analytics;
        if (analyticsData != null) {
            return analyticsData;
        }
        AbstractComponent<?> abstractComponent = this.parent;
        if (abstractComponent != null) {
            return abstractComponent.getAnalytics();
        }
        return null;
    }

    public void recordOpenEvent() {
        AnalyticsData analytics = getAnalytics();
        if (analytics == null) {
            return;
        }
        this.analyticsService.recordOpenEvent(analytics);
    }

    public void recordCloseEvent(CloseMethod closeMethod) {
        if (getAnalytics() == null) {
            return;
        }
        this.analyticsService.recordCloseEvent(this.analytics, closeMethod);
    }

    public void recordVideoEvent() {
        AnalyticsData analytics = getAnalytics();
        if (analytics == null) {
            return;
        }
        this.analyticsService.recordVideoEvent(analytics);
    }

    public void bind(RecyclerView recyclerView, RecyclerView.Adapter adapter, RecyclerView.LayoutManager layoutManager) {
        recyclerView.setAdapter(adapter);
        recyclerView.setLayoutManager(layoutManager);
        recyclerView.setVisibility(0);
    }

    public void bindBackground(View view, int i) {
        bindBackground(view, view.getContext().getResources().getDrawable(i));
    }

    public void bindBackground(View view, Drawable drawable) {
        view.setBackground(drawable);
    }

    public boolean bind(TextView textView, int i, int i2) {
        return bind(textView, textView.getContext().getResources().getString(i), i2);
    }

    public boolean bind(TextView textView, CharSequence charSequence, int i) {
        if (charSequence != null) {
            textView.setText(charSequence);
            textView.setVisibility(0);
            return true;
        }
        textView.setVisibility(i);
        return false;
    }

    public boolean bind(RichTextView richTextView, String str, int i) {
        richTextView.setComponent(this);
        if (str != null) {
            richTextView.setRichText(str);
            richTextView.setVisibility(0);
            return true;
        }
        richTextView.setVisibility(i);
        return false;
    }

    public boolean bind(SimpleDraweeView simpleDraweeView, Image image) {
        return bind(simpleDraweeView, image, 0, simpleDraweeView.getLayoutParams().width);
    }

    public boolean bind(SimpleDraweeView simpleDraweeView, Image image, int i) {
        return bind(simpleDraweeView, image, i, simpleDraweeView.getLayoutParams().width);
    }

    public boolean bind(SimpleDraweeView simpleDraweeView, Image image, int i, int i2, int i3) {
        simpleDraweeView.getLayoutParams().width = i2;
        simpleDraweeView.getLayoutParams().height = i3;
        return bind(simpleDraweeView, image, i, i2);
    }

    public boolean bind(SimpleDraweeView simpleDraweeView, Image image, int i, int i2) {
        if (image == null) {
            simpleDraweeView.setVisibility(i);
            return false;
        }
        Uri uriResolve = this.imageResolver.resolve(image, i2);
        if (uriResolve == null) {
            simpleDraweeView.setVisibility(i);
            return false;
        }
        if (uriResolve.equals(simpleDraweeView.getTag())) {
            simpleDraweeView.setVisibility(0);
            return true;
        }
        if (image.getRounding() != null) {
            simpleDraweeView.getHierarchy().setRoundingParams(image.getRounding().getParams(simpleDraweeView.getContext(), i2));
        } else {
            simpleDraweeView.getHierarchy().setRoundingParams(null);
        }
        simpleDraweeView.setImageDrawable(new ColorDrawable(simpleDraweeView.getResources().getColor(R.color.placeholder)));
        simpleDraweeView.setVisibility(0);
        simpleDraweeView.setImageURI(uriResolve);
        simpleDraweeView.setTag(uriResolve);
        return true;
    }
}
