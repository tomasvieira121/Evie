.class public Lcom/voxel/simplesearchlauncher/search/SearchDefaultLauncherPresenter;
.super Ljava/lang/Object;
.source "SearchDefaultLauncherPresenter.java"

# interfaces
.implements Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;


# instance fields
.field private viewHeight:I


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0701e1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchDefaultLauncherPresenter;->viewHeight:I

    return-void
.end method


# virtual methods
.method public bind(Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;)V
    .locals 0

    return-void
.end method

.method public getItemViewHeight()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchDefaultLauncherPresenter;->viewHeight:I

    return v0
.end method

.method public getType()I
    .locals 1

    const v0, 0x2f7593c4

    return v0
.end method

.method public onItemClick()V
    .locals 0

    return-void
.end method

.method public onItemLongClick(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public unbind(Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;)V
    .locals 0

    return-void
.end method
