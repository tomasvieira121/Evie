.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Folder$hMYExIYs_fTp1q9Ov38CJ4z5HBE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/voxel/launcher3/Workspace$ItemOperator;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Folder;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Folder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Folder$hMYExIYs_fTp1q9Ov38CJ4z5HBE;->f$0:Lcom/voxel/launcher3/Folder;

    return-void
.end method


# virtual methods
.method public final evaluate(Lcom/voxel/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Folder$hMYExIYs_fTp1q9Ov38CJ4z5HBE;->f$0:Lcom/voxel/launcher3/Folder;

    invoke-static {v0, p1, p2, p3}, Lcom/voxel/launcher3/Folder;->lambda$getItemsInReadingOrder$8(Lcom/voxel/launcher3/Folder;Lcom/voxel/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
