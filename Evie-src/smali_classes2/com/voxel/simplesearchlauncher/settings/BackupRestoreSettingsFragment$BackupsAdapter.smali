.class Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment$BackupsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BackupRestoreSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/google/android/gms/drive/Metadata;",
        ">;"
    }
.end annotation


# instance fields
.field mBackups:[Lcom/google/android/gms/drive/Metadata;

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;Landroid/content/Context;I[Lcom/google/android/gms/drive/Metadata;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment$BackupsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;

    .line 332
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 333
    iput-object p4, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment$BackupsAdapter;->mBackups:[Lcom/google/android/gms/drive/Metadata;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 339
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment$BackupsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d004b

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0a017c

    .line 341
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v1, 0x7f0a017d

    .line 342
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 344
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment$BackupsAdapter;->mBackups:[Lcom/google/android/gms/drive/Metadata;

    aget-object p1, v2, p1

    .line 346
    invoke-virtual {p1}, Lcom/google/android/gms/drive/Metadata;->getCustomProperties()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->CPK_DEVICE_NAME:Lcom/google/android/gms/drive/metadata/CustomPropertyKey;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 347
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    invoke-virtual {p1}, Lcom/google/android/gms/drive/Metadata;->getCreatedDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const/4 v6, 0x3

    const/4 v7, 0x3

    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatSameDayTime(JJII)Ljava/lang/CharSequence;

    move-result-object p1

    .line 350
    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment$BackupsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;

    invoke-virtual {p3}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v2, 0x7f120084

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 351
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
