.class public Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;
.super Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;
.source "ShortcutsGroupView.java"


# instance fields
.field private final mShortcutViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;",
            ">;"
        }
    .end annotation
.end field

.field mShortcutsLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mSystemShortcutIcons:Landroid/widget/LinearLayout;

.field private final mSystemShortcutViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;->mShortcutViews:Ljava/util/List;

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;->mSystemShortcutViews:Ljava/util/List;

    return-void
.end method

.method private addShortcutView(Landroid/view/View;Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;I)V
    .locals 3

    .line 58
    sget-object v0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;->SHORTCUT:Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;

    if-ne p2, v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;->mShortcutViews:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;->mSystemShortcutViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :goto_0
    sget-object v0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;->SYSTEM_SHORTCUT_ICON:Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;

    if-ne p2, v0, :cond_2

    .line 65
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;->mSystemShortcutIcons:Landroid/widget/LinearLayout;

    if-nez p2, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v0, 0x7f0d008b

    .line 67
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;->mSystemShortcutIcons:Landroid/widget/LinearLayout;

    .line 69
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;->mSystemShortcutIcons:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 71
    :cond_1
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;->mSystemShortcutIcons:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 74
    :cond_2
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    if-lez p2, :cond_3

    .line 75
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 76
    instance-of v0, p2, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;

    if-eqz v0, :cond_3

    .line 77
    check-cast p2, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->showDivider()V

    .line 80
    :cond_3
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public addShortcutView(Landroid/view/View;Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;)V
    .locals 1

    const/4 v0, -0x1

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;->addShortcutView(Landroid/view/View;Lcom/voxel/simplesearchlauncher/popup/PopupFragment$Item;I)V

    return-void
.end method

.method public applyShortcutInfo(ILcom/voxel/simplesearchlauncher/popup/PopupFragment$UnbadgedShortcutInfo;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;->mShortcutViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;->mShortcutViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->applyShortcutInfo(Lcom/voxel/simplesearchlauncher/popup/PopupFragment$UnbadgedShortcutInfo;)V

    return-void
.end method

.method public applySystemShortcut(ILcom/voxel/simplesearchlauncher/popup/SystemShortcut;)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;->mSystemShortcutViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;->mSystemShortcutViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 94
    instance-of v0, p1, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;

    if-eqz v0, :cond_1

    .line 95
    check-cast p1, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->applySystemShortcut(Lcom/voxel/simplesearchlauncher/popup/SystemShortcut;)V

    goto :goto_0

    .line 96
    :cond_1
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 97
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/voxel/simplesearchlauncher/popup/SystemShortcut;->getHeaderIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 98
    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 100
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/voxel/simplesearchlauncher/popup/SystemShortcut;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public createCloseAnimation(ZZJ)Landroid/animation/Animator;
    .locals 7

    .line 125
    invoke-static {}, Lcom/voxel/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    const/4 v2, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    .line 126
    invoke-super/range {v1 .. v6}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->createZoomCloseAnimation(Landroid/view/View;ZZJ)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/4 p1, 0x0

    .line 127
    :goto_0
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 128
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    instance-of p2, p2, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;

    if-nez p2, :cond_0

    goto :goto_1

    .line 131
    :cond_0
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;

    .line 132
    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->getIconView()Landroid/view/View;

    move-result-object p2

    const/high16 p3, 0x3f800000    # 1.0f

    .line 133
    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleX(F)V

    .line 134
    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleY(F)V

    .line 135
    new-instance p3, Lcom/voxel/launcher3/anim/PropertyListBuilder;

    invoke-direct {p3}, Lcom/voxel/launcher3/anim/PropertyListBuilder;-><init>()V

    const/4 p4, 0x0

    .line 136
    invoke-virtual {p3, p4}, Lcom/voxel/launcher3/anim/PropertyListBuilder;->scale(F)Lcom/voxel/launcher3/anim/PropertyListBuilder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/voxel/launcher3/anim/PropertyListBuilder;->build()[Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    .line 135
    invoke-static {p2, p3}, Lcom/voxel/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public createOpenAnimation(ZZ)Landroid/animation/Animator;
    .locals 3

    .line 107
    invoke-static {}, Lcom/voxel/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    const/4 v1, 0x0

    .line 108
    invoke-super {p0, v1, p1, p2}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->createZoomOpenAnimation(Landroid/view/View;ZZ)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/4 p1, 0x0

    .line 109
    :goto_0
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 110
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    instance-of p2, p2, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;

    if-nez p2, :cond_0

    goto :goto_1

    .line 113
    :cond_0
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;->mShortcutsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;

    .line 114
    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->getIconView()Landroid/view/View;

    move-result-object p2

    const/4 v1, 0x0

    .line 115
    invoke-virtual {p2, v1}, Landroid/view/View;->setScaleX(F)V

    .line 116
    invoke-virtual {p2, v1}, Landroid/view/View;->setScaleY(F)V

    .line 117
    new-instance v1, Lcom/voxel/launcher3/anim/PropertyListBuilder;

    invoke-direct {v1}, Lcom/voxel/launcher3/anim/PropertyListBuilder;-><init>()V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 118
    invoke-virtual {v1, v2}, Lcom/voxel/launcher3/anim/PropertyListBuilder;->scale(F)Lcom/voxel/launcher3/anim/PropertyListBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/launcher3/anim/PropertyListBuilder;->build()[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 117
    invoke-static {p2, v1}, Lcom/voxel/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getArrowColor(Z)I
    .locals 1

    .line 143
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutsGroupView;->mSystemShortcutIcons:Landroid/widget/LinearLayout;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f0600de

    goto :goto_1

    :cond_1
    :goto_0
    const p1, 0x7f0600dd

    :goto_1
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 49
    invoke-super {p0}, Lcom/voxel/simplesearchlauncher/popup/PopupGroupBaseView;->onFinishInflate()V

    .line 50
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
