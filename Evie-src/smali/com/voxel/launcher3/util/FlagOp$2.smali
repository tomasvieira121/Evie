.class final Lcom/voxel/launcher3/util/FlagOp$2;
.super Lcom/voxel/launcher3/util/FlagOp;
.source "FlagOp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/util/FlagOp;->addFlag(I)Lcom/voxel/launcher3/util/FlagOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$flag:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/voxel/launcher3/util/FlagOp$2;->val$flag:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/voxel/launcher3/util/FlagOp;-><init>(Lcom/voxel/launcher3/util/FlagOp$1;)V

    return-void
.end method


# virtual methods
.method public apply(I)I
    .locals 1

    .line 17
    iget v0, p0, Lcom/voxel/launcher3/util/FlagOp$2;->val$flag:I

    or-int/2addr p1, v0

    return p1
.end method
