package com.google.android.youtube.player.internal;

import android.os.IBinder;
import java.lang.reflect.Field;

/* JADX INFO: renamed from: com.google.android.youtube.player.internal.v */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC0928v<T> extends InterfaceC0927u.a {

    /* JADX INFO: renamed from: a */
    private final T f498a;

    private BinderC0928v(T t) {
        this.f498a = t;
    }

    /* JADX INFO: renamed from: a */
    public static <T> InterfaceC0927u m521a(T t) {
        return new BinderC0928v(t);
    }

    /* JADX INFO: renamed from: a */
    public static <T> T m522a(InterfaceC0927u interfaceC0927u) {
        if (interfaceC0927u instanceof BinderC0928v) {
            return ((BinderC0928v) interfaceC0927u).f498a;
        }
        IBinder iBinderAsBinder = interfaceC0927u.asBinder();
        Field[] declaredFields = iBinderAsBinder.getClass().getDeclaredFields();
        if (declaredFields.length != 1) {
            throw new IllegalArgumentException("The concrete class implementing IObjectWrapper must have exactly *one* declared private field for the wrapped object.  Preferably, this is an instance of the ObjectWrapper<T> class.");
        }
        Field field = declaredFields[0];
        if (field.isAccessible()) {
            throw new IllegalArgumentException("The concrete class implementing IObjectWrapper must have exactly one declared *private* field for the wrapped object. Preferably, this is an instance of the ObjectWrapper<T> class.");
        }
        field.setAccessible(true);
        try {
            return (T) field.get(iBinderAsBinder);
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException("Could not access the field in remoteBinder.", e);
        } catch (IllegalArgumentException e2) {
            throw new IllegalArgumentException("remoteBinder is the wrong class.", e2);
        } catch (NullPointerException e3) {
            throw new IllegalArgumentException("Binder object is null.", e3);
        }
    }
}
