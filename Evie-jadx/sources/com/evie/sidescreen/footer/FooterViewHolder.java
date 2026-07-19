package com.evie.sidescreen.footer;

import android.view.View;
import butterknife.OnClick;
import com.evie.sidescreen.R;
import com.evie.sidescreen.mvp.MvpViewHolder;

/* JADX INFO: loaded from: classes.dex */
public class FooterViewHolder extends MvpViewHolder<FooterPresenter> {

    /* JADX INFO: renamed from: ID */
    public static final int f329ID = R.layout.ss_footer_item;

    public FooterViewHolder(View view) {
        super(view);
    }

    @OnClick
    public void onFooterClick(View view) {
        ((FooterPresenter) this.mPresenter).onPoweredByClick(view.findViewById(R.id.icon));
    }
}
