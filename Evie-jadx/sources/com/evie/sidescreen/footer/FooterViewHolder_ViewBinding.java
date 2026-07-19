package com.evie.sidescreen.footer;

import android.view.View;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class FooterViewHolder_ViewBinding implements Unbinder {
    private FooterViewHolder target;
    private View view7f0b00e5;

    public FooterViewHolder_ViewBinding(final FooterViewHolder footerViewHolder, View view) {
        this.target = footerViewHolder;
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.footer_powered_by_evie_text, "method 'onFooterClick'");
        this.view7f0b00e5 = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.footer.FooterViewHolder_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                footerViewHolder.onFooterClick(view2);
            }
        });
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        if (this.target == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        this.view7f0b00e5.setOnClickListener(null);
        this.view7f0b00e5 = null;
    }
}
