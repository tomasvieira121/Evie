.class public Lcom/voxel/launcher3/LauncherAppWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "LauncherAppWidgetHostView.java"

# interfaces
.implements Lcom/voxel/launcher3/dragndrop/DragLayer$TouchCompleteListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDragLayer:Lcom/voxel/launcher3/dragndrop/DragLayer;

.field mInflater:Landroid/view/LayoutInflater;

.field private mLongPressHelper:Lcom/voxel/launcher3/CheckLongPressHelper;

.field private mPreviousOrientation:I

.field private mSlop:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object p1, p0, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->mContext:Landroid/content/Context;

    .line 52
    new-instance v0, Lcom/voxel/launcher3/CheckLongPressHelper;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/voxel/launcher3/CheckLongPressHelper;

    const-string v0, "layout_inflater"

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    .line 54
    check-cast p1, Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->mDragLayer:Lcom/voxel/launcher3/dragndrop/DragLayer;

    return-void
.end method

.method private checkForAdapterView(Landroid/view/View;)Z
    .locals 5

    .line 145
    instance-of v0, p1, Landroid/widget/AdapterView;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 147
    instance-of v0, p1, Landroid/widget/StackView;

    if-eqz v0, :cond_0

    return v1

    .line 151
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v1

    .line 156
    :cond_2
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 157
    check-cast p1, Landroid/view/ViewGroup;

    .line 158
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    .line 160
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 162
    invoke-direct {p0, v4}, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->checkForAdapterView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 1

    .line 181
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->cancelLongPress()V

    .line 182
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/voxel/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/voxel/launcher3/CheckLongPressHelper;->cancelLongPress()V

    return-void
.end method

.method checkForAdapterView()Z
    .locals 1

    .line 140
    invoke-direct {p0, p0}, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->checkForAdapterView(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public getDescendantFocusability()I
    .locals 1

    const/high16 v0, 0x60000

    return v0
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d002a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isReinflateRequired()Z
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 72
    iget v1, p0, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->mPreviousOrientation:I

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 135
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->onAttachedToWindow()V

    .line 136
    invoke-virtual {p0}, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->mSlop:F

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/voxel/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/voxel/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/voxel/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/voxel/launcher3/CheckLongPressHelper;->hasPerformedLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object p1, p0, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/voxel/launcher3/CheckLongPressHelper;

    invoke-virtual {p1}, Lcom/voxel/launcher3/CheckLongPressHelper;->cancelLongPress()V

    const/4 p1, 0x1

    return p1

    .line 93
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 106
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->mSlop:F

    invoke-static {p0, v0, p1, v1}, Lcom/voxel/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result p1

    if-nez p1, :cond_2

    .line 107
    iget-object p1, p0, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/voxel/launcher3/CheckLongPressHelper;

    invoke-virtual {p1}, Lcom/voxel/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 103
    :pswitch_1
    iget-object p1, p0, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/voxel/launcher3/CheckLongPressHelper;

    invoke-virtual {p1}, Lcom/voxel/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 95
    :pswitch_2
    iget-object p1, p0, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/voxel/launcher3/CheckLongPressHelper;

    invoke-virtual {p1}, Lcom/voxel/launcher3/CheckLongPressHelper;->postCheckForLongPress()V

    .line 96
    iget-object p1, p0, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->mDragLayer:Lcom/voxel/launcher3/dragndrop/DragLayer;

    invoke-virtual {p1, p0}, Lcom/voxel/launcher3/dragndrop/DragLayer;->setTouchCompleteListener(Lcom/voxel/launcher3/dragndrop/DragLayer$TouchCompleteListener;)V

    .line 97
    iget-object p1, p0, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p1, p0}, Lcom/voxel/launcher3/Launcher;->onTouchDownScrollingWidget(Lcom/voxel/launcher3/LauncherAppWidgetHostView;)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchComplete()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/voxel/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/voxel/launcher3/CheckLongPressHelper;->hasPerformedLongPress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/voxel/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/voxel/launcher3/CheckLongPressHelper;->cancelLongPress()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 125
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->mSlop:F

    invoke-static {p0, v0, p1, v1}, Lcom/voxel/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result p1

    if-nez p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/voxel/launcher3/CheckLongPressHelper;

    invoke-virtual {p1}, Lcom/voxel/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 122
    :pswitch_1
    iget-object p1, p0, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/voxel/launcher3/CheckLongPressHelper;

    invoke-virtual {p1}, Lcom/voxel/launcher3/CheckLongPressHelper;->cancelLongPress()V

    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->cancelLongPress()V

    .line 176
    :cond_0
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/voxel/launcher3/LauncherAppWidgetHostView;->mPreviousOrientation:I

    .line 66
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    return-void
.end method
