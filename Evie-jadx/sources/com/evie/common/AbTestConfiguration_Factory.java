package com.evie.common;

import android.content.Context;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class AbTestConfiguration_Factory implements Factory<AbTestConfiguration> {
    private final Provider<Context> contextProvider;

    public AbTestConfiguration_Factory(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider
    public AbTestConfiguration get() {
        return new AbTestConfiguration(this.contextProvider.get());
    }

    public static AbTestConfiguration_Factory create(Provider<Context> provider) {
        return new AbTestConfiguration_Factory(provider);
    }
}
