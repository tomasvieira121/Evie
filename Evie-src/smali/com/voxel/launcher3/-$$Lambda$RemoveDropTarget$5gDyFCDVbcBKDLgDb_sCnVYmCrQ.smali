.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$5gDyFCDVbcBKDLgDb_sCnVYmCrQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# static fields
.field public static final synthetic INSTANCE:Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$5gDyFCDVbcBKDLgDb_sCnVYmCrQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$5gDyFCDVbcBKDLgDb_sCnVYmCrQ;

    invoke-direct {v0}, Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$5gDyFCDVbcBKDLgDb_sCnVYmCrQ;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$5gDyFCDVbcBKDLgDb_sCnVYmCrQ;->INSTANCE:Lcom/voxel/launcher3/-$$Lambda$RemoveDropTarget$5gDyFCDVbcBKDLgDb_sCnVYmCrQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 0

    invoke-static {p1}, Lcom/voxel/launcher3/RemoveDropTarget;->lambda$createFlingToTrashAnimatorListener$1(F)F

    move-result p1

    return p1
.end method
