package com.evie.sidescreen.tiles.imageviewer;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;
import com.voxel.simplesearchlauncher.view.InterceptableFrameLayout;

/* JADX INFO: loaded from: classes.dex */
public class PopupViewHolder_ViewBinding implements Unbinder {
    private PopupViewHolder target;
    private View view7f0b0039;
    private View view7f0b003e;

    public PopupViewHolder_ViewBinding(final PopupViewHolder popupViewHolder, View view) {
        this.target = popupViewHolder;
        popupViewHolder.mInterceptableFrameLayout = (InterceptableFrameLayout) Utils.findRequiredViewAsType(view, R.id.container, "field 'mInterceptableFrameLayout'", InterceptableFrameLayout.class);
        popupViewHolder.mTargetView = Utils.findRequiredView(view, R.id.target, "field 'mTargetView'");
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.attribution_button, "field 'mAttributionButton' and method 'onAttributionClicked'");
        popupViewHolder.mAttributionButton = viewFindRequiredView;
        this.view7f0b0039 = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.tiles.imageviewer.PopupViewHolder_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                popupViewHolder.onAttributionClicked();
            }
        });
        popupViewHolder.mAttribution = (TextView) Utils.findRequiredViewAsType(view, R.id.attribution_source, "field 'mAttribution'", TextView.class);
        popupViewHolder.mPassthroughTarget = (ViewGroup) Utils.findRequiredViewAsType(view, R.id.passthrough_target, "field 'mPassthroughTarget'", ViewGroup.class);
        popupViewHolder.mOverlay = Utils.findRequiredView(view, R.id.overlay, "field 'mOverlay'");
        popupViewHolder.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.recycler_view, "field 'mRecyclerView'", RecyclerView.class);
        View viewFindRequiredView2 = Utils.findRequiredView(view, R.id.back_button, "method 'onBackButton'");
        this.view7f0b003e = viewFindRequiredView2;
        viewFindRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.tiles.imageviewer.PopupViewHolder_ViewBinding.2
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                popupViewHolder.onBackButton();
            }
        });
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        PopupViewHolder popupViewHolder = this.target;
        if (popupViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        popupViewHolder.mInterceptableFrameLayout = null;
        popupViewHolder.mTargetView = null;
        popupViewHolder.mAttributionButton = null;
        popupViewHolder.mAttribution = null;
        popupViewHolder.mPassthroughTarget = null;
        popupViewHolder.mOverlay = null;
        popupViewHolder.mRecyclerView = null;
        this.view7f0b0039.setOnClickListener(null);
        this.view7f0b0039 = null;
        this.view7f0b003e.setOnClickListener(null);
        this.view7f0b003e = null;
    }
}
