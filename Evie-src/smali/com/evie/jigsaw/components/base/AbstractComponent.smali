.class public abstract Lcom/evie/jigsaw/components/base/AbstractComponent;
.super Ljava/lang/Object;
.source "AbstractComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/jigsaw/components/base/AbstractComponent$Style;,
        Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final NO_STYLE:Lcom/evie/jigsaw/components/base/AbstractComponent$Style;


# instance fields
.field private analytics:Lcom/evie/common/services/analytics/models/AnalyticsData;

.field private transient analyticsService:Lcom/evie/common/services/analytics/AnalyticsService;

.field private transient imageResolver:Lcom/evie/jigsaw/services/images/ImageResolver;

.field private inset:Z

.field private final transient mBindTask:Ljava/lang/Runnable;

.field private final transient mFadedViews:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final transient mHandler:Landroid/os/Handler;

.field private transient mLastHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVH;"
        }
    .end annotation
.end field

.field public transient parent:Lcom/evie/jigsaw/components/base/AbstractComponent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/evie/jigsaw/components/base/AbstractComponent<",
            "*>;"
        }
    .end annotation
.end field

.field protected style:Lcom/evie/jigsaw/components/base/AbstractComponent$Style;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 273
    new-instance v0, Lcom/evie/jigsaw/components/base/AbstractComponent$Style;

    invoke-direct {v0}, Lcom/evie/jigsaw/components/base/AbstractComponent$Style;-><init>()V

    sput-object v0, Lcom/evie/jigsaw/components/base/AbstractComponent;->NO_STYLE:Lcom/evie/jigsaw/components/base/AbstractComponent$Style;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    sget-object v0, Lcom/evie/jigsaw/components/base/AbstractComponent;->NO_STYLE:Lcom/evie/jigsaw/components/base/AbstractComponent$Style;

    iput-object v0, p0, Lcom/evie/jigsaw/components/base/AbstractComponent;->style:Lcom/evie/jigsaw/components/base/AbstractComponent$Style;

    .line 304
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/evie/jigsaw/components/base/AbstractComponent;->mFadedViews:Ljava/util/Stack;

    .line 324
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/evie/jigsaw/components/base/AbstractComponent;->mHandler:Landroid/os/Handler;

    .line 327
    new-instance v0, Lcom/evie/jigsaw/components/base/AbstractComponent$1;

    invoke-direct {v0, p0}, Lcom/evie/jigsaw/components/base/AbstractComponent$1;-><init>(Lcom/evie/jigsaw/components/base/AbstractComponent;)V

    iput-object v0, p0, Lcom/evie/jigsaw/components/base/AbstractComponent;->mBindTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$200(Lcom/evie/jigsaw/components/base/AbstractComponent;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/evie/jigsaw/components/base/AbstractComponent;->mLastHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p0
.end method


# virtual methods
.method protected applyStyle(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TVH;)V"
        }
    .end annotation

    .line 285
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 287
    iget-object v0, p0, Lcom/evie/jigsaw/components/base/AbstractComponent;->style:Lcom/evie/jigsaw/components/base/AbstractComponent$Style;

    invoke-static {v0}, Lcom/evie/jigsaw/components/base/AbstractComponent$Style;->access$000(Lcom/evie/jigsaw/components/base/AbstractComponent$Style;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/evie/jigsaw/components/base/AbstractComponent;->style:Lcom/evie/jigsaw/components/base/AbstractComponent$Style;

    invoke-static {v0}, Lcom/evie/jigsaw/components/base/AbstractComponent$Style;->access$100(Lcom/evie/jigsaw/components/base/AbstractComponent$Style;)Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/evie/jigsaw/components/base/AbstractComponent;->style:Lcom/evie/jigsaw/components/base/AbstractComponent$Style;

    invoke-static {v0}, Lcom/evie/jigsaw/components/base/AbstractComponent$Style;->access$100(Lcom/evie/jigsaw/components/base/AbstractComponent$Style;)Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;->getColor(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method public bind(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TVH;)V"
        }
    .end annotation

    .line 106
    iput-object p2, p0, Lcom/evie/jigsaw/components/base/AbstractComponent;->mLastHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 109
    invoke-virtual {p0}, Lcom/evie/jigsaw/components/base/AbstractComponent;->isInset()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/evie/jigsaw/components/base/AbstractComponent;->getInset(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/evie/jigsaw/components/base/AbstractComponent;->inset(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 112
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/evie/jigsaw/components/base/AbstractComponent;->applyStyle(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 114
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/evie/jigsaw/R$id;->jigsaw_component:I

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public bind(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 401
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 402
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 p2, 0x0

    .line 403
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method public bind(Landroid/widget/TextView;II)Z
    .locals 1

    .line 424
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 425
    invoke-virtual {p0, p1, p2, p3}, Lcom/evie/jigsaw/components/base/AbstractComponent;->bind(Landroid/widget/TextView;Ljava/lang/CharSequence;I)Z

    move-result p1

    return p1
.end method

.method public bind(Landroid/widget/TextView;Ljava/lang/CharSequence;I)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 434
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x1

    return p1

    .line 439
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    return v0
.end method

.method public bind(Lcom/evie/jigsaw/views/RichTextView;Ljava/lang/String;I)Z
    .locals 1

    .line 450
    invoke-virtual {p1, p0}, Lcom/evie/jigsaw/views/RichTextView;->setComponent(Lcom/evie/jigsaw/components/base/AbstractComponent;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 453
    invoke-virtual {p1, p2}, Lcom/evie/jigsaw/views/RichTextView;->setRichText(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p1, v0}, Lcom/evie/jigsaw/views/RichTextView;->setVisibility(I)V

    const/4 p1, 0x1

    return p1

    .line 458
    :cond_0
    invoke-virtual {p1, p3}, Lcom/evie/jigsaw/views/RichTextView;->setVisibility(I)V

    return v0
.end method

.method public bind(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/evie/jigsaw/services/images/models/Image;)Z
    .locals 2

    .line 476
    invoke-virtual {p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/evie/jigsaw/components/base/AbstractComponent;->bind(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/evie/jigsaw/services/images/models/Image;II)Z

    move-result p1

    return p1
.end method

.method public bind(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/evie/jigsaw/services/images/models/Image;I)Z
    .locals 1

    .line 492
    invoke-virtual {p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/evie/jigsaw/components/base/AbstractComponent;->bind(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/evie/jigsaw/services/images/models/Image;II)Z

    move-result p1

    return p1
.end method

.method public bind(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/evie/jigsaw/services/images/models/Image;II)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 527
    invoke-virtual {p1, p3}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    return v0

    .line 531
    :cond_0
    iget-object v1, p0, Lcom/evie/jigsaw/components/base/AbstractComponent;->imageResolver:Lcom/evie/jigsaw/services/images/ImageResolver;

    invoke-interface {v1, p2, p4}, Lcom/evie/jigsaw/services/images/ImageResolver;->resolve(Lcom/evie/jigsaw/services/images/models/Image;I)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    .line 534
    invoke-virtual {p1, p3}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    return v0

    .line 539
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->getTag()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v2, 0x1

    if-eqz p3, :cond_2

    .line 540
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    return v2

    .line 545
    :cond_2
    invoke-interface {p2}, Lcom/evie/jigsaw/services/images/models/Image;->getRounding()Lcom/evie/jigsaw/services/images/models/Rounding;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 546
    invoke-interface {p2}, Lcom/evie/jigsaw/services/images/models/Image;->getRounding()Lcom/evie/jigsaw/services/images/models/Rounding;

    move-result-object p2

    invoke-virtual {p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p2, p3, p4}, Lcom/evie/jigsaw/services/images/models/Rounding;->getParams(Landroid/content/Context;I)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object p2

    .line 547
    invoke-virtual {p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object p3

    check-cast p3, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    invoke-virtual {p3, p2}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setRoundingParams(Lcom/facebook/drawee/generic/RoundingParams;)V

    goto :goto_0

    .line 550
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object p2

    check-cast p2, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setRoundingParams(Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 554
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/evie/jigsaw/R$color;->placeholder:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    .line 555
    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p3, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p3}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 556
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 557
    invoke-virtual {p1, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 560
    invoke-virtual {p1, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setTag(Ljava/lang/Object;)V

    return v2
.end method

.method public bind(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/evie/jigsaw/services/images/models/Image;III)Z
    .locals 1

    .line 515
    invoke-virtual {p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 516
    invoke-virtual {p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 517
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/evie/jigsaw/components/base/AbstractComponent;->bind(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/evie/jigsaw/services/images/models/Image;II)Z

    move-result p1

    return p1
.end method

.method public bindBackground(Landroid/view/View;I)V
    .locals 1

    .line 407
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 408
    invoke-virtual {p0, p1, p2}, Lcom/evie/jigsaw/components/base/AbstractComponent;->bindBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bindBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 412
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected fade(Landroid/view/View;)V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/evie/jigsaw/components/base/AbstractComponent;->mFadedViews:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const v0, 0x3ee66666    # 0.45f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public getAnalytics()Lcom/evie/common/services/analytics/models/AnalyticsData;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/evie/jigsaw/components/base/AbstractComponent;->analytics:Lcom/evie/common/services/analytics/models/AnalyticsData;

    if-eqz v0, :cond_0

    return-object v0

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/evie/jigsaw/components/base/AbstractComponent;->parent:Lcom/evie/jigsaw/components/base/AbstractComponent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/evie/jigsaw/components/base/AbstractComponent;->getAnalytics()Lcom/evie/common/services/analytics/models/AnalyticsData;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getInset(Landroid/content/Context;)I
    .locals 1

    .line 239
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/evie/jigsaw/R$dimen;->half_spacing:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method public final inflate(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 153
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/evie/jigsaw/components/base/AbstractComponent;->inflate(Landroid/content/Context;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final inflate(Landroid/content/Context;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 3

    .line 167
    invoke-static {p0}, Lcom/evie/jigsaw/internal/Library;->layoutForComponent(Lcom/evie/jigsaw/components/base/AbstractComponent;)I

    move-result v0

    .line 168
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 169
    invoke-virtual {v1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 170
    invoke-static {v0, v1}, Lcom/evie/jigsaw/internal/Library;->holderForLayout(ILandroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 171
    invoke-virtual {p0}, Lcom/evie/jigsaw/components/base/AbstractComponent;->proliferate()V

    .line 172
    invoke-virtual {p0, p1, v0}, Lcom/evie/jigsaw/components/base/AbstractComponent;->bind(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    if-eqz p3, :cond_0

    .line 175
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2

    :cond_0
    return-object v1
.end method

.method public initialize(Lcom/evie/jigsaw/Jigsaw;)V
    .locals 1

    .line 84
    invoke-virtual {p1}, Lcom/evie/jigsaw/Jigsaw;->analyticsService()Lcom/evie/common/services/analytics/AnalyticsService;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/jigsaw/components/base/AbstractComponent;->analyticsService:Lcom/evie/common/services/analytics/AnalyticsService;

    .line 85
    invoke-virtual {p1}, Lcom/evie/jigsaw/Jigsaw;->imageResolver()Lcom/evie/jigsaw/services/images/ImageResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/jigsaw/components/base/AbstractComponent;->imageResolver:Lcom/evie/jigsaw/services/images/ImageResolver;

    return-void
.end method

.method protected inset(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 227
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/evie/jigsaw/components/base/AbstractComponent;->mLastHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/evie/jigsaw/components/base/AbstractComponent;->mBindTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/evie/jigsaw/components/base/AbstractComponent;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public isInset()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcom/evie/jigsaw/components/base/AbstractComponent;->inset:Z

    return v0
.end method

.method public measure(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/evie/jigsaw/components/base/AbstractComponent;->parent:Lcom/evie/jigsaw/components/base/AbstractComponent;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0, p1}, Lcom/evie/jigsaw/components/base/AbstractComponent;->measure(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "window"

    .line 198
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 199
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 200
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 201
    invoke-virtual {p1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const/4 p1, 0x0

    .line 202
    iput p1, v0, Landroid/graphics/Point;->y:I

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method protected post(Ljava/lang/Runnable;)V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/evie/jigsaw/components/base/AbstractComponent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public proliferate()V
    .locals 0

    return-void
.end method

.method public ready()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public recordCloseEvent(Lcom/evie/common/services/analytics/models/CloseMethod;)V
    .locals 2

    .line 378
    invoke-virtual {p0}, Lcom/evie/jigsaw/components/base/AbstractComponent;->getAnalytics()Lcom/evie/common/services/analytics/models/AnalyticsData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/evie/jigsaw/components/base/AbstractComponent;->analyticsService:Lcom/evie/common/services/analytics/AnalyticsService;

    iget-object v1, p0, Lcom/evie/jigsaw/components/base/AbstractComponent;->analytics:Lcom/evie/common/services/analytics/models/AnalyticsData;

    invoke-interface {v0, v1, p1}, Lcom/evie/common/services/analytics/AnalyticsService;->recordCloseEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Lcom/evie/common/services/analytics/models/CloseMethod;)V

    return-void
.end method

.method public recordOpenEvent()V
    .locals 2

    .line 371
    invoke-virtual {p0}, Lcom/evie/jigsaw/components/base/AbstractComponent;->getAnalytics()Lcom/evie/common/services/analytics/models/AnalyticsData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 373
    :cond_0
    iget-object v1, p0, Lcom/evie/jigsaw/components/base/AbstractComponent;->analyticsService:Lcom/evie/common/services/analytics/AnalyticsService;

    invoke-interface {v1, v0}, Lcom/evie/common/services/analytics/AnalyticsService;->recordOpenEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;)V

    return-void
.end method

.method public recordVideoEvent()V
    .locals 2

    .line 385
    invoke-virtual {p0}, Lcom/evie/jigsaw/components/base/AbstractComponent;->getAnalytics()Lcom/evie/common/services/analytics/models/AnalyticsData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 387
    :cond_0
    iget-object v1, p0, Lcom/evie/jigsaw/components/base/AbstractComponent;->analyticsService:Lcom/evie/common/services/analytics/AnalyticsService;

    invoke-interface {v1, v0}, Lcom/evie/common/services/analytics/AnalyticsService;->recordVideoEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;)V

    return-void
.end method

.method public resume()V
    .locals 0

    .line 123
    invoke-virtual {p0}, Lcom/evie/jigsaw/components/base/AbstractComponent;->unfade()V

    return-void
.end method

.method public setAnalytics(Lcom/evie/common/services/analytics/models/AnalyticsData;)Lcom/evie/jigsaw/components/base/AbstractComponent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/common/services/analytics/models/AnalyticsData;",
            ")",
            "Lcom/evie/jigsaw/components/base/AbstractComponent<",
            "TVH;>;"
        }
    .end annotation

    .line 354
    iput-object p1, p0, Lcom/evie/jigsaw/components/base/AbstractComponent;->analytics:Lcom/evie/common/services/analytics/models/AnalyticsData;

    return-object p0
.end method

.method public setInset(Z)Lcom/evie/jigsaw/components/base/AbstractComponent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/evie/jigsaw/components/base/AbstractComponent<",
            "TVH;>;"
        }
    .end annotation

    .line 215
    iput-boolean p1, p0, Lcom/evie/jigsaw/components/base/AbstractComponent;->inset:Z

    return-object p0
.end method

.method public setStyle(Lcom/evie/jigsaw/components/base/AbstractComponent$Style;)Lcom/evie/jigsaw/components/base/AbstractComponent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/jigsaw/components/base/AbstractComponent$Style;",
            ")",
            "Lcom/evie/jigsaw/components/base/AbstractComponent<",
            "TVH;>;"
        }
    .end annotation

    .line 275
    iput-object p1, p0, Lcom/evie/jigsaw/components/base/AbstractComponent;->style:Lcom/evie/jigsaw/components/base/AbstractComponent$Style;

    return-object p0
.end method

.method protected unfade()V
    .locals 2

    .line 311
    :goto_0
    iget-object v0, p0, Lcom/evie/jigsaw/components/base/AbstractComponent;->mFadedViews:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/evie/jigsaw/components/base/AbstractComponent;->mFadedViews:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    return-void
.end method
