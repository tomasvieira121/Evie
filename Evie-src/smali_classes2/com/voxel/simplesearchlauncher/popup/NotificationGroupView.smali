.class public Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;
.super Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;
.source "NotificationGroupView.java"


# static fields
.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mAnimatingNextIcon:Z

.field mFooter:Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mHeaderCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mIconView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mItemView:Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mNotificationHeaderTextColor:I

.field private mSwipeHelper:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->sTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 39
    iput p1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mNotificationHeaderTextColor:I

    return-void
.end method

.method public static synthetic lambda$trimNotifications$0(Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;Lcom/voxel/simplesearchlauncher/notification/NotificationContent;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mItemView:Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mIconView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->applyNotificationInfo(Lcom/voxel/simplesearchlauncher/notification/NotificationContent;Landroid/view/View;Z)V

    .line 124
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mItemView:Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->setVisibility(I)V

    .line 126
    :cond_0
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mAnimatingNextIcon:Z

    return-void
.end method


# virtual methods
.method public animateHeightRemoval(I)Landroid/animation/Animator;
    .locals 3

    .line 73
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->getHeight()I

    move-result v0

    sub-int/2addr v0, p1

    .line 74
    new-instance p1, Lcom/voxel/launcher3/anim/PillHeightRevealOutlineProvider;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mPillRect:Landroid/graphics/Rect;

    .line 75
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->getBackgroundRadius()F

    move-result v2

    invoke-direct {p1, v1, v2, v0}, Lcom/voxel/launcher3/anim/PillHeightRevealOutlineProvider;-><init>(Landroid/graphics/Rect;FI)V

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/voxel/launcher3/anim/PillHeightRevealOutlineProvider;->createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object p1

    return-object p1
.end method

.method public applyNotificationContents(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/notification/NotificationContent;",
            ">;I)V"
        }
    .end annotation

    .line 95
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 99
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;

    .line 100
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mItemView:Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mIconView:Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->applyNotificationInfo(Lcom/voxel/simplesearchlauncher/notification/NotificationContent;Landroid/view/View;)V

    const/4 v0, 0x1

    .line 102
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mFooter:Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;

    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->addNotificationContent(Lcom/voxel/simplesearchlauncher/notification/NotificationContent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_1
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mFooter:Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->commitNotificationContents()V

    const/4 p1, 0x0

    .line 107
    invoke-virtual {p0, p2, p1}, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->updateHeader(ILcom/voxel/launcher3/graphics/IconPalette;)V

    return-void
.end method

.method public createCloseAnimation(ZZJ)Landroid/animation/Animator;
    .locals 6

    .line 167
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mIconView:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-super/range {v0 .. v5}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->createZoomCloseAnimation(Landroid/view/View;ZZJ)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public createOpenAnimation(ZZ)Landroid/animation/Animator;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mIconView:Landroid/view/View;

    invoke-super {p0, v0, p1, p2}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->createZoomOpenAnimation(Landroid/view/View;ZZ)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public getArrowColor(Z)I
    .locals 1

    .line 172
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_0

    const p1, 0x7f0600dd

    goto :goto_0

    :cond_0
    const p1, 0x7f0600de

    :goto_0
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getHeightMinusFooter()I
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mFooter:Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mFooter:Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->getHeight()I

    move-result v0

    .line 69
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method public getMainItemView()Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mItemView:Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 57
    invoke-super {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->onFinishInflate()V

    .line 58
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 59
    new-instance v0, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mItemView:Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->getSwipeHelperCallback()Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;

    move-result-object v1

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;-><init>(ILcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mSwipeHelper:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;

    .line 60
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mSwipeHelper:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->setDisableHardwareLayers(Z)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mItemView:Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->getNotificationContent()Lcom/voxel/simplesearchlauncher/notification/NotificationContent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 140
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mSwipeHelper:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mItemView:Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->getNotificationContent()Lcom/voxel/simplesearchlauncher/notification/NotificationContent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mSwipeHelper:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/popup/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public setFooterVisibility(I)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mFooter:Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->setVisibility(I)V

    return-void
.end method

.method public declared-synchronized trimNotifications(Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mItemView:Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;

    .line 112
    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->getNotificationContent()Lcom/voxel/simplesearchlauncher/notification/NotificationContent;

    move-result-object v0

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;->notificationKey:Ljava/lang/String;

    .line 111
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 113
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mAnimatingNextIcon:Z

    if-nez v0, :cond_0

    .line 115
    iput-boolean v1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mAnimatingNextIcon:Z

    .line 116
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mItemView:Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mItemView:Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->setTranslationX(F)V

    .line 118
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mIconView:Landroid/view/View;

    sget-object v1, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0, p3, v0}, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->updateHeader(ILcom/voxel/launcher3/graphics/IconPalette;)V

    .line 120
    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mFooter:Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;

    sget-object v0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->sTempRect:Landroid/graphics/Rect;

    new-instance v1, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$NotificationGroupView$YhAr-bPktD9_TR3ogcWzdkMFEfA;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$NotificationGroupView$YhAr-bPktD9_TR3ogcWzdkMFEfA;-><init>(Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;)V

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->animateFirstNotificationTo(Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;Ljava/util/List;Landroid/graphics/Rect;Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView$IconAnimationEndListener;)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mFooter:Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;

    invoke-virtual {p3, p1, p2}, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->trimNotifications(Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateHeader(ILcom/voxel/launcher3/graphics/IconPalette;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mHeaderCount:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_2

    .line 81
    iget p1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mNotificationHeaderTextColor:I

    if-nez p1, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p2, p2, Lcom/voxel/launcher3/graphics/IconPalette;->dominantColor:I

    .line 84
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 83
    invoke-static {p1, p2, v0}, Lcom/voxel/launcher3/graphics/IconPalette;->resolveContrastColor(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mNotificationHeaderTextColor:I

    .line 86
    :cond_1
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mHeaderCount:Landroid/widget/TextView;

    iget p2, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->mNotificationHeaderTextColor:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void
.end method
