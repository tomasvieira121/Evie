package com.evie.sidescreen.personalize;

import com.evie.sidescreen.analytics.data.ScreenInfo;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class PersonalizePagePresenterFactory {
    private final Provider<TopicItemPresenterFactory> topicItemPresenterFactoryProvider;

    public PersonalizePagePresenterFactory(Provider<TopicItemPresenterFactory> provider) {
        this.topicItemPresenterFactoryProvider = (Provider) checkNotNull(provider, 1);
    }

    public PersonalizePagePresenter create(ScreenInfo screenInfo, PersonalizePresenter personalizePresenter, String str) {
        return new PersonalizePagePresenter((ScreenInfo) checkNotNull(screenInfo, 1), (PersonalizePresenter) checkNotNull(personalizePresenter, 2), (String) checkNotNull(str, 3), (TopicItemPresenterFactory) checkNotNull(this.topicItemPresenterFactoryProvider.get(), 4));
    }

    private static <T> T checkNotNull(T t, int i) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("@AutoFactory method argument is null but is not marked @Nullable. Argument index: " + i);
    }
}
