package com.evie.sidescreen.tiles;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.util.TypedValue;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.evie.sidescreen.R;
import com.evie.sidescreen.mvp.MvpRecyclerAdapter;
import com.voxel.simplesearchlauncher.utils.AlphaUtil;

/* JADX INFO: loaded from: classes.dex */
public class TileBackgroundItemDecoration extends RecyclerView.ItemDecoration {
    private GradientDrawable mBackground;
    private final int mRadius;
    private final Rect mBounds = new Rect();
    private final Rect mPrevBounds = new Rect();
    private int mPaddingLeft = 0;
    private int mPaddingRight = 0;
    private final float[] mCornerRadius = new float[8];

    public interface TileBackgroundContractor {
        boolean backgroundReliesOnAlpha();

        boolean backgroundReliesOnPrevAlpha();

        boolean shouldFillInBackground();

        boolean shouldRoundBottomCorners();

        boolean shouldRoundTopCorners();
    }

    public TileBackgroundItemDecoration(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.tilesBackground, typedValue, true);
        int i = typedValue.data;
        this.mBackground = new GradientDrawable();
        this.mBackground.setColor(i);
        this.mRadius = context.getResources().getDimensionPixelSize(R.dimen.ss_image_rounded_corner_radius);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        if (recyclerView.getLayoutManager() == null) {
            return;
        }
        drawVertical(canvas, recyclerView);
    }

    @SuppressLint({"NewApi"})
    private void drawVertical(Canvas canvas, RecyclerView recyclerView) {
        int paddingLeft;
        int width;
        RecyclerView.ViewHolder viewHolderFindViewHolderForLayoutPosition;
        int i;
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            paddingLeft = recyclerView.getPaddingLeft() + this.mPaddingLeft;
            width = (recyclerView.getWidth() - recyclerView.getPaddingRight()) - this.mPaddingRight;
            canvas.clipRect(paddingLeft, recyclerView.getPaddingTop(), width, recyclerView.getHeight() - recyclerView.getPaddingBottom());
        } else {
            paddingLeft = this.mPaddingLeft;
            width = recyclerView.getWidth() - this.mPaddingRight;
        }
        if (recyclerView.getLayoutManager() == null) {
            return;
        }
        int iFindFirstVisibleItemPosition = ((LinearLayoutManager) recyclerView.getLayoutManager()).findFirstVisibleItemPosition();
        int iFindLastVisibleItemPosition = ((LinearLayoutManager) recyclerView.getLayoutManager()).findLastVisibleItemPosition();
        while (true) {
            iFindFirstVisibleItemPosition++;
            if (iFindFirstVisibleItemPosition <= iFindLastVisibleItemPosition) {
                View view = recyclerView.findViewHolderForLayoutPosition(iFindFirstVisibleItemPosition).itemView;
                TileBackgroundContractor tileBackgroundContractor = getTileBackgroundContractor(view, recyclerView);
                if (tileBackgroundContractor != null && (viewHolderFindViewHolderForLayoutPosition = recyclerView.findViewHolderForLayoutPosition(iFindFirstVisibleItemPosition - 1)) != null) {
                    View view2 = viewHolderFindViewHolderForLayoutPosition.itemView;
                    if (tileBackgroundContractor.shouldFillInBackground()) {
                        recyclerView.getDecoratedBoundsWithMargins(view, this.mBounds);
                        recyclerView.getDecoratedBoundsWithMargins(view2, this.mPrevBounds);
                        int iRound = this.mPrevBounds.bottom + Math.round(view2.getTranslationY()) + getLayoutParams(view).topMargin;
                        int iRound2 = (this.mBounds.bottom + Math.round(view.getTranslationY())) - getLayoutParams(view).bottomMargin;
                        float f = tileBackgroundContractor.shouldRoundTopCorners() ? this.mRadius : 0.0f;
                        float f2 = tileBackgroundContractor.shouldRoundBottomCorners() ? this.mRadius : 0.0f;
                        int i2 = 0;
                        while (true) {
                            if (i2 >= 4) {
                                break;
                            }
                            this.mCornerRadius[i2] = f;
                            i2++;
                        }
                        for (i = 4; i < 8; i++) {
                            this.mCornerRadius[i] = f2;
                        }
                        this.mBackground.setCornerRadii(this.mCornerRadius);
                        this.mBackground.setBounds(paddingLeft, iRound, width, iRound2);
                        if (tileBackgroundContractor.backgroundReliesOnPrevAlpha()) {
                            this.mBackground.setAlpha(AlphaUtil.floatToIntAlpha(view2.getAlpha()));
                        } else if (tileBackgroundContractor.backgroundReliesOnAlpha()) {
                            this.mBackground.setAlpha(AlphaUtil.floatToIntAlpha(view.getAlpha()));
                        } else {
                            this.mBackground.setAlpha(255);
                        }
                        this.mBackground.draw(canvas);
                    }
                }
            } else {
                canvas.restore();
                return;
            }
        }
    }

    private RecyclerView.LayoutParams getLayoutParams(View view) {
        return (RecyclerView.LayoutParams) view.getLayoutParams();
    }

    private TileBackgroundContractor getTileBackgroundContractor(View view, RecyclerView recyclerView) {
        MvpRecyclerAdapter mvpRecyclerAdapter = (MvpRecyclerAdapter) recyclerView.getAdapter();
        int position = recyclerView.getLayoutManager().getPosition(view);
        if (position == mvpRecyclerAdapter.getItemCount() - 1) {
            return null;
        }
        Object item = mvpRecyclerAdapter.getItem(position);
        if (item instanceof TileBackgroundContractor) {
            return (TileBackgroundContractor) item;
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        super.getItemOffsets(rect, view, recyclerView, state);
    }
}
