.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Workspace$zV5yGOHv9A4eOQvWqaaQp6efGsA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Workspace;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Workspace;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$zV5yGOHv9A4eOQvWqaaQp6efGsA;->f$0:Lcom/voxel/launcher3/Workspace;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$zV5yGOHv9A4eOQvWqaaQp6efGsA;->f$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {v0}, Lcom/voxel/launcher3/Workspace;->lambda$onDropExternal$7(Lcom/voxel/launcher3/Workspace;)V

    return-void
.end method
