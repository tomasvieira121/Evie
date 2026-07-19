package com.evie.sidescreen.tiles.yelp;

import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class YelpPresenterFactory_Factory implements Factory<YelpPresenterFactory> {
    private final Provider<YelpMultipleBusinessPresenterFactory> yelpMultipleBusinessPresenterFactoryProvider;
    private final Provider<YelpSingleBusinessHeroPresenterFactory> yelpSingleBusinessHeroPresenterFactoryProvider;

    public YelpPresenterFactory_Factory(Provider<YelpMultipleBusinessPresenterFactory> provider, Provider<YelpSingleBusinessHeroPresenterFactory> provider2) {
        this.yelpMultipleBusinessPresenterFactoryProvider = provider;
        this.yelpSingleBusinessHeroPresenterFactoryProvider = provider2;
    }

    @Override // javax.inject.Provider
    public YelpPresenterFactory get() {
        return new YelpPresenterFactory(this.yelpMultipleBusinessPresenterFactoryProvider.get(), this.yelpSingleBusinessHeroPresenterFactoryProvider.get());
    }

    public static YelpPresenterFactory_Factory create(Provider<YelpMultipleBusinessPresenterFactory> provider, Provider<YelpSingleBusinessHeroPresenterFactory> provider2) {
        return new YelpPresenterFactory_Factory(provider, provider2);
    }
}
