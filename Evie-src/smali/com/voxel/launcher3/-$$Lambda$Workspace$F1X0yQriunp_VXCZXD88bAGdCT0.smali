.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Workspace$F1X0yQriunp_VXCZXD88bAGdCT0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/voxel/launcher3/Workspace$ItemOperator;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$F1X0yQriunp_VXCZXD88bAGdCT0;->f$0:I

    return-void
.end method


# virtual methods
.method public final evaluate(Lcom/voxel/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    iget v0, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$F1X0yQriunp_VXCZXD88bAGdCT0;->f$0:I

    invoke-static {v0, p1, p2, p3}, Lcom/voxel/launcher3/Workspace;->lambda$getWidgetForAppWidgetId$14(ILcom/voxel/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
