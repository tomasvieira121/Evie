.class public final synthetic Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$SwipeHelper$VQutKQTP-FHOuv7amW1vBhvF0ow;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;

.field private final synthetic f$1:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$SwipeHelper$VQutKQTP-FHOuv7amW1vBhvF0ow;->f$0:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$SwipeHelper$VQutKQTP-FHOuv7amW1vBhvF0ow;->f$1:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$SwipeHelper$VQutKQTP-FHOuv7amW1vBhvF0ow;->f$0:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$SwipeHelper$VQutKQTP-FHOuv7amW1vBhvF0ow;->f$1:Landroid/view/MotionEvent;

    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->lambda$onInterceptTouchEvent$0(Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;Landroid/view/MotionEvent;)V

    return-void
.end method
