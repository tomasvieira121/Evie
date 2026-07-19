.class public Lcom/evie/jigsaw/components/content/DetailsComponent;
.super Lcom/evie/jigsaw/components/base/AbstractComponent;
.source "DetailsComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/jigsaw/components/content/DetailsComponent$Holder;,
        Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;,
        Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;,
        Lcom/evie/jigsaw/components/content/DetailsComponent$ComposedDetailProcessor;,
        Lcom/evie/jigsaw/components/content/DetailsComponent$LineSpacingDetailProcessor;,
        Lcom/evie/jigsaw/components/content/DetailsComponent$DescentIgnorantDetailProcessor;,
        Lcom/evie/jigsaw/components/content/DetailsComponent$DetailProcessor;,
        Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;,
        Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/jigsaw/components/base/AbstractComponent<",
        "Lcom/evie/jigsaw/components/content/DetailsComponent$Holder;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALL_PROCESSORS:Lcom/evie/jigsaw/components/content/DetailsComponent$DetailProcessor;

.field private static final DESCENT_IGNORANT_PROCESSOR:Lcom/evie/jigsaw/components/content/DetailsComponent$DetailProcessor;

.field private static final LINE_SPACING_PROCESSOR:Lcom/evie/jigsaw/components/content/DetailsComponent$DetailProcessor;


# instance fields
.field transient actionPreferenceStore:Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;

.field transient attributionService:Lcom/evie/jigsaw/services/attribution/ImageAttributionService;

.field private icon:Lcom/evie/jigsaw/services/images/models/EvieImage;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;",
            ">;"
        }
    .end annotation
.end field

.field transient linkResolver:Lcom/evie/common/services/links/LinkResolver;

.field private links:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final transient mAttributionListener:Landroid/view/View$OnClickListener;

.field private final transient mLinksListener:Landroid/view/View$OnClickListener;

.field private poster:Lcom/evie/jigsaw/services/images/models/EvieImage;

.field private spacing:Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 197
    new-instance v0, Lcom/evie/jigsaw/components/content/DetailsComponent$DescentIgnorantDetailProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/evie/jigsaw/components/content/DetailsComponent$DescentIgnorantDetailProcessor;-><init>(Lcom/evie/jigsaw/components/content/DetailsComponent$1;)V

    sput-object v0, Lcom/evie/jigsaw/components/content/DetailsComponent;->DESCENT_IGNORANT_PROCESSOR:Lcom/evie/jigsaw/components/content/DetailsComponent$DetailProcessor;

    .line 199
    new-instance v0, Lcom/evie/jigsaw/components/content/DetailsComponent$LineSpacingDetailProcessor;

    invoke-direct {v0}, Lcom/evie/jigsaw/components/content/DetailsComponent$LineSpacingDetailProcessor;-><init>()V

    sput-object v0, Lcom/evie/jigsaw/components/content/DetailsComponent;->LINE_SPACING_PROCESSOR:Lcom/evie/jigsaw/components/content/DetailsComponent$DetailProcessor;

    .line 201
    new-instance v0, Lcom/evie/jigsaw/components/content/DetailsComponent$ComposedDetailProcessor;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/evie/jigsaw/components/content/DetailsComponent$DetailProcessor;

    sget-object v2, Lcom/evie/jigsaw/components/content/DetailsComponent;->DESCENT_IGNORANT_PROCESSOR:Lcom/evie/jigsaw/components/content/DetailsComponent$DetailProcessor;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/evie/jigsaw/components/content/DetailsComponent;->LINE_SPACING_PROCESSOR:Lcom/evie/jigsaw/components/content/DetailsComponent$DetailProcessor;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/evie/jigsaw/components/content/DetailsComponent$ComposedDetailProcessor;-><init>([Lcom/evie/jigsaw/components/content/DetailsComponent$DetailProcessor;)V

    sput-object v0, Lcom/evie/jigsaw/components/content/DetailsComponent;->ALL_PROCESSORS:Lcom/evie/jigsaw/components/content/DetailsComponent$DetailProcessor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/evie/jigsaw/components/base/AbstractComponent;-><init>()V

    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/jigsaw/components/content/DetailsComponent;->items:Ljava/util/List;

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/jigsaw/components/content/DetailsComponent;->links:Ljava/util/List;

    .line 53
    sget-object v0, Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;->normal:Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;

    iput-object v0, p0, Lcom/evie/jigsaw/components/content/DetailsComponent;->spacing:Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;

    .line 64
    new-instance v0, Lcom/evie/jigsaw/components/content/DetailsComponent$1;

    invoke-direct {v0, p0}, Lcom/evie/jigsaw/components/content/DetailsComponent$1;-><init>(Lcom/evie/jigsaw/components/content/DetailsComponent;)V

    iput-object v0, p0, Lcom/evie/jigsaw/components/content/DetailsComponent;->mLinksListener:Landroid/view/View$OnClickListener;

    .line 72
    new-instance v0, Lcom/evie/jigsaw/components/content/DetailsComponent$2;

    invoke-direct {v0, p0}, Lcom/evie/jigsaw/components/content/DetailsComponent$2;-><init>(Lcom/evie/jigsaw/components/content/DetailsComponent;)V

    iput-object v0, p0, Lcom/evie/jigsaw/components/content/DetailsComponent;->mAttributionListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/evie/jigsaw/components/content/DetailsComponent;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/evie/jigsaw/components/content/DetailsComponent;->links:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/evie/jigsaw/components/content/DetailsComponent;)Lcom/evie/jigsaw/services/images/models/EvieImage;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/evie/jigsaw/components/content/DetailsComponent;->poster:Lcom/evie/jigsaw/services/images/models/EvieImage;

    return-object p0
