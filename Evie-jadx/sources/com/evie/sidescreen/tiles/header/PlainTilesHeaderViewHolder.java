package com.evie.sidescreen.tiles.header;

import android.view.View;
import android.widget.TextView;
import butterknife.BindView;
import com.evie.sidescreen.R;
import com.evie.sidescreen.mvp.MvpViewHolder;

/* JADX INFO: loaded from: classes.dex */
public class PlainTilesHeaderViewHolder extends MvpViewHolder<PlainTilesHeaderPresenter> {

    /* JADX INFO: renamed from: ID */
    public static final int f362ID = R.layout.tiles_header_video_tab;

    @BindView
    TextView mTitle;

    public PlainTilesHeaderViewHolder(View view) {
        super(view);
    }

    public void setTitle(String str) {
        this.mTitle.setText(str);
    }
}
