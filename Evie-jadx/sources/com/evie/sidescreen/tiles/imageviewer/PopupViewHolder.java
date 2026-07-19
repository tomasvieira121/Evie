package com.evie.sidescreen.tiles.imageviewer;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.AbsoluteLayout;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.evie.sidescreen.TopEmptyItemPresenter;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.evie.sidescreen.mvp.MvpRecyclerAdapter;
import com.evie.sidescreen.mvp.MvpViewHolder;
import com.evie.sidescreen.tiles.TileRowDividerItemDecoration;
import com.evie.sidescreen.tiles.imageviewer.PopupPresenter;
import com.evie.sidescreen.util.ForwardingItemTouchListener;
import com.voxel.simplesearchlauncher.utils.AlphaUtil;
import com.voxel.simplesearchlauncher.view.InterceptableFrameLayout;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class PopupViewHolder<P extends PopupPresenter> extends MvpViewHolder<P> {
    private static final TimeInterpolator INTERPOLATOR = new AccelerateDecelerateInterpolator();
    private static final TimeInterpolator REVERSE_INTERPOLATOR = new AccelerateDecelerateInterpolator();
    private final MvpRecyclerAdapter mAdapter;

    @BindView
    TextView mAttribution;

    @BindView
    View mAttributionButton;
    private final ColorDrawable mBackgroundDrawable;
    private int mCardHideHeight;
    private boolean mCardShown;
    public View mContentView;
    private int mInitialShowIndex;

    @BindView
    InterceptableFrameLayout mInterceptableFrameLayout;

    @BindView
    View mOverlay;

    @BindView
    ViewGroup mPassthroughTarget;
    private final ViewGroup mPopupView;

    @BindView
    RecyclerView mRecyclerView;

    @BindView
    View mTargetView;
    private final TopEmptyItemPresenter mTopEmptyItemPresenter;

    /* JADX INFO: Access modifiers changed from: private */
    interface RectMaker {
        Rect getRect();
    }

    public abstract int[] getWidthAndHeight(View view);

    public abstract void showContent(String str);

    public PopupViewHolder(View view, ViewGroup viewGroup) {
        super(view);
        this.mCardShown = true;
        this.mAdapter = new MvpRecyclerAdapter();
        this.mTopEmptyItemPresenter = new TopEmptyItemPresenter();
        this.mPopupView = viewGroup;
        this.mInterceptableFrameLayout.setOnInterceptTouchListener(new View.OnTouchListener() { // from class: com.evie.sidescreen.tiles.imageviewer.-$$Lambda$PopupViewHolder$2XlmVkZ-azeOrlAd_wesuIjj4Js
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return PopupViewHolder.lambda$new$0(this.f$0, view2, motionEvent);
            }
        });
        this.mBackgroundDrawable = (ColorDrawable) view.getBackground();
        this.mBackgroundDrawable.mutate();
        this.mBackgroundDrawable.setAlpha(0);
        this.mRecyclerView.setAlpha(0.0f);
        this.mRecyclerView.addOnItemTouchListener(new ForwardingItemTouchListener(this.mPassthroughTarget, 0, true));
        this.mRecyclerView.setAdapter(this.mAdapter);
        this.mRecyclerView.setItemAnimator(null);
        this.mRecyclerView.addItemDecoration(new TileRowDividerItemDecoration(view.getContext(), true));
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(view.getContext()) { // from class: com.evie.sidescreen.tiles.imageviewer.PopupViewHolder.1
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public void onLayoutCompleted(RecyclerView.State state) {
                super.onLayoutCompleted(state);
                PopupViewHolder.this.handleTopEmptyItem();
                PopupViewHolder.this.mAdapter.updateVisibility();
            }
        });
        this.mRecyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.evie.sidescreen.tiles.imageviewer.PopupViewHolder.2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                super.onScrolled(recyclerView, i, i2);
                PopupViewHolder.this.handleCardHideHeight();
            }
        });
        setCardHideHeight(this.mPopupView.getHeight());
    }

    public static /* synthetic */ boolean lambda$new$0(PopupViewHolder popupViewHolder, View view, MotionEvent motionEvent) {
        popupViewHolder.mInterceptableFrameLayout.getParent().requestDisallowInterceptTouchEvent(true);
        return false;
    }

    @OnClick
    public void onBackButton() {
        ((PopupPresenter) this.mPresenter).onBackButtonClicked();
    }

    public void setContent(View view) {
        this.mContentView = view;
    }

    public void showPopup() {
        this.mPopupView.addView(this.itemView, new FrameLayout.LayoutParams(-1, -1));
    }

    public void dismissPopup() {
        this.mPopupView.removeView(this.itemView);
    }

    public void setImageFullScreen() {
        this.mTargetView.setLayoutParams(new AbsoluteLayout.LayoutParams(-1, -1, 0, 0));
    }

    public void setContentAlpha(final float f, Animator.AnimatorListener animatorListener, boolean z) {
        if (z) {
            final float fIntToFloatAlpha = AlphaUtil.intToFloatAlpha((int) this.mContentView.getAlpha());
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.evie.sidescreen.tiles.imageviewer.-$$Lambda$PopupViewHolder$iQ10TRqKKOq4no24SHmoxOrdJ8k
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    PopupViewHolder.lambda$setContentAlpha$1(this.f$0, f, fIntToFloatAlpha, valueAnimator);
                }
            });
            if (animatorListener != null) {
                valueAnimatorOfFloat.addListener(animatorListener);
            }
            valueAnimatorOfFloat.start();
            return;
        }
        this.mContentView.setAlpha(AlphaUtil.floatToIntAlpha(f));
    }

    public static /* synthetic */ void lambda$setContentAlpha$1(PopupViewHolder popupViewHolder, float f, float f2, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        popupViewHolder.mContentView.setAlpha(AlphaUtil.floatToIntAlpha((f * fFloatValue) + (f2 * (1.0f - fFloatValue))));
    }

    private void animateWashAndOverlayAlpha(final float f, final float f2) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.evie.sidescreen.tiles.imageviewer.-$$Lambda$PopupViewHolder$upUPf1i_vxQkbstWLLjeEhK_TgU
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                PopupViewHolder.lambda$animateWashAndOverlayAlpha$2(this.f$0, f2, f, valueAnimator);
            }
        });
        valueAnimatorOfFloat.start();
    }

    public static /* synthetic */ void lambda$animateWashAndOverlayAlpha$2(PopupViewHolder popupViewHolder, float f, float f2, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        float f3 = (f * fFloatValue) + (f2 * (1.0f - fFloatValue));
        ((PopupPresenter) popupViewHolder.mPresenter).onImagePopped(f3);
        popupViewHolder.mBackgroundDrawable.setAlpha(AlphaUtil.floatToIntAlpha(f3));
        popupViewHolder.mOverlay.setAlpha(f3);
    }

    public void setWashAndOverlayAlpha(float f, boolean z) {
        if (z) {
            animateWashAndOverlayAlpha(AlphaUtil.intToFloatAlpha(this.mBackgroundDrawable.getAlpha()), f);
            this.mRecyclerView.animate().alpha(f);
        } else {
            this.mBackgroundDrawable.setAlpha(AlphaUtil.floatToIntAlpha(f));
            this.mOverlay.setAlpha(f);
            this.mRecyclerView.setAlpha(f);
        }
    }

    public void animateFullScreen(Rect rect) {
        this.mContentView.setVisibility(4);
        this.mContentView.postDelayed(new Runnable() { // from class: com.evie.sidescreen.tiles.imageviewer.-$$Lambda$PopupViewHolder$KWmkf_ggYrEx-KsQY2jD6cvnCJ4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.mContentView.setVisibility(0);
            }
        }, 1L);
        animateToRect(rect, new Rect(0, 0, this.mPopupView.getWidth(), this.mPopupView.getHeight()), new OriginalRectMaker(rect), new FullScreenRectMaker(), null, true);
    }

    public void animateToRect(Rect rect, Animator.AnimatorListener animatorListener) {
        animateToRect(new Rect(this.mTargetView.getLeft(), this.mTargetView.getTop(), this.mTargetView.getRight(), this.mTargetView.getBottom()), rect, new FullScreenRectMaker(), new OriginalRectMaker(rect), animatorListener, false);
    }

    private void animateToRect(final Rect rect, final Rect rect2, final RectMaker rectMaker, final RectMaker rectMaker2, Animator.AnimatorListener animatorListener, boolean z) {
        final AbsoluteLayout.LayoutParams layoutParams = new AbsoluteLayout.LayoutParams(rect.width(), rect.height(), rect.left, rect.top);
        this.mTargetView.setLayoutParams(layoutParams);
        final AbsoluteLayout.LayoutParams layoutParams2 = new AbsoluteLayout.LayoutParams(rect.width(), rect.height(), rect.left, rect.top);
        this.mContentView.setLayoutParams(layoutParams);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        final Rect rect3 = new Rect();
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.evie.sidescreen.tiles.imageviewer.-$$Lambda$PopupViewHolder$S_k19SkFUfbBUwoeROZZxQWJ_9A
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                PopupViewHolder.lambda$animateToRect$4(this.f$0, rect, rect2, rect3, layoutParams, rectMaker, rectMaker2, layoutParams2, valueAnimator);
            }
        });
        valueAnimatorOfFloat.addListener(new Animator.AnimatorListener() { // from class: com.evie.sidescreen.tiles.imageviewer.PopupViewHolder.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                layoutParams2.x = rect2.left;
                layoutParams2.y = rect2.top;
                layoutParams2.width = rect2.width();
                layoutParams2.height = rect2.height();
                PopupViewHolder.this.mContentView.setLayoutParams(layoutParams2);
            }
        });
        if (z) {
            valueAnimatorOfFloat.setInterpolator(INTERPOLATOR);
        } else {
            valueAnimatorOfFloat.setInterpolator(REVERSE_INTERPOLATOR);
        }
        if (animatorListener != null) {
            valueAnimatorOfFloat.addListener(animatorListener);
        }
        valueAnimatorOfFloat.start();
    }

    public static /* synthetic */ void lambda$animateToRect$4(PopupViewHolder popupViewHolder, Rect rect, Rect rect2, Rect rect3, AbsoluteLayout.LayoutParams layoutParams, RectMaker rectMaker, RectMaker rectMaker2, AbsoluteLayout.LayoutParams layoutParams2, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        popupViewHolder.factorRects(rect, rect2, rect3, fFloatValue);
        layoutParams.x = rect3.left;
        layoutParams.y = rect3.top;
        layoutParams.width = rect3.width();
        layoutParams.height = rect3.height();
        popupViewHolder.mTargetView.setLayoutParams(layoutParams);
        Rect rect4 = rectMaker.getRect();
        Rect rect5 = rectMaker2.getRect();
        if (rect4 == null || rect5 == null) {
            return;
        }
        popupViewHolder.factorRects(rect4, rect5, rect3, fFloatValue);
        layoutParams2.x = rect3.left - layoutParams.x;
        layoutParams2.y = rect3.top - layoutParams.y;
        layoutParams2.width = rect3.width();
        layoutParams2.height = rect3.height();
        popupViewHolder.mContentView.setLayoutParams(layoutParams2);
    }

    public void setPresenters(List<ItemPresenter> list, int i) {
        if (list != null) {
            list = new ArrayList(list);
        }
        if (list != null && i >= 0) {
            list.add(0, this.mTopEmptyItemPresenter);
            i++;
        }
        this.mInitialShowIndex = i;
        this.mAdapter.setItemPresenters(list, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleTopEmptyItem() {
        if (this.mInitialShowIndex <= 0 || this.mTopEmptyItemPresenter.hasCustomHeight()) {
            return;
        }
        int height = this.mPopupView.getHeight();
        for (int i = 1; i <= this.mInitialShowIndex; i++) {
            View viewFindViewByPosition = this.mRecyclerView.getLayoutManager().findViewByPosition(i);
            if (viewFindViewByPosition != null) {
                height -= viewFindViewByPosition.getHeight();
            }
        }
        this.mTopEmptyItemPresenter.setHeight(Math.max(height, 0));
        handleCardHideHeight();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCardHideHeight() {
        int top;
        View viewFindViewByPosition = this.mRecyclerView.getLayoutManager().findViewByPosition(0);
        if (viewFindViewByPosition != null) {
            top = viewFindViewByPosition.getTop();
        } else {
            top = -this.mTopEmptyItemPresenter.getHeight();
        }
        setCardHideHeight(this.mPopupView.getHeight() - (this.mTopEmptyItemPresenter.getHeight() + top));
    }

    public void setCardShown(boolean z) {
        if (this.mCardShown != z) {
            this.mRecyclerView.animate().translationY(z ? 0.0f : this.mCardHideHeight);
        }
        this.mCardShown = z;
    }

    public void toggleCardShown() {
        setCardShown(!this.mCardShown);
    }

    public void setCardHideHeight(int i) {
        this.mCardHideHeight = i;
        if (this.mCardShown) {
            return;
        }
        this.mRecyclerView.setTranslationY(this.mCardHideHeight);
    }

    public void showAttribution(String str) {
        this.mAttribution.setText(str);
        this.mAttributionButton.setVisibility(0);
    }

    @OnClick
    public void onAttributionClicked() {
        ((PopupPresenter) this.mPresenter).onAttributionClicked();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float calculateScaleDifference(int i, int i2, int i3, int i4) {
        return (i * i4 > i3 * i2 ? i4 / i2 : i3 / i) / Math.min(i3 / i, i4 / i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rect scaleRectFromCenter(Rect rect, float f) {
        float fExactCenterX = rect.exactCenterX();
        float fExactCenterY = rect.exactCenterY();
        float fWidth = rect.width() * f * 0.5f;
        float fHeight = rect.height() * f * 0.5f;
        Rect rect2 = new Rect();
        rect2.left = Math.round(fExactCenterX - fWidth);
        rect2.right = Math.round(fExactCenterX + fWidth);
        rect2.top = Math.round(fExactCenterY - fHeight);
        rect2.bottom = Math.round(fExactCenterY + fHeight);
        return rect2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rect centerInside(int i, int i2, Rect rect) {
        float f = i / i2;
        float fWidth = rect.width() / rect.height();
        Rect rect2 = new Rect();
        if (f > fWidth) {
            float fHeight = rect.height() / (f / fWidth);
            rect2.left = rect.left;
            rect2.right = rect.right;
            float f2 = fHeight / 2.0f;
            rect2.top = Math.round(rect.centerY() - f2);
            rect2.bottom = Math.round(rect.centerY() + f2);
        } else {
            float fWidth2 = (rect.width() / (fWidth / f)) / 2.0f;
            rect2.left = Math.round(rect.centerX() - fWidth2);
            rect2.right = Math.round(rect.centerX() + fWidth2);
            rect2.top = rect.top;
            rect2.bottom = rect.bottom;
        }
        return rect2;
    }

    private void factorRects(Rect rect, Rect rect2, Rect rect3, float f) {
        float f2 = 1.0f - f;
        rect3.left = (int) Math.floor((rect2.left * f) + (rect.left * f2));
        rect3.top = (int) Math.floor((rect2.top * f) + (rect.top * f2));
        rect3.right = (int) Math.ceil((rect2.right * f) + (rect.right * f2));
        rect3.bottom = (int) Math.ceil((rect2.bottom * f) + (rect.bottom * f2));
    }

    private class FullScreenRectMaker implements RectMaker {
        Rect mRect;

        private FullScreenRectMaker() {
            this.mRect = null;
        }

        @Override // com.evie.sidescreen.tiles.imageviewer.PopupViewHolder.RectMaker
        public Rect getRect() {
            Rect rect = this.mRect;
            if (rect != null) {
                return rect;
            }
            PopupViewHolder popupViewHolder = PopupViewHolder.this;
            int[] widthAndHeight = popupViewHolder.getWidthAndHeight(popupViewHolder.mContentView);
            this.mRect = PopupViewHolder.this.centerInside(widthAndHeight[0], widthAndHeight[1], new Rect(0, 0, PopupViewHolder.this.mPopupView.getWidth(), PopupViewHolder.this.mPopupView.getHeight()));
            return this.mRect;
        }
    }

    private class OriginalRectMaker implements RectMaker {
        final Rect mOriginalRect;
        Rect mRect;

        private OriginalRectMaker(Rect rect) {
            this.mOriginalRect = rect;
        }

        @Override // com.evie.sidescreen.tiles.imageviewer.PopupViewHolder.RectMaker
        public Rect getRect() {
            Rect rect = this.mRect;
            if (rect != null) {
                return rect;
            }
            PopupViewHolder popupViewHolder = PopupViewHolder.this;
            int[] widthAndHeight = popupViewHolder.getWidthAndHeight(popupViewHolder.mContentView);
            float fCalculateScaleDifference = PopupViewHolder.this.calculateScaleDifference(widthAndHeight[0], widthAndHeight[1], this.mOriginalRect.width(), this.mOriginalRect.height());
            if (Float.isNaN(fCalculateScaleDifference)) {
                fCalculateScaleDifference = 1.0f;
            }
            this.mRect = PopupViewHolder.this.scaleRectFromCenter(this.mOriginalRect, fCalculateScaleDifference);
            return this.mRect;
        }
    }
}
