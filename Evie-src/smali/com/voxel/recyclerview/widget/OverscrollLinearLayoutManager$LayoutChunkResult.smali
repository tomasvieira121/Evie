.class public Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutChunkResult;
.super Ljava/lang/Object;
.source "OverscrollLinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LayoutChunkResult"
.end annotation


# instance fields
.field public mConsumed:I

.field public mFinished:Z

.field public mFocusable:Z

.field public mIgnoreConsumed:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 2077
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method resetInternal()V
    .locals 1

    const/4 v0, 0x0

    .line 2084
    iput v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 2085
    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 2086
    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 2087
    iput-boolean v0, p0, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    return-void
.end method
