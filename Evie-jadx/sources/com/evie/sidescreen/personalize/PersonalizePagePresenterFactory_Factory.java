package com.evie.sidescreen.personalize;

import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class PersonalizePagePresenterFactory_Factory implements Factory<PersonalizePagePresenterFactory> {
    private final Provider<TopicItemPresenterFactory> topicItemPresenterFactoryProvider;

    public PersonalizePagePresenterFactory_Factory(Provider<TopicItemPresenterFactory> provider) {
        this.topicItemPresenterFactoryProvider = provider;
    }

    @Override // javax.inject.Provider
    public PersonalizePagePresenterFactory get() {
        return new PersonalizePagePresenterFactory(this.topicItemPresenterFactoryProvider);
    }

    public static PersonalizePagePresenterFactory_Factory create(Provider<TopicItemPresenterFactory> provider) {
        return new PersonalizePagePresenterFactory_Factory(provider);
    }
}
