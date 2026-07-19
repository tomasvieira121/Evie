.class public Lcom/voxel/launcher3/PagedView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/PagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public isFullScreenPage:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 751
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 745
    iput-boolean p1, p0, Lcom/voxel/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 755
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 745
    iput-boolean p1, p0, Lcom/voxel/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 759
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 745
    iput-boolean p1, p0, Lcom/voxel/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    return-void
.end method
