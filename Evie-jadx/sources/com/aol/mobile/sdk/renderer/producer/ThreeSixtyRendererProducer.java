package com.aol.mobile.sdk.renderer.producer;

import android.content.Context;
import com.aol.mobile.sdk.annotations.PublicApi;
import com.aol.mobile.sdk.renderer.ExoSphereRenderer;
import com.aol.mobile.sdk.renderer.VideoRenderer;

/* JADX INFO: loaded from: classes.dex */
@PublicApi
public final class ThreeSixtyRendererProducer implements VideoRenderer.Producer {
    @Override // com.aol.mobile.sdk.renderer.VideoRenderer.Producer
    public VideoRenderer createRenderer(Context context) {
        return new ExoSphereRenderer(context);
    }
}
