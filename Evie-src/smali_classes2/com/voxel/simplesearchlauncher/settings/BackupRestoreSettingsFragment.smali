.class public Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "BackupRestoreSettingsFragment.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment$BackupsAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BackupRestoreSettingsFragment"


# instance fields
.field private mBackupManager:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

.field private mBackupViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

.field private mCircularProgressView:Landroid/view/View;

.field private mConnectionRetryHandler:Landroid/os/Handler;

.field private mDeleteViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

.field private mGoogleAccountViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRestoreViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

.field private mSignInViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;)Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mBackupManager:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mConnectionRetryHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic lambda$handleAvailableRestoreData$10(Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;Landroidx/appcompat/app/AlertDialog;[Lcom/google/android/gms/drive/Metadata;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 245
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 247
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f120080

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 248
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 250
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mBackupManager:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    aget-object p2, p2, p5

    invoke-virtual {p2}, Lcom/google/android/gms/drive/Metadata;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->deleteBackup(Lcom/google/android/gms/drive/DriveId;)V

    return-void
.end method

.method static synthetic lambda$handleAvailableRestoreData$7(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 221
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$handleAvailableRestoreData$8(Lcom/google/android/gms/drive/MetadataBuffer;Landroid/content/DialogInterface;)V
    .locals 0

    .line 222
    invoke-virtual {p0}, Lcom/google/android/gms/drive/MetadataBuffer;->release()V

    return-void
.end method

.method public static synthetic lambda$handleAvailableRestoreData$9(Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;Landroidx/appcompat/app/AlertDialog;[Lcom/google/android/gms/drive/Metadata;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 232
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 234
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f12008a

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 235
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 238
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mBackupManager:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string p4, "undo_restore.zip"

    invoke-virtual {p1, p3, p4}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->createLocalBackup(Landroid/content/Context;Ljava/lang/String;)Z

    .line 239
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mBackupManager:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    aget-object p2, p2, p5

    invoke-virtual {p2}, Lcom/google/android/gms/drive/Metadata;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->restoreFromDriveId(Landroid/app/Activity;Lcom/google/android/gms/drive/DriveId;)V

    return-void
.end method

.method static synthetic lambda$null$4(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 115
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static synthetic lambda$null$5(Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 117
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mBackupManager:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->signOut()V

    return-void
.end method

.method static synthetic lambda$onBackupFailure$12(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 279
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onBackupSuccess$11(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 267
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onDeleteFailure$14(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 323
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onRestoreFailure$13(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 306
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static synthetic lambda$onViewCreated$0(Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;Landroid/view/View;)V
    .locals 2

    .line 85
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 86
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 87
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mBackupManager:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->signIn(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic lambda$onViewCreated$1(Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;Landroid/view/View;)V
    .locals 2

    .line 93
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 94
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 95
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mBackupManager:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->requestBackup(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic lambda$onViewCreated$2(Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;Landroid/view/View;)V
    .locals 1

    .line 100
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mBackupManager:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->requestAvailableRestoreData(I)V

    return-void
.end method

.method public static synthetic lambda$onViewCreated$3(Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;Landroid/view/View;)V
    .locals 1

    .line 104
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mBackupManager:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->requestAvailableRestoreData(I)V

    return-void
.end method

.method public static synthetic lambda$onViewCreated$6(Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;Landroid/view/View;)V
    .locals 4

    .line 109
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mBackupManager:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getAccountEmail()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f12006d

    .line 112
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 113
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 114
    sget-object v0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$s224orxuqyugizRTM7aEI558PsU;->INSTANCE:Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$s224orxuqyugizRTM7aEI558PsU;

    const v1, 0x7f12006f

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 116
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$4h8XY_0PjvYbHqbxX3v9OqzkOBo;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$4h8XY_0PjvYbHqbxX3v9OqzkOBo;-><init>(Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;)V

    const v1, 0x7f12006e

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 119
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private stopProgressDialog()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 156
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleAvailableRestoreData(Lcom/google/android/gms/drive/MetadataBuffer;I)V
    .locals 8

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 195
    invoke-virtual {p1}, Lcom/google/android/gms/drive/MetadataBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/drive/Metadata;

    .line 196
    invoke-virtual {v2}, Lcom/google/android/gms/drive/Metadata;->getCustomProperties()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->CPK_DEVICE_ID:Lcom/google/android/gms/drive/metadata/CustomPropertyKey;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 197
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 198
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/drive/Metadata;->getDescription()Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_0

    .line 200
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 203
    :cond_3
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 206
    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/gms/drive/Metadata;

    const/4 v2, 0x0

    .line 208
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/drive/Metadata;

    .line 209
    aput-object v3, v1, v2

    add-int/2addr v2, v4

    goto :goto_1

    .line 213
    :cond_5
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d004a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a02bd

    .line 214
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0298

    .line 215
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f0a0180

    .line 216
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    const v6, 0x7f120085

    .line 218
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 219
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 220
    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v6, 0x7f1200de

    sget-object v7, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$Y4-woszb3rJC7MrORUW3Fm7VIJ0;->INSTANCE:Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$Y4-woszb3rJC7MrORUW3Fm7VIJ0;

    .line 221
    invoke-virtual {v0, v6, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v6, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$nis6193VtKGzZqPH4WTTeaiwmMM;

    invoke-direct {v6, p1}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$nis6193VtKGzZqPH4WTTeaiwmMM;-><init>(Lcom/google/android/gms/drive/MetadataBuffer;)V

    .line 222
    invoke-virtual {v0, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 223
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 225
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment$BackupsAdapter;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f0d004b

    invoke-direct {v0, p0, v2, v6, v1}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment$BackupsAdapter;-><init>(Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;Landroid/content/Context;I[Lcom/google/android/gms/drive/Metadata;)V

    .line 226
    invoke-virtual {v5, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-nez p2, :cond_6

    const p2, 0x7f120086

    .line 229
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(I)V

    .line 231
    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$hy5mpnCC74v3_l_Si74AiX7Icdc;

    invoke-direct {p2, p0, p1, v1}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$hy5mpnCC74v3_l_Si74AiX7Icdc;-><init>(Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;Landroidx/appcompat/app/AlertDialog;[Lcom/google/android/gms/drive/Metadata;)V

    invoke-virtual {v5, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_2

    :cond_6
    if-ne p2, v4, :cond_7

    const p2, 0x7f12007c

    .line 242
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(I)V

    .line 244
    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$yE6gIGNlZC5tTt8i_UIoJ1UkDrs;

    invoke-direct {p2, p0, p1, v1}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$yE6gIGNlZC5tTt8i_UIoJ1UkDrs;-><init>(Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;Landroidx/appcompat/app/AlertDialog;[Lcom/google/android/gms/drive/Metadata;)V

    invoke-virtual {v5, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 257
    :goto_2
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void

    :cond_7
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 145
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 146
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mBackupManager:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    if-nez p1, :cond_0

    return-void

    .line 149
    :cond_0
    invoke-virtual {p1, p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->setUICallbacks(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;)V

    .line 150
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mBackupManager:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getAccountEmail()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mBackupManager:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->isRestoreAvailable()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->updateUI(Ljava/lang/String;Z)V

    return-void
.end method

.method public onBackupFailure()V
    .locals 4

    .line 274
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->stopProgressDialog()V

    .line 275
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120073

    .line 276
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120075

    .line 277
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$SLKRP6DFrQEZdI0_OwEPTFgAOwo;->INSTANCE:Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$SLKRP6DFrQEZdI0_OwEPTFgAOwo;

    const v3, 0x7f120074

    .line 278
    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 280
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public onBackupSuccess()V
    .locals 4

    .line 262
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->stopProgressDialog()V

    .line 263
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120078

    .line 264
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f12007a

    .line 265
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$xiBDoCHz61J1mvydVe79RN7qBZ0;->INSTANCE:Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$xiBDoCHz61J1mvydVe79RN7qBZ0;

    const v3, 0x7f120079

    .line 266
    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 268
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->init(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d009e

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDeleteFailure()V
    .locals 4

    .line 318
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->stopProgressDialog()V

    .line 319
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12007d

    .line 320
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f12007f

    .line 321
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$q5avShCzlzdYIZvBKrHhXdGYGZ0;->INSTANCE:Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$q5avShCzlzdYIZvBKrHhXdGYGZ0;

    const v3, 0x7f12007e

    .line 322
    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 324
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public onDeleteSuccess()V
    .locals 0

    .line 313
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->stopProgressDialog()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 138
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 139
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mConnectionRetryHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mBackupManager:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->setUICallbacks(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;)V

    return-void
.end method

.method public onRestoreFailure()V
    .locals 4

    .line 301
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->stopProgressDialog()V

    .line 302
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120087

    .line 303
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120089

    .line 304
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$YKP8pwZ1vfejCxUmmfAQTx18KNk;->INSTANCE:Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$YKP8pwZ1vfejCxUmmfAQTx18KNk;

    const v3, 0x7f120088

    .line 305
    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 307
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public onRestoreSuccess()V
    .locals 4

    .line 286
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->stopProgressDialog()V

    .line 287
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 288
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    sget-object v1, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->KEY_LAUNCHER_RESTORED:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 290
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/voxel/launcher3/Launcher;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 292
    instance-of v2, v1, Lcom/voxel/simplesearchlauncher/activity/SafeActivityStarter;

    if-eqz v2, :cond_0

    .line 293
    check-cast v1, Lcom/voxel/simplesearchlauncher/activity/SafeActivityStarter;

    invoke-interface {v1, v0}, Lcom/voxel/simplesearchlauncher/activity/SafeActivityStarter;->startActivitySafely(Landroid/content/Intent;)Z

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 71
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    move-result-object p2

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mBackupManager:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    .line 72
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mBackupManager:Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    invoke-virtual {p2, p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->setUICallbacks(Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager$BackupRestoreUI;)V

    .line 73
    new-instance p2, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const p2, 0x7f0a018e

    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mCircularProgressView:Landroid/view/View;

    .line 76
    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    const v0, 0x7f0a027e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mSignInViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    .line 77
    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    const v0, 0x7f0a005d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mBackupViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    .line 78
    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    const v0, 0x7f0a021c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mRestoreViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    .line 79
    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    const v0, 0x7f0a00c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mDeleteViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    .line 80
    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    const v0, 0x7f0a0135

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mGoogleAccountViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    .line 82
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mSignInViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mLabel:Landroid/widget/TextView;

    const p2, 0x7f12008d

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 83
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mSignInViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mSubLabel:Landroid/widget/TextView;

    const p2, 0x7f12008f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 84
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mSignInViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$Kye5xPj9zBwwQZgB-0Y1x-R7IuM;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$Kye5xPj9zBwwQZgB-0Y1x-R7IuM;-><init>(Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mBackupViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mLabel:Landroid/widget/TextView;

    const p2, 0x7f120072

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 91
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mBackupViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mSubLabel:Landroid/widget/TextView;

    const p2, 0x7f120077

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 92
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mBackupViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$yS_y5WojH13nOTVKS4Anx4BeCQ4;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$yS_y5WojH13nOTVKS4Anx4BeCQ4;-><init>(Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mRestoreViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mLabel:Landroid/widget/TextView;

    const p2, 0x7f120083

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 99
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mRestoreViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mSubLabel:Landroid/widget/TextView;

    const p2, 0x7f12008b

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 100
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mRestoreViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$oxxL-ltCkwTcT4i--aQEUunjeg8;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$oxxL-ltCkwTcT4i--aQEUunjeg8;-><init>(Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mDeleteViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mLabel:Landroid/widget/TextView;

    const p2, 0x7f12007b

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 103
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mDeleteViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mSubLabel:Landroid/widget/TextView;

    const p2, 0x7f120081

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 104
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mDeleteViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$PaPmeVQboIjEJm0FJaWjEUr8i-A;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$PaPmeVQboIjEJm0FJaWjEUr8i-A;-><init>(Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mGoogleAccountViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mLabel:Landroid/widget/TextView;

    const p2, 0x7f12006c

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 108
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mGoogleAccountViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$rIcvKxnjrBv0JFglTjukAdgH_Rk;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$rIcvKxnjrBv0JFglTjukAdgH_Rk;-><init>(Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mConnectionRetryHandler:Landroid/os/Handler;

    .line 124
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mConnectionRetryHandler:Landroid/os/Handler;

    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment$1;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment$1;-><init>(Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public declared-synchronized updateUI(Ljava/lang/String;Z)V
    .locals 3

    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mConnectionRetryHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 163
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->stopProgressDialog()V

    .line 164
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mCircularProgressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 166
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mSignInViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mBackupViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mRestoreViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mDeleteViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mGoogleAccountViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 172
    :cond_0
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mSignInViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object v2, v2, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mBackupViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object v1, v1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mRestoreViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object v1, v1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 175
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mDeleteViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object v1, v1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mGoogleAccountViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object v1, v1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 178
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120071

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 179
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mGoogleAccountViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mSubLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mRestoreViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->setEnabled(Z)V

    .line 181
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mDeleteViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->setEnabled(Z)V

    if-eqz p2, :cond_1

    .line 183
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mRestoreViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mSubLabel:Landroid/widget/TextView;

    const p2, 0x7f12008b

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 184
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mDeleteViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mSubLabel:Landroid/widget/TextView;

    const p2, 0x7f120081

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 186
    :cond_1
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mRestoreViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mSubLabel:Landroid/widget/TextView;

    const p2, 0x7f12008c

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 187
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->mDeleteViewHolder:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mSubLabel:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
