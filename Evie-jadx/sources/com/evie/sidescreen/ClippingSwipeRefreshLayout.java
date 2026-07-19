package com.evie.sidescreen;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ClippingSwipeRefreshLayout extends SwipeRefreshLayout {
    private int mClipping;
    private final Rect mClippingRect;
    private ClippingFilter mFilter;

    public interface ClippingFilter {
        boolean reject(View view);
    }

    public void setClipping(int i) {
        this.mClipping = i;
    }

    public void setFilter(ClippingFilter clippingFilter) {
        this.mFilter = clippingFilter;
    }

    public ClippingSwipeRefreshLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mClippingRect = new Rect();
        initializeFromAttributes(context, attributeSet);
    }

    private void initializeFromAttributes(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ClippingSwipeRefreshLayout);
        this.mClipping = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ClippingSwipeRefreshLayout_clipping, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        ClippingFilter clippingFilter = this.mFilter;
        if (clippingFilter != null && clippingFilter.reject(view)) {
            return super.drawChild(canvas, view, j);
        }
        int iSave = canvas.save();
        this.mClippingRect.top = Math.max(0, this.mClipping - view.getTop());
        Rect rect = this.mClippingRect;
        rect.left = 0;
        rect.right = view.getWidth();
        this.mClippingRect.bottom = view.getHeight();
        view.setClipBounds(this.mClippingRect);
        boolean zDrawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(iSave);
        return zDrawChild;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        try {
            super.onLayout(z, i, i2, i3, i4);
        } catch (Exception e) {
            List<String> viewHierarchy = getViewHierarchy(this);
            StringBuilder sb = new StringBuilder();
            Iterator<String> it = viewHierarchy.iterator();
            while (it.hasNext()) {
                sb.append(it.next());
            }
            throw new RuntimeException(sb.toString(), e);
        }
    }

    public static List<String> getViewHierarchy(View view) {
        ArrayList arrayList = new ArrayList();
        getViewHierarchy(view, arrayList, 0);
        return arrayList;
    }

    private static void getViewHierarchy(View view, List<String> list, int i) {
        list.add(getViewMessage(view, i));
        if (view instanceof ViewGroup) {
            int i2 = i + 1;
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                getViewHierarchy(viewGroup.getChildAt(i3), list, i2);
            }
        }
    }

    private static String getViewMessage(View view, int i) {
        int id;
        String resourceName;
        String strReplace = new String(new char[i]).replace("\u0000", "    ");
        try {
            Object tag = view.getTag(R.id.layoutResId);
            if (tag != null && (tag instanceof Number)) {
                id = ((Number) tag).intValue();
            } else {
                id = view.getId();
            }
            if (view.getResources() != null) {
                resourceName = id != -1 ? view.getResources().getResourceName(id) : "no_id";
            } else {
                resourceName = "no_resources";
            }
            return strReplace + "[" + view.getClass().getSimpleName() + "] " + resourceName + "\n";
        } catch (Resources.NotFoundException unused) {
            return strReplace + "[" + view.getClass().getSimpleName() + "] name_not_found\n";
        }
    }
}
