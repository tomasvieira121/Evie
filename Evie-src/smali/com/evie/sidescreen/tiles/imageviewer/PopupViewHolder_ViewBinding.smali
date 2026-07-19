.class public Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "PopupViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

.field private view7f0b0039:Landroid/view/View;

.field private view7f0b003e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;Landroid/view/View;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    .line 30
    sget v0, Lcom/evie/sidescreen/R$id;->container:I

    const-string v1, "field \'mInterceptableFrameLayout\'"

    const-class v2, Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mInterceptableFrameLayout:Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;

    .line 31
    sget v0, Lcom/evie/sidescreen/R$id;->target:I

    const-string v1, "field \'mTargetView\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mTargetView:Landroid/view/View;

    .line 32
    sget v0, Lcom/evie/sidescreen/R$id;->attribution_button:I

    const-string v1, "field \'mAttributionButton\' and method \'onAttributionClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 33
    iput-object v0, p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mAttributionButton:Landroid/view/View;

    .line 34
    iput-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder_ViewBinding;->view7f0b0039:Landroid/view/View;

    .line 35
    new-instance v1, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder_ViewBinding$1;-><init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder_ViewBinding;Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    sget v0, Lcom/evie/sidescreen/R$id;->attribution_source:I

    const-string v1, "field \'mAttribution\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mAttribution:Landroid/widget/TextView;

    .line 42
    sget v0, Lcom/evie/sidescreen/R$id;->passthrough_target:I

    const-string v1, "field \'mPassthroughTarget\'"

    const-class v2, Landroid/view/ViewGroup;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mPassthroughTarget:Landroid/view/ViewGroup;

    .line 43
    sget v0, Lcom/evie/sidescreen/R$id;->overlay:I

    const-string v1, "field \'mOverlay\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mOverlay:Landroid/view/View;

    .line 44
    sget v0, Lcom/evie/sidescreen/R$id;->recycler_view:I

    const-string v1, "field \'mRecyclerView\'"

    const-class v2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 45
    sget v0, Lcom/evie/sidescreen/R$id;->back_button:I

    const-string v1, "method \'onBackButton\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 46
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder_ViewBinding;->view7f0b003e:Landroid/view/View;

    .line 47
    new-instance v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder_ViewBinding$2;-><init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder_ViewBinding;Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 60
    iput-object v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    .line 62
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mInterceptableFrameLayout:Lcom/voxel/simplesearchlauncher/view/InterceptableFrameLayout;

    .line 63
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mTargetView:Landroid/view/View;

    .line 64
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mAttributionButton:Landroid/view/View;

    .line 65
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mAttribution:Landroid/widget/TextView;

    .line 66
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mPassthroughTarget:Landroid/view/ViewGroup;

    .line 67
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mOverlay:Landroid/view/View;

    .line 68
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder_ViewBinding;->view7f0b0039:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iput-object v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder_ViewBinding;->view7f0b0039:Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder_ViewBinding;->view7f0b003e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iput-object v1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder_ViewBinding;->view7f0b003e:Landroid/view/View;

    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
