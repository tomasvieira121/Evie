.class Lcom/voxel/launcher3/Launcher$13;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/Launcher;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/Launcher;)V
    .locals 0

    .line 2680
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher$13;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 2689
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$13;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object p1, p1, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->sendMotionEvent(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 2683
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$13;->this$0:Lcom/voxel/launcher3/Launcher;

    sget-object v0, Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;->NEG_SPACE:Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/voxel/launcher3/Launcher;->access$2800(Lcom/voxel/launcher3/Launcher;Lcom/voxel/launcher3/Launcher$SearchInteractionMethod;Z)V

    return v1
.end method
