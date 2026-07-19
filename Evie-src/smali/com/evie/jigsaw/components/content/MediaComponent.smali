.class public Lcom/evie/jigsaw/components/content/MediaComponent;
.super Lcom/evie/jigsaw/components/base/AbstractComponent;
.source "MediaComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/jigsaw/components/content/MediaComponent$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/jigsaw/components/base/AbstractComponent<",
        "Lcom/evie/jigsaw/components/content/MediaComponent$Holder;",
        ">;"
    }
.end annotation


# instance fields
.field transient analyticsService:Lcom/evie/common/services/analytics/AnalyticsService;

.field transient attributionService:Lcom/evie/jigsaw/services/attribution/ImageAttributionService;

.field private image:Lcom/evie/jigsaw/services/images/models/EvieImage;

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

.field private final transient mLinkClickListener:Landroid/view/View$OnClickListener;

.field private final transient mPlayVideoListener:Landroid/view/View$OnClickListener;

.field private overlay:Lcom/evie/jigsaw/services/images/models/EvieImage;

.field private videoUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/evie/jigsaw/components/base/AbstractComponent;-><init>()V

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/jigsaw/components/content/MediaComponent;->links:Ljava/util/List;

    .line 58
    new-instance v0, Lcom/evie/jigsaw/components/content/MediaComponent$1;

    invoke-direct {v0, p0}, Lcom/evie/jigsaw/components/content/MediaComponent$1;-><init>(Lcom/evie/jigsaw/components/content/MediaComponent;)V

    iput-object v0, p0, Lcom/evie/jigsaw/components/content/MediaComponent;->mLinkClickListener:Landroid/view/View$OnClickListener;

    .line 75
    new-instance v0, Lcom/evie/jigsaw/components/content/MediaComponent$2;

    invoke-direct {v0, p0}, Lcom/evie/jigsaw/components/content/MediaComponent$2;-><init>(Lcom/evie/jigsaw/components/content/MediaComponent;)V

    iput-object v0, p0, Lcom/evie/jigsaw/components/content/MediaComponent;->mPlayVideoListener:Landroid/view/View$OnClickListener;

    .line 86
    new-instance v0, Lcom/evie/jigsaw/components/content/MediaComponent$3;

    invoke-direct {v0, p0}, Lcom/evie/jigsaw/components/content/MediaComponent$3;-><init>(Lcom/evie/jigsaw/components/content/MediaComponent;)V

    iput-object v0, p0, Lcom/evie/jigsaw/components/content/MediaComponent;->mAttributionListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/evie/jigsaw/components/content/MediaComponent;Landroid/view/View;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/evie/jigsaw/components/content/MediaComponent;->fade(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/evie/jigsaw/components/content/MediaComponent;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/evie/jigsaw/components/content/MediaComponent;->links:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/evie/jigsaw/components/content/MediaComponent;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/evie/jigsaw/components/content/MediaComponent;->videoUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/evie/jigsaw/components/content/MediaComponent;)Lcom/evie/jigsaw/services/images/models/EvieImage;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/evie/jigsaw/components/content/MediaComponent;->image:Lcom/evie/jigsaw/services/images/models/EvieImage;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic bind(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 35
    check-cast p2, Lcom/evie/jigsaw/components/content/MediaComponent$Holder;

    invoke-virtual {p0, p1, p2}, Lcom/evie/jigsaw/components/content/MediaComponent;->bind(Landroid/content/Context;Lcom/evie/jigsaw/components/content/MediaComponent$Holder;)V

    return-void
.end method

.method public bind(Landroid/content/Context;Lcom/evie/jigsaw/components/content/MediaComponent$Holder;)V
    .locals 7

    .line 102
    invoke-super {p0, p1, p2}, Lcom/evie/jigsaw/components/base/AbstractComponent;->bind(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 103
    invoke-virtual {p0, p1}, Lcom/evie/jigsaw/components/content/MediaComponent;->measure(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 104
    iget-object v2, p2, Lcom/evie/jigsaw/components/content/MediaComponent$Holder;->image:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v3, p0, Lcom/evie/jigsaw/components/content/MediaComponent;->image:Lcom/evie/jigsaw/services/images/models/EvieImage;

    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Point;->y:I

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/evie/jigsaw/components/content/MediaComponent;->bind(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/evie/jigsaw/services/images/models/Image;III)Z

    .line 106
    iget-object v1, p0, Lcom/evie/jigsaw/components/content/MediaComponent;->videoUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    if-nez v1, :cond_0

    .line 107
    iget-object v1, p2, Lcom/evie/jigsaw/components/content/MediaComponent$Holder;->videoButton:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 108
    iget-object v1, p2, Lcom/evie/jigsaw/components/content/MediaComponent$Holder;->videoButton:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v3, p0, Lcom/evie/jigsaw/components/content/MediaComponent;->mPlayVideoListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lcom/facebook/drawee/view/SimpleDraweeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v1, p2, Lcom/evie/jigsaw/components/content/MediaComponent$Holder;->videoButton:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v3, v0, Landroid/graphics/Point;->x:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 114
    iget-object v1, p2, Lcom/evie/jigsaw/components/content/MediaComponent$Holder;->videoButton:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v3, v0, Landroid/graphics/Point;->y:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 117
    :cond_0
    iget-object v1, p2, Lcom/evie/jigsaw/components/content/MediaComponent$Holder;->videoButton:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 120
    :goto_0
    iget-object v1, p0, Lcom/evie/jigsaw/components/content/MediaComponent;->image:Lcom/evie/jigsaw/services/images/models/EvieImage;

    invoke-virtual {v1}, Lcom/evie/jigsaw/services/images/models/EvieImage;->getAttribution()Lcom/evie/jigsaw/services/attribution/models/Attribution;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evie/jigsaw/services/attribution/models/Attribution;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    iget-object v1, p0, Lcom/evie/jigsaw/components/content/MediaComponent;->videoUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    iget-object v1, p2, Lcom/evie/jigsaw/components/content/MediaComponent$Holder;->attribution:Lcom/evie/jigsaw/views/RichTextView;

    iget-object v3, p0, Lcom/evie/jigsaw/components/content/MediaComponent;->image:Lcom/evie/jigsaw/services/images/models/EvieImage;

    invoke-virtual {v3}, Lcom/evie/jigsaw/services/images/models/EvieImage;->getAttribution()Lcom/evie/jigsaw/services/attribution/models/Attribution;

    move-result-object v3

    invoke-virtual {v3}, Lcom/evie/jigsaw/services/attribution/models/Attribution;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3, v2}, Lcom/evie/jigsaw/components/content/MediaComponent;->bind(Lcom/evie/jigsaw/views/RichTextView;Ljava/lang/String;I)Z

    .line 126
    iget-object v1, p2, Lcom/evie/jigsaw/components/content/MediaComponent$Holder;->attribution:Lcom/evie/jigsaw/views/RichTextView;

    iget-object v3, p0, Lcom/evie/jigsaw/components/content/MediaComponent;->mAttributionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lcom/evie/jigsaw/views/RichTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 131
    :cond_1
    iget-object v1, p2, Lcom/evie/jigsaw/components/content/MediaComponent$Holder;->attribution:Lcom/evie/jigsaw/views/RichTextView;

    invoke-virtual {v1, v2}, Lcom/evie/jigsaw/views/RichTextView;->setVisibility(I)V

    .line 132
    iget-object v1, p2, Lcom/evie/jigsaw/components/content/MediaComponent$Holder;->itemView:Landroid/view/View;

    iget-object v3, p0, Lcom/evie/jigsaw/components/content/MediaComponent;->mAttributionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 136
    :cond_2
    iget-object v1, p2, Lcom/evie/jigsaw/components/content/MediaComponent$Holder;->attribution:Lcom/evie/jigsaw/views/RichTextView;

    invoke-virtual {v1, v2}, Lcom/evie/jigsaw/views/RichTextView;->setVisibility(I)V

    .line 139
    iget-object v1, p0, Lcom/evie/jigsaw/components/content/MediaComponent;->links:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 140
    iget-object v1, p2, Lcom/evie/jigsaw/components/content/MediaComponent$Holder;->itemView:Landroid/view/View;

    iget-object v3, p0, Lcom/evie/jigsaw/components/content/MediaComponent;->mLinkClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    :cond_3
    :goto_1
    iget-object v1, p2, Lcom/evie/jigsaw/components/content/MediaComponent$Holder;->overlay:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v3, p0, Lcom/evie/jigsaw/components/content/MediaComponent;->overlay:Lcom/evie/jigsaw/services/images/models/EvieImage;

    invoke-virtual {p0, v1, v3, v2}, Lcom/evie/jigsaw/components/content/MediaComponent;->bind(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/evie/jigsaw/services/images/models/Image;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 147
    iget-object p2, p2, Lcom/evie/jigsaw/components/content/MediaComponent$Holder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/evie/jigsaw/R$dimen;->media_overlay_offset:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_4
    return-void
.end method

.method protected getInset(Landroid/content/Context;)I
    .locals 1

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/evie/jigsaw/R$dimen;->three_quarter_spacing:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method public initialize(Lcom/evie/jigsaw/Jigsaw;)V
    .locals 0

    .line 96
    invoke-super {p0, p1}, Lcom/evie/jigsaw/components/base/AbstractComponent;->initialize(Lcom/evie/jigsaw/Jigsaw;)V

    .line 97
    invoke-virtual {p1, p0}, Lcom/evie/jigsaw/Jigsaw;->inject(Lcom/evie/jigsaw/components/content/MediaComponent;)V

    return-void
.end method

.method protected bridge synthetic inset(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 35
    check-cast p1, Lcom/evie/jigsaw/components/content/MediaComponent$Holder;

    invoke-virtual {p0, p1, p2}, Lcom/evie/jigsaw/components/content/MediaComponent;->inset(Lcom/evie/jigsaw/components/content/MediaComponent$Holder;I)V

    return-void
.end method

.method protected inset(Lcom/evie/jigsaw/components/content/MediaComponent$Holder;I)V
    .locals 1

    .line 179
    iget-object p1, p1, Lcom/evie/jigsaw/components/content/MediaComponent$Holder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p2, p2, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public measure(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 3

    .line 153
    invoke-super {p0, p1}, Lcom/evie/jigsaw/components/base/AbstractComponent;->measure(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/evie/jigsaw/components/content/MediaComponent;->image:Lcom/evie/jigsaw/services/images/models/EvieImage;

    if-eqz v1, :cond_0

    .line 156
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/evie/jigsaw/components/content/MediaComponent;->image:Lcom/evie/jigsaw/services/images/models/EvieImage;

    invoke-virtual {v2}, Lcom/evie/jigsaw/services/images/models/EvieImage;->getAspectRatio()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/evie/jigsaw/components/content/MediaComponent;->isInset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    invoke-virtual {p0, p1}, Lcom/evie/jigsaw/components/content/MediaComponent;->getInset(Landroid/content/Context;)I

    move-result p1

    .line 161
    iget v1, v0, Landroid/graphics/Point;->x:I

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 162
    iget v1, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Point;->y:I

    :cond_1
    return-object v0
.end method

.method public setImage(Lcom/evie/jigsaw/services/images/models/EvieImage;)Lcom/evie/jigsaw/components/content/MediaComponent;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/evie/jigsaw/components/content/MediaComponent;->image:Lcom/evie/jigsaw/services/images/models/EvieImage;

    return-object p0
.end method

.method public setOverlay(Lcom/evie/jigsaw/services/images/models/EvieImage;)Lcom/evie/jigsaw/components/content/MediaComponent;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/evie/jigsaw/components/content/MediaComponent;->overlay:Lcom/evie/jigsaw/services/images/models/EvieImage;

    return-object p0
.end method
