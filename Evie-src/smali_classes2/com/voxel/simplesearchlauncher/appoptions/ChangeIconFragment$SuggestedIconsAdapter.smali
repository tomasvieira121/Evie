.class Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$SuggestedIconsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ChangeIconFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestedIconsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$SuggestedIconsAdapter$IconViewHolder;
    }
.end annotation


# instance fields
.field private mIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 448
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$SuggestedIconsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 443
    new-instance p1, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$ChangeIconFragment$SuggestedIconsAdapter$MUD_xLLGd-dvoMOmZq_utlR-H9c;

    invoke-direct {p1, p0}, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$ChangeIconFragment$SuggestedIconsAdapter$MUD_xLLGd-dvoMOmZq_utlR-H9c;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$SuggestedIconsAdapter;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$SuggestedIconsAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 449
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$SuggestedIconsAdapter;->mIcons:Ljava/util/List;

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$SuggestedIconsAdapter;Landroid/view/View;)V
    .locals 1

    .line 444
    check-cast p1, Landroid/widget/ImageView;

    .line 445
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$SuggestedIconsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->access$800(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$SuggestedIconsAdapter;->mIcons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 471
    check-cast p1, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$SuggestedIconsAdapter$IconViewHolder;

    .line 472
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$SuggestedIconsAdapter$IconViewHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$SuggestedIconsAdapter;->mIcons:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 463
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0032

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 464
    new-instance p2, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$SuggestedIconsAdapter$IconViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$SuggestedIconsAdapter$IconViewHolder;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$SuggestedIconsAdapter;Landroid/view/View;)V

    .line 465
    iget-object p1, p2, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$SuggestedIconsAdapter$IconViewHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$SuggestedIconsAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
