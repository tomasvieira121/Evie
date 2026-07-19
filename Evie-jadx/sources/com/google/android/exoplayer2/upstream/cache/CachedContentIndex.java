package com.google.android.exoplayer2.upstream.cache;

import android.util.Log;
import android.util.SparseArray;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.AtomicFile;
import com.google.android.exoplayer2.util.ReusableBufferedOutputStream;
import com.google.android.exoplayer2.util.Util;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Random;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
class CachedContentIndex {
    private final AtomicFile atomicFile;
    private ReusableBufferedOutputStream bufferedOutputStream;
    private boolean changed;
    private final Cipher cipher;
    private final boolean encrypt;
    private final SparseArray<String> idToKey;
    private final HashMap<String, CachedContent> keyToContent;
    private final SecretKeySpec secretKeySpec;

    public CachedContentIndex(File file, byte[] bArr, boolean z) {
        this.encrypt = z;
        if (bArr != null) {
            Assertions.checkArgument(bArr.length == 16);
            try {
                this.cipher = getCipher();
                this.secretKeySpec = new SecretKeySpec(bArr, "AES");
            } catch (NoSuchAlgorithmException | NoSuchPaddingException e) {
                throw new IllegalStateException(e);
            }
        } else {
            Assertions.checkState(!z);
            this.cipher = null;
            this.secretKeySpec = null;
        }
        this.keyToContent = new HashMap<>();
        this.idToKey = new SparseArray<>();
        this.atomicFile = new AtomicFile(new File(file, "cached_content_index.exi"));
    }

    public void load() {
        Assertions.checkState(!this.changed);
        if (readFile()) {
            return;
        }
        this.atomicFile.delete();
        this.keyToContent.clear();
        this.idToKey.clear();
    }

    public void store() throws Throwable {
        if (this.changed) {
            writeFile();
            this.changed = false;
        }
    }

    public CachedContent getOrAdd(String str) {
        CachedContent cachedContent = this.keyToContent.get(str);
        return cachedContent == null ? addNew(str, -1L) : cachedContent;
    }

    public CachedContent get(String str) {
        return this.keyToContent.get(str);
    }

    public Collection<CachedContent> getAll() {
        return this.keyToContent.values();
    }

    public int assignIdForKey(String str) {
        return getOrAdd(str).f402id;
    }

    public String getKeyForId(int i) {
        return this.idToKey.get(i);
    }

    public void maybeRemove(String str) {
        CachedContent cachedContent = this.keyToContent.get(str);
        if (cachedContent == null || !cachedContent.isEmpty() || cachedContent.isLocked()) {
            return;
        }
        this.keyToContent.remove(str);
        this.idToKey.remove(cachedContent.f402id);
        this.changed = true;
    }

    public void removeEmpty() {
        String[] strArr = new String[this.keyToContent.size()];
        this.keyToContent.keySet().toArray(strArr);
        for (String str : strArr) {
            maybeRemove(str);
        }
    }

    public void setContentLength(String str, long j) {
        CachedContent cachedContent = get(str);
        if (cachedContent == null) {
            addNew(str, j);
        } else if (cachedContent.getLength() != j) {
            cachedContent.setLength(j);
            this.changed = true;
        }
    }

    public long getContentLength(String str) {
        CachedContent cachedContent = get(str);
        if (cachedContent == null) {
            return -1L;
        }
        return cachedContent.getLength();
    }

