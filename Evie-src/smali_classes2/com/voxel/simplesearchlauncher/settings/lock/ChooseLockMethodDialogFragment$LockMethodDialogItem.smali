.class Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment$LockMethodDialogItem;
.super Ljava/lang/Object;
.source "ChooseLockMethodDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockMethodDialogItem"
.end annotation


# instance fields
.field id:I

.field methodDescription:I

.field methodName:I

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;III)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment$LockMethodDialogItem;->this$0:Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput p2, p0, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment$LockMethodDialogItem;->id:I

    .line 257
    iput p3, p0, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment$LockMethodDialogItem;->methodName:I

    .line 258
    iput p4, p0, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment$LockMethodDialogItem;->methodDescription:I

    return-void
.end method
