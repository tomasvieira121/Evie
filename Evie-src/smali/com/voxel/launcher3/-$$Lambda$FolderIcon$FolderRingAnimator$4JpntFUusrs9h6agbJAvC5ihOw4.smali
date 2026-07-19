.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$FolderIcon$FolderRingAnimator$4JpntFUusrs9h6agbJAvC5ihOw4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$FolderIcon$FolderRingAnimator$4JpntFUusrs9h6agbJAvC5ihOw4;->f$0:Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;

    iput p2, p0, Lcom/voxel/launcher3/-$$Lambda$FolderIcon$FolderRingAnimator$4JpntFUusrs9h6agbJAvC5ihOw4;->f$1:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$FolderIcon$FolderRingAnimator$4JpntFUusrs9h6agbJAvC5ihOw4;->f$0:Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;

    iget v1, p0, Lcom/voxel/launcher3/-$$Lambda$FolderIcon$FolderRingAnimator$4JpntFUusrs9h6agbJAvC5ihOw4;->f$1:I

    invoke-static {v0, v1, p1}, Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;->lambda$animateToAcceptState$0(Lcom/voxel/launcher3/FolderIcon$FolderRingAnimator;ILandroid/animation/ValueAnimator;)V

    return-void
.end method
