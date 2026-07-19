package com.google.android.youtube.player.internal;

import android.app.Activity;
import android.content.Context;
import android.os.IBinder;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: renamed from: com.google.android.youtube.player.internal.w */
/* JADX INFO: loaded from: classes.dex */
public final class C0929w {

    /* JADX INFO: renamed from: com.google.android.youtube.player.internal.w$a */
    public static final class a extends Exception {
        public a(String str) {
            super(str);
        }

        public a(String str, Throwable th) {
            super(str, th);
        }
    }

    /* JADX INFO: renamed from: a */
    private static IBinder m523a(Class<?> cls, IBinder iBinder, IBinder iBinder2, IBinder iBinder3, boolean z) throws a {
        try {
            return (IBinder) cls.getConstructor(IBinder.class, IBinder.class, IBinder.class, Boolean.TYPE).newInstance(iBinder, iBinder2, iBinder3, Boolean.valueOf(z));
        } catch (IllegalAccessException e) {
            String strValueOf = String.valueOf(cls.getName());
            throw new a(strValueOf.length() != 0 ? "Unable to call the default constructor of ".concat(strValueOf) : new String("Unable to call the default constructor of "), e);
        } catch (InstantiationException e2) {
            String strValueOf2 = String.valueOf(cls.getName());
            throw new a(strValueOf2.length() != 0 ? "Unable to instantiate the dynamic class ".concat(strValueOf2) : new String("Unable to instantiate the dynamic class "), e2);
        } catch (NoSuchMethodException e3) {
            String strValueOf3 = String.valueOf(cls.getName());
            throw new a(strValueOf3.length() != 0 ? "Could not find the right constructor for ".concat(strValueOf3) : new String("Could not find the right constructor for "), e3);
        } catch (InvocationTargetException e4) {
            String strValueOf4 = String.valueOf(cls.getName());
            throw new a(strValueOf4.length() != 0 ? "Exception thrown by invoked constructor in ".concat(strValueOf4) : new String("Exception thrown by invoked constructor in "), e4);
        }
    }

    /* JADX INFO: renamed from: a */
    private static IBinder m524a(ClassLoader classLoader, String str, IBinder iBinder, IBinder iBinder2, IBinder iBinder3, boolean z) throws a {
        try {
            return m523a(classLoader.loadClass(str), iBinder, iBinder2, iBinder3, z);
        } catch (ClassNotFoundException e) {
            String strValueOf = String.valueOf(str);
            throw new a(strValueOf.length() != 0 ? "Unable to find dynamic class ".concat(strValueOf) : new String("Unable to find dynamic class "), e);
        }
    }

    /* JADX INFO: renamed from: a */
    public static InterfaceC0911d m525a(Activity activity, IBinder iBinder, boolean z) throws a {
        C0907ab.m396a(activity);
        C0907ab.m396a(iBinder);
        Context contextM532b = C0932z.m532b(activity);
        if (contextM532b != null) {
            return InterfaceC0911d.a.m446a(m524a(contextM532b.getClassLoader(), "com.google.android.youtube.api.jar.client.RemoteEmbeddedPlayer", BinderC0928v.m521a(contextM532b).asBinder(), BinderC0928v.m521a(activity).asBinder(), iBinder, z));
        }
        throw new a("Could not create remote context");
    }
}
