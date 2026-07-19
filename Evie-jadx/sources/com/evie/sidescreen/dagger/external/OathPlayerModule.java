package com.evie.sidescreen.dagger.external;

import android.content.Context;
import com.aol.mobile.sdk.player.OneSDK;
import com.aol.mobile.sdk.player.OneSDKBuilder;
import com.aol.mobile.sdk.player.PlayerBuilder;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public class OathPlayerModule {
    private PlayerBuilder mPlayerBuilder;
    private final PlayerBuilderRequestor mPlayerBuilderRequestor = new PlayerBuilderRequestor();

    public PlayerBuilderRequestor providesPlayerRequestor(Context context) {
        new OneSDKBuilder(context).create(new OneSDKBuilder.Callback() { // from class: com.evie.sidescreen.dagger.external.OathPlayerModule.1
            @Override // com.aol.mobile.sdk.player.OneSDKBuilder.Callback
            public void onSuccess(OneSDK oneSDK) {
                OathPlayerModule.this.mPlayerBuilder = oneSDK.createBuilder();
                OathPlayerModule.this.mPlayerBuilderRequestor.fulfillRequests(OathPlayerModule.this.mPlayerBuilder);
            }

            @Override // com.aol.mobile.sdk.player.OneSDKBuilder.Callback
            public void onFailure(Exception exc) {
                Timber.m553e("OneSDK failed to initialize", new Object[0]);
                OathPlayerModule.this.mPlayerBuilderRequestor.failRequests(exc);
            }
        });
        return this.mPlayerBuilderRequestor;
    }
}
