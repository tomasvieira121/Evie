.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Workspace$bF7UBqx2qrKRj8bDM1WWR7M5Sic;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/view/View;

.field private final synthetic f$1:Lcom/voxel/launcher3/CellLayout;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lcom/voxel/launcher3/CellLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$bF7UBqx2qrKRj8bDM1WWR7M5Sic;->f$0:Landroid/view/View;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$bF7UBqx2qrKRj8bDM1WWR7M5Sic;->f$1:Lcom/voxel/launcher3/CellLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$bF7UBqx2qrKRj8bDM1WWR7M5Sic;->f$0:Landroid/view/View;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$bF7UBqx2qrKRj8bDM1WWR7M5Sic;->f$1:Lcom/voxel/launcher3/CellLayout;

    invoke-static {v0, v1}, Lcom/voxel/launcher3/Workspace;->lambda$onDropCompleted$11(Landroid/view/View;Lcom/voxel/launcher3/CellLayout;)V

    return-void
.end method
