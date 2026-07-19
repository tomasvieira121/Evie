package com.evie.sidescreen.searchbar;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class WhiteSearchBarBackgroundModelFactory {
    public WhiteSearchBarBackgroundModel create(View view) {
        return new WhiteSearchBarBackgroundModel((View) checkNotNull(view, 1));
    }

    private static <T> T checkNotNull(T t, int i) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("@AutoFactory method argument is null but is not marked @Nullable. Argument index: " + i);
    }
}
