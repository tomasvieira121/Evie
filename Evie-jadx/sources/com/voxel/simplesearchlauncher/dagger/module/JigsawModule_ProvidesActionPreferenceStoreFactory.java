package com.voxel.simplesearchlauncher.dagger.module;

import com.evie.jigsaw.services.actions.ActionPreferenceStore;
import com.voxel.simplesearchlauncher.model.managers.UserProfileManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class JigsawModule_ProvidesActionPreferenceStoreFactory implements Factory<ActionPreferenceStore> {
    private final JigsawModule module;
    private final Provider<UserProfileManager> userProfileManagerProvider;

    public JigsawModule_ProvidesActionPreferenceStoreFactory(JigsawModule jigsawModule, Provider<UserProfileManager> provider) {
        this.module = jigsawModule;
        this.userProfileManagerProvider = provider;
    }

    @Override // javax.inject.Provider
    public ActionPreferenceStore get() {
        return proxyProvidesActionPreferenceStore(this.module, this.userProfileManagerProvider.get());
    }

    public static JigsawModule_ProvidesActionPreferenceStoreFactory create(JigsawModule jigsawModule, Provider<UserProfileManager> provider) {
        return new JigsawModule_ProvidesActionPreferenceStoreFactory(jigsawModule, provider);
    }

    public static ActionPreferenceStore proxyProvidesActionPreferenceStore(JigsawModule jigsawModule, UserProfileManager userProfileManager) {
        return (ActionPreferenceStore) Preconditions.checkNotNull(jigsawModule.providesActionPreferenceStore(userProfileManager), "Cannot return null from a non-@Nullable @Provides method");
    }
}
