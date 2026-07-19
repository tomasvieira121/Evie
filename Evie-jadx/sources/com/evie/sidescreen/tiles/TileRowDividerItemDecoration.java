package com.evie.sidescreen.tiles;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.evie.sidescreen.R;
import com.evie.sidescreen.mvp.MvpRecyclerAdapter;
import com.voxel.simplesearchlauncher.utils.AlphaUtil;

/* JADX INFO: loaded from: classes.dex */
public class TileRowDividerItemDecoration extends RecyclerView.ItemDecoration {
    private Drawable mDivider;
    private final Rect mBounds = new Rect();
    private int mPaddingLeft = 0;
    private int mPaddingRight = 0;

    public interface TileRowDividerContractor {
        boolean shouldShowBottomTileDivider();

        boolean shouldShowTopTileDivider();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
    }

    public TileRowDividerItemDecoration(Context context) {
        this.mDivider = context.getResources().getDrawable(R.drawable.tile_row_divider);
    }

    public TileRowDividerItemDecoration(Context context, boolean z) {
        this.mDivider = context.getResources().getDrawable(z ? R.drawable.tile_row_divider_dark : R.drawable.tile_row_divider).mutate();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        if (recyclerView.getLayoutManager() == null) {
            return;
        }
        drawVertical(canvas, recyclerView);
    }

    @SuppressLint({"NewApi"})
    private void drawVertical(Canvas canvas, RecyclerView recyclerView) {
        int paddingLeft;
        int width;
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            paddingLeft = recyclerView.getPaddingLeft() + this.mPaddingLeft;
            width = (recyclerView.getWidth() - recyclerView.getPaddingRight()) - this.mPaddingRight;
            canvas.clipRect(paddingLeft, recyclerView.getPaddingTop(), width, recyclerView.getHeight() - recyclerView.getPaddingBottom());
        } else {
            paddingLeft = this.mPaddingLeft;
            width = recyclerView.getWidth() - this.mPaddingRight;
        }
        int childCount = recyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = recyclerView.getChildAt(i);
            if (shouldShowDividerForView(childAt, recyclerView)) {
                recyclerView.getDecoratedBoundsWithMargins(childAt, this.mBounds);
                int iRound = this.mBounds.bottom + Math.round(ViewCompat.getTranslationY(childAt)) + Math.round(this.mDivider.getIntrinsicHeight() / 2);
                this.mDivider.setBounds(paddingLeft, iRound - this.mDivider.getIntrinsicHeight(), width, iRound);
                this.mDivider.setAlpha(AlphaUtil.floatToIntAlpha(childAt.getAlpha()));
                this.mDivider.draw(canvas);
            }
        }
        canvas.restore();
    }

    public int getDividerHeight() {
        return this.mDivider.getIntrinsicHeight();
    }

    private boolean shouldShowDividerForView(View view, RecyclerView recyclerView) {
        MvpRecyclerAdapter mvpRecyclerAdapter = (MvpRecyclerAdapter) recyclerView.getAdapter();
        int position = recyclerView.getLayoutManager().getPosition(view);
        if (position == mvpRecyclerAdapter.getItemCount() - 1) {
            return false;
        }
        Object item = mvpRecyclerAdapter.getItem(position);
        Object item2 = mvpRecyclerAdapter.getItem(position + 1);
        if ((item instanceof TileRowDividerContractor) && (item2 instanceof TileRowDividerContractor)) {
            return ((TileRowDividerContractor) item).shouldShowBottomTileDivider() && ((TileRowDividerContractor) item2).shouldShowTopTileDivider();
        }
        return false;
    }

    public void setPaddingLeft(int i) {
        this.mPaddingLeft = i;
    }

    public void setPaddingRight(int i) {
        this.mPaddingRight = i;
    }
}
