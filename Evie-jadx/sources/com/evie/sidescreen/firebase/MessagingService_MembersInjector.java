package com.evie.sidescreen.firebase;

import com.evie.models.PromptStoreModel;
import com.evie.sidescreen.SideScreenSharedDependencies;

/* JADX INFO: loaded from: classes.dex */
public final class MessagingService_MembersInjector {
    public static void injectMSideScreenSharedDependencies(MessagingService messagingService, SideScreenSharedDependencies sideScreenSharedDependencies) {
        messagingService.mSideScreenSharedDependencies = sideScreenSharedDependencies;
    }

    public static void injectMPromptStoreModel(MessagingService messagingService, PromptStoreModel promptStoreModel) {
        messagingService.mPromptStoreModel = promptStoreModel;
    }
}
