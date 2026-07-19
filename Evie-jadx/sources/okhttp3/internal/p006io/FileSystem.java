package okhttp3.internal.p006io;

import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public interface FileSystem {
    public static final FileSystem SYSTEM = new FileSystem() { // from class: okhttp3.internal.io.FileSystem.1
        @Override // okhttp3.internal.p006io.FileSystem
        public void delete(File file) throws IOException {
            if (file.delete() || !file.exists()) {
                return;
            }
            throw new IOException("failed to delete " + file);
        }

        @Override // okhttp3.internal.p006io.FileSystem
        public boolean exists(File file) {
            return file.exists();
        }

        @Override // okhttp3.internal.p006io.FileSystem
        public long size(File file) {
            return file.length();
        }

        @Override // okhttp3.internal.p006io.FileSystem
        public void rename(File file, File file2) throws IOException {
            delete(file2);
            if (file.renameTo(file2)) {
                return;
            }
            throw new IOException("failed to rename " + file + " to " + file2);
        }
    };

    void delete(File file) throws IOException;

    boolean exists(File file);

    void rename(File file, File file2) throws IOException;

    long size(File file);
}
