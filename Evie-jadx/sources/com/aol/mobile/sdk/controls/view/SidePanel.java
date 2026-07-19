package com.aol.mobile.sdk.controls.view;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.LinearLayout;
import com.aol.mobile.sdk.annotations.PublicApi;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@PublicApi
public class SidePanel extends LinearLayout {

    /* JADX INFO: renamed from: a */
    private List<ValueAnimator> f144a;

    public SidePanel(Context context) {
        this(context, null);
    }

    public SidePanel(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f144a = new ArrayList();
    }

    /* JADX INFO: renamed from: a */
    private void m70a() {
        if (this.f144a.size() > 0) {
            Iterator<ValueAnimator> it = this.f144a.iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
            this.f144a.clear();
        }
    }

    public void hide() {
        m70a();
        for (int i = 0; i < getChildCount(); i++) {
            final View childAt = getChildAt(i);
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, getWidth());
            this.f144a.add(valueAnimatorOfFloat);
            valueAnimatorOfFloat.setDuration(200L);
            valueAnimatorOfFloat.setInterpolator(new DecelerateInterpolator());
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.aol.mobile.sdk.controls.view.SidePanel.3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    childAt.setX(((Float) valueAnimator.getAnimatedValue()).floatValue());
                }
            });
            valueAnimatorOfFloat.addListener(new Animator.AnimatorListener() { // from class: com.aol.mobile.sdk.controls.view.SidePanel.4
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    childAt.setVisibility(4);
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    childAt.setVisibility(0);
                }
            });
            valueAnimatorOfFloat.setStartDelay(i * 50);
            valueAnimatorOfFloat.start();
        }
    }

    public void show() {
        m70a();
        for (int i = 0; i < getChildCount(); i++) {
            final View childAt = getChildAt(i);
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(getWidth(), 0.0f);
            this.f144a.add(valueAnimatorOfFloat);
            valueAnimatorOfFloat.setDuration(200L);
            valueAnimatorOfFloat.setInterpolator(new DecelerateInterpolator());
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.aol.mobile.sdk.controls.view.SidePanel.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    childAt.setX(((Float) valueAnimator.getAnimatedValue()).floatValue());
                }
            });
            valueAnimatorOfFloat.addListener(new Animator.AnimatorListener() { // from class: com.aol.mobile.sdk.controls.view.SidePanel.2
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    childAt.setVisibility(0);
                }
            });
            valueAnimatorOfFloat.setStartDelay(i * 50);
            valueAnimatorOfFloat.start();
        }
    }
}
