.class public abstract Lcom/voxel/simplesearchlauncher/view/Slide;
.super Ljava/lang/Object;
.source "Slide.java"


# instance fields
.field protected final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/Slide;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public abstract getSlideEnteringAnimation(Lcom/voxel/simplesearchlauncher/view/SlideLayout;)Landroid/animation/AnimatorSet;
.end method

.method public abstract getSlideExitingAnimation(Lcom/voxel/simplesearchlauncher/view/SlideLayout;)Landroid/animation/AnimatorSet;
.end method

.method final getView()Landroid/view/View;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/Slide;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onEnteringSlide()V
    .locals 0

    return-void
.end method

.method public onExitingSlide()V
    .locals 0

    return-void
.end method
