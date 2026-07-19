package com.evie.sidescreen.relatedcontent;

import com.evie.sidescreen.oathplayer.OathPlayerEvent;
import io.reactivex.functions.Consumer;

/* JADX INFO: renamed from: com.evie.sidescreen.relatedcontent.-$$Lambda$OathVideoHandler$Apn2occQoQeukxxZQRqG8NOVV1k, reason: invalid class name */
/* JADX INFO: compiled from: lambda */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class $$Lambda$OathVideoHandler$Apn2occQoQeukxxZQRqG8NOVV1k implements Consumer {
    private final /* synthetic */ OathVideoHandler f$0;

    public /* synthetic */ $$Lambda$OathVideoHandler$Apn2occQoQeukxxZQRqG8NOVV1k(OathVideoHandler oathVideoHandler) {
        this.f$0 = oathVideoHandler;
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        this.f$0.oathPlayerStateHandler((OathPlayerEvent) obj);
    }
}