.end method

.method static synthetic access$200(Lcom/evie/jigsaw/components/content/DetailsComponent;)Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/evie/jigsaw/components/content/DetailsComponent;->spacing:Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;

    return-object p0
.end method

.method static synthetic access$400()Lcom/evie/jigsaw/components/content/DetailsComponent$DetailProcessor;
    .locals 1

    .line 42
    sget-object v0, Lcom/evie/jigsaw/components/content/DetailsComponent;->ALL_PROCESSORS:Lcom/evie/jigsaw/components/content/DetailsComponent$DetailProcessor;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic bind(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 39
    check-cast p2, Lcom/evie/jigsaw/components/content/DetailsComponent$Holder;

    invoke-virtual {p0, p1, p2}, Lcom/evie/jigsaw/components/content/DetailsComponent;->bind(Landroid/content/Context;Lcom/evie/jigsaw/components/content/DetailsComponent$Holder;)V

    return-void
.end method

.method public bind(Landroid/content/Context;Lcom/evie/jigsaw/components/content/DetailsComponent$Holder;)V
    .locals 7

    .line 326
    invoke-super {p0, p1, p2}, Lcom/evie/jigsaw/components/base/AbstractComponent;->bind(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 327
    iget-object v0, p2, Lcom/evie/jigsaw/components/content/DetailsComponent$Holder;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/evie/jigsaw/components/content/DetailsComponent;->icon:Lcom/evie/jigsaw/services/images/models/EvieImage;

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/evie/jigsaw/components/content/DetailsComponent;->bind(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/evie/jigsaw/services/images/models/Image;I)Z

    .line 328
    iget-object v0, p2, Lcom/evie/jigsaw/components/content/DetailsComponent$Holder;->poster:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/evie/jigsaw/components/content/DetailsComponent;->poster:Lcom/evie/jigsaw/services/images/models/EvieImage;

    invoke-virtual {p0, v0, v1, v2}, Lcom/evie/jigsaw/components/content/DetailsComponent;->bind(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/evie/jigsaw/services/images/models/Image;I)Z

    .line 330
    iget-object v0, p0, Lcom/evie/jigsaw/components/content/DetailsComponent;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 331
    iget-object v0, p0, Lcom/evie/jigsaw/components/content/DetailsComponent;->spacing:Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;

    invoke-virtual {v0, p1}, Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;->getViewSpacing(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    .line 332
    iget-object v1, p2, Lcom/evie/jigsaw/components/content/DetailsComponent$Holder;->items:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 334
    iget-object v1, p0, Lcom/evie/jigsaw/components/content/DetailsComponent;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;

    if-nez v3, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    invoke-static {v3}, Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;->access$500(Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;)Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;

    move-result-object v4

    iget-object v5, p2, Lcom/evie/jigsaw/components/content/DetailsComponent$Holder;->items:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1, v5, p0}, Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;->inflate(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/evie/jigsaw/components/content/DetailsComponent;)Lcom/evie/jigsaw/views/RichTextView;

    move-result-object v4

    .line 337
    invoke-static {v3}, Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;->access$600(Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;)Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;

    move-result-object v5

    invoke-static {v5}, Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;->access$700(Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/evie/jigsaw/views/RichTextView;->setGravity(I)V

    .line 338
    invoke-virtual {v4}, Lcom/evie/jigsaw/views/RichTextView;->getCurrentTextColor()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/evie/jigsaw/views/RichTextView;->setLinkTextColor(I)V

    .line 339
    invoke-virtual {v4}, Lcom/evie/jigsaw/views/RichTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v6, v6

    add-float/2addr v6, v0

    float-to-int v6, v6

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 340
    iget-object v5, p0, Lcom/evie/jigsaw/components/content/DetailsComponent;->actionPreferenceStore:Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;

    invoke-virtual {v3, v5}, Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;->resolveText(Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;)Ljava/lang/String;

    move-result-object v5

    .line 342
    invoke-static {v3}, Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;->access$800(Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 343
    invoke-static {v3}, Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;->access$900(Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/evie/jigsaw/views/RichTextView;->setMaxLines(I)V

    .line 344
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v3}, Lcom/evie/jigsaw/views/RichTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 345
    invoke-virtual {p0, v4, v5, v2}, Lcom/evie/jigsaw/components/content/DetailsComponent;->bind(Lcom/evie/jigsaw/views/RichTextView;Ljava/lang/String;I)Z

    goto :goto_1

    .line 348
    :cond_1
    invoke-static {v3}, Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;->access$900(Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3}, Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;->access$800(Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v6, v5, v3}, Lcom/evie/jigsaw/components/content/DetailsComponent;->bindWithAttribution(Lcom/evie/jigsaw/views/RichTextView;ILjava/lang/String;Ljava/lang/String;)V

    .line 351
    :goto_1
    iget-object v3, p2, Lcom/evie/jigsaw/components/content/DetailsComponent$Holder;->items:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 354
    :cond_2
    iget-object p1, p2, Lcom/evie/jigsaw/components/content/DetailsComponent$Holder;->items:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 357
    :cond_3
    iget-object p1, p2, Lcom/evie/jigsaw/components/content/DetailsComponent$Holder;->items:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 360
    :goto_2
    iget-object p1, p0, Lcom/evie/jigsaw/components/content/DetailsComponent;->poster:Lcom/evie/jigsaw/services/images/models/EvieImage;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/evie/jigsaw/services/images/models/EvieImage;->getAttribution()Lcom/evie/jigsaw/services/attribution/models/Attribution;

    move-result-object p1

    invoke-virtual {p1}, Lcom/evie/jigsaw/services/attribution/models/Attribution;->isValid()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 361
    iget-object p1, p2, Lcom/evie/jigsaw/components/content/DetailsComponent$Holder;->poster:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v0, p0, Lcom/evie/jigsaw/components/content/DetailsComponent;->mAttributionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    :cond_4
    iget-object p1, p0, Lcom/evie/jigsaw/components/content/DetailsComponent;->links:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 365
    iget-object p1, p2, Lcom/evie/jigsaw/components/content/DetailsComponent$Holder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lcom/evie/jigsaw/components/content/DetailsComponent;->mLinksListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void
.end method

.method public bindWithAttribution(Lcom/evie/jigsaw/views/RichTextView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 280
    invoke-virtual {p1}, Lcom/evie/jigsaw/views/RichTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 281
    new-instance v7, Lcom/evie/jigsaw/components/content/DetailsComponent$3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/evie/jigsaw/components/content/DetailsComponent$3;-><init>(Lcom/evie/jigsaw/components/content/DetailsComponent;Lcom/evie/jigsaw/views/RichTextView;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v7}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public initialize(Lcom/evie/jigsaw/Jigsaw;)V
    .locals 0

    .line 260
    invoke-super {p0, p1}, Lcom/evie/jigsaw/components/base/AbstractComponent;->initialize(Lcom/evie/jigsaw/Jigsaw;)V

    .line 261
    invoke-virtual {p1, p0}, Lcom/evie/jigsaw/Jigsaw;->inject(Lcom/evie/jigsaw/components/content/DetailsComponent;)V

    return-void
.end method

.method public setItems(Ljava/util/List;)Lcom/evie/jigsaw/components/content/DetailsComponent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;",
            ">;)",
            "Lcom/evie/jigsaw/components/content/DetailsComponent;"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/evie/jigsaw/components/content/DetailsComponent;->items:Ljava/util/List;

    return-object p0
.end method

.method public setSpacing(Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;)Lcom/evie/jigsaw/components/content/DetailsComponent;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/evie/jigsaw/components/content/DetailsComponent;->spacing:Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;

    return-object p0
.end method
