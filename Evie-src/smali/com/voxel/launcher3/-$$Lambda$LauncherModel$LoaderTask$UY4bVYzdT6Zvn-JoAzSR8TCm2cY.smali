.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$UY4bVYzdT6Zvn-JoAzSR8TCm2cY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$UY4bVYzdT6Zvn-JoAzSR8TCm2cY;->f$0:I

    iput p2, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$UY4bVYzdT6Zvn-JoAzSR8TCm2cY;->f$1:I

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget v0, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$UY4bVYzdT6Zvn-JoAzSR8TCm2cY;->f$0:I

    iget v1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$UY4bVYzdT6Zvn-JoAzSR8TCm2cY;->f$1:I

    check-cast p1, Lcom/voxel/launcher3/ItemInfo;

    check-cast p2, Lcom/voxel/launcher3/ItemInfo;

    invoke-static {v0, v1, p1, p2}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->lambda$sortWorkspaceItemsSpatially$2(IILcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/ItemInfo;)I

    move-result p1

    return p1
.end method
