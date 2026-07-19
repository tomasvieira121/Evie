package com.evie.sidescreen.tiles.articles;

import android.view.View;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.facebook.drawee.view.SimpleDraweeView;

/* JADX INFO: loaded from: classes.dex */
public class ArticleTileTagViewHolder {

    @BindView
    View divider;

    @BindView
    SimpleDraweeView image;

    @BindView
    TextView text;

    public ArticleTileTagViewHolder(View view) {
        ButterKnife.bind(this, view);
    }
}
