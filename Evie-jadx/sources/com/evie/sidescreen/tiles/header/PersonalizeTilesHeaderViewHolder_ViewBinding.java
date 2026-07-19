package com.evie.sidescreen.tiles.header;

import android.view.View;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class PersonalizeTilesHeaderViewHolder_ViewBinding implements Unbinder {
    private PersonalizeTilesHeaderViewHolder target;
    private View view7f0b0129;

    public PersonalizeTilesHeaderViewHolder_ViewBinding(final PersonalizeTilesHeaderViewHolder personalizeTilesHeaderViewHolder, View view) {
        this.target = personalizeTilesHeaderViewHolder;
        personalizeTilesHeaderViewHolder.mTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.title, "field 'mTitle'", TextView.class);
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.link, "field 'mLink' and method 'onClickPersonalizeLink'");
        personalizeTilesHeaderViewHolder.mLink = viewFindRequiredView;
        this.view7f0b0129 = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.tiles.header.PersonalizeTilesHeaderViewHolder_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                personalizeTilesHeaderViewHolder.onClickPersonalizeLink();
            }
        });
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        PersonalizeTilesHeaderViewHolder personalizeTilesHeaderViewHolder = this.target;
        if (personalizeTilesHeaderViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        personalizeTilesHeaderViewHolder.mTitle = null;
        personalizeTilesHeaderViewHolder.mLink = null;
        this.view7f0b0129.setOnClickListener(null);
        this.view7f0b0129 = null;
    }
}
