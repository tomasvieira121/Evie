package com.evie.sidescreen.dagger.external;

import android.util.Pair;
import com.google.gson.JsonDeserializer;
import org.schema.Thing;
import org.schema.serialization.ThingDeserializer;

/* JADX INFO: loaded from: classes.dex */
public abstract class GsonModule {
    static Pair<Class, JsonDeserializer> providesTypeAdapter() {
        return new Pair<>(Thing.class, ThingDeserializer.INSTANCE);
    }
}
