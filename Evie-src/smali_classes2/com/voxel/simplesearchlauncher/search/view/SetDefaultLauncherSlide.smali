.class public Lcom/voxel/simplesearchlauncher/search/view/SetDefaultLauncherSlide;
.super Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;
.source "SetDefaultLauncherSlide.java"


# instance fields
.field private mSearch:Lcom/evie/search/SearchPresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/view/SlideLayout;Lcom/evie/search/SearchPresenter;Landroid/app/Activity;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 19
    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/search/view/SetDefaultLauncherSlide;->mSearch:Lcom/evie/search/SearchPresenter;

    .line 21
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/SetDefaultLauncherSlide;->mTextView:Landroid/widget/TextView;

    const p2, 0x7f1201f8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 22
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/SetDefaultLauncherSlide;->mPositiveButton:Landroid/widget/Button;

    const p2, 0x104000a

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 23
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/SetDefaultLauncherSlide;->mNegativeButton:Landroid/widget/Button;

    const p2, 0x7f1201f7

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 25
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/SetDefaultLauncherSlide;->mPositiveButton:Landroid/widget/Button;

    new-instance p2, Lcom/voxel/simplesearchlauncher/search/view/-$$Lambda$SetDefaultLauncherSlide$zIYKrz_y7-zwS4JyRQ5mXLHhMjY;

    invoke-direct {p2, p0, p4}, Lcom/voxel/simplesearchlauncher/search/view/-$$Lambda$SetDefaultLauncherSlide$zIYKrz_y7-zwS4JyRQ5mXLHhMjY;-><init>(Lcom/voxel/simplesearchlauncher/search/view/SetDefaultLauncherSlide;Landroid/app/Activity;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/SetDefaultLauncherSlide;->mNegativeButton:Landroid/widget/Button;

    new-instance p2, Lcom/voxel/simplesearchlauncher/search/view/-$$Lambda$SetDefaultLauncherSlide$-SiOlQi9IXG8-vRtvxVbvXdVyXE;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/search/view/-$$Lambda$SetDefaultLauncherSlide$-SiOlQi9IXG8-vRtvxVbvXdVyXE;-><init>(Lcom/voxel/simplesearchlauncher/search/view/SetDefaultLauncherSlide;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/voxel/simplesearchlauncher/search/view/SetDefaultLauncherSlide;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x1

    .line 26
    invoke-static {p1, p2, p2}, Lcom/voxel/simplesearchlauncher/activity/ResetLauncherActivity;->resetHome(Landroid/app/Activity;ZZ)V

    .line 27
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/SetDefaultLauncherSlide;->mSearch:Lcom/evie/search/SearchPresenter;

    invoke-virtual {p1}, Lcom/evie/search/SearchPresenter;->removeCustomPresenter()V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/voxel/simplesearchlauncher/search/view/SetDefaultLauncherSlide;Landroid/view/View;)V
    .locals 0

    .line 31
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/SetDefaultLauncherSlide;->mSearch:Lcom/evie/search/SearchPresenter;

    invoke-virtual {p1}, Lcom/evie/search/SearchPresenter;->removeCustomPresenter()V

    return-void
.end method
