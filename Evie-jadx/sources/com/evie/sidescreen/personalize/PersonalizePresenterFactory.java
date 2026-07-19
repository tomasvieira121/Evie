package com.evie.sidescreen.personalize;

import com.evie.models.topics.TopicsModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class PersonalizePresenterFactory {
    private final Provider<PersonalizePagePresenterFactory> personalizePagePresenterFactoryProvider;
    private final Provider<TopicsModel> topicsModelProvider;

    public PersonalizePresenterFactory(Provider<TopicsModel> provider, Provider<PersonalizePagePresenterFactory> provider2) {
        this.topicsModelProvider = (Provider) checkNotNull(provider, 1);
        this.personalizePagePresenterFactoryProvider = (Provider) checkNotNull(provider2, 2);
    }

    public PersonalizePresenter create(ScreenInfo screenInfo) {
        return new PersonalizePresenter((ScreenInfo) checkNotNull(screenInfo, 1), (TopicsModel) checkNotNull(this.topicsModelProvider.get(), 2), (PersonalizePagePresenterFactory) checkNotNull(this.personalizePagePresenterFactoryProvider.get(), 3));
    }

    private static <T> T checkNotNull(T t, int i) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("@AutoFactory method argument is null but is not marked @Nullable. Argument index: " + i);
    }
}
