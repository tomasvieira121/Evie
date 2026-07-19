.class public interface abstract Lcom/voxel/launcher3/FolderInfo$FolderListener;
.super Ljava/lang/Object;
.source "FolderInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/FolderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FolderListener"
.end annotation


# virtual methods
.method public abstract onAdd(Lcom/voxel/launcher3/ShortcutInfo;)V
.end method

.method public abstract onItemsChanged()V
.end method

.method public abstract onRemove(Lcom/voxel/launcher3/ShortcutInfo;)V
.end method

.method public abstract onTitleChanged(Ljava/lang/CharSequence;)V
.end method
