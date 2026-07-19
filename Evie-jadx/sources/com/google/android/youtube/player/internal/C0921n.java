package com.google.android.youtube.player.internal;

import android.R;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;

/* JADX INFO: renamed from: com.google.android.youtube.player.internal.n */
/* JADX INFO: loaded from: classes.dex */
public final class C0921n extends FrameLayout {

    /* JADX INFO: renamed from: a */
    private final ProgressBar f465a;

    /* JADX INFO: renamed from: b */
    private final TextView f466b;

    public C0921n(Context context) {
        super(context, null, C0932z.m533c(context));
        C0920m c0920m = new C0920m(context);
        setBackgroundColor(-16777216);
        this.f465a = new ProgressBar(context);
        this.f465a.setVisibility(8);
        addView(this.f465a, new FrameLayout.LayoutParams(-2, -2, 17));
        int i = (int) ((context.getResources().getDisplayMetrics().density * 10.0f) + 0.5f);
        this.f466b = new TextView(context);
        this.f466b.setTextAppearance(context, R.style.TextAppearance.Small);
        this.f466b.setTextColor(-1);
        this.f466b.setVisibility(8);
        this.f466b.setPadding(i, i, i, i);
        this.f466b.setGravity(17);
        this.f466b.setText(c0920m.f455a);
        addView(this.f466b, new FrameLayout.LayoutParams(-2, -2, 17));
    }

    /* JADX INFO: renamed from: a */
    public final void m477a() {
        this.f465a.setVisibility(8);
        this.f466b.setVisibility(8);
    }

    /* JADX INFO: renamed from: b */
    public final void m478b() {
        this.f465a.setVisibility(0);
        this.f466b.setVisibility(8);
    }

    /* JADX INFO: renamed from: c */
    public final void m479c() {
        this.f465a.setVisibility(8);
        this.f466b.setVisibility(0);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected final void onMeasure(int i, int i2) {
        float f;
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode != 1073741824 || mode2 != 1073741824) {
            if (mode == 1073741824 || (mode == Integer.MIN_VALUE && mode2 == 0)) {
                size2 = (int) (size / 1.777f);
            } else {
                if (mode2 == 1073741824 || (mode2 == Integer.MIN_VALUE && mode == 0)) {
                    f = size2;
                } else if (mode == Integer.MIN_VALUE && mode2 == Integer.MIN_VALUE) {
                    f = size2;
                    float f2 = size / 1.777f;
                    if (f >= f2) {
                        size2 = (int) f2;
                    }
                } else {
                    size = 0;
                    size2 = 0;
                }
                size = (int) (f * 1.777f);
            }
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(resolveSize(size, i), 1073741824), View.MeasureSpec.makeMeasureSpec(resolveSize(size2, i2), 1073741824));
    }
}
