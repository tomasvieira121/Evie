.class Lcom/voxel/launcher3/FragmentHelper$PendingPopFragmentInfo;
.super Ljava/lang/Object;
.source "FragmentHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/FragmentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingPopFragmentInfo"
.end annotation


# instance fields
.field animate:Z

.field fragment:Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;

.field final synthetic this$0:Lcom/voxel/launcher3/FragmentHelper;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/FragmentHelper;Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;Z)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/voxel/launcher3/FragmentHelper$PendingPopFragmentInfo;->this$0:Lcom/voxel/launcher3/FragmentHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/voxel/launcher3/FragmentHelper$PendingPopFragmentInfo;->fragment:Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;

    .line 34
    iput-boolean p3, p0, Lcom/voxel/launcher3/FragmentHelper$PendingPopFragmentInfo;->animate:Z

    return-void
.end method
