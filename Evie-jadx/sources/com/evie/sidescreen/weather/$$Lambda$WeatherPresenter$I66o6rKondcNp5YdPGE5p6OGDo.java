package com.evie.sidescreen.weather;

import io.reactivex.functions.Consumer;

/* JADX INFO: renamed from: com.evie.sidescreen.weather.-$$Lambda$WeatherPresenter$I66o6rKond-cNp5YdPGE5p6OGDo, reason: invalid class name */
/* JADX INFO: compiled from: lambda */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class $$Lambda$WeatherPresenter$I66o6rKondcNp5YdPGE5p6OGDo implements Consumer {
    private final /* synthetic */ WeatherPresenter f$0;

    public /* synthetic */ $$Lambda$WeatherPresenter$I66o6rKondcNp5YdPGE5p6OGDo(WeatherPresenter weatherPresenter) {
        this.f$0 = weatherPresenter;
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        this.f$0.handleUnanticipatedException((Throwable) obj);
    }
}
