package com.evie.sidescreen.dagger;

import com.evie.sidescreen.personalize.FollowButtonHandlerFactory;
import com.evie.sidescreen.personalize.IFollowButtonHandlerFactory;
import com.evie.sidescreen.personalize.onboarding.FollowButtonOnboardingHandlerFactory;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class FactoryModule_FollowButtonHandlerFactoryFactory implements Factory<IFollowButtonHandlerFactory> {
    private final Provider<FollowButtonHandlerFactory> followButtonHandlerFactoryProvider;
    private final Provider<FollowButtonOnboardingHandlerFactory> followButtonOnboardingHandlerFactoryProvider;
    private final Provider<Boolean> personalizeOnboardingModeProvider;

    public FactoryModule_FollowButtonHandlerFactoryFactory(Provider<Boolean> provider, Provider<FollowButtonHandlerFactory> provider2, Provider<FollowButtonOnboardingHandlerFactory> provider3) {
        this.personalizeOnboardingModeProvider = provider;
        this.followButtonHandlerFactoryProvider = provider2;
        this.followButtonOnboardingHandlerFactoryProvider = provider3;
    }

    @Override // javax.inject.Provider
    public IFollowButtonHandlerFactory get() {
        return proxyFollowButtonHandlerFactory(this.personalizeOnboardingModeProvider.get().booleanValue(), this.followButtonHandlerFactoryProvider.get(), this.followButtonOnboardingHandlerFactoryProvider.get());
    }

    public static FactoryModule_FollowButtonHandlerFactoryFactory create(Provider<Boolean> provider, Provider<FollowButtonHandlerFactory> provider2, Provider<FollowButtonOnboardingHandlerFactory> provider3) {
        return new FactoryModule_FollowButtonHandlerFactoryFactory(provider, provider2, provider3);
    }

    public static IFollowButtonHandlerFactory proxyFollowButtonHandlerFactory(boolean z, FollowButtonHandlerFactory followButtonHandlerFactory, FollowButtonOnboardingHandlerFactory followButtonOnboardingHandlerFactory) {
        return (IFollowButtonHandlerFactory) Preconditions.checkNotNull(FactoryModule.followButtonHandlerFactory(z, followButtonHandlerFactory, followButtonOnboardingHandlerFactory), "Cannot return null from a non-@Nullable @Provides method");
    }
}
