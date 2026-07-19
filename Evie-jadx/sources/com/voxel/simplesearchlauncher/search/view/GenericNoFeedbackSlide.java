package com.voxel.simplesearchlauncher.search.view;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import com.evie.search.SearchPresenter;
import com.voxel.simplesearchlauncher.view.SlideLayout;
import is.shortcut.R;

/* JADX INFO: loaded from: classes2.dex */
public class GenericNoFeedbackSlide extends TextSlide {
    private SearchPresenter mSearch;

    public GenericNoFeedbackSlide(Context context, SlideLayout slideLayout, SearchPresenter searchPresenter) {
        super(context, slideLayout);
        this.mSearch = searchPresenter;
        this.mTextView.setText(context.getString(R.string.feedback_generic_no_feedback, context.getString(R.string.app_name)));
    }

    @Override // com.voxel.simplesearchlauncher.search.view.TextSlide, com.voxel.simplesearchlauncher.view.Slide
    public AnimatorSet getSlideEnteringAnimation(SlideLayout slideLayout) {
        AnimatorSet slideEnteringAnimation = super.getSlideEnteringAnimation(slideLayout);
        slideEnteringAnimation.addListener(new C12861());
        return slideEnteringAnimation;
    }

    /* JADX INFO: renamed from: com.voxel.simplesearchlauncher.search.view.GenericNoFeedbackSlide$1 */
    class C12861 implements Animator.AnimatorListener {
        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }

        C12861() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            GenericNoFeedbackSlide.this.mView.postDelayed(new Runnable() { // from class: com.voxel.simplesearchlauncher.search.view.-$$Lambda$GenericNoFeedbackSlide$1$aEImSSIUtore6GGjWhVnNyuSO5s
                @Override // java.lang.Runnable
                public final void run() {
                    GenericNoFeedbackSlide.this.mSearch.removeCustomPresenter();
                }
            }, 3000L);
        }
    }
}
