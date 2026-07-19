package com.evie.sidescreen.tiles.header;

import io.reactivex.Observable;

/* JADX INFO: loaded from: classes.dex */
public final class PlainTilesHeaderPresenterFactory {
    public PlainTilesHeaderPresenter create(Observable<Boolean> observable, String str) {
        return new PlainTilesHeaderPresenter((Observable) checkNotNull(observable, 1), (String) checkNotNull(str, 2));
    }

    private static <T> T checkNotNull(T t, int i) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("@AutoFactory method argument is null but is not marked @Nullable. Argument index: " + i);
    }
}
