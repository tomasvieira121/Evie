package com.evie.search.recyclerview.viewholder;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.evie.search.R;

/* JADX INFO: loaded from: classes.dex */
public class SearchHeaderViewHolder extends BaseViewHolder {

    /* JADX INFO: renamed from: ID */
    public static final int f310ID = R.layout.search_header;
    private TextView mLabel;

    private SearchHeaderViewHolder(View view) {
        super(view);
        this.mLabel = (TextView) view.findViewById(R.id.search_title_label);
    }

    public static SearchHeaderViewHolder onCreateViewHolder(ViewGroup viewGroup) {
        return new SearchHeaderViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(f310ID, viewGroup, false));
    }

    @Override // com.evie.search.recyclerview.viewholder.BaseViewHolder
    public void clear() {
        this.mLabel.setText((CharSequence) null);
    }

    public void bindItem(String str) {
        this.mLabel.setText(str);
    }
}
