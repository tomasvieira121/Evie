.class public final synthetic Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$yE6gIGNlZC5tTt8i_UIoJ1UkDrs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final synthetic f$0:Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;

.field private final synthetic f$1:Landroidx/appcompat/app/AlertDialog;

.field private final synthetic f$2:[Lcom/google/android/gms/drive/Metadata;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;Landroidx/appcompat/app/AlertDialog;[Lcom/google/android/gms/drive/Metadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$yE6gIGNlZC5tTt8i_UIoJ1UkDrs;->f$0:Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$yE6gIGNlZC5tTt8i_UIoJ1UkDrs;->f$1:Landroidx/appcompat/app/AlertDialog;

    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$yE6gIGNlZC5tTt8i_UIoJ1UkDrs;->f$2:[Lcom/google/android/gms/drive/Metadata;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$yE6gIGNlZC5tTt8i_UIoJ1UkDrs;->f$0:Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$yE6gIGNlZC5tTt8i_UIoJ1UkDrs;->f$1:Landroidx/appcompat/app/AlertDialog;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$BackupRestoreSettingsFragment$yE6gIGNlZC5tTt8i_UIoJ1UkDrs;->f$2:[Lcom/google/android/gms/drive/Metadata;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;->lambda$handleAvailableRestoreData$10(Lcom/voxel/simplesearchlauncher/settings/BackupRestoreSettingsFragment;Landroidx/appcompat/app/AlertDialog;[Lcom/google/android/gms/drive/Metadata;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
