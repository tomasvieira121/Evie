package com.evie.sidescreen.relatedcontent;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class RelatedVideosActivity_ViewBinding implements Unbinder {
    private RelatedVideosActivity target;

    public RelatedVideosActivity_ViewBinding(RelatedVideosActivity relatedVideosActivity, View view) {
        this.target = relatedVideosActivity;
        relatedVideosActivity.mContentView = Utils.findRequiredView(view, R.id.content_view, "field 'mContentView'");
        relatedVideosActivity.mToolbar = (Toolbar) Utils.findRequiredViewAsType(view, R.id.toolbar, "field 'mToolbar'", Toolbar.class);
        relatedVideosActivity.mToolbarTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.toolbar_title, "field 'mToolbarTitle'", TextView.class);
        relatedVideosActivity.mLogo = (ImageView) Utils.findRequiredViewAsType(view, R.id.logo, "field 'mLogo'", ImageView.class);
        relatedVideosActivity.mPlaybackControls = Utils.findRequiredView(view, R.id.playback_controls, "field 'mPlaybackControls'");
        relatedVideosActivity.mContainer = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.container, "field 'mContainer'", FrameLayout.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        RelatedVideosActivity relatedVideosActivity = this.target;
        if (relatedVideosActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        relatedVideosActivity.mContentView = null;
        relatedVideosActivity.mToolbar = null;
        relatedVideosActivity.mToolbarTitle = null;
        relatedVideosActivity.mLogo = null;
        relatedVideosActivity.mPlaybackControls = null;
        relatedVideosActivity.mContainer = null;
    }
}
