.class public Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView;
.super Lcom/voxel/recyclerview/widget/SpringRecyclerView;
.source "NoItemClickRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView$OnNoItemClickListener;
    }
.end annotation


# instance fields
.field private gestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field private isTouchDownEmptyRegion:Z

.field private mOnNoItemClickListener:Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView$OnNoItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView;->isTouchDownEmptyRegion:Z

    .line 30
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView;)Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView;->isTouchDownEmptyRegion:Z

    return p0
.end method

.method static synthetic access$100(Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView;)Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView$OnNoItemClickListener;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView;->mOnNoItemClickListener:Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView$OnNoItemClickListener;

    return-object p0
.end method

.method private initialize()V
    .locals 3

    .line 39
    new-instance v0, Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView$1;

    invoke-direct {v2, p0}, Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView$1;-><init>(Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView;)V

    invoke-direct {v0, v1, v2}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView;->isTouchDownEmptyRegion:Z

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 59
    invoke-super {p0, p1}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnNoItemClickListener(Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView$OnNoItemClickListener;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView;->mOnNoItemClickListener:Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView$OnNoItemClickListener;

    return-void
.end method
