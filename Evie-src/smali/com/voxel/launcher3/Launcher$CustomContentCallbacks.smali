.class public interface abstract Lcom/voxel/launcher3/Launcher$CustomContentCallbacks;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CustomContentCallbacks"
.end annotation


# virtual methods
.method public abstract isScrollingAllowed()Z
.end method

.method public abstract onCustomContentScrollProgressChanged(FF)V
.end method

.method public abstract onHide()V
.end method

.method public abstract onShow(Z)V
.end method

.method public abstract shouldIncludeInWallpaperScroll()Z
.end method
