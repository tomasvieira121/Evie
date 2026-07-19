.class public Lcom/evie/sidescreen/util/ForwardingItemTouchListener;
.super Ljava/lang/Object;
.source "ForwardingItemTouchListener.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# instance fields
.field private mForwardAll:Z

.field private final mForwardIndex:I

.field private mIntercepting:Z

.field private mShouldCancel:Z

.field private final mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IZ)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/evie/sidescreen/util/ForwardingItemTouchListener;->mShouldCancel:Z

    .line 13
    iput-boolean v0, p0, Lcom/evie/sidescreen/util/ForwardingItemTouchListener;->mIntercepting:Z

    .line 14
    iput-boolean v0, p0, Lcom/evie/sidescreen/util/ForwardingItemTouchListener;->mForwardAll:Z

    .line 17
    iput-object p1, p0, Lcom/evie/sidescreen/util/ForwardingItemTouchListener;->mTargetView:Landroid/view/View;

    .line 18
    iput p2, p0, Lcom/evie/sidescreen/util/ForwardingItemTouchListener;->mForwardIndex:I

    .line 19
    iput-boolean p3, p0, Lcom/evie/sidescreen/util/ForwardingItemTouchListener;->mForwardAll:Z

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 25
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    .line 30
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 31
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 33
    iget v3, p0, Lcom/evie/sidescreen/util/ForwardingItemTouchListener;->mForwardIndex:I

    if-ne v0, v3, :cond_1

    .line 34
    iput-boolean v2, p0, Lcom/evie/sidescreen/util/ForwardingItemTouchListener;->mIntercepting:Z

    goto :goto_0

    .line 36
    :cond_1
    iput-boolean v1, p0, Lcom/evie/sidescreen/util/ForwardingItemTouchListener;->mIntercepting:Z

    .line 40
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/evie/sidescreen/util/ForwardingItemTouchListener;->mIntercepting:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/evie/sidescreen/util/ForwardingItemTouchListener;->mForwardAll:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    if-nez p1, :cond_4

    .line 41
    :cond_3
    iget-object p1, p0, Lcom/evie/sidescreen/util/ForwardingItemTouchListener;->mTargetView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 42
    iput-boolean v2, p0, Lcom/evie/sidescreen/util/ForwardingItemTouchListener;->mShouldCancel:Z

    goto :goto_1

    .line 43
    :cond_4
    iget-boolean p1, p0, Lcom/evie/sidescreen/util/ForwardingItemTouchListener;->mShouldCancel:Z

    if-eqz p1, :cond_5

    .line 44
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 45
    iget-object v0, p0, Lcom/evie/sidescreen/util/ForwardingItemTouchListener;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 46
    iput-boolean v1, p0, Lcom/evie/sidescreen/util/ForwardingItemTouchListener;->mShouldCancel:Z

    .line 49
    :cond_5
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v2, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_7

    .line 50
    :cond_6
    iput-boolean v1, p0, Lcom/evie/sidescreen/util/ForwardingItemTouchListener;->mIntercepting:Z

    .line 51
    iput-boolean v1, p0, Lcom/evie/sidescreen/util/ForwardingItemTouchListener;->mShouldCancel:Z

    .line 53
    :cond_7
    iget-boolean p1, p0, Lcom/evie/sidescreen/util/ForwardingItemTouchListener;->mIntercepting:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/evie/sidescreen/util/ForwardingItemTouchListener;->mForwardAll:Z

    if-eqz p1, :cond_8

    const/4 v1, 0x1

    :cond_8
    return v1

    .line 26
    :cond_9
    :goto_2
    iput-boolean v1, p0, Lcom/evie/sidescreen/util/ForwardingItemTouchListener;->mIntercepting:Z

    return v1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/evie/sidescreen/util/ForwardingItemTouchListener;->mTargetView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method
