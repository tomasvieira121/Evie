.class public Lcom/voxel/simplesearchlauncher/search/view/EnjoySlide;
.super Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;
.source "EnjoySlide.java"


# instance fields
.field private mNegativeIndex:I

.field private mPositiveIndex:I

.field private mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/view/SlideLayout;II)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/search/view/OptionSlide;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 18
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/search/view/EnjoySlide;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    .line 19
    iput p3, p0, Lcom/voxel/simplesearchlauncher/search/view/EnjoySlide;->mPositiveIndex:I

    .line 20
    iput p4, p0, Lcom/voxel/simplesearchlauncher/search/view/EnjoySlide;->mNegativeIndex:I

    .line 22
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/EnjoySlide;->mTextView:Landroid/widget/TextView;

    const p2, 0x7f120138

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 24
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/EnjoySlide;->mPositiveButton:Landroid/widget/Button;

    const p2, 0x7f120137

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 25
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/EnjoySlide;->mPositiveButton:Landroid/widget/Button;

    new-instance p2, Lcom/voxel/simplesearchlauncher/search/view/-$$Lambda$EnjoySlide$QfIFXvR1172ibBP-iVvnVspBa7Y;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/search/view/-$$Lambda$EnjoySlide$QfIFXvR1172ibBP-iVvnVspBa7Y;-><init>(Lcom/voxel/simplesearchlauncher/search/view/EnjoySlide;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/EnjoySlide;->mNegativeButton:Landroid/widget/Button;

    const p2, 0x7f120136

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 28
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/EnjoySlide;->mNegativeButton:Landroid/widget/Button;

    new-instance p2, Lcom/voxel/simplesearchlauncher/search/view/-$$Lambda$EnjoySlide$LtSJMMtJQpgjZ2AvrFKD99XgWA4;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/search/view/-$$Lambda$EnjoySlide$LtSJMMtJQpgjZ2AvrFKD99XgWA4;-><init>(Lcom/voxel/simplesearchlauncher/search/view/EnjoySlide;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/voxel/simplesearchlauncher/search/view/EnjoySlide;Landroid/view/View;)V
    .locals 1

    .line 25
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/EnjoySlide;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    iget v0, p0, Lcom/voxel/simplesearchlauncher/search/view/EnjoySlide;->mPositiveIndex:I

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->setDisplayedChild(I)V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/voxel/simplesearchlauncher/search/view/EnjoySlide;Landroid/view/View;)V
    .locals 1

    .line 28
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/view/EnjoySlide;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    iget v0, p0, Lcom/voxel/simplesearchlauncher/search/view/EnjoySlide;->mNegativeIndex:I

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->setDisplayedChild(I)V

    return-void
.end method
