package com.getkeepsafe.relinker;

import android.content.Context;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class ReLinker {

    public interface LibraryInstaller {
        void installLibrary(Context context, String[] strArr, String str, File file, ReLinkerInstance reLinkerInstance);
    }

    public interface LibraryLoader {
        void loadLibrary(String str);

        void loadPath(String str);

        String mapLibraryName(String str);

        String[] supportedAbis();

        String unmapLibraryName(String str);
    }

    public interface LoadListener {
        void failure(Throwable th);

        void success();
    }

    public interface Logger {
        void log(String str);
    }

    public static void loadLibrary(Context context, String str) {
        loadLibrary(context, str, null, null);
    }

    public static void loadLibrary(Context context, String str, String str2, LoadListener loadListener) {
        new ReLinkerInstance().loadLibrary(context, str, str2, loadListener);
    }
}
