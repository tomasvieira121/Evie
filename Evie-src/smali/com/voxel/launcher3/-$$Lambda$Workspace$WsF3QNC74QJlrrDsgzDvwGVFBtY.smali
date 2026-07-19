.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Workspace$WsF3QNC74QJlrrDsgzDvwGVFBtY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Workspace;

.field private final synthetic f$1:Lcom/voxel/launcher3/CellLayout;

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Workspace;Lcom/voxel/launcher3/CellLayout;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$WsF3QNC74QJlrrDsgzDvwGVFBtY;->f$0:Lcom/voxel/launcher3/Workspace;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$WsF3QNC74QJlrrDsgzDvwGVFBtY;->f$1:Lcom/voxel/launcher3/CellLayout;

    iput-boolean p3, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$WsF3QNC74QJlrrDsgzDvwGVFBtY;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$WsF3QNC74QJlrrDsgzDvwGVFBtY;->f$0:Lcom/voxel/launcher3/Workspace;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$WsF3QNC74QJlrrDsgzDvwGVFBtY;->f$1:Lcom/voxel/launcher3/CellLayout;

    iget-boolean v2, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$WsF3QNC74QJlrrDsgzDvwGVFBtY;->f$2:Z

    invoke-static {v0, v1, v2}, Lcom/voxel/launcher3/Workspace;->lambda$fadeAndRemoveEmptyScreen$1(Lcom/voxel/launcher3/Workspace;Lcom/voxel/launcher3/CellLayout;Z)V

    return-void
.end method
