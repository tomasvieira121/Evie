.class public Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;
.super Lcom/evie/sidescreen/mvp/MvpViewHolder;
.source "SearchBarViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/MvpViewHolder<",
        "Lcom/evie/sidescreen/searchbar/SearchBarPresenter;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:I


# instance fields
.field private mAlphaSet:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

.field private mHasShown:Z

.field mHint:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSearchBarBackground:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSearchIcon:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSettingsIcon:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mShouldInvertColors:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    sget v0, Lcom/evie/sidescreen/R$layout;->ss_search_bar:I

    sput v0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 35
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/mvp/MvpViewHolder;-><init>(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->mShouldInvertColors:Z

    .line 32
    iput-boolean p1, p0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->mHasShown:Z

    .line 37
    new-instance v0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->mSearchBarBackground:Landroid/widget/ImageView;

    aput-object v2, v1, p1

    iget-object p1, p0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->mSearchIcon:Landroid/widget/ImageView;

    const/4 v2, 0x1

    aput-object p1, v1, v2

    iget-object p1, p0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->mHint:Landroid/widget/TextView;

    const/4 v2, 0x2

    aput-object p1, v1, v2

    iget-object p1, p0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->mSettingsIcon:Landroid/widget/ImageView;

    const/4 v2, 0x3

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;-><init>([Landroid/view/View;)V

    iput-object v0, p0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->mAlphaSet:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    .line 38
    iget-object p1, p0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->mAlphaSet:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->putValue(Ljava/lang/Object;F)V

    return-void
.end method


# virtual methods
.method public hasShown()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->mHasShown:Z

    return v0
.end method

.method public onSearchBarClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast v0, Lcom/evie/sidescreen/searchbar/SearchBarPresenter;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/searchbar/SearchBarPresenter;->onSearchBarClick(Landroid/view/View;)V

    return-void
.end method

.method public onSettingsClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast v0, Lcom/evie/sidescreen/searchbar/SearchBarPresenter;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/searchbar/SearchBarPresenter;->onSettingsClick(Landroid/view/View;)V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShouldInvert(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->mShouldInvertColors:Z

    .line 66
    invoke-virtual {p0}, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->updateColors()V

    return-void
.end method

.method public show()V
    .locals 2

    .line 56
    iget-boolean v0, p0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->mHasShown:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->mHasShown:Z

    .line 60
    iget-object v0, p0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->mAlphaSet:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p0, v1}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;->ofFloat(Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;Ljava/lang/Object;F)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;->start()V

    return-void
.end method

.method public updateColors()V
    .locals 2

    .line 70
    iget-boolean v0, p0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->mShouldInvertColors:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->mHint:Landroid/widget/TextView;

    const v1, -0x2f000001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    iget-object v0, p0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->mSearchIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 73
    iget-object v0, p0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->mSettingsIcon:Landroid/widget/ImageView;

    sget v1, Lcom/evie/sidescreen/R$drawable;->searchbar_settings:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->mHint:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    iget-object v0, p0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->mSearchIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 77
    iget-object v0, p0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->mSettingsIcon:Landroid/widget/ImageView;

    sget v1, Lcom/evie/sidescreen/R$drawable;->searchbar_settings_dark:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method
