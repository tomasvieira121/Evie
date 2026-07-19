package com.getkeepsafe.relinker;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import com.crashlytics.android.core.CodedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes.dex */
public class ApkLibraryInstaller implements ReLinker.LibraryInstaller {
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // com.getkeepsafe.relinker.ReLinker.LibraryInstaller
    public void installLibrary(Context context, String[] strArr, String str, File file, ReLinkerInstance reLinkerInstance) throws Throwable {
        ZipFile zipFile;
        InputStream inputStream;
        FileOutputStream fileOutputStream;
        try {
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            int i = 0;
            while (true) {
                int i2 = i + 1;
                if (i >= 5) {
                    zipFile = null;
                    break;
                } else {
                    try {
                        zipFile = new ZipFile(new File(applicationInfo.sourceDir), 1);
                        break;
                    } catch (IOException unused) {
                        i = i2;
                    }
                }
            }
            try {
                if (zipFile == null) {
                    reLinkerInstance.log("FATAL! Couldn't find application APK!");
                    if (zipFile != null) {
                        try {
                            zipFile.close();
                            return;
                        } catch (IOException unused2) {
                            return;
                        }
                    }
                    return;
                }
                int i3 = 0;
                while (true) {
                    int i4 = i3 + 1;
                    if (i3 >= 5) {
                        reLinkerInstance.log("FATAL! Couldn't extract the library from the APK!");
                        if (zipFile != null) {
                            try {
                                zipFile.close();
                                return;
                            } catch (IOException unused3) {
                                return;
                            }
                        }
                        return;
                    }
                    String str2 = null;
                    ZipEntry entry = null;
                    for (String str3 : strArr) {
                        str2 = "lib" + File.separatorChar + str3 + File.separatorChar + str;
                        entry = zipFile.getEntry(str2);
                        if (entry != null) {
                            break;
                        }
                    }
                    if (str2 != null) {
                        reLinkerInstance.log("Looking for %s in APK...", str2);
                    }
                    if (entry == null) {
                        if (str2 == null) {
                            throw new MissingLibraryException(str);
                        }
                        throw new MissingLibraryException(str2);
                    }
                    reLinkerInstance.log("Found %s! Extracting...", str2);
                    try {
                        if (file.exists() || file.createNewFile()) {
                            try {
                                inputStream = zipFile.getInputStream(entry);
                                try {
                                    fileOutputStream = new FileOutputStream(file);
                                    try {
                                        long jCopy = copy(inputStream, fileOutputStream);
                                        fileOutputStream.getFD().sync();
                                        if (jCopy == file.length()) {
                                            closeSilently(inputStream);
                                            closeSilently(fileOutputStream);
                                            file.setReadable(true, false);
                                            file.setExecutable(true, false);
                                            file.setWritable(true);
                                            if (zipFile != null) {
                                                try {
                                                    zipFile.close();
                                                    return;
                                                } catch (IOException unused4) {
                                                    return;
                                                }
                                            }
                                            return;
                                        }
                                        closeSilently(inputStream);
                                        closeSilently(fileOutputStream);
                                    } catch (FileNotFoundException unused5) {
                                        closeSilently(inputStream);
                                    } catch (IOException unused6) {
                                        closeSilently(inputStream);
                                    } catch (Throwable th) {
                                        th = th;
                                        closeSilently(inputStream);
                                        closeSilently(fileOutputStream);
                                        throw th;
                                    }
                                } catch (FileNotFoundException unused7) {
                                    fileOutputStream = null;
                                } catch (IOException unused8) {
                                    fileOutputStream = null;
                                } catch (Throwable th2) {
                                    th = th2;
                                    fileOutputStream = null;
                                }
                            } catch (FileNotFoundException unused9) {
                                inputStream = null;
                                fileOutputStream = null;
                            } catch (IOException unused10) {
                                inputStream = null;
                                fileOutputStream = null;
                            } catch (Throwable th3) {
                                th = th3;
                                inputStream = null;
                                fileOutputStream = null;
                            }
                        }
                    } catch (IOException unused11) {
                    }
                    i3 = i4;
                }
            } catch (Throwable th4) {
                th = th4;
                if (zipFile != null) {
                    try {
                        zipFile.close();
                    } catch (IOException unused12) {
                    }
                }
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
            zipFile = null;
        }
    }

    private long copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[CodedOutputStream.DEFAULT_BUFFER_SIZE];
        long j = 0;
        while (true) {
            int i = inputStream.read(bArr);
            if (i != -1) {
                outputStream.write(bArr, 0, i);
                j += (long) i;
            } else {
                outputStream.flush();
                return j;
            }
        }
    }

    private void closeSilently(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }
}
