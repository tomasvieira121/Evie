.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Folder$I5eS0Uira6uBjE3-q2P9pguPZT4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/voxel/launcher3/Workspace$ItemOperator;


# instance fields
.field private final synthetic f$0:Ljava/util/List;

.field private final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Folder$I5eS0Uira6uBjE3-q2P9pguPZT4;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$Folder$I5eS0Uira6uBjE3-q2P9pguPZT4;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final evaluate(Lcom/voxel/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Folder$I5eS0Uira6uBjE3-q2P9pguPZT4;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$Folder$I5eS0Uira6uBjE3-q2P9pguPZT4;->f$1:Ljava/util/Map;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/voxel/launcher3/Folder;->lambda$getItemsInReadingOrder$7(Ljava/util/List;Ljava/util/Map;Lcom/voxel/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
