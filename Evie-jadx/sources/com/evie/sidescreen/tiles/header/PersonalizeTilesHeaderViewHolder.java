package com.evie.sidescreen.tiles.header;

import android.view.View;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import com.evie.sidescreen.R;
import com.evie.sidescreen.mvp.MvpViewHolder;

/* JADX INFO: loaded from: classes.dex */
public class PersonalizeTilesHeaderViewHolder extends MvpViewHolder<PersonalizeTileHeaderPresenter> {

    @BindView
    View mLink;

    @BindView
    TextView mTitle;

    /* JADX INFO: renamed from: ID */
    public static final int f361ID = R.layout.tiles_header;
    public static final int DEFAULT_TITLE = R.string.ss_trending_section_title;

    public PersonalizeTilesHeaderViewHolder(View view) {
        super(view);
    }

    public void setTitle(String str) {
        this.mTitle.setText(str);
    }

    @OnClick
    public void onClickPersonalizeLink() {
        ((PersonalizeTileHeaderPresenter) this.mPresenter).onClickPersonalizeLink();
    }

    public void setDefaultTitle() {
        setTitle(this.itemView.getResources().getString(DEFAULT_TITLE));
    }
}
