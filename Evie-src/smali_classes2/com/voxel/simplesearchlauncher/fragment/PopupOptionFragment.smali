.class public abstract Lcom/voxel/simplesearchlauncher/fragment/PopupOptionFragment;
.super Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;
.source "PopupOptionFragment.java"


# instance fields
.field private mContentView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onCreateChildContentView$0(Lcom/voxel/simplesearchlauncher/fragment/PopupOptionFragment;Landroid/view/View;)V
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/PopupOptionFragment;->getNegativeClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/PopupOptionFragment;->runExitAnimation()V

    return-void
.end method

.method static synthetic lambda$onCreateChildContentView$1(Landroid/graphics/drawable/GradientDrawable;Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-ne p5, p9, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-void
.end method

.method public static synthetic lambda$onCreateChildContentView$2(Lcom/voxel/simplesearchlauncher/fragment/PopupOptionFragment;Landroid/view/View;)V
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/PopupOptionFragment;->getPositiveClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/PopupOptionFragment;->runExitAnimation()V

    return-void
.end method

.method static synthetic lambda$onCreateChildContentView$3(Landroid/graphics/drawable/GradientDrawable;Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-ne p5, p9, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-void
.end method


# virtual methods
.method protected abstract getHeaderImageDrawable()Landroid/graphics/drawable/Drawable;
.end method

.method protected abstract getMainText()Ljava/lang/CharSequence;
.end method

.method protected abstract getNegativeClickListener()Landroid/view/View$OnClickListener;
.end method

.method protected abstract getNegativeText()Ljava/lang/CharSequence;
.end method

.method protected abstract getPositiveClickListener()Landroid/view/View$OnClickListener;
.end method

.method protected abstract getPositiveText()Ljava/lang/CharSequence;
.end method

.method public onCreateChildContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0057

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/PopupOptionFragment;->mContentView:Landroid/view/View;

    .line 45
    new-instance p1, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$PopupOptionFragment$QNxkih7Zsf82M8Vxm4wSQokwYcE;

    invoke-direct {p1, p0}, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$PopupOptionFragment$QNxkih7Zsf82M8Vxm4wSQokwYcE;-><init>(Lcom/voxel/simplesearchlauncher/fragment/PopupOptionFragment;)V

    .line 53
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/fragment/PopupOptionFragment;->mContentView:Landroid/view/View;

    const p3, 0x7f0a0164

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 54
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/PopupOptionFragment;->getHeaderImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/fragment/PopupOptionFragment;->mContentView:Landroid/view/View;

    const p3, 0x7f0a00b3

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 57
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/PopupOptionFragment;->getMainText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/fragment/PopupOptionFragment;->mContentView:Landroid/view/View;

    const p3, 0x7f0a01c9

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 60
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/PopupOptionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f08014d

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/GradientDrawable;

    .line 61
    invoke-virtual {p2}, Landroid/widget/Button;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 62
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 63
    new-instance v0, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$PopupOptionFragment$3Hm2UrXkTSYjq4R3Frl4mhGn36o;

    invoke-direct {v0, p3}, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$PopupOptionFragment$3Hm2UrXkTSYjq4R3Frl4mhGn36o;-><init>(Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 71
    new-instance p3, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$PopupOptionFragment$LAdzdCjKN5XLIugg1JZ52MWPuwo;

    invoke-direct {p3, p0}, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$PopupOptionFragment$LAdzdCjKN5XLIugg1JZ52MWPuwo;-><init>(Lcom/voxel/simplesearchlauncher/fragment/PopupOptionFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/PopupOptionFragment;->getPositiveText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/fragment/PopupOptionFragment;->mContentView:Landroid/view/View;

    const p3, 0x7f0a0087

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 81
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/PopupOptionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f08014c

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/GradientDrawable;

    .line 82
    invoke-virtual {p2}, Landroid/widget/Button;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 83
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 84
    new-instance v0, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$PopupOptionFragment$lLWeMtPPEW_hBheeweBu1uBuvWA;

    invoke-direct {v0, p3}, Lcom/voxel/simplesearchlauncher/fragment/-$$Lambda$PopupOptionFragment$lLWeMtPPEW_hBheeweBu1uBuvWA;-><init>(Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 92
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/PopupOptionFragment;->getNegativeText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/fragment/PopupOptionFragment;->mContentView:Landroid/view/View;

    const p3, 0x7f0a00a0

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    .line 96
    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/PopupOptionFragment;->mContentView:Landroid/view/View;

    return-object p1
.end method
