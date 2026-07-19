.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$FolderIcon$Bguyuyr82PuqphXVAAbOfYxSkak;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/FolderIcon;

.field private final synthetic f$1:Z

.field private final synthetic f$2:F

.field private final synthetic f$3:Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;

.field private final synthetic f$4:F


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/FolderIcon;ZFLcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$FolderIcon$Bguyuyr82PuqphXVAAbOfYxSkak;->f$0:Lcom/voxel/launcher3/FolderIcon;

    iput-boolean p2, p0, Lcom/voxel/launcher3/-$$Lambda$FolderIcon$Bguyuyr82PuqphXVAAbOfYxSkak;->f$1:Z

    iput p3, p0, Lcom/voxel/launcher3/-$$Lambda$FolderIcon$Bguyuyr82PuqphXVAAbOfYxSkak;->f$2:F

    iput-object p4, p0, Lcom/voxel/launcher3/-$$Lambda$FolderIcon$Bguyuyr82PuqphXVAAbOfYxSkak;->f$3:Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;

    iput p5, p0, Lcom/voxel/launcher3/-$$Lambda$FolderIcon$Bguyuyr82PuqphXVAAbOfYxSkak;->f$4:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$FolderIcon$Bguyuyr82PuqphXVAAbOfYxSkak;->f$0:Lcom/voxel/launcher3/FolderIcon;

    iget-boolean v1, p0, Lcom/voxel/launcher3/-$$Lambda$FolderIcon$Bguyuyr82PuqphXVAAbOfYxSkak;->f$1:Z

    iget v2, p0, Lcom/voxel/launcher3/-$$Lambda$FolderIcon$Bguyuyr82PuqphXVAAbOfYxSkak;->f$2:F

    iget-object v3, p0, Lcom/voxel/launcher3/-$$Lambda$FolderIcon$Bguyuyr82PuqphXVAAbOfYxSkak;->f$3:Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;

    iget v4, p0, Lcom/voxel/launcher3/-$$Lambda$FolderIcon$Bguyuyr82PuqphXVAAbOfYxSkak;->f$4:F

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/voxel/launcher3/FolderIcon;->lambda$animateFirstItem$1(Lcom/voxel/launcher3/FolderIcon;ZFLcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;FLandroid/animation/ValueAnimator;)V

    return-void
.end method
