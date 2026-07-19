.class public Lcom/voxel/launcher3/PageIndicator$PageMarkerResources;
.super Ljava/lang/Object;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/PageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageMarkerResources"
.end annotation


# instance fields
.field activeId:I

.field inactiveId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0800f9

    .line 49
    iput v0, p0, Lcom/voxel/launcher3/PageIndicator$PageMarkerResources;->activeId:I

    const v0, 0x7f0800fa

    .line 50
    iput v0, p0, Lcom/voxel/launcher3/PageIndicator$PageMarkerResources;->inactiveId:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/voxel/launcher3/PageIndicator$PageMarkerResources;->activeId:I

    .line 54
    iput p2, p0, Lcom/voxel/launcher3/PageIndicator$PageMarkerResources;->inactiveId:I

    return-void
.end method
