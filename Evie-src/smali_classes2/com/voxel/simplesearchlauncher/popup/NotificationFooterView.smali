.class public Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;
.super Landroid/widget/FrameLayout;
.source "NotificationFooterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView$IconAnimationEndListener;
    }
.end annotation


# static fields
.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mBackgroundColor:I

.field mIconLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mIconRow:Landroid/widget/LinearLayout;

.field private final mNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/notification/NotificationContent;",
            ">;"
        }
    .end annotation
.end field

.field private mOverflowEllipsis:Landroid/view/View;

.field private final mOverflowNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/notification/NotificationContent;",
            ">;"
        }
    .end annotation
.end field

.field private final mRtl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->sTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, v0}, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->mNotifications:Ljava/util/List;

    .line 61
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->mOverflowNotifications:Ljava/util/List;

    .line 80
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 81
    invoke-static {p1}, Lcom/voxel/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->mRtl:Z

    const p2, 0x7f0701a2

    .line 83
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 84
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->mIconLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 85
    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->mIconLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x10

    iput v0, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const p3, 0x7f0701a1

    .line 88
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    const v0, 0x7f07014d

    .line 89
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f07014e

    .line 90
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    const v1, 0x7f070080

    .line 91
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr p1, p3

    sub-int/2addr p1, v0

    mul-int/lit8 p2, p2, 0x5

    sub-int/2addr p1, p2

    .line 94
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->mIconLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    div-int/lit8 p1, p1, 0x5

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;Landroid/view/View;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->removeViewFromIconRow(Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;Landroid/view/View;)V

    return-void
.end method

.method private addNotificationIconForContent(Lcom/voxel/simplesearchlauncher/notification/NotificationContent;)Landroid/view/View;
    .locals 3

    .line 140
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 141
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->mBackgroundColor:I

    invoke-virtual {p1, v1, v2}, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;->getIconForBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 144
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 145
    invoke-virtual {v0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 146
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->mIconRow:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->mIconLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private removeViewFromIconRow(Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;Landroid/view/View;)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->mIconRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 205
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->mNotifications:Ljava/util/List;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 206
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->updateOverflowEllipsisVisibility()V

    .line 207
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->mIconRow:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->getHeight()I

    move-result p2

    .line 211
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 210
    invoke-virtual {p1, p2, v0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->reduceNotificationViewHeight(II)Landroid/animation/Animator;

    move-result-object p1

    .line 212
    new-instance p2, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView$2;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView$2;-><init>(Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 218
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method

.method private updateOverflowEllipsisVisibility()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->mOverflowEllipsis:Landroid/view/View;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->mOverflowNotifications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public addNotificationContent(Lcom/voxel/simplesearchlauncher/notification/NotificationContent;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->mNotifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->mNotifications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->mOverflowNotifications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public animateFirstNotificationTo(Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;Ljava/util/List;Landroid/graphics/Rect;Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView$IconAnimationEndListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/Rect;",
            "Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView$IconAnimationEndListener;",
            ")V"
        }
    .end annotation

    .line 154
    invoke-static {}, Lcom/voxel/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->mIconRow:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 159
    invoke-virtual {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->trimNotifications(Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;Ljava/util/List;)V

    return-void

    .line 163
    :cond_0
    sget-object p2, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->sTempRect:Landroid/graphics/Rect;

    .line 164
    invoke-virtual {v1, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 165
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 166
    new-instance v4, Lcom/voxel/launcher3/anim/PropertyListBuilder;

    invoke-direct {v4}, Lcom/voxel/launcher3/anim/PropertyListBuilder;-><init>()V

    .line 167
    invoke-virtual {v4, v2}, Lcom/voxel/launcher3/anim/PropertyListBuilder;->scale(F)Lcom/voxel/launcher3/anim/PropertyListBuilder;

    move-result-object v4

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, v5

    int-to-float p3, p3

    .line 168
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr v5, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v5, p2

    add-float/2addr p3, v5

    .line 167
    invoke-virtual {v4, p3}, Lcom/voxel/launcher3/anim/PropertyListBuilder;->translationY(F)Lcom/voxel/launcher3/anim/PropertyListBuilder;

    move-result-object p2

    .line 168
    invoke-virtual {p2}, Lcom/voxel/launcher3/anim/PropertyListBuilder;->build()[Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    .line 166
    invoke-static {v1, p2}, Lcom/voxel/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 169
    new-instance p3, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView$1;

    invoke-direct {p3, p0, p4, v1, p1}, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView$1;-><init>(Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView$IconAnimationEndListener;Landroid/view/View;Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 176
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 179
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->mIconLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->mIconLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result p2

    add-int/2addr p1, p2

    .line 180
    iget-boolean p2, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->mRtl:Z

    if-eqz p2, :cond_1

    neg-int p1, p1

    .line 183
    :cond_1
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->mOverflowNotifications:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_2

    .line 184
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->mOverflowNotifications:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;

    .line 185
    iget-object p4, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->mNotifications:Ljava/util/List;

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-direct {p0, p2}, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->addNotificationIconForContent(Lcom/voxel/simplesearchlauncher/notification/NotificationContent;)Landroid/view/View;

    move-result-object p2

    .line 187
    sget-object p4, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p2, p4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 189
    :cond_2
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->mIconRow:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    sub-int/2addr p2, v3

    .line 192
    new-instance p4, Lcom/voxel/launcher3/anim/PropertyResetListener;

    sget-object v1, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->TRANSLATION_X:Landroid/util/Property;

    const/4 v2, 0x0

    .line 193
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p4, v1, v2}, Lcom/voxel/launcher3/anim/PropertyResetListener;-><init>(Landroid/util/Property;Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_3

    .line 195
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->mIconRow:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 196
    sget-object v4, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->TRANSLATION_X:Landroid/util/Property;

    new-array v5, v3, [F

    int-to-float v6, p1

    aput v6, v5, p3

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 197
    invoke-virtual {v2, p4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 198
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    :cond_3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public commitNotificationContents()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->mIconRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 124
    :goto_0
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->mNotifications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->mNotifications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;

    .line 126
    invoke-direct {p0, v1}, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->addNotificationIconForContent(Lcom/voxel/simplesearchlauncher/notification/NotificationContent;)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->updateOverflowEllipsisVisibility()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 99
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a01e5

    .line 100
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->mOverflowEllipsis:Landroid/view/View;

    const v0, 0x7f0a0161

    .line 101
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->mIconRow:Landroid/widget/LinearLayout;

    .line 102
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    iput v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->mBackgroundColor:I

    return-void
.end method

.method public trimNotifications(Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 224
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->mIconRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->mOverflowNotifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 228
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 229
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;

    iget-object v1, v1, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;->notificationKey:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 230
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->mIconRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_4

    .line 234
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->mIconRow:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 235
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;

    .line 236
    iget-object v2, v2, Lcom/voxel/simplesearchlauncher/notification/NotificationContent;->notificationKey:Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 237
    invoke-direct {p0, p1, v1}, Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView;->removeViewFromIconRow(Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;Landroid/view/View;)V

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    :goto_2
    return-void
.end method
