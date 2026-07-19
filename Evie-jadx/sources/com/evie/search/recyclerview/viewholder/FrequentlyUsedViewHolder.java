package com.evie.search.recyclerview.viewholder;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.evie.search.R;
import com.evie.search.model.FrequentlyUsedItem;
import com.evie.search.recyclerview.presenter.FrequentlyUsedItemPresenter;
import com.facebook.drawee.view.SimpleDraweeView;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class FrequentlyUsedViewHolder extends BaseViewHolder {

    /* JADX INFO: renamed from: ID */
    public static final int f307ID = R.layout.frequently_used;
    private LinearLayout mLayout;

    private FrequentlyUsedViewHolder(View view) {
        super(view);
        this.mLayout = (LinearLayout) view.findViewById(R.id.frequently_used_layout);
    }

    public static FrequentlyUsedViewHolder onCreateViewHolder(ViewGroup viewGroup) {
        return new FrequentlyUsedViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(f307ID, viewGroup, false));
    }

    @Override // com.evie.search.recyclerview.viewholder.BaseViewHolder
    public void clear() {
        for (int i = 0; i < this.mLayout.getChildCount(); i++) {
            LinearLayout linearLayout = (LinearLayout) this.mLayout.getChildAt(i);
            linearLayout.setOnClickListener(null);
            linearLayout.setOnLongClickListener(null);
            ((SimpleDraweeView) linearLayout.getChildAt(0)).setImageDrawable(null);
        }
    }

    public void bindItems(List<FrequentlyUsedItem> list) {
        for (final int i = 0; i < list.size() && i < this.mLayout.getChildCount(); i++) {
            LinearLayout linearLayout = (LinearLayout) this.mLayout.getChildAt(i);
            linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.evie.search.recyclerview.viewholder.-$$Lambda$FrequentlyUsedViewHolder$LDC18cZeE6f-HjZDIBfHh4oB8gs
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ((FrequentlyUsedItemPresenter) this.f$0.mPresenter).onItemClick(i);
                }
            });
            linearLayout.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.evie.search.recyclerview.viewholder.-$$Lambda$FrequentlyUsedViewHolder$XZA8yulOIvpQfe5yCacXN8mSWH4
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    return ((FrequentlyUsedItemPresenter) this.f$0.mPresenter).onItemLongClick(view, i);
                }
            });
            ((SimpleDraweeView) linearLayout.getChildAt(0)).setImageURI(list.get(i).getImageUrl());
        }
    }
}
