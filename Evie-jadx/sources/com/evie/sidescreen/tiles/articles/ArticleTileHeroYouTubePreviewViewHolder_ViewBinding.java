package com.evie.sidescreen.tiles.articles;

import android.view.View;
import android.widget.TextView;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;
import com.facebook.drawee.view.SimpleDraweeView;

/* JADX INFO: loaded from: classes.dex */
public class ArticleTileHeroYouTubePreviewViewHolder_ViewBinding extends AbstractHeroViewHolder_ViewBinding {
    private ArticleTileHeroYouTubePreviewViewHolder target;
    private View view7f0b010f;

    public ArticleTileHeroYouTubePreviewViewHolder_ViewBinding(final ArticleTileHeroYouTubePreviewViewHolder articleTileHeroYouTubePreviewViewHolder, View view) {
        super(articleTileHeroYouTubePreviewViewHolder, view.getContext());
        this.target = articleTileHeroYouTubePreviewViewHolder;
        articleTileHeroYouTubePreviewViewHolder.mVideoFrame = Utils.findRequiredView(view, R.id.video_frame, "field 'mVideoFrame'");
        articleTileHeroYouTubePreviewViewHolder.mPoppableMedia = Utils.findRequiredView(view, R.id.poppable_media, "field 'mPoppableMedia'");
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.image, "field 'mImage' and method 'onImageClick'");
        articleTileHeroYouTubePreviewViewHolder.mImage = (SimpleDraweeView) Utils.castView(viewFindRequiredView, R.id.image, "field 'mImage'", SimpleDraweeView.class);
        this.view7f0b010f = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.tiles.articles.ArticleTileHeroYouTubePreviewViewHolder_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                articleTileHeroYouTubePreviewViewHolder.onImageClick(view2);
            }
        });
        articleTileHeroYouTubePreviewViewHolder.mVideoProgress = Utils.findRequiredView(view, R.id.video_progress, "field 'mVideoProgress'");
        articleTileHeroYouTubePreviewViewHolder.mProgressText = (TextView) Utils.findRequiredViewAsType(view, R.id.video_progress_text, "field 'mProgressText'", TextView.class);
    }

    @Override // com.evie.sidescreen.tiles.articles.AbstractHeroViewHolder_ViewBinding, butterknife.Unbinder
    public void unbind() {
        ArticleTileHeroYouTubePreviewViewHolder articleTileHeroYouTubePreviewViewHolder = this.target;
        if (articleTileHeroYouTubePreviewViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        articleTileHeroYouTubePreviewViewHolder.mVideoFrame = null;
        articleTileHeroYouTubePreviewViewHolder.mPoppableMedia = null;
        articleTileHeroYouTubePreviewViewHolder.mImage = null;
        articleTileHeroYouTubePreviewViewHolder.mVideoProgress = null;
        articleTileHeroYouTubePreviewViewHolder.mProgressText = null;
        this.view7f0b010f.setOnClickListener(null);
        this.view7f0b010f = null;
        super.unbind();
    }
}
