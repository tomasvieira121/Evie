package com.evie.sidescreen.frequentlyused;

import android.view.View;
import android.view.ViewGroup;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class FrequentlyUsedViewHolder_ViewBinding implements Unbinder {
    private FrequentlyUsedViewHolder target;
    private View view7f0b0129;

    public FrequentlyUsedViewHolder_ViewBinding(final FrequentlyUsedViewHolder frequentlyUsedViewHolder, View view) {
        this.target = frequentlyUsedViewHolder;
        frequentlyUsedViewHolder.mContent = (ViewGroup) Utils.findRequiredViewAsType(view, R.id.content, "field 'mContent'", ViewGroup.class);
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.link, "method 'onLinkTap'");
        this.view7f0b0129 = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.frequentlyused.FrequentlyUsedViewHolder_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                frequentlyUsedViewHolder.onLinkTap();
            }
        });
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        FrequentlyUsedViewHolder frequentlyUsedViewHolder = this.target;
        if (frequentlyUsedViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        frequentlyUsedViewHolder.mContent = null;
        this.view7f0b0129.setOnClickListener(null);
        this.view7f0b0129 = null;
    }
}
