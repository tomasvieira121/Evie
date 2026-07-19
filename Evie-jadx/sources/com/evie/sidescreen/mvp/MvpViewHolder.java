package com.evie.sidescreen.mvp;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.ButterKnife;
import com.evie.sidescreen.mvp.ItemPresenter;

/* JADX INFO: loaded from: classes.dex */
public class MvpViewHolder<P extends ItemPresenter> extends RecyclerView.ViewHolder {
    protected P mPresenter;

    public MvpViewHolder(View view) {
        super(view);
        ButterKnife.bind(this, view);
    }

    public void bindPresenter(P p) {
        this.mPresenter = p;
    }

    public void unbindPresenter() {
        this.mPresenter = null;
    }
}
