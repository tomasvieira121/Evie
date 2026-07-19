.class public final synthetic Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$nis6193VtKGzZqPH4WTTeaiwmMM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final synthetic f$0:Lcom/google/android/gms/drive/MetadataBuffer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/drive/MetadataBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$nis6193VtKGzZqPH4WTTeaiwmMM;->f$0:Lcom/google/android/gms/drive/MetadataBuffer;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$nis6193VtKGzZqPH4WTTeaiwmMM;->f$0:Lcom/google/android/gms/drive/MetadataBuffer;

    invoke-static {v0, p1}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->lambda$handleAvailableRestoreData$8(Lcom/google/android/gms/drive/MetadataBuffer;Landroid/content/DialogInterface;)V

    return-void
.end method
