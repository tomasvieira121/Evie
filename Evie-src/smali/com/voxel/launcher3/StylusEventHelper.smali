.class public Lcom/voxel/launcher3/StylusEventHelper;
.super Ljava/lang/Object;
.source "StylusEventHelper.java"


# instance fields
.field private mIsButtonPressed:Z

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/voxel/launcher3/StylusEventHelper;->mView:Landroid/view/View;

    return-void
.end method

.method private static isStylusButtonPressed(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 79
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p0

    and-int/2addr p0, v2

    if-ne p0, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public checkAndPerformStylusEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 29
    iget-object v0, p0, Lcom/voxel/launcher3/StylusEventHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    .line 31
    iget-object v1, p0, Lcom/voxel/launcher3/StylusEventHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isLongClickable()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 36
    :cond_0
    invoke-static {p1}, Lcom/voxel/launcher3/StylusEventHelper;->isStylusButtonPressed(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 46
    :pswitch_0
    iget-object v3, p0, Lcom/voxel/launcher3/StylusEventHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v3, v5, p1, v0}, Lcom/voxel/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 47
    iget-boolean p1, p0, Lcom/voxel/launcher3/StylusEventHelper;->mIsButtonPressed:Z

    if-nez p1, :cond_1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/voxel/launcher3/StylusEventHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performLongClick()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 48
    iput-boolean v4, p0, Lcom/voxel/launcher3/StylusEventHelper;->mIsButtonPressed:Z

    return v4

    .line 50
    :cond_1
    iget-boolean p1, p0, Lcom/voxel/launcher3/StylusEventHelper;->mIsButtonPressed:Z

    if-eqz p1, :cond_2

    if-nez v1, :cond_2

    .line 51
    iput-boolean v2, p0, Lcom/voxel/launcher3/StylusEventHelper;->mIsButtonPressed:Z

    goto :goto_0

    .line 57
    :pswitch_1
    iput-boolean v2, p0, Lcom/voxel/launcher3/StylusEventHelper;->mIsButtonPressed:Z

    goto :goto_0

    .line 39
    :pswitch_2
    iput-boolean v2, p0, Lcom/voxel/launcher3/StylusEventHelper;->mIsButtonPressed:Z

    if-eqz v1, :cond_2

    .line 40
    iget-object p1, p0, Lcom/voxel/launcher3/StylusEventHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performLongClick()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 41
    iput-boolean v4, p0, Lcom/voxel/launcher3/StylusEventHelper;->mIsButtonPressed:Z

    return v4

    :cond_2
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
