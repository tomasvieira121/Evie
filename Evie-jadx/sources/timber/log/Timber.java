package timber.log;

import android.util.Log;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.jetbrains.annotations.NonNls;

/* JADX INFO: loaded from: classes.dex */
public final class Timber {
    private static final Tree[] TREE_ARRAY_EMPTY = new Tree[0];
    private static final List<Tree> FOREST = new ArrayList();
    static volatile Tree[] forestAsArray = TREE_ARRAY_EMPTY;
    private static final Tree TREE_OF_SOULS = new Tree() { // from class: timber.log.Timber.1
        @Override // timber.log.Timber.Tree
        /* JADX INFO: renamed from: d */
        public void mo558d(String str, Object... objArr) {
            for (Tree tree : Timber.forestAsArray) {
                tree.mo558d(str, objArr);
            }
        }

        @Override // timber.log.Timber.Tree
        /* JADX INFO: renamed from: d */
        public void mo559d(Throwable th, String str, Object... objArr) {
            for (Tree tree : Timber.forestAsArray) {
                tree.mo559d(th, str, objArr);
            }
        }

        @Override // timber.log.Timber.Tree
        /* JADX INFO: renamed from: i */
        public void mo563i(String str, Object... objArr) {
            for (Tree tree : Timber.forestAsArray) {
                tree.mo563i(str, objArr);
            }
        }

        @Override // timber.log.Timber.Tree
        /* JADX INFO: renamed from: i */
        public void mo564i(Throwable th, String str, Object... objArr) {
            for (Tree tree : Timber.forestAsArray) {
                tree.mo564i(th, str, objArr);
            }
        }

        @Override // timber.log.Timber.Tree
        /* JADX INFO: renamed from: e */
        public void mo560e(String str, Object... objArr) {
            for (Tree tree : Timber.forestAsArray) {
                tree.mo560e(str, objArr);
            }
        }

        @Override // timber.log.Timber.Tree
        /* JADX INFO: renamed from: e */
        public void mo562e(Throwable th, String str, Object... objArr) {
            for (Tree tree : Timber.forestAsArray) {
                tree.mo562e(th, str, objArr);
            }
        }

        @Override // timber.log.Timber.Tree
        /* JADX INFO: renamed from: e */
        public void mo561e(Throwable th) {
            for (Tree tree : Timber.forestAsArray) {
                tree.mo561e(th);
            }
        }

        @Override // timber.log.Timber.Tree
        protected void log(int i, String str, String str2, Throwable th) {
            throw new AssertionError("Missing override for log method.");
        }
    };

    /* JADX INFO: renamed from: d */
    public static void m551d(@NonNls String str, Object... objArr) {
        TREE_OF_SOULS.mo558d(str, objArr);
    }

    /* JADX INFO: renamed from: d */
    public static void m552d(Throwable th, @NonNls String str, Object... objArr) {
        TREE_OF_SOULS.mo559d(th, str, objArr);
    }

    /* JADX INFO: renamed from: i */
    public static void m556i(@NonNls String str, Object... objArr) {
        TREE_OF_SOULS.mo563i(str, objArr);
    }

    /* JADX INFO: renamed from: i */
    public static void m557i(Throwable th, @NonNls String str, Object... objArr) {
        TREE_OF_SOULS.mo564i(th, str, objArr);
    }

    /* JADX INFO: renamed from: e */
    public static void m553e(@NonNls String str, Object... objArr) {
        TREE_OF_SOULS.mo560e(str, objArr);
    }

    /* JADX INFO: renamed from: e */
    public static void m555e(Throwable th, @NonNls String str, Object... objArr) {
        TREE_OF_SOULS.mo562e(th, str, objArr);
    }

    /* JADX INFO: renamed from: e */
    public static void m554e(Throwable th) {
        TREE_OF_SOULS.mo561e(th);
    }

    public static Tree tag(String str) {
        for (Tree tree : forestAsArray) {
            tree.explicitTag.set(str);
        }
        return TREE_OF_SOULS;
    }

    public static void plant(Tree tree) {
        if (tree == null) {
            throw new NullPointerException("tree == null");
        }
        if (tree == TREE_OF_SOULS) {
            throw new IllegalArgumentException("Cannot plant Timber into itself.");
        }
        synchronized (FOREST) {
            FOREST.add(tree);
            forestAsArray = (Tree[]) FOREST.toArray(new Tree[FOREST.size()]);
        }
    }

