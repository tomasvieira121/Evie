.class public Lcom/voxel/simplesearchlauncher/widget/WidgetsRowViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "WidgetsRowViewHolder.java"


# instance fields
.field mContent:Landroid/view/ViewGroup;

.field mRow:Landroid/view/ViewGroup;

.field mSection:Landroid/widget/TextView;

.field mSectionIcon:Lcom/facebook/drawee/view/SimpleDraweeView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 35
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsRowViewHolder;->mContent:Landroid/view/ViewGroup;

    .line 36
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsRowViewHolder;->mContent:Landroid/view/ViewGroup;

    const v0, 0x7f0a02f9

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsRowViewHolder;->mRow:Landroid/view/ViewGroup;

    .line 37
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsRowViewHolder;->mContent:Landroid/view/ViewGroup;

    const v0, 0x7f0a025a

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsRowViewHolder;->mSection:Landroid/widget/TextView;

    .line 38
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsRowViewHolder;->mContent:Landroid/view/ViewGroup;

    const v0, 0x7f0a025b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsRowViewHolder;->mSectionIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    return-void
.end method


# virtual methods
.method getContent()Landroid/view/ViewGroup;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsRowViewHolder;->mContent:Landroid/view/ViewGroup;

    return-object v0
.end method
