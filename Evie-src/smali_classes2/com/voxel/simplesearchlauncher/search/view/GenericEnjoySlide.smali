.class public Lcom/voxel/simplesearchlauncher/search/view/GenericEnjoySlide;
.super Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;
.source "GenericEnjoySlide.java"


# instance fields
.field private mNegativeIndex:I

.field private mPositiveIndex:I

.field private mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/view/SlideLayout;II)V
    .locals 1

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 18
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/search/view/GenericEnjoySlide;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    .line 19
    iput p3, p0, Lcom/voxel/simplesearchlauncher/search/view/GenericEnjoySlide;->mPositiveIndex:I

    .line 20
    iput p4, p0, Lcom/voxel/simplesearchlauncher/search/view/GenericEnjoySlide;->mNegativeIndex:I

    const p2, 0x7f120037

    .line 22
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 23
    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/search/view/GenericEnjoySlide;->mTextView:Landroid/widget/TextView;

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p4, v0

    const p2, 0x7f12013c

    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/GenericEnjoySlide;->mPositiveButton:Landroid/widget/Button;

    const p2, 0x7f120137

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 26
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/GenericEnjoySlide;->mPositiveButton:Landroid/widget/Button;

    new-instance p2, Lcom/voxel/simplesearchlauncher/search/view/-$$Lambda$GenericEnjoySlide$bYvXZpQ4b9gUNWQSTT4xoPMxSfY;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/search/view/-$$Lambda$GenericEnjoySlide$bYvXZpQ4b9gUNWQSTT4xoPMxSfY;-><init>(Lcom/voxel/simplesearchlauncher/search/view/GenericEnjoySlide;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/GenericEnjoySlide;->mNegativeButton:Landroid/widget/Button;

    const p2, 0x7f120136

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 29
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/GenericEnjoySlide;->mNegativeButton:Landroid/widget/Button;

    new-instance p2, Lcom/voxel/simplesearchlauncher/search/view/-$$Lambda$GenericEnjoySlide$1RD-Je6R0Awk2MA4tT-Ekh_hx_s;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/search/view/-$$Lambda$GenericEnjoySlide$1RD-Je6R0Awk2MA4tT-Ekh_hx_s;-><init>(Lcom/voxel/simplesearchlauncher/search/view/GenericEnjoySlide;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/voxel/simplesearchlauncher/search/view/GenericEnjoySlide;Landroid/view/View;)V
    .locals 1

    .line 26
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/GenericEnjoySlide;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    iget v0, p0, Lcom/voxel/simplesearchlauncher/search/view/GenericEnjoySlide;->mPositiveIndex:I

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->setDisplayedChild(I)V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/voxel/simplesearchlauncher/search/view/GenericEnjoySlide;Landroid/view/View;)V
    .locals 1

    .line 29
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/GenericEnjoySlide;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    iget v0, p0, Lcom/voxel/simplesearchlauncher/search/view/GenericEnjoySlide;->mNegativeIndex:I

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->setDisplayedChild(I)V

    return-void
.end method
