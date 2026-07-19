package com.evie.sidescreen.personalize;

import io.reactivex.disposables.CompositeDisposable;

/* JADX INFO: loaded from: classes.dex */
public interface IFollowButtonHandlerFactory {
    IFollowButtonHandler create(FollowState followState, CompositeDisposable compositeDisposable);
}
