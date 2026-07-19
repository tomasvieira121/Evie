package com.evie.sidescreen.tiles.videos;

import android.view.View;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import com.evie.sidescreen.R;
import com.evie.sidescreen.tiles.articles.AbstractArticleTileViewHolder;

/* JADX INFO: loaded from: classes.dex */
public class VideoSeedViewHolder extends AbstractArticleTileViewHolder<VideoSeedPresenter> {

    /* JADX INFO: renamed from: ID */
    public static final int f372ID = R.layout.tile_video_related_seed;

    @BindView
    TextView mSubtitle;
    private int maxLines;

    public VideoSeedViewHolder(View view) {
        super(view);
        this.maxLines = this.mSubtitle.getMaxLines();
    }

    public void showSubtitle(String str) {
        this.mSubtitle.setText(str);
        this.mSubtitle.setMaxLines(this.maxLines);
        this.mSubtitle.setVisibility(0);
    }

    public void hideSubtitle() {
        this.mSubtitle.setVisibility(8);
    }

    @Override // com.evie.sidescreen.tiles.articles.AbstractArticleTileViewHolder
    @OnClick
    public void onClick(View view) {
        int maxLines = this.mSubtitle.getMaxLines();
        int i = this.maxLines;
        if (maxLines == i) {
            this.mSubtitle.setMaxLines(Integer.MAX_VALUE);
        } else {
            this.mSubtitle.setMaxLines(i);
        }
    }
}
