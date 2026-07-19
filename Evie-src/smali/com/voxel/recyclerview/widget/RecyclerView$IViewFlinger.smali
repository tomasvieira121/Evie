.class public interface abstract Lcom/voxel/recyclerview/widget/RecyclerView$IViewFlinger;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "IViewFlinger"
.end annotation


# virtual methods
.method public abstract fling(II)V
.end method

.method public abstract smoothScrollBy(II)V
.end method

.method public abstract smoothScrollBy(III)V
.end method

.method public abstract smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
.end method

.method public abstract stop()V
.end method
