.class Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;
.super Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;
.source "SearchViewHolderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideViewHolder"
.end annotation


# instance fields
.field mContent:Landroid/view/ViewGroup;

.field mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

.field mViewGroup:Landroid/view/ViewGroup;

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;Landroid/view/View;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;->this$0:Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;

    .line 100
    invoke-direct {p0, p2}, Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 102
    move-object p1, p2

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;->mViewGroup:Landroid/view/ViewGroup;

    const p1, 0x7f0a00af

    .line 103
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;->mContent:Landroid/view/ViewGroup;

    const p1, 0x7f0a0108

    .line 104
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;Landroid/view/View;Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$1;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory$SlideViewHolder;-><init>(Lcom/voxel/simplesearchlauncher/search/SearchViewHolderFactory;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method
