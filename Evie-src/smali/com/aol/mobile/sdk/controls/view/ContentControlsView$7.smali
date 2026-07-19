.class Lcom/aol/mobile/sdk/controls/view/ContentControlsView$7;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/controls/view/ContentControlsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)V
    .locals 0

    iput-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$7;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$7;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {p1}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->a(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/ContentControls$Listener;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$7;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {p1}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->a(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/ContentControls$Listener;

    move-result-object p1

    invoke-interface {p1, p3, p4}, Lcom/aol/mobile/sdk/controls/ContentControls$Listener;->onScroll(FF)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$7;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {p1}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->a(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/ContentControls$Listener;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$7;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {p1}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->b(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/controls/c;->c()V

    const/4 p1, 0x1

    return p1
.end method
