package com.evie.sidescreen.prompts.breakingnews;

import android.view.View;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;
import com.facebook.drawee.view.SimpleDraweeView;

/* JADX INFO: loaded from: classes.dex */
public class BreakingNewsTileViewHolder_ViewBinding implements Unbinder {
    private BreakingNewsTileViewHolder target;
    private View view7f0b0057;

    public BreakingNewsTileViewHolder_ViewBinding(final BreakingNewsTileViewHolder breakingNewsTileViewHolder, View view) {
        this.target = breakingNewsTileViewHolder;
        breakingNewsTileViewHolder.mDescription = (TextView) Utils.findRequiredViewAsType(view, R.id.breakingnews_row_description, "field 'mDescription'", TextView.class);
        breakingNewsTileViewHolder.mImage = (SimpleDraweeView) Utils.findRequiredViewAsType(view, R.id.breakingnews_row_image, "field 'mImage'", SimpleDraweeView.class);
        breakingNewsTileViewHolder.mTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.breakingnews_row_title, "field 'mTitle'", TextView.class);
        breakingNewsTileViewHolder.mPadding = Utils.findRequiredView(view, R.id.breakingnews_image_padding, "field 'mPadding'");
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.breakingnews_row, "method 'onTileClick'");
        this.view7f0b0057 = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.prompts.breakingnews.BreakingNewsTileViewHolder_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                breakingNewsTileViewHolder.onTileClick();
            }
        });
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        BreakingNewsTileViewHolder breakingNewsTileViewHolder = this.target;
        if (breakingNewsTileViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        breakingNewsTileViewHolder.mDescription = null;
        breakingNewsTileViewHolder.mImage = null;
        breakingNewsTileViewHolder.mTitle = null;
        breakingNewsTileViewHolder.mPadding = null;
        this.view7f0b0057.setOnClickListener(null);
        this.view7f0b0057 = null;
    }
}
