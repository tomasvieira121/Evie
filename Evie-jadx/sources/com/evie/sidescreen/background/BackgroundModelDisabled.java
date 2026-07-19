package com.evie.sidescreen.background;

import android.graphics.Bitmap;
import io.reactivex.Observable;

/* JADX INFO: loaded from: classes.dex */
public class BackgroundModelDisabled extends BackgroundModel {
    @Override // com.evie.sidescreen.background.BackgroundModel
    public Observable<Bitmap> getObservable() {
        return Observable.never();
    }
}
