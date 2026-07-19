.class Lcom/voxel/launcher3/Launcher$1BlurredImageTaskResult;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/Launcher;->refreshBlurredImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BlurredImageTaskResult"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field isLiveWallpaper:Z

.field final synthetic this$0:Lcom/voxel/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/Launcher;)V
    .locals 0

    .line 1137
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher$1BlurredImageTaskResult;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
