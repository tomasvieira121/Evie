package com.evie.sidescreen.tiles.error;

import android.view.View;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class TilesErrorViewHolder_ViewBinding implements Unbinder {
    private TilesErrorViewHolder target;
    private View view7f0b00b5;

    public TilesErrorViewHolder_ViewBinding(final TilesErrorViewHolder tilesErrorViewHolder, View view) {
        this.target = tilesErrorViewHolder;
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.error_spinner, "method 'onClick'");
        this.view7f0b00b5 = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.tiles.error.TilesErrorViewHolder_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                tilesErrorViewHolder.onClick(view2);
            }
        });
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        if (this.target == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        this.view7f0b00b5.setOnClickListener(null);
        this.view7f0b00b5 = null;
    }
}