    /* JADX WARN: Code duplicated, block: B:48:0x009b  */
    private boolean readFile() throws Throwable {
        DataInputStream dataInputStream;
        DataInputStream dataInputStream2;
        IOException e;
        DataInputStream dataInputStream3 = null;
        try {
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(this.atomicFile.openRead());
                dataInputStream2 = new DataInputStream(bufferedInputStream);
                try {
                    if (dataInputStream2.readInt() != 1) {
                        Util.closeQuietly(dataInputStream2);
                        return false;
                    }
                    if ((dataInputStream2.readInt() & 1) == 0) {
                        if (this.encrypt) {
                            this.changed = true;
                        }
                        dataInputStream3 = dataInputStream2;
                    } else {
                        if (this.cipher == null) {
                            Util.closeQuietly(dataInputStream2);
                            return false;
                        }
                        byte[] bArr = new byte[16];
                        dataInputStream2.readFully(bArr);
                        try {
                            this.cipher.init(2, this.secretKeySpec, new IvParameterSpec(bArr));
                            dataInputStream3 = new DataInputStream(new CipherInputStream(bufferedInputStream, this.cipher));
                        } catch (InvalidAlgorithmParameterException | InvalidKeyException e2) {
                            throw new IllegalStateException(e2);
                        }
                    }
                    int i = dataInputStream3.readInt();
                    int iHeaderHashCode = 0;
                    for (int i2 = 0; i2 < i; i2++) {
                        CachedContent cachedContent = new CachedContent(dataInputStream3);
                        add(cachedContent);
                        iHeaderHashCode += cachedContent.headerHashCode();
                    }
                    if (dataInputStream3.readInt() != iHeaderHashCode) {
                        Util.closeQuietly(dataInputStream3);
                        return false;
                    }
                    Util.closeQuietly(dataInputStream3);
                    return true;
                } catch (FileNotFoundException unused) {
                } catch (IOException e3) {
                    e = e3;
                    Log.e("CachedContentIndex", "Error reading cache content index file.", e);
                    if (dataInputStream2 != null) {
                        Util.closeQuietly(dataInputStream2);
                    }
                    return false;
                }
            } catch (Throwable th) {
                th = th;
                if (dataInputStream != null) {
                    Util.closeQuietly(dataInputStream);
                }
                throw th;
            }
        } catch (FileNotFoundException unused2) {
            dataInputStream2 = dataInputStream3;
        } catch (IOException e4) {
            dataInputStream2 = dataInputStream3;
            e = e4;
        } catch (Throwable th2) {
            th = th2;
            dataInputStream = dataInputStream3;
            if (dataInputStream != null) {
                Util.closeQuietly(dataInputStream);
            }
            throw th;
        }
        if (dataInputStream2 != null) {
            Util.closeQuietly(dataInputStream2);
        }
        return false;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    private void writeFile() throws Throwable {
        Throwable th;
        IOException e;
        try {
            try {
                OutputStream outputStreamStartWrite = this.atomicFile.startWrite();
                if (this.bufferedOutputStream == null) {
                    this.bufferedOutputStream = new ReusableBufferedOutputStream(outputStreamStartWrite);
                } else {
                    this.bufferedOutputStream.reset(outputStreamStartWrite);
                }
                DataOutputStream dataOutputStream = new DataOutputStream(this.bufferedOutputStream);
                try {
                    dataOutputStream.writeInt(1);
                    int iHeaderHashCode = 0;
                    dataOutputStream.writeInt(this.encrypt ? 1 : 0);
                    if (this.encrypt) {
                        byte[] bArr = new byte[16];
                        new Random().nextBytes(bArr);
                        dataOutputStream.write(bArr);
                        try {
                            this.cipher.init(1, this.secretKeySpec, new IvParameterSpec(bArr));
                            dataOutputStream.flush();
                            dataOutputStream = new DataOutputStream(new CipherOutputStream(this.bufferedOutputStream, this.cipher));
                        } catch (InvalidAlgorithmParameterException | InvalidKeyException e2) {
                            throw new IllegalStateException(e2);
                        }
                    }
                    dataOutputStream.writeInt(this.keyToContent.size());
                    for (CachedContent cachedContent : this.keyToContent.values()) {
                        cachedContent.writeToStream(dataOutputStream);
                        iHeaderHashCode += cachedContent.headerHashCode();
                    }
                    dataOutputStream.writeInt(iHeaderHashCode);
                    this.atomicFile.endWrite(dataOutputStream);
                    Util.closeQuietly((Closeable) null);
                } catch (IOException e3) {
                    e = e3;
                    throw new Cache.CacheException(e);
                }
            } catch (Throwable th2) {
                th = th2;
                Util.closeQuietly((Closeable) null);
                throw th;
            }
        } catch (IOException e4) {
            e = e4;
        } catch (Throwable th3) {
            th = th3;
            Util.closeQuietly((Closeable) null);
            throw th;
        }
    }

    private void add(CachedContent cachedContent) {
        this.keyToContent.put(cachedContent.key, cachedContent);
        this.idToKey.put(cachedContent.f402id, cachedContent.key);
    }

    void addNew(CachedContent cachedContent) {
        add(cachedContent);
        this.changed = true;
    }

    private CachedContent addNew(String str, long j) {
        CachedContent cachedContent = new CachedContent(getNewId(this.idToKey), str, j);
        addNew(cachedContent);
        return cachedContent;
    }

    private static Cipher getCipher() throws NoSuchPaddingException, NoSuchAlgorithmException {
        if (Util.SDK_INT == 18) {
            try {
                return Cipher.getInstance("AES/CBC/PKCS5PADDING", "BC");
            } catch (Throwable unused) {
            }
        }
        return Cipher.getInstance("AES/CBC/PKCS5PADDING");
    }

    public static int getNewId(SparseArray<String> sparseArray) {
        int size = sparseArray.size();
        int iKeyAt = size == 0 ? 0 : sparseArray.keyAt(size - 1) + 1;
        if (iKeyAt < 0) {
            iKeyAt = 0;
            while (iKeyAt < size && iKeyAt == sparseArray.keyAt(iKeyAt)) {
                iKeyAt++;
            }
        }
        return iKeyAt;
    }
}
