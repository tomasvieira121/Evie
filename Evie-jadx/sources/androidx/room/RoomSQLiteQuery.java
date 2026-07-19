package androidx.room;

import androidx.sqlite.p001db.SupportSQLiteProgram;
import androidx.sqlite.p001db.SupportSQLiteQuery;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
public class RoomSQLiteQuery implements SupportSQLiteProgram, SupportSQLiteQuery {
    static final TreeMap<Integer, RoomSQLiteQuery> sQueryPool = new TreeMap<>();
    int mArgCount;
    private final int[] mBindingTypes;
    final byte[][] mBlobBindings;
    final int mCapacity;
    final double[] mDoubleBindings;
    final long[] mLongBindings;
    private volatile String mQuery;
    final String[] mStringBindings;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public static RoomSQLiteQuery acquire(String str, int i) {
        synchronized (sQueryPool) {
            Map.Entry<Integer, RoomSQLiteQuery> entryCeilingEntry = sQueryPool.ceilingEntry(Integer.valueOf(i));
            if (entryCeilingEntry != null) {
                sQueryPool.remove(entryCeilingEntry.getKey());
                RoomSQLiteQuery value = entryCeilingEntry.getValue();
                value.init(str, i);
                return value;
            }
            RoomSQLiteQuery roomSQLiteQuery = new RoomSQLiteQuery(i);
            roomSQLiteQuery.init(str, i);
            return roomSQLiteQuery;
        }
    }

    private RoomSQLiteQuery(int i) {
        this.mCapacity = i;
        int i2 = i + 1;
        this.mBindingTypes = new int[i2];
        this.mLongBindings = new long[i2];
        this.mDoubleBindings = new double[i2];
        this.mStringBindings = new String[i2];
        this.mBlobBindings = new byte[i2][];
    }

    void init(String str, int i) {
        this.mQuery = str;
        this.mArgCount = i;
    }

    public void release() {
        synchronized (sQueryPool) {
            sQueryPool.put(Integer.valueOf(this.mCapacity), this);
            prunePoolLocked();
        }
    }

    private static void prunePoolLocked() {
        if (sQueryPool.size() <= 15) {
            return;
        }
        int size = sQueryPool.size() - 10;
        Iterator<Integer> it = sQueryPool.descendingKeySet().iterator();
        while (true) {
            int i = size - 1;
            if (size <= 0) {
                return;
            }
            it.next();
            it.remove();
            size = i;
        }
    }

    @Override // androidx.sqlite.p001db.SupportSQLiteQuery
    public String getSql() {
        return this.mQuery;
    }

    @Override // androidx.sqlite.p001db.SupportSQLiteQuery
    public void bindTo(SupportSQLiteProgram supportSQLiteProgram) {
        for (int i = 1; i <= this.mArgCount; i++) {
            switch (this.mBindingTypes[i]) {
                case 1:
                    supportSQLiteProgram.bindNull(i);
                    break;
                case 2:
                    supportSQLiteProgram.bindLong(i, this.mLongBindings[i]);
                    break;
                case 3:
                    supportSQLiteProgram.bindDouble(i, this.mDoubleBindings[i]);
                    break;
                case 4:
                    supportSQLiteProgram.bindString(i, this.mStringBindings[i]);
                    break;
                case 5:
                    supportSQLiteProgram.bindBlob(i, this.mBlobBindings[i]);
                    break;
            }
        }
    }

    @Override // androidx.sqlite.p001db.SupportSQLiteProgram
    public void bindNull(int i) {
        this.mBindingTypes[i] = 1;
    }

    @Override // androidx.sqlite.p001db.SupportSQLiteProgram
    public void bindLong(int i, long j) {
        this.mBindingTypes[i] = 2;
        this.mLongBindings[i] = j;
    }

    @Override // androidx.sqlite.p001db.SupportSQLiteProgram
    public void bindDouble(int i, double d) {
        this.mBindingTypes[i] = 3;
        this.mDoubleBindings[i] = d;
    }

    @Override // androidx.sqlite.p001db.SupportSQLiteProgram
    public void bindString(int i, String str) {
        this.mBindingTypes[i] = 4;
        this.mStringBindings[i] = str;
    }

    @Override // androidx.sqlite.p001db.SupportSQLiteProgram
    public void bindBlob(int i, byte[] bArr) {
        this.mBindingTypes[i] = 5;
        this.mBlobBindings[i] = bArr;
    }
}
