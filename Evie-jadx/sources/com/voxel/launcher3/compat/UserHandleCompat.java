package com.voxel.launcher3.compat;

import android.content.Intent;
import android.os.Build;
import android.os.Process;
import android.os.UserHandle;
import com.voxel.launcher3.Utilities;

/* JADX INFO: loaded from: classes.dex */
public class UserHandleCompat {
    private UserHandle mUser;

    private UserHandleCompat(UserHandle userHandle) {
        this.mUser = userHandle;
    }

    private UserHandleCompat() {
    }

    public static UserHandleCompat myUserHandle() {
        if (Build.VERSION.SDK_INT >= 17) {
            return new UserHandleCompat(Process.myUserHandle());
        }
        return new UserHandleCompat();
    }

    public static UserHandleCompat fromUser(UserHandle userHandle) {
        if (userHandle == null) {
            return null;
        }
        return new UserHandleCompat(userHandle);
    }

    public UserHandle getUser() {
        return this.mUser;
    }

    public String toString() {
        return Build.VERSION.SDK_INT >= 17 ? this.mUser.toString() : "";
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof UserHandleCompat)) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 17) {
            return this.mUser.equals(((UserHandleCompat) obj).mUser);
        }
        return true;
    }

    public int hashCode() {
        if (Build.VERSION.SDK_INT >= 17) {
            return this.mUser.hashCode();
        }
        return 0;
    }

    public void addToIntent(Intent intent, String str) {
        UserHandle userHandle;
        if (!Utilities.isLmpOrAbove() || (userHandle = this.mUser) == null) {
            return;
        }
        intent.putExtra(str, userHandle);
    }
}
