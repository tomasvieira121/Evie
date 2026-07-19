package com.voxel.launcher3.util;

import android.os.Build;
import android.service.notification.StatusBarNotification;
import com.voxel.launcher3.compat.UserHandleCompat;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class PackageUserKey {
    private int mHashCode;
    public String mPackageName;
    public UserHandleCompat mUser;

    public static PackageUserKey fromNotification(StatusBarNotification statusBarNotification) {
        UserHandleCompat userHandleCompatFromUser;
        if (Build.VERSION.SDK_INT < 21) {
            userHandleCompatFromUser = UserHandleCompat.myUserHandle();
        } else {
            userHandleCompatFromUser = UserHandleCompat.fromUser(statusBarNotification.getUser());
        }
        return new PackageUserKey(statusBarNotification.getPackageName(), userHandleCompatFromUser);
    }

    public PackageUserKey(String str, UserHandleCompat userHandleCompat) {
        update(str, userHandleCompat);
    }

    private void update(String str, UserHandleCompat userHandleCompat) {
        this.mPackageName = str;
        this.mUser = userHandleCompat;
        this.mHashCode = Arrays.hashCode(new Object[]{str, userHandleCompat});
    }

    public int hashCode() {
        return this.mHashCode;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PackageUserKey)) {
            return false;
        }
        PackageUserKey packageUserKey = (PackageUserKey) obj;
        return this.mPackageName.equals(packageUserKey.mPackageName) && this.mUser.equals(packageUserKey.mUser);
    }
}
