.class public final synthetic Lcom/voxel/simplesearchlauncher/settings/lock/-$$Lambda$ChooseLockMethodDialogFragment$UnjA1DAifX3_AWjZHN0cLR-2RSk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final synthetic f$0:Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;

.field private final synthetic f$1:Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment$LockMethodDialogAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment$LockMethodDialogAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/lock/-$$Lambda$ChooseLockMethodDialogFragment$UnjA1DAifX3_AWjZHN0cLR-2RSk;->f$0:Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/lock/-$$Lambda$ChooseLockMethodDialogFragment$UnjA1DAifX3_AWjZHN0cLR-2RSk;->f$1:Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment$LockMethodDialogAdapter;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/lock/-$$Lambda$ChooseLockMethodDialogFragment$UnjA1DAifX3_AWjZHN0cLR-2RSk;->f$0:Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/lock/-$$Lambda$ChooseLockMethodDialogFragment$UnjA1DAifX3_AWjZHN0cLR-2RSk;->f$1:Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment$LockMethodDialogAdapter;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;->lambda$onCreateDialog$0(Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment;Lcom/voxel/simplesearchlauncher/settings/lock/ChooseLockMethodDialogFragment$LockMethodDialogAdapter;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
