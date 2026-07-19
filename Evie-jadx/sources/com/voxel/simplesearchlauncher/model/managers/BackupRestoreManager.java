package com.voxel.simplesearchlauncher.model.managers;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.provider.Settings;
import android.util.Log;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.GoogleSignInResult;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.Drive;
import com.google.android.gms.drive.DriveApi;
import com.google.android.gms.drive.DriveContents;
import com.google.android.gms.drive.DriveFolder;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.Metadata;
import com.google.android.gms.drive.MetadataBuffer;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.drive.metadata.CustomPropertyKey;
import com.google.android.gms.drive.query.Filters;
import com.google.android.gms.drive.query.Query;
import com.google.android.gms.drive.query.SearchableField;
import com.google.android.gms.drive.query.SortOrder;
import com.google.android.gms.drive.query.SortableField;
import com.voxel.launcher3.LauncherAppState;
import com.voxel.launcher3.LauncherApplication;
import com.voxel.launcher3.LauncherBackupHelper;
import com.voxel.launcher3.LauncherProvider;
import com.voxel.simplesearchlauncher.iconpack.IconPackManager;
import com.voxel.simplesearchlauncher.model.AppsInfoProvider;
import com.voxel.simplesearchlauncher.settings.LayoutSettingsManager;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.UUID;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class BackupRestoreManager {
    private static final String TAG = "BackupRestoreManager";
    private static BackupRestoreManager instance;
    private BackupRestoreUI defaultUICallbacks;
    private String mAccountEmail;
    private GoogleApiConnectionCallbacks mConnectionCallbacks;
    private GoogleApiClient mGoogleApiClient;
    IconPackManager mIconPackManager;
    LayoutSettingsManager mLayoutSettingsManager;
    LocalAppsManager mLocalAppsManager;
    private boolean mRestoreAvailable;
    SettingsStorage mSettingsStorage;
    private BackupRestoreUI mUICallbacks;
    public static final String KEY_LAUNCHER_RESTORED = BackupRestoreManager.class.getCanonicalName() + ".launcher_restored";
    public static final CustomPropertyKey CPK_DEVICE_ID = new CustomPropertyKey("device_id", 0);
    public static final CustomPropertyKey CPK_DEVICE_NAME = new CustomPropertyKey("device_name", 0);
    public static final CustomPropertyKey CPK_WORKAROUND = new CustomPropertyKey("workaround", 1);
    private static final String[] DB_BACKUP_FILES = {"apps_info.db", "launcher.db", "search_item_data.db"};

    public interface BackupRestoreUI {
        void handleAvailableRestoreData(MetadataBuffer metadataBuffer, int i);

        void onBackupFailure();

        void onBackupSuccess();

        void onDeleteFailure();

        void onDeleteSuccess();

        void onRestoreFailure();

        void onRestoreSuccess();

        void updateUI(String str, boolean z);
    }

    public BackupRestoreManager(Activity activity) {
        LauncherApplication.getInjector(activity).getLauncherAppComponent().inject(this);
        this.defaultUICallbacks = new DefaultBackupRestoreUI(activity);
        setUICallbacks(this.defaultUICallbacks);
        this.mConnectionCallbacks = new GoogleApiConnectionCallbacks(activity);
    }

    public synchronized void deconstruct() {
        this.mGoogleApiClient = null;
        this.mConnectionCallbacks = null;
        this.defaultUICallbacks = null;
        this.mUICallbacks = null;
    }

    public static synchronized void init(FragmentActivity fragmentActivity) {
        if (instance != null) {
            return;
        }
        instance = new BackupRestoreManager(fragmentActivity);
        GoogleSignInOptions googleSignInOptionsBuild = new GoogleSignInOptions.Builder(GoogleSignInOptions.DEFAULT_SIGN_IN).requestScopes(Drive.SCOPE_APPFOLDER, new Scope[0]).requestEmail().build();
        instance.mGoogleApiClient = new GoogleApiClient.Builder(fragmentActivity).enableAutoManage(fragmentActivity, instance.mConnectionCallbacks).addConnectionCallbacks(instance.mConnectionCallbacks).addApi(Auth.GOOGLE_SIGN_IN_API, googleSignInOptionsBuild).addApi(Drive.API).build();
    }

    public static synchronized void deinit() {
        if (instance == null) {
            return;
        }
        instance.deconstruct();
        instance = null;
    }

    public static synchronized BackupRestoreManager getInstance() {
        if (instance == null) {
            throw new IllegalStateException("Instance must be initialized before trying to use.");
        }
        return instance;
    }

    public synchronized void setUICallbacks(BackupRestoreUI backupRestoreUI) {
        try {
            if (backupRestoreUI == null) {
                this.mUICallbacks = this.defaultUICallbacks;
            } else {
                this.mUICallbacks = backupRestoreUI;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized BackupRestoreUI getUICallbacks() {
        if (this.mUICallbacks == null) {
            if (this.defaultUICallbacks == null) {
                return new DefaultBackupRestoreUI();
            }
            return this.defaultUICallbacks;
        }
        return this.mUICallbacks;
    }

    public synchronized boolean isConnected() {
        if (this.mGoogleApiClient == null) {
            return false;
        }
        return this.mGoogleApiClient.isConnected();
    }

    public synchronized boolean connect() {
        if (this.mGoogleApiClient == null) {
            return false;
        }
        this.mGoogleApiClient.connect();
        return true;
    }

    public ZipOutputStream createBackup(Context context, OutputStream outputStream) throws JSONException, IOException {
        UserProfileManager userProfileManager = UserProfileManager.getInstance();
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        for (String str : userProfileManager.getRestorableUserDataTypeIds()) {
            JSONObject backupUserData = userProfileManager.getBackupUserData(str);
            if (backupUserData != null) {
                Log.d(TAG, "Adding user data to backup: " + str);
                jSONArray.put(backupUserData);
            } else {
                Log.w(TAG, "Could not backup data type " + str);
            }
        }
        jSONObject.put("dataList", jSONArray);
        ZipOutputStream zipOutputStream = new ZipOutputStream(outputStream);
        try {
            zipOutputStream.putNextEntry(new ZipEntry("prefs.json"));
            zipOutputStream.write(jSONObject.toString().getBytes());
            zipOutputStream.closeEntry();
        } catch (IOException unused) {
            Log.e(TAG, "Could not back up shared prefs");
        }
        for (String str2 : DB_BACKUP_FILES) {
            try {
                addFileToZip(context, zipOutputStream, str2);
            } catch (IOException unused2) {
                Log.e(TAG, "Could not read apps_info.db file for backup");
            }
        }
        zipOutputStream.finish();
        return zipOutputStream;
    }

    public boolean createLocalBackup(Context context, String str) {
        try {
            createBackup(context, context.openFileOutput(str, 0)).close();
            return true;
        } catch (FileNotFoundException e) {
            Log.e(TAG, "Could not create local backup file", e);
            return false;
        } catch (IOException unused) {
            Log.e(TAG, "Could not finish local backup zip");
            return false;
        } catch (JSONException e2) {
            Log.e(TAG, "Could not generate local backup user data.", e2);
            return false;
        }
    }

    public void requestBackup(final Context context) {
        GoogleApiClient googleApiClient = this.mGoogleApiClient;
        if (googleApiClient == null || !googleApiClient.isConnected()) {
            setSignedOut();
        } else {
            Drive.DriveApi.newDriveContents(this.mGoogleApiClient).setResultCallback(new ResultCallback() { // from class: com.voxel.simplesearchlauncher.model.managers.-$$Lambda$BackupRestoreManager$cunaWN85F6rQfXiU_OE-3r219GE
                @Override // com.google.android.gms.common.api.ResultCallback
                public final void onResult(Result result) {
                    BackupRestoreManager.lambda$requestBackup$1(this.f$0, context, (DriveApi.DriveContentsResult) result);
                }
            });
        }
    }

    public static /* synthetic */ void lambda$requestBackup$1(final BackupRestoreManager backupRestoreManager, Context context, DriveApi.DriveContentsResult driveContentsResult) {
        if (!driveContentsResult.getStatus().isSuccess()) {
            backupRestoreManager.setSignedOut();
            backupRestoreManager.getUICallbacks().onBackupFailure();
            Log.i(TAG, "Failed to create new contents.");
            return;
        }
        String deviceName = backupRestoreManager.getDeviceName();
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        MetadataChangeSet metadataChangeSetBuild = new MetadataChangeSet.Builder().setMimeType("application/zip").setTitle("backup.zip").setCustomProperty(CPK_DEVICE_NAME, deviceName).setCustomProperty(CPK_DEVICE_ID, string).setDescription(string).build();
        try {
            ZipOutputStream zipOutputStreamCreateBackup = backupRestoreManager.createBackup(context, driveContentsResult.getDriveContents().getOutputStream());
            DriveFolder appFolder = Drive.DriveApi.getAppFolder(backupRestoreManager.mGoogleApiClient);
            if (appFolder == null) {
                backupRestoreManager.setSignedOut();
                backupRestoreManager.getUICallbacks().onBackupFailure();
            } else {
                appFolder.createFile(backupRestoreManager.mGoogleApiClient, metadataChangeSetBuild, driveContentsResult.getDriveContents()).setResultCallback(new ResultCallback() { // from class: com.voxel.simplesearchlauncher.model.managers.-$$Lambda$BackupRestoreManager$_qFa6bDx11ajG14Kyvd-4D_jOVg
                    @Override // com.google.android.gms.common.api.ResultCallback
                    public final void onResult(Result result) {
                        BackupRestoreManager.lambda$null$0(this.f$0, (DriveFolder.DriveFileResult) result);
                    }
                });
                try {
                    zipOutputStreamCreateBackup.close();
                } catch (IOException unused) {
                    Log.e(TAG, "Could not close backup zip");
                }
            }
        } catch (IOException unused2) {
            Log.e(TAG, "Could not finish backup zip");
            backupRestoreManager.getUICallbacks().onBackupFailure();
        } catch (JSONException e) {
            Log.e(TAG, "Could not generate backup user data.", e);
            backupRestoreManager.getUICallbacks().onBackupFailure();
        }
    }

    public static /* synthetic */ void lambda$null$0(BackupRestoreManager backupRestoreManager, DriveFolder.DriveFileResult driveFileResult) {
        Status status = driveFileResult.getStatus();
        if (!status.isSuccess()) {
            if (status.isCanceled()) {
                backupRestoreManager.getUICallbacks().updateUI(backupRestoreManager.getAccountEmail(), backupRestoreManager.isRestoreAvailable());
                return;
            } else {
                backupRestoreManager.getUICallbacks().onBackupFailure();
                return;
            }
        }
        backupRestoreManager.pruneOldBackups();
        backupRestoreManager.getUICallbacks().onBackupSuccess();
        Log.d(TAG, "User backup completed.");
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0023  */
    private String dBfileNameToLocation(Context context, String str) {
        switch (str) {
            case "apps_info.db":
                return AppsInfoProvider.getDbPath(context);
            case "launcher.db":
                return LauncherProvider.getDbPath(context);
            default:
                return "";
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0023  */
    private void closeDb(Context context, String str) {
        switch (str) {
            case "apps_info.db":
                AppsInfoProvider.closeDB(context);
                break;
            case "launcher.db":
                LauncherProvider.closeDB(context);
                break;
        }
    }

    private void addFileToZip(Context context, ZipOutputStream zipOutputStream, String str) throws IOException {
        File file = new File(Environment.getDataDirectory(), dBfileNameToLocation(context, str));
        if (!file.exists()) {
            return;
        }
        zipOutputStream.putNextEntry(new ZipEntry(str));
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file), 1024);
        byte[] bArr = new byte[1024];
        while (true) {
            int i = bufferedInputStream.read(bArr, 0, 1024);
            if (i != -1) {
                zipOutputStream.write(bArr, 0, i);
            } else {
                bufferedInputStream.close();
                zipOutputStream.closeEntry();
                return;
            }
        }
    }

    private void pruneOldBackups() {
        getAvailableRestoreData(new ResultCallback() { // from class: com.voxel.simplesearchlauncher.model.managers.-$$Lambda$BackupRestoreManager$ZoOhvc9jdSXUIjphlRzmP9KtfK4
            @Override // com.google.android.gms.common.api.ResultCallback
            public final void onResult(Result result) {
                BackupRestoreManager.lambda$pruneOldBackups$2(this.f$0, (DriveApi.MetadataBufferResult) result);
            }
        });
    }

    public static /* synthetic */ void lambda$pruneOldBackups$2(BackupRestoreManager backupRestoreManager, DriveApi.MetadataBufferResult metadataBufferResult) {
        HashMap map = new HashMap();
        MetadataBuffer metadataBuffer = metadataBufferResult.getMetadataBuffer();
        boolean z = false;
        for (Metadata metadata : metadataBuffer) {
            String str = metadata.getCustomProperties().get(CPK_DEVICE_ID);
            if (str == null) {
                metadata.getDriveId().asDriveFile().delete(backupRestoreManager.mGoogleApiClient).setResultCallback(null);
            } else {
                Integer num = (Integer) map.get(str);
                if (num == null) {
                    num = 0;
                }
                if (num.intValue() < 2) {
                    map.put(str, Integer.valueOf(num.intValue() + 1));
                    z = true;
                } else {
                    metadata.getDriveId().asDriveFile().delete(backupRestoreManager.mGoogleApiClient).setResultCallback(null);
                }
            }
        }
        metadataBuffer.release();
        backupRestoreManager.mRestoreAvailable = z;
        backupRestoreManager.getUICallbacks().updateUI(backupRestoreManager.getAccountEmail(), backupRestoreManager.isRestoreAvailable());
    }

    private String getDeviceName() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        if (str2.startsWith(str)) {
            return capitalize(str2);
        }
        return capitalize(str) + " " + str2;
    }

    private String capitalize(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        char cCharAt = str.charAt(0);
        if (Character.isUpperCase(cCharAt)) {
            return str;
        }
        return Character.toUpperCase(cCharAt) + str.substring(1);
    }

    public void requestAvailableRestoreData(final int i) {
        GoogleApiClient googleApiClient = this.mGoogleApiClient;
        if (googleApiClient == null || !googleApiClient.isConnected()) {
            setSignedOut();
        } else {
            getAvailableRestoreData(new ResultCallback() { // from class: com.voxel.simplesearchlauncher.model.managers.-$$Lambda$BackupRestoreManager$4O3Q1F7JwPSllsJjt11YbMpR4Q8
                @Override // com.google.android.gms.common.api.ResultCallback
                public final void onResult(Result result) {
                    BackupRestoreManager.lambda$requestAvailableRestoreData$3(this.f$0, i, (DriveApi.MetadataBufferResult) result);
                }
            });
        }
    }

    public static /* synthetic */ void lambda$requestAvailableRestoreData$3(BackupRestoreManager backupRestoreManager, int i, DriveApi.MetadataBufferResult metadataBufferResult) {
        if (metadataBufferResult.getStatus().isSuccess()) {
            backupRestoreManager.getUICallbacks().handleAvailableRestoreData(metadataBufferResult.getMetadataBuffer(), i);
        } else {
            backupRestoreManager.getUICallbacks().onRestoreFailure();
        }
    }

    public void restoreFromZipInputStream(final Activity activity, InputStream inputStream) throws JSONException, IOException {
        ZipInputStream zipInputStream = new ZipInputStream(inputStream);
        while (true) {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            if (nextEntry != null) {
                if (!nextEntry.isDirectory()) {
                    String name = nextEntry.getName();
                    byte[] bArr = new byte[1024];
                    if (((name.hashCode() == -1121668762 && name.equals("prefs.json")) ? (byte) 0 : (byte) -1) == 0) {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        while (true) {
                            int i = zipInputStream.read(bArr, 0, 1024);
                            if (i == -1) {
                                break;
                            } else {
                                byteArrayOutputStream.write(bArr, 0, i);
                            }
                        }
                        restorePrefs(byteArrayOutputStream.toString());
                    } else {
                        String strDBfileNameToLocation = dBfileNameToLocation(activity, name);
                        if (!strDBfileNameToLocation.isEmpty()) {
                            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(new File(Environment.getDataDirectory(), strDBfileNameToLocation), false), 1024);
                            while (true) {
                                int i2 = zipInputStream.read(bArr, 0, 1024);
                                if (i2 == -1) {
                                    break;
                                } else {
                                    bufferedOutputStream.write(bArr, 0, i2);
                                }
                            }
                            bufferedOutputStream.flush();
                            bufferedOutputStream.close();
                            closeDb(activity, name);
                        }
                    }
                }
            } else {
                zipInputStream.close();
                Log.d(TAG, "User data successfully restored.");
                activity.runOnUiThread(new Runnable() { // from class: com.voxel.simplesearchlauncher.model.managers.-$$Lambda$BackupRestoreManager$1duhM9BN_LhOUzZrRHF5NFIoP0k
                    @Override // java.lang.Runnable
                    public final void run() {
                        BackupRestoreManager.lambda$restoreFromZipInputStream$4(this.f$0, activity);
                    }
                });
                return;
            }
        }
    }

    public static /* synthetic */ void lambda$restoreFromZipInputStream$4(BackupRestoreManager backupRestoreManager, Activity activity) {
        backupRestoreManager.mLocalAppsManager.restart();
        LauncherBackupHelper.postRestoreWidgets(activity);
        AppsInfoProvider.getInstance().dispatchChange(false, AppsInfoProvider.getContentUri());
        backupRestoreManager.mIconPackManager.verifyAndReload();
        backupRestoreManager.mLayoutSettingsManager.refreshDeviceProfile(activity);
        backupRestoreManager.mIconPackManager.upgradeIfNeeded();
        backupRestoreManager.mLayoutSettingsManager.upgradeIfNeeded();
        backupRestoreManager.mSettingsStorage.upgradeIfNeeded();
        LauncherAppState.getInstance().getModel().forceReload();
    }

    public void restoreFromDriveId(final Activity activity, DriveId driveId) {
        GoogleApiClient googleApiClient = this.mGoogleApiClient;
        if (googleApiClient == null || !googleApiClient.isConnected()) {
            getUICallbacks().onRestoreFailure();
            setSignedOut();
        } else {
            driveId.asDriveFile().open(this.mGoogleApiClient, 268435456, null).setResultCallback(new ResultCallback() { // from class: com.voxel.simplesearchlauncher.model.managers.-$$Lambda$BackupRestoreManager$TYV2s0UfNLvS5dJRdEyjrgZpePg
                @Override // com.google.android.gms.common.api.ResultCallback
                public final void onResult(Result result) {
                    BackupRestoreManager.lambda$restoreFromDriveId$5(this.f$0, activity, (DriveApi.DriveContentsResult) result);
                }
            });
        }
    }

    public static /* synthetic */ void lambda$restoreFromDriveId$5(BackupRestoreManager backupRestoreManager, Activity activity, DriveApi.DriveContentsResult driveContentsResult) {
        DriveContents driveContents = driveContentsResult.getDriveContents();
        if (driveContents == null) {
            Log.e(TAG, "Error trying to restore, drive contents null");
            backupRestoreManager.getUICallbacks().onRestoreFailure();
            return;
        }
        try {
            backupRestoreManager.restoreFromZipInputStream(activity, driveContents.getInputStream());
            backupRestoreManager.getUICallbacks().onRestoreSuccess();
        } catch (IOException e) {
            Log.e(TAG, "Restore error while reading zip file. ", e);
            backupRestoreManager.getUICallbacks().onRestoreFailure();
        } catch (JSONException e2) {
            Log.e(TAG, "Restore error while reading shared prefs. ", e2);
            backupRestoreManager.getUICallbacks().onRestoreFailure();
        }
    }

    public boolean restoreFromLocalBackup(Activity activity, String str) {
        try {
            restoreFromZipInputStream(activity, activity.openFileInput(str));
            return true;
        } catch (FileNotFoundException e) {
            Log.e(TAG, "Could not find local backup file", e);
            return false;
        } catch (IOException unused) {
            Log.e(TAG, "Could not read local backup db file");
            return false;
        } catch (JSONException e2) {
            Log.e(TAG, "Could not read local backup user data.", e2);
            return false;
        }
    }

    private void restorePrefs(String str) throws JSONException {
        JSONArray jSONArray = new JSONObject(str).getJSONArray("dataList");
        if (jSONArray == null || jSONArray.length() <= 0) {
            return;
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            UserProfileManager.getInstance().saveRestoredUserData(jSONArray.getJSONObject(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getAvailableRestoreData(ResultCallback<DriveApi.MetadataBufferResult> resultCallback) {
        DriveFolder appFolder;
        Query queryBuild = new Query.Builder().addFilter(Filters.m353eq(SearchableField.TITLE, "backup.zip")).addFilter(Filters.m353eq(SearchableField.MIME_TYPE, "application/zip")).addFilter(Filters.m353eq(SearchableField.TRASHED, false)).setSortOrder(new SortOrder.Builder().addSortAscending(SortableField.TITLE).addSortDescending(SortableField.MODIFIED_DATE).build()).build();
        try {
            appFolder = Drive.DriveApi.getAppFolder(this.mGoogleApiClient);
        } catch (IllegalStateException e) {
            Log.e(TAG, "getAvailableRestoreData called, but not actually connected", e);
            appFolder = null;
        }
        if (appFolder == null) {
            setSignedOut();
        } else {
            appFolder.queryChildren(this.mGoogleApiClient, queryBuild).setResultCallback(resultCallback);
        }
    }

    public void signIn(Activity activity) {
        GoogleApiClient googleApiClient = this.mGoogleApiClient;
        if (googleApiClient == null) {
            setSignedOut();
            return;
        }
        if (!googleApiClient.isConnected()) {
            this.mGoogleApiClient.connect();
        }
        activity.startActivityForResult(Auth.GoogleSignInApi.getSignInIntent(this.mGoogleApiClient), 3004);
    }

    public void signOut() {
        GoogleApiClient googleApiClient = this.mGoogleApiClient;
        if (googleApiClient == null || !googleApiClient.isConnected()) {
            setSignedOut();
        } else {
            Auth.GoogleSignInApi.signOut(this.mGoogleApiClient).setResultCallback(new ResultCallback() { // from class: com.voxel.simplesearchlauncher.model.managers.-$$Lambda$BackupRestoreManager$foBTBW4OhjHfRiud6RFPTosiiqk
                @Override // com.google.android.gms.common.api.ResultCallback
                public final void onResult(Result result) {
                    this.f$0.setSignedOut();
                }
            });
        }
    }

    private void setSignedIn(GoogleSignInAccount googleSignInAccount) {
        this.mAccountEmail = googleSignInAccount.getEmail();
        UserProfileManager.getInstance().setGoogleAccount(googleSignInAccount);
        getUICallbacks().updateUI(getAccountEmail(), isRestoreAvailable());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSignedOut() {
        this.mAccountEmail = null;
        this.mRestoreAvailable = false;
        UserProfileManager.getInstance().setGoogleAccount(null);
        getUICallbacks().updateUI(getAccountEmail(), isRestoreAvailable());
    }

    public String getAccountEmail() {
        return this.mAccountEmail;
    }

    public void refreshRestoreAvailable() {
        GoogleApiClient googleApiClient;
        if (this.mAccountEmail == null || (googleApiClient = this.mGoogleApiClient) == null || !googleApiClient.isConnected()) {
            this.mRestoreAvailable = false;
        } else {
            Drive.DriveApi.requestSync(this.mGoogleApiClient).setResultCallback(new ResultCallback() { // from class: com.voxel.simplesearchlauncher.model.managers.-$$Lambda$BackupRestoreManager$lSD-31Ie3wC2_NbV-CZt3iI17Sk
                @Override // com.google.android.gms.common.api.ResultCallback
                public final void onResult(Result result) {
                    BackupRestoreManager backupRestoreManager = this.f$0;
                    backupRestoreManager.getAvailableRestoreData(new ResultCallback() { // from class: com.voxel.simplesearchlauncher.model.managers.-$$Lambda$BackupRestoreManager$I16kqn4ISzeXIpT7hslC2rofyj0
                        @Override // com.google.android.gms.common.api.ResultCallback
                        public final void onResult(Result result2) {
                            BackupRestoreManager.lambda$null$8(this.f$0, (DriveApi.MetadataBufferResult) result2);
                        }
                    });
                }
            });
        }
    }

    public static /* synthetic */ void lambda$null$8(BackupRestoreManager backupRestoreManager, DriveApi.MetadataBufferResult metadataBufferResult) {
        MetadataBuffer metadataBuffer;
        if (!metadataBufferResult.getStatus().isSuccess() || (metadataBuffer = metadataBufferResult.getMetadataBuffer()) == null) {
            backupRestoreManager.mRestoreAvailable = false;
        } else {
            backupRestoreManager.mRestoreAvailable = metadataBuffer.getCount() > 0;
            backupRestoreManager.missingCustomPropertiesWorkaround(metadataBuffer);
            metadataBuffer.release();
        }
        backupRestoreManager.getUICallbacks().updateUI(backupRestoreManager.getAccountEmail(), backupRestoreManager.isRestoreAvailable());
    }

    private void missingCustomPropertiesWorkaround(MetadataBuffer metadataBuffer) {
        for (Metadata metadata : metadataBuffer) {
            if (metadata.getCustomProperties().isEmpty()) {
                metadata.getDriveId().asDriveResource().updateMetadata(this.mGoogleApiClient, new MetadataChangeSet.Builder().setCustomProperty(CPK_WORKAROUND, UUID.randomUUID().toString()).build()).setResultCallback(null);
            }
        }
    }

    public boolean isRestoreAvailable() {
        if (this.mAccountEmail == null) {
            return false;
        }
        return this.mRestoreAvailable;
    }

    public void handleActivityResult(int i, int i2, Intent intent, Activity activity) {
        switch (i) {
            case 3001:
                if (i2 == -1) {
                    getUICallbacks().onBackupSuccess();
                    Log.d(TAG, "User backup completed.");
                } else {
                    Log.d(TAG, "User backup cancelled.");
                }
                break;
            case 3002:
                if (i2 == -1) {
                    restoreFromDriveId(activity, (DriveId) intent.getParcelableExtra("response_drive_id"));
                }
                break;
            case 3004:
                GoogleSignInResult signInResultFromIntent = Auth.GoogleSignInApi.getSignInResultFromIntent(intent);
                if (signInResultFromIntent.isSuccess()) {
                    setSignedIn(signInResultFromIntent.getSignInAccount());
                    refreshRestoreAvailable();
                } else {
                    setSignedOut();
                }
                break;
        }
    }

    public void deleteBackup(final DriveId driveId) {
        getAvailableRestoreData(new ResultCallback() { // from class: com.voxel.simplesearchlauncher.model.managers.-$$Lambda$BackupRestoreManager$_0KKu1__FXikO8oxTHwaKuHuypk
            @Override // com.google.android.gms.common.api.ResultCallback
            public final void onResult(Result result) {
                BackupRestoreManager.lambda$deleteBackup$11(this.f$0, driveId, (DriveApi.MetadataBufferResult) result);
            }
        });
    }

    public static /* synthetic */ void lambda$deleteBackup$11(final BackupRestoreManager backupRestoreManager, DriveId driveId, DriveApi.MetadataBufferResult metadataBufferResult) {
        MetadataBuffer metadataBuffer = metadataBufferResult.getMetadataBuffer();
        Iterator<Metadata> it = metadataBuffer.iterator();
        final boolean z = false;
        while (it.hasNext()) {
            if (!driveId.equals(it.next().getDriveId())) {
                z = true;
            }
        }
        metadataBuffer.release();
        driveId.asDriveFile().delete(backupRestoreManager.mGoogleApiClient).setResultCallback(new ResultCallback() { // from class: com.voxel.simplesearchlauncher.model.managers.-$$Lambda$BackupRestoreManager$nYbyDxgKnXy7fndIm6p4_xUO-PQ
            @Override // com.google.android.gms.common.api.ResultCallback
            public final void onResult(Result result) {
                BackupRestoreManager.lambda$null$10(this.f$0, z, (Status) result);
            }
        });
    }

    public static /* synthetic */ void lambda$null$10(BackupRestoreManager backupRestoreManager, boolean z, Status status) {
        if (status.isSuccess()) {
            backupRestoreManager.getUICallbacks().onDeleteSuccess();
            backupRestoreManager.mRestoreAvailable = z;
        } else {
            backupRestoreManager.getUICallbacks().onDeleteFailure();
        }
        backupRestoreManager.getUICallbacks().updateUI(backupRestoreManager.getAccountEmail(), backupRestoreManager.isRestoreAvailable());
    }

    private class GoogleApiConnectionCallbacks implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
        private Activity mActivity;

        public GoogleApiConnectionCallbacks(Activity activity) {
            this.mActivity = activity;
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
        public void onConnectionFailed(ConnectionResult connectionResult) {
            Log.d(BackupRestoreManager.TAG, "GoogleApiClient connection failed: " + connectionResult.toString());
            if (connectionResult.hasResolution()) {
                BackupRestoreManager.this.setSignedOut();
            } else {
                GoogleApiAvailability.getInstance().getErrorDialog(this.mActivity, connectionResult.getErrorCode(), 0).show();
            }
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        public void onConnected(Bundle bundle) {
            Log.d(BackupRestoreManager.TAG, "GoogleApiClient connected");
            if (BackupRestoreManager.this.mAccountEmail == null) {
                BackupRestoreManager.this.mAccountEmail = UserProfileManager.getInstance().getGoogleAccountEmail();
            }
            if (BackupRestoreManager.this.mAccountEmail == null) {
                BackupRestoreManager.this.setSignedOut();
                return;
            }
            try {
                BackupRestoreManager.this.refreshRestoreAvailable();
            } catch (IllegalStateException e) {
                Log.e(BackupRestoreManager.TAG, "OnConnected called, but not actually connected", e);
                BackupRestoreManager.this.setSignedOut();
            }
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        public void onConnectionSuspended(int i) {
            Log.d(BackupRestoreManager.TAG, "GoogleApiClient disconnected");
        }
    }
}