    public static abstract class Tree {
        final ThreadLocal<String> explicitTag = new ThreadLocal<>();

        @Deprecated
        protected boolean isLoggable(int i) {
            return true;
        }

        protected abstract void log(int i, String str, String str2, Throwable th);

        String getTag() {
            String str = this.explicitTag.get();
            if (str != null) {
                this.explicitTag.remove();
            }
            return str;
        }

        /* JADX INFO: renamed from: d */
        public void mo558d(String str, Object... objArr) {
            prepareLog(3, null, str, objArr);
        }

        /* JADX INFO: renamed from: d */
        public void mo559d(Throwable th, String str, Object... objArr) {
            prepareLog(3, th, str, objArr);
        }

        /* JADX INFO: renamed from: i */
        public void mo563i(String str, Object... objArr) {
            prepareLog(4, null, str, objArr);
        }

        /* JADX INFO: renamed from: i */
        public void mo564i(Throwable th, String str, Object... objArr) {
            prepareLog(4, th, str, objArr);
        }

        /* JADX INFO: renamed from: e */
        public void mo560e(String str, Object... objArr) {
            prepareLog(6, null, str, objArr);
        }

        /* JADX INFO: renamed from: e */
        public void mo562e(Throwable th, String str, Object... objArr) {
            prepareLog(6, th, str, objArr);
        }

        /* JADX INFO: renamed from: e */
        public void mo561e(Throwable th) {
            prepareLog(6, th, null, new Object[0]);
        }

        protected boolean isLoggable(String str, int i) {
            return isLoggable(i);
        }

        private void prepareLog(int i, Throwable th, String str, Object... objArr) {
            String tag = getTag();
            if (isLoggable(tag, i)) {
                if (str != null && str.length() == 0) {
                    str = null;
                }
                if (str != null) {
                    if (objArr.length > 0) {
                        str = String.format(str, objArr);
                    }
                    if (th != null) {
                        str = str + "\n" + getStackTraceString(th);
                    }
                } else if (th == null) {
                    return;
                } else {
                    str = getStackTraceString(th);
                }
                log(i, tag, str, th);
            }
        }

        private String getStackTraceString(Throwable th) {
            StringWriter stringWriter = new StringWriter(256);
            PrintWriter printWriter = new PrintWriter((Writer) stringWriter, false);
            th.printStackTrace(printWriter);
            printWriter.flush();
            return stringWriter.toString();
        }
    }

    public static class DebugTree extends Tree {
        private static final Pattern ANONYMOUS_CLASS = Pattern.compile("(\\$\\d+)+$");

        protected String createStackElementTag(StackTraceElement stackTraceElement) {
            String className = stackTraceElement.getClassName();
            Matcher matcher = ANONYMOUS_CLASS.matcher(className);
            if (matcher.find()) {
                className = matcher.replaceAll("");
            }
            return className.substring(className.lastIndexOf(46) + 1);
        }

        @Override // timber.log.Timber.Tree
        final String getTag() {
            String tag = super.getTag();
            if (tag != null) {
                return tag;
            }
            StackTraceElement[] stackTrace = new Throwable().getStackTrace();
            if (stackTrace.length <= 5) {
                throw new IllegalStateException("Synthetic stacktrace didn't have enough elements: are you using proguard?");
            }
            return createStackElementTag(stackTrace[5]);
        }

        @Override // timber.log.Timber.Tree
        protected void log(int i, String str, String str2, Throwable th) {
            int iMin;
            if (str2.length() < 4000) {
                if (i == 7) {
                    Log.wtf(str, str2);
                    return;
                } else {
                    Log.println(i, str, str2);
                    return;
                }
            }
            int i2 = 0;
            int length = str2.length();
            while (i2 < length) {
                int iIndexOf = str2.indexOf(10, i2);
                if (iIndexOf == -1) {
                    iIndexOf = length;
                }
                while (true) {
                    iMin = Math.min(iIndexOf, i2 + 4000);
                    String strSubstring = str2.substring(i2, iMin);
                    if (i == 7) {
                        Log.wtf(str, strSubstring);
                    } else {
                        Log.println(i, str, strSubstring);
                    }
                    if (iMin >= iIndexOf) {
                        break;
                    } else {
                        i2 = iMin;
                    }
                }
                i2 = iMin + 1;
            }
        }
    }
}
