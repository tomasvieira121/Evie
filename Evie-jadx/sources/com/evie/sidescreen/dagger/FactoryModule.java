package com.evie.sidescreen.dagger;

import com.evie.sidescreen.personalize.FollowButtonHandlerFactory;
import com.evie.sidescreen.personalize.FollowState;
import com.evie.sidescreen.personalize.IFollowButtonHandler;
import com.evie.sidescreen.personalize.IFollowButtonHandlerFactory;
import com.evie.sidescreen.personalize.onboarding.FollowButtonOnboardingHandlerFactory;
import io.reactivex.disposables.CompositeDisposable;

/* JADX INFO: loaded from: classes.dex */
public abstract class FactoryModule {
    static IFollowButtonHandlerFactory followButtonHandlerFactory(boolean z, final FollowButtonHandlerFactory followButtonHandlerFactory, final FollowButtonOnboardingHandlerFactory followButtonOnboardingHandlerFactory) {
        if (z) {
            followButtonOnboardingHandlerFactory.getClass();
            return new IFollowButtonHandlerFactory() { // from class: com.evie.sidescreen.dagger.-$$Lambda$NLAyO8750DOdJ8fTru8BkOQEfdE
                @Override // com.evie.sidescreen.personalize.IFollowButtonHandlerFactory
                public final IFollowButtonHandler create(FollowState followState, CompositeDisposable compositeDisposable) {
                    return followButtonOnboardingHandlerFactory.create(followState, compositeDisposable);
                }
            };
        }
        followButtonHandlerFactory.getClass();
        return new IFollowButtonHandlerFactory() { // from class: com.evie.sidescreen.dagger.-$$Lambda$ZXN-awXgi6Y9CEnl9dbizMbgGoc
            @Override // com.evie.sidescreen.personalize.IFollowButtonHandlerFactory
            public final IFollowButtonHandler create(FollowState followState, CompositeDisposable compositeDisposable) {
                return followButtonHandlerFactory.create(followState, compositeDisposable);
            }
        };
    }
}
