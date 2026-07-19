.class public Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;
.super Ljava/lang/Object;
.source "AppsInfoDataHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfo"
.end annotation


# instance fields
.field public activityName:Ljava/lang/String;

.field public appLabel:Ljava/lang/String;

.field public appVersion:I

.field public firstInstallTime:J

.field public hidden:Z

.field public icon:Landroid/graphics/Bitmap;

.field public labelOverride:Ljava/lang/String;

.field public opened:Z

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->hidden:Z

    .line 50
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->opened:Z

    return-void
.end method


# virtual methods
.method getContentValues()Landroid/content/ContentValues;
    .locals 4

    .line 70
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_ID"

    .line 71
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->activityName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "APP_LABEL"

    .line 72
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->appLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PACKAGE_NAME"

    .line 73
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ACTIVITY_NAME"

    .line 74
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "APP_VERSION"

    .line 75
    iget v2, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->appVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "hidden"

    .line 76
    iget-boolean v2, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->hidden:Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "icon"

    .line 77
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->icon:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v1, "first_install_time"

    .line 78
    iget-wide v2, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->firstInstallTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "opened"

    .line 79
    iget-boolean v2, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->opened:Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "label_override"

    .line 80
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->labelOverride:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppInfo{appLabel=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->appLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", activityName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appVersion="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->appVersion:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", hidden="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->hidden:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", icon="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", firstInstallTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->firstInstallTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", opened="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->opened:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", labelOverride=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->labelOverride:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
