package com.voxel.simplesearchlauncher.model.itemdata;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.util.Log;
import com.crashlytics.android.Crashlytics;
import com.voxel.simplesearchlauncher.activity.SafeActivityStarter;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

/* JADX INFO: loaded from: classes2.dex */
public class LocalAppData extends BaseAppData {
    private static final String TAG = "LocalAppData";
    private long firstInstallTime;
    private boolean hasOpened;
    private String labelOverride;
    private transient Bitmap mCustomIcon;

    public String getLabelOverride() {
        return this.labelOverride;
    }

    public void setLabelOverride(String str) {
        this.labelOverride = str;
    }

    LocalAppData() {
    }

    public LocalAppData(String str, String str2) {
        super(str, str2);
    }

    @Override // com.voxel.simplesearchlauncher.model.itemdata.SearchItemData
    public void handleAction(SearchItemData.ActionType actionType, Activity activity) {
        if (actionType == SearchItemData.ActionType.CLICK) {
            launchApplication(activity);
        }
    }

    public Bitmap getCustomIcon() {
        return this.mCustomIcon;
    }

    public void setCustomIcon(Bitmap bitmap) {
        this.mCustomIcon = bitmap;
    }

    public long getFirstInstallTime() {
        return this.firstInstallTime;
    }

    public void setFirstInstallTime(long j) {
        this.firstInstallTime = j;
    }

    public boolean getHasOpened() {
        return this.hasOpened;
    }

    public void setHasOpened(boolean z) {
        this.hasOpened = z;
    }

    @Override // com.voxel.simplesearchlauncher.model.itemdata.SearchItemData
    public Intent getIntent(Context context) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setClassName(getPackageName(), getActivityName());
        intent.setFlags(270532608);
        return intent;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean launchApplication(Activity activity) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setClassName(getPackageName(), getActivityName());
        intent.setFlags(270532608);
        if (intent.resolveActivity(activity.getApplicationContext().getPackageManager()) != null) {
            try {
                if (activity instanceof SafeActivityStarter) {
                    ((SafeActivityStarter) activity).startActivitySafely(intent);
                    return true;
                }
                activity.startActivity(intent);
                return true;
            } catch (ActivityNotFoundException e) {
                Log.e(TAG, "Activity not found. App probably uninstalled: " + getPackageName() + "/" + getActivityName(), e);
                return false;
            } catch (SecurityException e2) {
                Log.e(TAG, "SecurityException launching app: " + getPackageName() + "/" + getActivityName(), e2);
                Crashlytics.logException(e2);
                return false;
            }
        }
        Log.e(TAG, "Could not launch activity for app: " + getLabel());
        return false;
    }

    public String getAppPackageName() {
        return getPackageName();
    }

    public String getAppActivityName() {
        return getActivityName();
    }

    public int getAppVersionCode() {
        return getVersionCode();
    }

    @Override // com.voxel.simplesearchlauncher.model.itemdata.SearchItemData
    public String getLabel() {
        String str = this.labelOverride;
        return str != null ? str : super.getLabel();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeLong(this.firstInstallTime);
        objectOutputStream.writeBoolean(this.hasOpened);
        objectOutputStream.writeObject(this.labelOverride);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        this.firstInstallTime = objectInputStream.readLong();
        this.hasOpened = objectInputStream.readBoolean();
        this.labelOverride = (String) objectInputStream.readObject();
    }
}
