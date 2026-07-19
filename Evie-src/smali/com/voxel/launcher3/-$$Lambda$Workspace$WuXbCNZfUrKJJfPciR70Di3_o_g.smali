.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Workspace$WuXbCNZfUrKJJfPciR70Di3_o_g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Workspace;

.field private final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Workspace;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$WuXbCNZfUrKJJfPciR70Di3_o_g;->f$0:Lcom/voxel/launcher3/Workspace;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$WuXbCNZfUrKJJfPciR70Di3_o_g;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$WuXbCNZfUrKJJfPciR70Di3_o_g;->f$0:Lcom/voxel/launcher3/Workspace;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$WuXbCNZfUrKJJfPciR70Di3_o_g;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/voxel/launcher3/Workspace;->lambda$onDrop$5(Lcom/voxel/launcher3/Workspace;Ljava/lang/Runnable;)V

    return-void
.end method
