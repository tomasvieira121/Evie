package androidx.room;

/* JADX INFO: loaded from: classes.dex */
public class RoomMasterTable {
    public static String createInsertQuery(String str) {
        return "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \"" + str + "\")";
    }
}
