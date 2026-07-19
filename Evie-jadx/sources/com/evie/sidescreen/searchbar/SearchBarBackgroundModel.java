package com.evie.sidescreen.searchbar;

import android.graphics.drawable.Drawable;
import io.reactivex.Observable;

/* JADX INFO: loaded from: classes.dex */
public abstract class SearchBarBackgroundModel {
    protected static final SearchBarBackground ERROR = new SearchBarBackground(null, false);

    public abstract Observable<SearchBarBackground> getObservable();

    public static class SearchBarBackground {
        public final Drawable mDrawable;
        public final boolean mShouldInvert;

        public SearchBarBackground(Drawable drawable, boolean z) {
            this.mDrawable = drawable;
            this.mShouldInvert = z;
        }
    }
}
