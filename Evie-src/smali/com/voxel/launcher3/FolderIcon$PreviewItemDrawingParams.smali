.class public Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;
.super Ljava/lang/Object;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/FolderIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreviewItemDrawingParams"
.end annotation


# instance fields
.field public drawable:Landroid/graphics/drawable/Drawable;

.field public overlayAlpha:I

.field public scale:F

.field public transX:F

.field public transY:F


# direct methods
.method public constructor <init>(FFFI)V
    .locals 0

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    iput p1, p0, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->transX:F

    .line 651
    iput p2, p0, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->transY:F

    .line 652
    iput p3, p0, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->scale:F

    .line 653
    iput p4, p0, Lcom/voxel/launcher3/FolderIcon$PreviewItemDrawingParams;->overlayAlpha:I

    return-void
.end method
