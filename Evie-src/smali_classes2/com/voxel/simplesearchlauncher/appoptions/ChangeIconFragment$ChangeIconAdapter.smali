.class Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;
.super Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;
.source "ChangeIconFragment.java"

# interfaces
.implements Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringItemPositioner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeIconAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter$IconPackViewHolder;,
        Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter$TitleViewHolder;
    }
.end annotation


# instance fields
.field private final mIconPackClickListener:Landroid/view/View$OnClickListener;

.field private final mIconPackFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/core/util/Pair<",
            "Lcom/voxel/simplesearchlauncher/iconpack/IconPack;",
            "Lcom/evie/common/iconpack/IconPackFilter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIconPackItemHeight:I

.field private final mMarketSearchClickListener:Landroid/view/View$OnClickListener;

.field private mSectionHeaderItemHeight:I

.field private mSuggestedItemHeight:I

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$LoadIconPackResult;)V
    .locals 2

    .line 278
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;

    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 279
    iget-object v0, p2, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$LoadIconPackResult;->mIconPackFilters:Ljava/util/List;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;->mIconPackFilters:Ljava/util/List;

    .line 280
    iget-object p2, p2, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$LoadIconPackResult;->mSuggestedIcons:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->access$602(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;Ljava/util/List;)Ljava/util/List;

    .line 282
    new-instance p2, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$ChangeIconFragment$ChangeIconAdapter$7NUQG_suqSWSucklrh3I6sGskvY;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$ChangeIconFragment$ChangeIconAdapter$7NUQG_suqSWSucklrh3I6sGskvY;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;)V

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;->mIconPackClickListener:Landroid/view/View$OnClickListener;

    .line 290
    new-instance p2, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$ChangeIconFragment$ChangeIconAdapter$ZYA5Qe4CrcKDc_rWIQVnI8IqbDI;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$ChangeIconFragment$ChangeIconAdapter$ZYA5Qe4CrcKDc_rWIQVnI8IqbDI;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;)V

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;->mMarketSearchClickListener:Landroid/view/View$OnClickListener;

    .line 300
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070092

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;->mSuggestedItemHeight:I

    .line 301
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0701f4

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;->mIconPackItemHeight:I

    .line 302
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 303
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 304
    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p2

    .line 305
    iget v0, p2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p2, p2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070090

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p2, p1

    iput p2, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;->mSectionHeaderItemHeight:I

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;Landroid/view/View;)V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->access$300(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;)Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    add-int/lit8 p1, p1, -0x3

    .line 285
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;->mIconPackFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/util/Pair;

    .line 286
    iget-object v0, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;

    iget-object p1, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/evie/common/iconpack/IconPackFilter;

    invoke-static {v0, p1}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->newInstance(Lcom/voxel/simplesearchlauncher/iconpack/IconPack;Lcom/evie/common/iconpack/IconPackFilter;)Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;

    move-result-object p1

    .line 287
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;

    invoke-static {v0, p1}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->access$700(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;Landroid/view/View;)V
    .locals 1

    .line 291
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 292
    instance-of v0, p1, Lcom/voxel/simplesearchlauncher/activity/SafeActivityStarter;

    if-eqz v0, :cond_0

    .line 293
    check-cast p1, Lcom/voxel/simplesearchlauncher/activity/SafeActivityStarter;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->mIconPackManager:Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->getMarketSearchIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/voxel/simplesearchlauncher/activity/SafeActivityStarter;->startActivitySafely(Landroid/content/Intent;)Z

    goto :goto_0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->mIconPackManager:Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->getMarketSearchIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 297
    :goto_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->runExitAnimation()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;->mIconPackFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewHeightForPosition(I)I
    .locals 1

    .line 310
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;->getItemViewType(I)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 320
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unhandled item view type!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 318
    :pswitch_0
    iget p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;->mIconPackItemHeight:I

    return p1

    .line 315
    :pswitch_1
    iget p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;->mSuggestedItemHeight:I

    return p1

    .line 313
    :pswitch_2
    iget p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;->mSectionHeaderItemHeight:I

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getItemViewType(I)I
    .locals 2

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 432
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_0

    const/4 p1, 0x4

    return p1

    :pswitch_0
    const/4 p1, 0x2

    return p1

    :pswitch_1
    return v0

    :pswitch_2
    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x3

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasUniformViewHeight()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 383
    invoke-virtual {p0, p2}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 407
    :pswitch_0
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 408
    check-cast p1, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter$IconPackViewHolder;

    .line 409
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter$IconPackViewHolder;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f08015b

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 410
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter$IconPackViewHolder;->mLabelTextView:Landroid/widget/TextView;

    const v1, 0x7f12016b

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter$IconPackViewHolder;->mCountTextView:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 397
    :pswitch_1
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;->mIconPackFilters:Ljava/util/List;

    add-int/lit8 p2, p2, -0x3

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/core/util/Pair;

    .line 398
    iget-object v0, p2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;

    .line 399
    iget-object p2, p2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lcom/evie/common/iconpack/IconPackFilter;

    .line 400
    check-cast p1, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter$IconPackViewHolder;

    .line 401
    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter$IconPackViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 402
    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter$IconPackViewHolder;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter$IconPackViewHolder;->mCountTextView:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter$IconPackViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1200e5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/evie/common/iconpack/IconPackFilter;->getDrawableList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 392
    :pswitch_2
    check-cast p1, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter$TitleViewHolder;

    .line 393
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter$TitleViewHolder;->mTitle:Landroid/widget/TextView;

    const p2, 0x7f1200e7

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 387
    :cond_0
    check-cast p1, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter$TitleViewHolder;

    .line 388
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter$TitleViewHolder;->mTitle:Landroid/widget/TextView;

    const p2, 0x7f1200e8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 360
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 361
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 363
    new-instance v1, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$SuggestedIconsAdapter;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->access$600(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$SuggestedIconsAdapter;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;Ljava/util/List;)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 364
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0701f8

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p2, p1, v0, v0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    .line 365
    new-instance p1, Lcom/voxel/simplesearchlauncher/view/OldEmptyViewHolder;

    invoke-direct {p1, p2}, Lcom/voxel/simplesearchlauncher/view/OldEmptyViewHolder;-><init>(Landroid/view/View;)V

    move-object p2, p1

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    const v2, 0x7f0d0030

    if-ne p2, v1, :cond_2

    .line 367
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 368
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;->mIconPackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    new-instance p2, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter$IconPackViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter$IconPackViewHolder;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;Landroid/view/View;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x4

    if-ne p2, v1, :cond_3

    .line 371
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 372
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;->mMarketSearchClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    new-instance p2, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter$IconPackViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter$IconPackViewHolder;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;Landroid/view/View;)V

    goto :goto_1

    .line 375
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid viewtype"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 357
    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d0031

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 358
    new-instance p2, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter$TitleViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter$TitleViewHolder;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;Landroid/view/View;)V

    :goto_1
    return-object p2
.end method
