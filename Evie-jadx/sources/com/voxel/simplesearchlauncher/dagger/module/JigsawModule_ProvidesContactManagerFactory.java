package com.voxel.simplesearchlauncher.dagger.module;

import android.content.Context;
import com.evie.search.local.ContactManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class JigsawModule_ProvidesContactManagerFactory implements Factory<ContactManager> {
    private final Provider<Context> contextProvider;
    private final JigsawModule module;

    public JigsawModule_ProvidesContactManagerFactory(JigsawModule jigsawModule, Provider<Context> provider) {
        this.module = jigsawModule;
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider
    public ContactManager get() {
        return proxyProvidesContactManager(this.module, this.contextProvider.get());
    }

    public static JigsawModule_ProvidesContactManagerFactory create(JigsawModule jigsawModule, Provider<Context> provider) {
        return new JigsawModule_ProvidesContactManagerFactory(jigsawModule, provider);
    }

    public static ContactManager proxyProvidesContactManager(JigsawModule jigsawModule, Context context) {
        return (ContactManager) Preconditions.checkNotNull(jigsawModule.providesContactManager(context), "Cannot return null from a non-@Nullable @Provides method");
    }
}
