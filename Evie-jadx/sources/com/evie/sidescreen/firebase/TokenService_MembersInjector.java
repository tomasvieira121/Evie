package com.evie.sidescreen.firebase;

import com.evie.sidescreen.SideScreenSharedDependencies;

/* JADX INFO: loaded from: classes.dex */
public final class TokenService_MembersInjector {
    public static void injectMSideScreenSharedDependencies(TokenService tokenService, SideScreenSharedDependencies sideScreenSharedDependencies) {
        tokenService.mSideScreenSharedDependencies = sideScreenSharedDependencies;
    }
}
