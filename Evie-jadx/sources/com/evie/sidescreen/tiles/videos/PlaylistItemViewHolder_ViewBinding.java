package com.evie.sidescreen.tiles.videos;

import android.view.View;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;
import com.facebook.drawee.view.SimpleDraweeView;

/* JADX INFO: loaded from: classes.dex */
public class PlaylistItemViewHolder_ViewBinding implements Unbinder {
    private PlaylistItemViewHolder target;
    private View view7f0b008f;

    public PlaylistItemViewHolder_ViewBinding(final PlaylistItemViewHolder playlistItemViewHolder, View view) {
        this.target = playlistItemViewHolder;
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.content, "field 'mContent' and method 'onClick'");
        playlistItemViewHolder.mContent = viewFindRequiredView;
        this.view7f0b008f = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.tiles.videos.PlaylistItemViewHolder_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                playlistItemViewHolder.onClick(view2);
            }
        });
        playlistItemViewHolder.mImage = (SimpleDraweeView) Utils.findOptionalViewAsType(view, R.id.image, "field 'mImage'", SimpleDraweeView.class);
        playlistItemViewHolder.mTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.title, "field 'mTitle'", TextView.class);
        playlistItemViewHolder.mSubtitle = (TextView) Utils.findRequiredViewAsType(view, R.id.subtitle, "field 'mSubtitle'", TextView.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        PlaylistItemViewHolder playlistItemViewHolder = this.target;
        if (playlistItemViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        playlistItemViewHolder.mContent = null;
        playlistItemViewHolder.mImage = null;
        playlistItemViewHolder.mTitle = null;
        playlistItemViewHolder.mSubtitle = null;
        this.view7f0b008f.setOnClickListener(null);
        this.view7f0b008f = null;
    }
}
