package com.evie.sidescreen.tiles.articles;

import android.view.View;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;
import com.facebook.drawee.view.SimpleDraweeView;

/* JADX INFO: loaded from: classes.dex */
public class ArticleTileTagViewHolder_ViewBinding implements Unbinder {
    private ArticleTileTagViewHolder target;

    public ArticleTileTagViewHolder_ViewBinding(ArticleTileTagViewHolder articleTileTagViewHolder, View view) {
        this.target = articleTileTagViewHolder;
        articleTileTagViewHolder.text = (TextView) Utils.findRequiredViewAsType(view, R.id.header_tag_text, "field 'text'", TextView.class);
        articleTileTagViewHolder.image = (SimpleDraweeView) Utils.findRequiredViewAsType(view, R.id.header_tag_image, "field 'image'", SimpleDraweeView.class);
        articleTileTagViewHolder.divider = Utils.findRequiredView(view, R.id.header_tag_divider, "field 'divider'");
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        ArticleTileTagViewHolder articleTileTagViewHolder = this.target;
        if (articleTileTagViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        articleTileTagViewHolder.text = null;
        articleTileTagViewHolder.image = null;
        articleTileTagViewHolder.divider = null;
    }
}
