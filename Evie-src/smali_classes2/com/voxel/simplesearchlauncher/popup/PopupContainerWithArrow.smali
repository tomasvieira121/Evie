.class public Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;
.super Landroid/widget/LinearLayout;
.source "PopupContainerWithArrow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$ActionHandler;
    }
.end annotation


# instance fields
.field private mActionHandler:Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$ActionHandler;

.field private mArrow:Landroid/view/View;

.field private mArrowOffset:F

.field protected mIsAboveIcon:Z

.field private mIsLeftAligned:Z

.field private mIsRtl:Z

.field mNotificationGroupView:Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;

.field protected mOpenCloseAnimator:Landroid/animation/Animator;

.field private mReduceHeightAnimatorSet:Landroid/animation/AnimatorSet;

.field mShortcutsGroupView:Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2, v0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mTempRect:Landroid/graphics/Rect;

    .line 84
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/voxel/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsRtl:Z

    return-void
.end method

.method static synthetic access$002(Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mReduceHeightAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private addArrowView(IIII)Landroid/view/View;
    .locals 3

    .line 270
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 271
    iget-boolean v1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    .line 272
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 273
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    .line 275
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 276
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 278
    :goto_0
    iget-boolean p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-eqz p1, :cond_1

    .line 279
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 281
    :cond_1
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 284
    :goto_1
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 285
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-static {p2}, Landroid/view/Gravity;->isVertical(I)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    const/4 p2, 0x4

    .line 288
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 290
    :cond_2
    new-instance p2, Landroid/graphics/drawable/ShapeDrawable;

    int-to-float p3, p3

    int-to-float p4, p4

    iget-boolean v2, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-static {p3, p4, v2}, Lcom/voxel/launcher3/graphics/TriangleShape;->create(FFZ)Lcom/voxel/launcher3/graphics/TriangleShape;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 292
    invoke-virtual {p2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p3

    .line 295
    iget-boolean p4, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-eqz p4, :cond_3

    .line 296
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getChildCount()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    goto :goto_2

    :cond_3
    const/4 p4, 0x0

    :goto_2
    invoke-virtual {p0, p4}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;

    .line 297
    iget-boolean v2, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    invoke-virtual {p4, v2}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->getArrowColor(Z)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 299
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v2, 0x7f0701be

    invoke-virtual {p4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 300
    new-instance v2, Landroid/graphics/CornerPathEffect;

    int-to-float p4, p4

    invoke-direct {v2, p4}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 301
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 302
    sget-boolean p2, Lcom/voxel/launcher3/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz p2, :cond_4

    .line 303
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getElevation()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    .line 306
    :cond_4
    :goto_3
    iget-boolean p2, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getChildCount()I

    move-result v1

    :cond_5
    invoke-virtual {p0, p1, v1, v0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method private addDummyViews(Ljava/util/List;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;",
            ">;I)V"
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701c7

    .line 131
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 132
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 134
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_7

    .line 136
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;

    add-int/lit8 v6, v2, -0x1

    const/4 v7, 0x0

    if-ge v4, v6, :cond_0

    add-int/lit8 v6, v4, 0x1

    .line 137
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;

    goto :goto_1

    :cond_0
    move-object v6, v7

    .line 141
    :goto_1
    sget-object v8, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;->NOTIFICATION:Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;

    const/4 v9, 0x1

    if-ne v5, v8, :cond_2

    const v7, 0x7f0d0087

    .line 142
    invoke-virtual {v1, v7, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;

    iput-object v7, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mNotificationGroupView:Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;

    .line 143
    iget-object v7, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mNotificationGroupView:Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;

    invoke-virtual {p0, v7}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->addView(Landroid/view/View;)V

    .line 144
    iget-object v7, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mNotificationGroupView:Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;

    if-ne p2, v9, :cond_1

    const/16 v8, 0x8

    .line 146
    invoke-virtual {v7, v8}, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->setFooterVisibility(I)V

    .line 148
    :cond_1
    iget-object v8, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mActionHandler:Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$ActionHandler;

    iget-object v10, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mNotificationGroupView:Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;

    invoke-virtual {v10}, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->getMainItemView()Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;

    move-result-object v10

    invoke-interface {v8, v10}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$ActionHandler;->registerNotificationActions(Lcom/voxel/simplesearchlauncher/popup/NotificationItemView;)V

    goto :goto_2

    .line 149
    :cond_2
    iget-boolean v8, v5, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;->isShortcut:Z

    if-eqz v8, :cond_4

    .line 150
    iget-object v7, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mShortcutsGroupView:Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;

    if-nez v7, :cond_3

    const v7, 0x7f0d0089

    .line 151
    invoke-virtual {v1, v7, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;

    iput-object v7, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mShortcutsGroupView:Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;

    .line 152
    iget-object v7, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mShortcutsGroupView:Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;

    invoke-virtual {p0, v7}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->addView(Landroid/view/View;)V

    .line 154
    :cond_3
    iget-object v7, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mShortcutsGroupView:Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;

    .line 155
    iget v8, v5, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;->layoutId:I

    invoke-virtual {v1, v8, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 156
    iget-object v10, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mShortcutsGroupView:Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;

    invoke-virtual {v10, v8, v5}, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;->addShortcutView(Landroid/view/View;Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;)V

    .line 157
    iget-object v10, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mActionHandler:Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$ActionHandler;

    invoke-interface {v10, v8}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$ActionHandler;->registerShortcutActions(Landroid/view/View;)V

    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    .line 160
    iget-boolean v5, v5, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;->isShortcut:Z

    iget-boolean v6, v6, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;->isShortcut:Z

    xor-int/2addr v5, v6

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    :goto_3
    if-eqz v7, :cond_6

    if-eqz v9, :cond_6

    .line 165
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private animateOpen()V
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 311
    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->setVisibility(I)V

    .line 313
    invoke-static {}, Lcom/voxel/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getItemCount()I

    move-result v3

    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0016

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0013

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    sub-long v8, v4, v6

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0017

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    int-to-long v10, v10

    .line 323
    new-instance v12, Lcom/voxel/launcher3/LogAccelerateInterpolator;

    const/16 v13, 0x64

    invoke-direct {v12, v13, v1}, Lcom/voxel/launcher3/LogAccelerateInterpolator;-><init>(II)V

    .line 326
    new-instance v13, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v13}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    const/4 v14, 0x0

    :goto_0
    const/4 v1, 0x0

    if-ge v14, v3, :cond_1

    .line 328
    invoke-virtual {v0, v14}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getItemViewAt(I)Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;

    move-result-object v15

    move-wide/from16 v16, v6

    const/4 v6, 0x4

    .line 329
    invoke-virtual {v15, v6}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->setVisibility(I)V

    .line 330
    invoke-virtual {v15, v1}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->setAlpha(F)V

    .line 332
    iget-boolean v1, v0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    iget-boolean v6, v0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    invoke-virtual {v15, v1, v6}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->createOpenAnimation(ZZ)Landroid/animation/Animator;

    move-result-object v1

    .line 333
    new-instance v6, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$2;

    invoke-direct {v6, v0, v15}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$2;-><init>(Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;)V

    invoke-virtual {v1, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 339
    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 340
    iget-boolean v6, v0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    sub-int v6, v3, v14

    sub-int/2addr v6, v7

    move-wide/from16 v18, v8

    goto :goto_1

    :cond_0
    move-wide/from16 v18, v8

    move v6, v14

    :goto_1
    int-to-long v7, v6

    mul-long v7, v7, v10

    .line 341
    invoke-virtual {v1, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 342
    invoke-virtual {v1, v13}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 343
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 345
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v6, v7

    invoke-static {v15, v1, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 346
    invoke-virtual {v1, v12}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-wide/from16 v8, v18

    .line 348
    invoke-virtual {v1, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 349
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v6, v16

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-wide/from16 v16, v6

    .line 351
    new-instance v3, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$3;

    invoke-direct {v3, v0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$3;-><init>(Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 359
    iget-object v3, v0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setScaleX(F)V

    .line 360
    iget-object v3, v0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setScaleY(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 361
    invoke-direct {v0, v1}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->createArrowScaleAnim(F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    move-wide/from16 v3, v16

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 362
    invoke-virtual {v1, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 363
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 365
    iput-object v2, v0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mOpenCloseAnimator:Landroid/animation/Animator;

    .line 366
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private createArrowScaleAnim(F)Landroid/animation/ObjectAnimator;
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    new-instance v1, Lcom/voxel/launcher3/anim/PropertyListBuilder;

    invoke-direct {v1}, Lcom/voxel/launcher3/anim/PropertyListBuilder;-><init>()V

    .line 607
    invoke-virtual {v1, p1}, Lcom/voxel/launcher3/anim/PropertyListBuilder;->scale(F)Lcom/voxel/launcher3/anim/PropertyListBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/anim/PropertyListBuilder;->build()[Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 606
    invoke-static {v0, p1}, Lcom/voxel/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method private isAlignedWithStart()Z
    .locals 1

    .line 589
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsRtl:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsRtl:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$null$1(Landroid/view/View;ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 198
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    int-to-float p1, p1

    .line 199
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-void
.end method

.method public static synthetic lambda$trimNotifications$2(Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;Ljava/util/List;I)V
    .locals 11

    .line 184
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mNotificationGroupView:Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;

    if-nez v0, :cond_0

    return-void

    .line 186
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 188
    invoke-static {}, Lcom/voxel/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object p1

    .line 189
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b002a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 191
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 192
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mNotificationGroupView:Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;

    .line 193
    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->getHeightMinusFooter()I

    move-result v1

    add-int/2addr v1, v0

    .line 192
    invoke-virtual {p0, v1, p2}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->reduceNotificationViewHeight(II)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 194
    iget-boolean v1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getItemViewAt(I)Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mNotificationGroupView:Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;

    :goto_0
    if-eqz v1, :cond_2

    .line 197
    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    int-to-long v4, p2

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 198
    new-instance v4, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupContainerWithArrow$u5WyyFnnRRHDSJY5bPVx_qKeJVU;

    invoke-direct {v4, v1, v0}, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupContainerWithArrow$u5WyyFnnRRHDSJY5bPVx_qKeJVU;-><init>(Landroid/view/View;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 200
    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mNotificationGroupView:Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;

    sget-object v1, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v5, v4, v6

    invoke-static {v0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v7, p2

    .line 203
    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 204
    new-instance v1, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$1;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$1;-><init>(Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 215
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 216
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    .line 218
    invoke-direct {p0, v5}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->createArrowScaleAnim(F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v7, 0x0

    .line 219
    invoke-virtual {v4, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    const/high16 v5, 0x3f800000    # 1.0f

    .line 220
    invoke-direct {p0, v5}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->createArrowScaleAnim(F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    int-to-double v7, p2

    long-to-double v0, v0

    const-wide/high16 v9, 0x3ff8000000000000L    # 1.5

    .line 221
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v7, v0

    double-to-long v0, v7

    invoke-virtual {v5, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 222
    new-array p2, v2, [Landroid/animation/Animator;

    aput-object v4, p2, v6

    aput-object v5, p2, v3

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 223
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 225
    :cond_3
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mNotificationGroupView:Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;

    invoke-virtual {v0, p0, p1, p2}, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->trimNotifications(Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;Ljava/util/List;I)V

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static synthetic lambda$updateNotifications$0(Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;Ljava/util/List;I)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mNotificationGroupView:Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0, p1, p2}, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->applyNotificationContents(Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$updateShortcuts$3(Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;ILcom/voxel/simplesearchlauncher/popup/PopupFragment$UnbadgedShortcutInfo;)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mShortcutsGroupView:Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;->applyShortcutInfo(ILcom/voxel/simplesearchlauncher/popup/PopupFragment$UnbadgedShortcutInfo;)V

    return-void
.end method

.method public static synthetic lambda$updateShortcuts$4(Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;ILcom/voxel/simplesearchlauncher/popup/SystemShortcut;)V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mShortcutsGroupView:Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;->applySystemShortcut(ILcom/voxel/simplesearchlauncher/popup/SystemShortcut;)V

    return-void
.end method

.method private orientAboutIcon(Landroid/view/View;Lcom/voxel/launcher3/dragndrop/DragLayer;I)V
    .locals 11

    .line 448
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getMeasuredWidth()I

    move-result v0

    .line 449
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p3

    .line 451
    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, p3}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 452
    invoke-virtual {p2}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getInsets()Landroid/graphics/Rect;

    move-result-object p3

    .line 456
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 457
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 458
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700b4

    .line 460
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f0701c9

    .line 461
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 462
    div-int/lit8 v6, v2, 0x2

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v6, v4

    sub-int/2addr v4, v5

    const v5, 0x7f0700b2

    .line 463
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v7, 0x7f0701c8

    .line 464
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 465
    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v6, v5

    sub-int/2addr v6, v3

    .line 467
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    .line 468
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v0

    sub-int/2addr v4, v6

    int-to-float v5, v3

    add-int v6, v3, v0

    .line 471
    invoke-virtual {p2}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getRight()I

    move-result v7

    iget v8, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ge v6, v7, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 472
    :goto_0
    invoke-virtual {p2}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getLeft()I

    move-result v7

    iget v10, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v10

    if-le v4, v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_2

    if-eqz v6, :cond_3

    .line 473
    :cond_2
    iget-boolean v10, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsRtl:Z

    if-eqz v10, :cond_4

    if-nez v7, :cond_3

    if-nez v6, :cond_4

    :cond_3
    int-to-float v6, v4

    goto :goto_2

    :cond_4
    move v6, v5

    :goto_2
    cmpl-float v5, v6, v5

    if-nez v5, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    .line 477
    :goto_3
    iput-boolean v5, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    .line 478
    iget-boolean v5, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsRtl:Z

    if-eqz v5, :cond_6

    .line 479
    invoke-virtual {p2}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getWidth()I

    move-result v5

    sub-int/2addr v5, v0

    int-to-float v5, v5

    sub-float/2addr v6, v5

    .line 483
    :cond_6
    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    add-int/2addr v5, v7

    sub-int/2addr v5, v1

    int-to-float v5, v5

    .line 484
    invoke-virtual {p2}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getTop()I

    move-result v7

    iget v10, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v10

    int-to-float v7, v7

    cmpl-float v7, v5, v7

    if-lez v7, :cond_7

    const/4 v7, 0x1

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    :goto_4
    iput-boolean v7, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    .line 485
    iget-boolean v7, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-nez v7, :cond_9

    .line 486
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 488
    instance-of v7, p1, Landroid/widget/TextView;

    if-eqz v7, :cond_8

    .line 489
    move-object v7, p1

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aget-object v7, v7, v9

    if-eqz v7, :cond_8

    .line 491
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 494
    :cond_8
    iget-object v7, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    add-int/2addr v7, p1

    add-int/2addr v7, v5

    int-to-float v5, v7

    .line 498
    :cond_9
    iget-boolean p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsRtl:Z

    if-eqz p1, :cond_a

    .line 499
    iget p1, p3, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    add-float/2addr v6, p1

    goto :goto_5

    .line 501
    :cond_a
    iget p1, p3, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    sub-float/2addr v6, p1

    .line 503
    :goto_5
    iget p1, p3, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    sub-float/2addr v5, p1

    .line 505
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput v8, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 506
    invoke-virtual {p2}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getTop()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, v5, p1

    if-ltz p1, :cond_b

    int-to-float p1, v1

    add-float/2addr p1, v5

    invoke-virtual {p2}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_f

    .line 508
    :cond_b
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x10

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    add-int/2addr v3, v2

    .line 510
    iget p1, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, p1

    sub-int/2addr v4, v2

    .line 511
    iget p1, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, p1

    .line 512
    iget-boolean p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsRtl:Z

    if-nez p1, :cond_d

    add-int p1, v3, v0

    .line 513
    invoke-virtual {p2}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getRight()I

    move-result p3

    if-ge p1, p3, :cond_c

    int-to-float p1, v3

    .line 515
    iput-boolean v9, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    move v6, p1

    goto :goto_6

    :cond_c
    int-to-float p1, v4

    .line 518
    iput-boolean v8, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    move v6, p1

    goto :goto_6

    .line 521
    :cond_d
    invoke-virtual {p2}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getLeft()I

    move-result p1

    if-le v4, p1, :cond_e

    int-to-float p1, v4

    .line 523
    iput-boolean v8, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    move v6, p1

    goto :goto_6

    :cond_e
    int-to-float p1, v3

    .line 526
    iput-boolean v9, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    move v6, p1

    .line 529
    :goto_6
    iput-boolean v9, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    .line 533
    :cond_f
    invoke-virtual {p2}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getLeft()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, v6, p1

    if-gez p1, :cond_10

    .line 534
    invoke-virtual {p2}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getLeft()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v6, p1

    iput v6, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mArrowOffset:F

    .line 535
    invoke-virtual {p2}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getLeft()I

    move-result p1

    int-to-float v6, p1

    goto :goto_7

    :cond_10
    int-to-float p1, v0

    add-float/2addr p1, v6

    .line 536
    invoke-virtual {p2}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getRight()I

    move-result p3

    int-to-float p3, p3

    cmpl-float p3, p1, p3

    if-lez p3, :cond_11

    .line 537
    invoke-virtual {p2}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getRight()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p1, p3

    iput p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mArrowOffset:F

    .line 538
    invoke-virtual {p2}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getRight()I

    move-result p1

    sub-int/2addr p1, v0

    int-to-float v6, p1

    .line 541
    :cond_11
    :goto_7
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 542
    invoke-static {p1}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result p2

    if-nez p2, :cond_12

    .line 543
    invoke-virtual {p0, v6}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->setX(F)V

    .line 545
    :cond_12
    invoke-static {p1}, Landroid/view/Gravity;->isVertical(I)Z

    move-result p1

    if-nez p1, :cond_13

    .line 546
    invoke-virtual {p0, v5}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->setY(F)V

    :cond_13
    return-void
.end method


# virtual methods
.method protected animateClose(Landroid/animation/Animator$AnimatorListener;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 370
    iget-object v2, v0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mOpenCloseAnimator:Landroid/animation/Animator;

    if-eqz v2, :cond_0

    .line 371
    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 374
    :cond_0
    invoke-static {}, Lcom/voxel/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v2

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getItemCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    .line 378
    invoke-virtual {v0, v5}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getItemViewAt(I)Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->isOpenOrOpening()Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v6, v6, 0x1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 382
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0b0014

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v7, v5

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f0b0013

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v9, v5

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v11, 0x7f0b0015

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v11, v5

    .line 388
    new-instance v5, Lcom/voxel/launcher3/LogAccelerateInterpolator;

    const/16 v13, 0x64

    invoke-direct {v5, v13, v4}, Lcom/voxel/launcher3/LogAccelerateInterpolator;-><init>(II)V

    .line 390
    iget-boolean v13, v0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-eqz v13, :cond_3

    sub-int/2addr v3, v6

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    move v13, v3

    :goto_2
    add-int v14, v3, v6

    if-ge v13, v14, :cond_5

    .line 392
    invoke-virtual {v0, v13}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getItemViewAt(I)Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;

    move-result-object v14

    .line 394
    iget-boolean v4, v0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    iget-boolean v15, v0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    invoke-virtual {v14, v4, v15, v7, v8}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->createCloseAnimation(ZZJ)Landroid/animation/Animator;

    move-result-object v4

    .line 395
    iget-boolean v15, v0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    const/4 v1, 0x1

    if-eqz v15, :cond_4

    sub-int v15, v13, v3

    goto :goto_3

    :cond_4
    sub-int v15, v6, v13

    sub-int/2addr v15, v1

    :goto_3
    move-object/from16 v18, v2

    int-to-long v1, v15

    mul-long v1, v1, v11

    .line 397
    invoke-virtual {v4, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 399
    sget-object v15, Landroid/view/View;->ALPHA:Landroid/util/Property;

    move/from16 v19, v3

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/16 v16, 0x0

    const/16 v17, 0x0

    aput v17, v3, v16

    invoke-static {v14, v15, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    add-long/2addr v1, v9

    .line 401
    invoke-virtual {v3, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    sub-long v1, v7, v9

    .line 402
    invoke-virtual {v3, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 403
    invoke-virtual {v3, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v1, v18

    .line 404
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 405
    new-instance v2, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$4;

    invoke-direct {v2, v0, v14}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$4;-><init>(Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;)V

    invoke-virtual {v4, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 411
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v13, v13, 0x1

    move-object v2, v1

    move/from16 v3, v19

    move-object/from16 v1, p1

    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    move-object v1, v2

    const/4 v2, 0x0

    .line 413
    invoke-direct {v0, v2}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->createArrowScaleAnim(F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 414
    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 415
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object/from16 v2, p1

    if-eqz v2, :cond_6

    .line 418
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 420
    :cond_6
    new-instance v2, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$5;

    invoke-direct {v2, v0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$5;-><init>(Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 431
    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mOpenCloseAnimator:Landroid/animation/Animator;

    .line 432
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method protected closeComplete()V
    .locals 2

    .line 614
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mOpenCloseAnimator:Landroid/animation/Animator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 615
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 616
    iput-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mOpenCloseAnimator:Landroid/animation/Animator;

    .line 618
    :cond_0
    iput-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mActionHandler:Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$ActionHandler;

    return-void
.end method

.method protected getItemCount()I
    .locals 1

    .line 602
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected getItemViewAt(I)Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;
    .locals 1

    .line 593
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-nez v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 597
    :cond_0
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;

    return-object p1
.end method

.method protected handleClose(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 623
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->animateClose(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 625
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->closeComplete()V

    :goto_0
    return-void
.end method

.method public populateAndShow(Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$ActionHandler;Landroid/view/View;Lcom/voxel/launcher3/dragndrop/DragLayer;Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$ActionHandler;",
            "Landroid/view/View;",
            "Lcom/voxel/launcher3/dragndrop/DragLayer;",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;",
            ">;I)V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mActionHandler:Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$ActionHandler;

    .line 92
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0701c5

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f0701bf

    .line 94
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0701c4

    .line 95
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 98
    invoke-direct {p0, p4, p5}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->addDummyViews(Ljava/util/List;I)V

    const/4 v3, 0x0

    .line 101
    invoke-virtual {p0, v3, v3}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->measure(II)V

    add-int v4, v1, v2

    .line 102
    invoke-direct {p0, p2, p3, v4}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->orientAboutIcon(Landroid/view/View;Lcom/voxel/launcher3/dragndrop/DragLayer;I)V

    .line 104
    iget-boolean v5, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-eqz v5, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->removeAllViews()V

    const/4 v5, 0x0

    .line 107
    iput-object v5, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mShortcutsGroupView:Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;

    .line 108
    iput-object v5, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mNotificationGroupView:Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;

    .line 110
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 111
    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 112
    invoke-direct {p0, v5, p5}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->addDummyViews(Ljava/util/List;I)V

    .line 114
    invoke-virtual {p0, v3, v3}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->measure(II)V

    .line 115
    invoke-direct {p0, p2, p3, v4}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->orientAboutIcon(Landroid/view/View;Lcom/voxel/launcher3/dragndrop/DragLayer;I)V

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->isAlignedWithStart()Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x7f0701c3

    goto :goto_0

    :cond_1
    const p2, 0x7f0701c2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    .line 122
    iget p2, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mArrowOffset:F

    add-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->addArrowView(IIII)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    .line 123
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    div-int/lit8 v0, v0, 0x2

    int-to-float p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 124
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    iget-boolean p2, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    int-to-float p2, v1

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    .line 126
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->animateOpen()V

    return-void
.end method

.method public reduceNotificationViewHeight(II)Landroid/animation/Animator;
    .locals 8

    .line 554
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mReduceHeightAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 557
    :cond_0
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-eqz v0, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    neg-int v0, p1

    .line 558
    :goto_0
    invoke-static {}, Lcom/voxel/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mReduceHeightAnimatorSet:Landroid/animation/AnimatorSet;

    .line 559
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mReduceHeightAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mNotificationGroupView:Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;

    invoke-virtual {v2, p1}, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->animateHeightRemoval(I)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 560
    new-instance p1, Lcom/voxel/launcher3/anim/PropertyResetListener;

    sget-object v1, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x0

    .line 561
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/voxel/launcher3/anim/PropertyResetListener;-><init>(Landroid/util/Property;Ljava/lang/Object;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 562
    :goto_1
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 563
    invoke-virtual {p0, v2}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getItemViewAt(I)Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;

    move-result-object v3

    .line 564
    iget-boolean v4, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mNotificationGroupView:Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;

    if-ne v3, v4, :cond_2

    goto :goto_2

    .line 568
    :cond_2
    sget-object v4, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    .line 569
    invoke-virtual {v3}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->getTranslationY()F

    move-result v6

    int-to-float v7, v0

    add-float/2addr v6, v7

    aput v6, v5, v1

    .line 568
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    int-to-long v4, p2

    .line 569
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 570
    invoke-virtual {v3, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 571
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mReduceHeightAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 573
    :cond_3
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mReduceHeightAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$6;

    invoke-direct {p2, p0, v0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow$6;-><init>(Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;I)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 585
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mReduceHeightAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method public trimNotifications(Landroid/os/Handler;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 183
    new-instance v0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupContainerWithArrow$jWh2EVQ0AeLQdr54LzLSgBd-bJI;

    invoke-direct {v0, p0, p2, p3}, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupContainerWithArrow$jWh2EVQ0AeLQdr54LzLSgBd-bJI;-><init>(Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;Ljava/util/List;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateNotifications(Landroid/os/Handler;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/notification/NotificationContent;",
            ">;I)V"
        }
    .end annotation

    .line 172
    new-instance v0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupContainerWithArrow$m1fYGFhCzYm8Y5Gf9Iy-dxXCMJc;

    invoke-direct {v0, p0, p2, p3}, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupContainerWithArrow$m1fYGFhCzYm8Y5Gf9Iy-dxXCMJc;-><init>(Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;Ljava/util/List;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateShortcuts(Landroid/os/Handler;Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;",
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;",
            ">;",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/popup/SystemShortcut;",
            ">;)V"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mShortcutsGroupView:Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;

    if-nez v0, :cond_0

    return-void

    .line 239
    :cond_0
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-eqz v0, :cond_1

    .line 240
    invoke-static {p3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 242
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 243
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;

    .line 244
    new-instance v3, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$UnbadgedShortcutInfo;

    .line 245
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v2, p2, v4}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$UnbadgedShortcutInfo;-><init>(Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;Landroid/content/Context;)V

    .line 247
    iput v1, v3, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$UnbadgedShortcutInfo;->rank:I

    .line 249
    new-instance v2, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupContainerWithArrow$5iGFVxGZJecrocbG8TgOCqasCcU;

    invoke-direct {v2, p0, v1, v3}, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupContainerWithArrow$5iGFVxGZJecrocbG8TgOCqasCcU;-><init>(Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;ILcom/voxel/simplesearchlauncher/popup/PopupFragment$UnbadgedShortcutInfo;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 254
    :cond_2
    :goto_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_3

    .line 256
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/voxel/simplesearchlauncher/popup/SystemShortcut;

    .line 257
    new-instance p3, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupContainerWithArrow$9y1C-7i1i7GPXtIWJKI3-ei3goo;

    invoke-direct {p3, p0, v0, p2}, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupContainerWithArrow$9y1C-7i1i7GPXtIWJKI3-ei3goo;-><init>(Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;ILcom/voxel/simplesearchlauncher/popup/SystemShortcut;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
