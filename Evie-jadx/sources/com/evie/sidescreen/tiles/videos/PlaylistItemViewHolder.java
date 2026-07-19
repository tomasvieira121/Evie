package com.evie.sidescreen.tiles.videos;

import android.view.View;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import com.evie.sidescreen.R;
import com.evie.sidescreen.tiles.TileViewHolder;
import com.facebook.drawee.view.SimpleDraweeView;

/* JADX INFO: loaded from: classes.dex */
public class PlaylistItemViewHolder extends TileViewHolder<PlaylistItemPresenter> {

    /* JADX INFO: renamed from: ID */
    public static final int f370ID = R.layout.tile_playlist_item;

    @BindView
    protected View mContent;

    @BindView
    protected SimpleDraweeView mImage;

    @BindView
    protected TextView mSubtitle;

    @BindView
    protected TextView mTitle;

    public PlaylistItemViewHolder(View view) {
        super(view);
    }

    public void showTitle(String str) {
        this.mTitle.setText(str);
    }

    public void showImage(String str) {
        SimpleDraweeView simpleDraweeView = this.mImage;
        if (simpleDraweeView != null) {
            simpleDraweeView.setImageURI(str);
            this.mImage.setVisibility(0);
        }
    }

    public void showSubtitle(String str) {
        this.mSubtitle.setText(str);
        this.mSubtitle.setVisibility(0);
    }

    public void hideSubtitle() {
        this.mSubtitle.setVisibility(8);
    }

    @OnClick
    public void onClick(View view) {
        ((PlaylistItemPresenter) this.mPresenter).onClick(view);
    }
}
