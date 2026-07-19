.class public Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;
.super Ljava/lang/Object;
.source "LauncherCustomContentViewHolder.java"


# instance fields
.field mBarOverlays:Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mCustomContentView:Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;

.field private mFullBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private mFullBackgroundFactor:Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;

.field mFullBackgroundView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mHalfBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

.field mHalfBackgroundView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSideScreenFixedView:Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;)V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 47
    new-instance v0, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;->mCustomContentView:Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;

    .line 48
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;->mCustomContentView:Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->setFitsSystemWindows(Z)V

    .line 49
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 50
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;->mCustomContentView:Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;

    invoke-virtual {v1, v0}, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->getSideScreen()Lcom/evie/sidescreen/SideScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreen;->getSideScreenView()Lcom/evie/sidescreen/SideScreenView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreenView;->getFixedHeaderView()Landroid/view/View;

    move-result-object v0

    .line 53
    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->getSideScreen()Lcom/evie/sidescreen/SideScreen;

    move-result-object p2

    invoke-virtual {p2}, Lcom/evie/sidescreen/SideScreen;->getSideScreenView()Lcom/evie/sidescreen/SideScreenView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/evie/sidescreen/SideScreenView;->getView()Landroid/view/View;

    move-result-object p2

    .line 55
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;->mSideScreenFixedView:Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/voxel/simplesearchlauncher/view/WindowInsetPolicyFrameLayout;->addView(Landroid/view/View;I)V

    .line 56
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;->mCustomContentView:Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;

    invoke-virtual {v0, p2}, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->addView(Landroid/view/View;)V

    .line 58
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;->mFullBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 59
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;->mFullBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 60
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;->mFullBackgroundView:Landroid/view/View;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;->mFullBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080176

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;->mHalfBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 63
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;->mHalfBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 64
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;->mHalfBackgroundView:Landroid/view/View;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;->mHalfBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 66
    new-instance p1, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;

    invoke-direct {p1}, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;->mFullBackgroundFactor:Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;

    .line 67
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;->mFullBackgroundFactor:Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;

    new-instance p2, Lcom/voxel/simplesearchlauncher/sidescreen/-$$Lambda$LauncherCustomContentViewHolder$awHfO99ffIvJ7y2Kwlq1TetnwRM;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/sidescreen/-$$Lambda$LauncherCustomContentViewHolder$awHfO99ffIvJ7y2Kwlq1TetnwRM;-><init>(Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;)V

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .line 68
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;->mFullBackgroundFactor:Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;

    sget-object p2, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->MULTIPLY_COMBINER:Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper$Combiner;

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->getCombinedFactor(Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper$Combiner;)F

    move-result p1

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->floatToIntAlpha(F)I

    move-result p1

    .line 69
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;->mFullBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 70
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;->mBarOverlays:Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;->mFullBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->setTopStartInsetBackgroundColor(I)V

    .line 71
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;->mBarOverlays:Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;->mFullBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->setTopEndInsetBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public getCustomContentView()Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;->mCustomContentView:Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;

    return-object v0
.end method

.method public setBackgroundAlpha(F)V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;->mBarOverlays:Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;

    const/high16 v1, -0x1000000

    invoke-static {p1, v1}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->applyAlphaToColor(FI)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->setBottomStartInsetBackgroundColor(I)V

    .line 77
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;->mBarOverlays:Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;

    invoke-static {p1, v1}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->applyAlphaToColor(FI)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/view/WindowInsetBackgroundFrameLayout;->setBottomEndInsetBackgroundColor(I)V

    .line 78
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;->mHalfBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->floatToIntAlpha(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 79
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;->mFullBackgroundFactor:Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;

    const-string v1, "normal"

    invoke-virtual {v0, v1, p1}, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->put(Ljava/lang/Object;F)V

    return-void
.end method

.method public setFullBackgroundAlpha(F)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentViewHolder;->mFullBackgroundFactor:Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;

    const-string v1, "full"

    invoke-virtual {v0, v1, p1}, Lcom/voxel/simplesearchlauncher/utils/CombinedFactorHelper;->put(Ljava/lang/Object;F)V

    return-void
.end method
