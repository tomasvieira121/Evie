.class interface abstract Lcom/voxel/recyclerview/widget/AdapterHelper$Callback;
.super Ljava/lang/Object;
.source "AdapterHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/recyclerview/widget/AdapterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callback"
.end annotation


# virtual methods
.method public abstract findViewHolder(I)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;
.end method

.method public abstract markViewHoldersUpdated(II)V
.end method

.method public abstract offsetPositionsForAdd(II)V
.end method

.method public abstract offsetPositionsForMove(II)V
.end method

.method public abstract offsetPositionsForRemovingInvisible(II)V
.end method

.method public abstract offsetPositionsForRemovingLaidOutOrNewView(II)V
.end method

.method public abstract onDispatchFirstPass(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V
.end method

.method public abstract onDispatchSecondPass(Lcom/voxel/recyclerview/widget/AdapterHelper$UpdateOp;)V
.end method
