package com.squareup.duktape;

import androidx.annotation.Keep;
import java.io.Closeable;
import java.lang.reflect.Method;
import java.util.LinkedHashMap;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public final class Duktape implements Closeable {
    private long context;

    private static native Object call(long j, long j2, Object obj, Object[] objArr);

    private static native long createContext();

    private static native void destroyContext(long j);

    private static native Object evaluate(long j, String str, String str2);

    private static native long get(long j, String str, Object[] objArr);

    private static native void set(long j, String str, Object obj, Object[] objArr);

    static {
        System.loadLibrary("duktape");
    }

    public static Duktape create() {
        long jCreateContext = createContext();
        if (jCreateContext == 0) {
            throw new OutOfMemoryError("Cannot create Duktape instance");
        }
        return new Duktape(jCreateContext);
    }

    private Duktape(long j) {
        this.context = j;
    }

    public synchronized Object evaluate(String str) {
        return evaluate(this.context, str, "?");
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public synchronized <T> void set(String str, Class<T> cls, T t) {
        if (!cls.isInterface()) {
            throw new UnsupportedOperationException("Only interfaces can be bound. Received: " + cls);
        }
        if (cls.getInterfaces().length > 0) {
            throw new UnsupportedOperationException(cls + " must not extend other interfaces");
        }
        if (!cls.isInstance(t)) {
            throw new IllegalArgumentException(t.getClass() + " is not an instance of " + cls);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Method method : cls.getMethods()) {
            if (linkedHashMap.put(method.getName(), method) != null) {
                throw new UnsupportedOperationException(method.getName() + " is overloaded in " + cls);
            }
        }
        set(this.context, str, t, linkedHashMap.values().toArray());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        if (this.context != 0) {
            long j = this.context;
            this.context = 0L;
            destroyContext(j);
        }
    }

    protected synchronized void finalize() throws Throwable {
        if (this.context != 0) {
            Logger.getLogger(getClass().getName()).warning("Duktape instance leaked!");
        }
    }

    @Keep
    private static int getLocalTimeZoneOffset(double d) {
        return (int) TimeUnit.MILLISECONDS.toSeconds(TimeZone.getDefault().getOffset((long) d));
    }
}
