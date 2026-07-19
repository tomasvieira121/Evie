package com.evie.sidescreen.datanotification;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class DataWarningCardViewHolder_ViewBinding implements Unbinder {
    private DataWarningCardViewHolder target;
    private View view7f0b00a1;
    private View view7f0b00a9;

    public DataWarningCardViewHolder_ViewBinding(final DataWarningCardViewHolder dataWarningCardViewHolder, View view) {
        this.target = dataWarningCardViewHolder;
        dataWarningCardViewHolder.mContent = (ViewGroup) Utils.findRequiredViewAsType(view, R.id.content, "field 'mContent'", ViewGroup.class);
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.description, "field 'mDescription' and method 'onMoreTap'");
        dataWarningCardViewHolder.mDescription = (TextView) Utils.castView(viewFindRequiredView, R.id.description, "field 'mDescription'", TextView.class);
        this.view7f0b00a1 = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.datanotification.DataWarningCardViewHolder_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                dataWarningCardViewHolder.onMoreTap();
            }
        });
        View viewFindRequiredView2 = Utils.findRequiredView(view, R.id.dismiss, "method 'onDismiss'");
        this.view7f0b00a9 = viewFindRequiredView2;
        viewFindRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.datanotification.DataWarningCardViewHolder_ViewBinding.2
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                dataWarningCardViewHolder.onDismiss();
            }
        });
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        DataWarningCardViewHolder dataWarningCardViewHolder = this.target;
        if (dataWarningCardViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        dataWarningCardViewHolder.mContent = null;
        dataWarningCardViewHolder.mDescription = null;
        this.view7f0b00a1.setOnClickListener(null);
        this.view7f0b00a1 = null;
        this.view7f0b00a9.setOnClickListener(null);
        this.view7f0b00a9 = null;
    }
}
