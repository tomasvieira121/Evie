package com.evie.sidescreen.relatedcontent;

import android.view.View;
import android.view.ViewGroup;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class YouTubeVideoHandler_ViewBinding implements Unbinder {
    private YouTubeVideoHandler target;

    public YouTubeVideoHandler_ViewBinding(YouTubeVideoHandler youTubeVideoHandler, View view) {
        this.target = youTubeVideoHandler;
        youTubeVideoHandler.mYouTubeContainer = (ViewGroup) Utils.findRequiredViewAsType(view, R.id.youtube_container, "field 'mYouTubeContainer'", ViewGroup.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        YouTubeVideoHandler youTubeVideoHandler = this.target;
        if (youTubeVideoHandler == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        youTubeVideoHandler.mYouTubeContainer = null;
    }
}
