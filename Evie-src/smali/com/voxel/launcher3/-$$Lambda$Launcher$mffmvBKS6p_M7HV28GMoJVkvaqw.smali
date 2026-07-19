.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Launcher$mffmvBKS6p_M7HV28GMoJVkvaqw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$mffmvBKS6p_M7HV28GMoJVkvaqw;->f$0:Lcom/voxel/launcher3/Launcher;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$mffmvBKS6p_M7HV28GMoJVkvaqw;->f$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0, p1, p2}, Lcom/voxel/launcher3/Launcher;->lambda$setupViews$17(Lcom/voxel/launcher3/Launcher;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
