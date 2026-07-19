.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Launcher$ajMcfR8mNeR3-PIGktfzBKgWqes;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final synthetic f$0:Landroidx/core/view/GestureDetectorCompat;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/GestureDetectorCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$ajMcfR8mNeR3-PIGktfzBKgWqes;->f$0:Landroidx/core/view/GestureDetectorCompat;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$ajMcfR8mNeR3-PIGktfzBKgWqes;->f$0:Landroidx/core/view/GestureDetectorCompat;

    invoke-static {v0, p1, p2}, Lcom/voxel/launcher3/Launcher;->lambda$setupViews$19(Landroidx/core/view/GestureDetectorCompat;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
