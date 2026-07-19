package androidx.room.migration;

import androidx.sqlite.p001db.SupportSQLiteDatabase;

/* JADX INFO: loaded from: classes.dex */
public abstract class Migration {
    public abstract void migrate(SupportSQLiteDatabase supportSQLiteDatabase);
}
