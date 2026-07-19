package com.evie.sidescreen.tiles.header;

import android.view.View;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class PlainTilesHeaderViewHolder_ViewBinding implements Unbinder {
    private PlainTilesHeaderViewHolder target;

    public PlainTilesHeaderViewHolder_ViewBinding(PlainTilesHeaderViewHolder plainTilesHeaderViewHolder, View view) {
        this.target = plainTilesHeaderViewHolder;
        plainTilesHeaderViewHolder.mTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.title, "field 'mTitle'", TextView.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        PlainTilesHeaderViewHolder plainTilesHeaderViewHolder = this.target;
        if (plainTilesHeaderViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        plainTilesHeaderViewHolder.mTitle = null;
    }
}
