.class public Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;
.super Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;
.source "WindowInsetPolicyFrameLayout.java"

# interfaces
.implements Lcom/voxel/launcher3/Insettable;


# instance fields
.field protected final mChildInsets:Landroid/graphics/Rect;

.field protected mChildWindowInsets:Ljava/lang/Object;

.field private final mTempConsumedInsets:Landroid/graphics/Rect;

.field private shouldConsumeBottomInset:Z

.field private shouldConsumeLeftInset:Z

.field private shouldConsumeRightInset:Z

.field private shouldConsumeTopInset:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->shouldConsumeLeftInset:Z

    .line 29
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->shouldConsumeRightInset:Z

    .line 30
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->shouldConsumeTopInset:Z

    .line 31
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->shouldConsumeBottomInset:Z

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mChildWindowInsets:Ljava/lang/Object;

    .line 37
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mChildInsets:Landroid/graphics/Rect;

    .line 39
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mTempConsumedInsets:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->shouldConsumeLeftInset:Z

    .line 29
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->shouldConsumeRightInset:Z

    .line 30
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->shouldConsumeTopInset:Z

    .line 31
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->shouldConsumeBottomInset:Z

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mChildWindowInsets:Ljava/lang/Object;

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mChildInsets:Landroid/graphics/Rect;

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mTempConsumedInsets:Landroid/graphics/Rect;

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->initializeFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initializeFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 63
    sget-object v0, Lcom/evie/common/R$styleable;->WindowInsetPolicyFrameLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 64
    sget p2, Lcom/evie/common/R$styleable;->WindowInsetPolicyFrameLayout_consumeLeft:I

    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->shouldConsumeLeftInset:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->shouldConsumeLeftInset:Z

    .line 65
    sget p2, Lcom/evie/common/R$styleable;->WindowInsetPolicyFrameLayout_consumeRight:I

    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->shouldConsumeRightInset:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->shouldConsumeRightInset:Z

    .line 66
    sget p2, Lcom/evie/common/R$styleable;->WindowInsetPolicyFrameLayout_consumeTop:I

    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->shouldConsumeTopInset:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->shouldConsumeTopInset:Z

    .line 67
    sget p2, Lcom/evie/common/R$styleable;->WindowInsetPolicyFrameLayout_consumeBottom:I

    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->shouldConsumeBottomInset:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->shouldConsumeBottomInset:Z

    .line 68
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setInsets(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    .line 195
    instance-of v0, p1, Lcom/voxel/launcher3/Insettable;

    if-eqz v0, :cond_0

    .line 196
    check-cast p1, Lcom/voxel/launcher3/Insettable;

    invoke-interface {p1, p2}, Lcom/voxel/launcher3/Insettable;->setInsets(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 198
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 200
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 201
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 202
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 203
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 204
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setInsets(Landroid/view/View;Landroid/view/WindowInsets;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .line 180
    instance-of v0, p1, Lcom/voxel/launcher3/Insettable;

    if-eqz v0, :cond_0

    .line 181
    check-cast p1, Lcom/voxel/launcher3/Insettable;

    invoke-interface {p1, p2}, Lcom/voxel/launcher3/Insettable;->setInsets(Landroid/view/WindowInsets;)V

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 185
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 186
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 187
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 188
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p2

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 189
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 73
    invoke-super {p0, p1, p2, p3}, Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mChildWindowInsets:Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 75
    check-cast p2, Landroid/view/WindowInsets;

    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->setInsets(Landroid/view/View;Landroid/view/WindowInsets;)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mChildInsets:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->setInsets(Landroid/view/View;Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 5

    .line 147
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mTempConsumedInsets:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 148
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->getFitsSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 149
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->shouldConsumeLeftInset:Z

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mTempConsumedInsets:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 152
    :cond_0
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->shouldConsumeRightInset:Z

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mTempConsumedInsets:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 155
    :cond_1
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->shouldConsumeTopInset:Z

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mTempConsumedInsets:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 158
    :cond_2
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->shouldConsumeBottomInset:Z

    if-eqz v0, :cond_3

    .line 159
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mTempConsumedInsets:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mTempConsumedInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mTempConsumedInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mTempConsumedInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mTempConsumedInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->setPadding(IIII)V

    .line 165
    :cond_4
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mChildInsets:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mTempConsumedInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 166
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mChildInsets:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mTempConsumedInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 167
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mChildInsets:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mTempConsumedInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 168
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mChildInsets:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mTempConsumedInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v2

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 170
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->getChildCount()I

    move-result p1

    :goto_0
    if-ge v1, p1, :cond_5

    .line 172
    invoke-virtual {p0, v1}, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 173
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mChildInsets:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v2}, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->setInsets(Landroid/view/View;Landroid/graphics/Rect;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mTempConsumedInsets:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 97
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->getFitsSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 98
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->shouldConsumeLeftInset:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mTempConsumedInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 101
    :cond_0
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->shouldConsumeRightInset:Z

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mTempConsumedInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 104
    :cond_1
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->shouldConsumeTopInset:Z

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mTempConsumedInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 107
    :cond_2
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->shouldConsumeBottomInset:Z

    if-eqz v0, :cond_3

    .line 108
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mTempConsumedInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mTempConsumedInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mTempConsumedInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mTempConsumedInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mTempConsumedInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->setPadding(IIII)V

    .line 113
    :cond_4
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mChildWindowInsets:Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 114
    new-instance v0, Landroid/view/WindowInsets;

    invoke-direct {v0, p1}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mChildWindowInsets:Ljava/lang/Object;

    .line 119
    :cond_5
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mChildWindowInsets:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    .line 120
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mTempConsumedInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 121
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mTempConsumedInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    .line 122
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v4

    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mTempConsumedInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    .line 123
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v5

    iget-object v6, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mTempConsumedInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    .line 119
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mChildWindowInsets:Ljava/lang/Object;

    .line 126
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_6

    .line 128
    invoke-virtual {p0, v1}, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 129
    new-instance v3, Landroid/view/WindowInsets;

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->mChildWindowInsets:Ljava/lang/Object;

    check-cast v4, Landroid/view/WindowInsets;

    invoke-direct {v3, v4}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    invoke-direct {p0, v2, v3}, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->setInsets(Landroid/view/View;Landroid/view/WindowInsets;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_7

    .line 133
    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeDisplayCutout()Landroid/view/WindowInsets;

    move-result-object p1

    .line 135
    :cond_7
    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    .line 136
    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    return-void
.end method

.method public setInsets(Landroid/view/WindowInsets;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .line 90
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    return-void
.end method
