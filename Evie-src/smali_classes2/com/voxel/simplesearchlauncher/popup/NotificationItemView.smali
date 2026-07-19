.class public Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;
.super Landroid/widget/FrameLayout;
.source "NotificationItemView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private mBackgroundColor:I

.field private mNotificationContent:Lcom/voxel/simplesearchlauncher/notification/NotificationContent;

.field private mSwipeCallback:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;

.field mTextAndBackground:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTitleView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    new-instance p1, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView$1;

    invoke-direct {p1, p0}, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView$1;-><init>(Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->mSwipeCallback:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;)Lcom/voxel/simplesearchlauncher/notification/NotificationContent;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->mNotificationContent:Lcom/voxel/simplesearchlauncher/notification/NotificationContent;

    return-object p0
.end method


# virtual methods
.method public applyNotificationInfo(Lcom/voxel/simplesearchlauncher/notification/NotificationContent;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, p1, p2, v0}, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->applyNotificationInfo(Lcom/voxel/simplesearchlauncher/notification/NotificationContent;Landroid/view/View;Z)V

    return-void
.end method

.method public applyNotificationInfo(Lcom/voxel/simplesearchlauncher/notification/NotificationContent;Landroid/view/View;Z)V
    .locals 4

    .line 75
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->mNotificationContent:Lcom/voxel/simplesearchlauncher/notification/NotificationContent;

    .line 76
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->mNotificationContent:Lcom/voxel/simplesearchlauncher/notification/NotificationContent;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;->title:Ljava/lang/CharSequence;

    .line 77
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->mNotificationContent:Lcom/voxel/simplesearchlauncher/notification/NotificationContent;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;->text:Ljava/lang/CharSequence;

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 83
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->mTitleView:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object p1, v0

    :cond_1
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->mTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    :goto_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->mNotificationContent:Lcom/voxel/simplesearchlauncher/notification/NotificationContent;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->mBackgroundColor:I

    invoke-virtual {p1, v0, v1}, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;->getIconForBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->mNotificationContent:Lcom/voxel/simplesearchlauncher/notification/NotificationContent;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;->intent:Landroid/app/PendingIntent;

    const/4 p1, 0x0

    .line 92
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->setTranslationX(F)V

    .line 95
    new-instance p1, Lcom/voxel/launcher3/ItemInfo;

    invoke-direct {p1}, Lcom/voxel/launcher3/ItemInfo;-><init>()V

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->setTag(Ljava/lang/Object;)V

    if-eqz p3, :cond_2

    .line 97
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->mTextAndBackground:Landroid/view/ViewGroup;

    sget-object p2, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->ALPHA:Landroid/util/Property;

    new-array p3, v2, [F

    fill-array-data p3, :array_0

    invoke-static {p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 p2, 0x96

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getNotificationContent()Lcom/voxel/simplesearchlauncher/notification/NotificationContent;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->mNotificationContent:Lcom/voxel/simplesearchlauncher/notification/NotificationContent;

    return-object v0
.end method

.method public getSwipeHelperCallback()Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->mSwipeCallback:Lcom/voxel/simplesearchlauncher/popup/SwipeHelper$Callback;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 55
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 56
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 58
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->mTextAndBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .line 59
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    iput v1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->mBackgroundColor:I

    .line 60
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    .line 61
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x101042c

    invoke-static {v2, v3}, Lcom/voxel/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v2

    .line 60
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 63
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;->mTextAndBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
