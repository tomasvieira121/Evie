package com.aol.mobile.sdk.player;

import java.util.Locale;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class VvuidGenerator {
    public String generate() {
        return UUID.randomUUID().toString().toUpperCase(Locale.ENGLISH);
    }
}
