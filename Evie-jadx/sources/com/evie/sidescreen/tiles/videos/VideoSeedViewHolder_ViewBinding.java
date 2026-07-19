package com.evie.sidescreen.tiles.videos;

import android.view.View;
import android.widget.TextView;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;
import com.evie.sidescreen.tiles.articles.AbstractArticleTileViewHolder_ViewBinding;

/* JADX INFO: loaded from: classes.dex */
public class VideoSeedViewHolder_ViewBinding extends AbstractArticleTileViewHolder_ViewBinding {
    private VideoSeedViewHolder target;
    private View view7f0b01c5;

    public VideoSeedViewHolder_ViewBinding(final VideoSeedViewHolder videoSeedViewHolder, View view) {
        super(videoSeedViewHolder, view);
        this.target = videoSeedViewHolder;
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.subtitle, "field 'mSubtitle' and method 'onClick'");
        videoSeedViewHolder.mSubtitle = (TextView) Utils.castView(viewFindRequiredView, R.id.subtitle, "field 'mSubtitle'", TextView.class);
        this.view7f0b01c5 = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.tiles.videos.VideoSeedViewHolder_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                videoSeedViewHolder.onClick(view2);
            }
        });
    }

    @Override // com.evie.sidescreen.tiles.articles.AbstractArticleTileViewHolder_ViewBinding, butterknife.Unbinder
    public void unbind() {
        VideoSeedViewHolder videoSeedViewHolder = this.target;
        if (videoSeedViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        videoSeedViewHolder.mSubtitle = null;
        this.view7f0b01c5.setOnClickListener(null);
        this.view7f0b01c5 = null;
        super.unbind();
    }
}
