.class public Lcom/voxel/simplesearchlauncher/utils/MaterialColorMapUtils$MaterialPalette;
.super Ljava/lang/Object;
.source "MaterialColorMapUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/utils/MaterialColorMapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MaterialPalette"
.end annotation


# instance fields
.field public final mPrimaryColor:I

.field public final mSecondaryColor:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/voxel/simplesearchlauncher/utils/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    .line 40
    iput p2, p0, Lcom/voxel/simplesearchlauncher/utils/MaterialColorMapUtils$MaterialPalette;->mSecondaryColor:I

    return-void
.end method
