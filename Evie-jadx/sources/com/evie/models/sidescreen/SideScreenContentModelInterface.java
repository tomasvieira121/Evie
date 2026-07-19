package com.evie.models.sidescreen;

import com.evie.common.data.Lce;
import com.evie.models.sidescreen.data.SideScreenContent;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;

/* JADX INFO: loaded from: classes.dex */
public interface SideScreenContentModelInterface {
    Observable<Lce<SideScreenContent>> getObservable();

    String getPath();

    Disposable refreshContent(String str);
}
