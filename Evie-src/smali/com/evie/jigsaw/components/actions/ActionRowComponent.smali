.class public Lcom/evie/jigsaw/components/actions/ActionRowComponent;
.super Lcom/evie/jigsaw/components/actions/AbstractActionComponent;
.source "ActionRowComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/jigsaw/components/actions/ActionRowComponent$Holder;,
        Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/jigsaw/components/actions/AbstractActionComponent<",
        "Lcom/evie/jigsaw/components/actions/ActionRowComponent$Holder;",
        ">;"
    }
.end annotation


# instance fields
.field transient analyticsService:Lcom/evie/common/services/analytics/AnalyticsService;

.field transient linkResolver:Lcom/evie/common/services/links/LinkResolver;

.field private final transient multiconListAdapter:Landroid/widget/BaseAdapter;

.field transient preferences:Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;-><init>()V

    .line 58
    new-instance v0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$1;

    invoke-direct {v0, p0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$1;-><init>(Lcom/evie/jigsaw/components/actions/ActionRowComponent;)V

    iput-object v0, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->multiconListAdapter:Landroid/widget/BaseAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/evie/jigsaw/components/actions/ActionRowComponent;Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->recordExecuteEvent(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;)V

    return-void
.end method

.method private bindMultiple(Lcom/evie/jigsaw/components/actions/holders/MultipleActionViewHolder;)Landroid/view/View;
    .locals 4

    .line 192
    iget-object v0, p1, Lcom/evie/jigsaw/components/actions/holders/MultipleActionViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 193
    iget-object v1, p1, Lcom/evie/jigsaw/components/actions/holders/MultipleActionViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->getTitle()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {p0, v1, v2, v3}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->bind(Landroid/widget/TextView;Ljava/lang/CharSequence;I)Z

    .line 194
    iget-object v1, p1, Lcom/evie/jigsaw/components/actions/holders/MultipleActionViewHolder;->description:Lcom/evie/jigsaw/views/RichTextView;

    invoke-virtual {p0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->bind(Lcom/evie/jigsaw/views/RichTextView;Ljava/lang/String;I)Z

    .line 197
    iget-object v1, p1, Lcom/evie/jigsaw/components/actions/holders/MultipleActionViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->makeOpenActionDialogListener(Landroid/content/Context;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v1, p1, Lcom/evie/jigsaw/components/actions/holders/MultipleActionViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 202
    invoke-virtual {p0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->getIcon()Lcom/evie/jigsaw/services/images/models/EvieImage;

    move-result-object v1

    if-nez v1, :cond_0

    .line 205
    iget-object v1, p1, Lcom/evie/jigsaw/components/actions/holders/MultipleActionViewHolder;->multicon:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->multiconListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 208
    iget-object v1, p1, Lcom/evie/jigsaw/components/actions/holders/MultipleActionViewHolder;->multicon:Landroid/widget/GridView;

    invoke-direct {p0, v0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->makeOpenActionDialogAdapterListener(Landroid/content/Context;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 211
    iget-object v0, p1, Lcom/evie/jigsaw/components/actions/holders/MultipleActionViewHolder;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v3}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p1, Lcom/evie/jigsaw/components/actions/holders/MultipleActionViewHolder;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->getIcon()Lcom/evie/jigsaw/services/images/models/EvieImage;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->bind(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/evie/jigsaw/services/images/models/Image;I)Z

    .line 217
    iget-object v0, p1, Lcom/evie/jigsaw/components/actions/holders/MultipleActionViewHolder;->multicon:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 220
    :goto_0
    iget-object p1, p1, Lcom/evie/jigsaw/components/actions/holders/MultipleActionViewHolder;->itemView:Landroid/view/View;

    return-object p1
.end method

.method private bindSingle(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;)Landroid/view/View;
    .locals 4

    .line 121
    iget-object v0, p2, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 123
    invoke-virtual {p0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->getIcon()Lcom/evie/jigsaw/services/images/models/EvieImage;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p2, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->getIcon()Lcom/evie/jigsaw/services/images/models/EvieImage;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->bind(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/evie/jigsaw/services/images/models/Image;)Z

    goto :goto_0

    .line 127
    :cond_0
    iget-object v1, p2, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->getIcon()Lcom/evie/jigsaw/services/images/models/EvieImage;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->bind(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/evie/jigsaw/services/images/models/Image;)Z

    .line 130
    :goto_0
    iget-object v1, p2, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->getTitle()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {p0, v1, v2, v3}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->bind(Landroid/widget/TextView;Ljava/lang/CharSequence;I)Z

    .line 131
    iget-object v1, p2, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;->description:Lcom/evie/jigsaw/views/RichTextView;

    invoke-virtual {p1}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->getPermittedDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->bind(Lcom/evie/jigsaw/views/RichTextView;Ljava/lang/String;I)Z

    .line 134
    iget-object v1, p2, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/evie/jigsaw/components/actions/ActionRowComponent$2;

    invoke-direct {v2, p0, p1}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$2;-><init>(Lcom/evie/jigsaw/components/actions/ActionRowComponent;Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v1, p2, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->getListenerToShortcut()Landroid/view/View$OnLongClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 146
    invoke-virtual {p0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 149
    iget-object v1, p2, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;->mainButton:Landroid/widget/ImageView;

    sget v2, Lcom/evie/jigsaw/R$drawable;->more_options_icon:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 150
    iget-object v1, p2, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;->mainButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->makeOpenActionDialogListener(Landroid/content/Context;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v1, p2, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;->mainButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/evie/jigsaw/R$dimen;->action_row_more_options_inset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 155
    iget-object v1, p2, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;->mainButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_1

    .line 160
    :cond_1
    iget-object v0, p2, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;->mainButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    :goto_1
    invoke-virtual {p1}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->hasCustomButton()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p2, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;->customButton:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->getCustomButtonImage()Lcom/evie/jigsaw/services/images/models/EvieImage;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->bind(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/evie/jigsaw/services/images/models/Image;)Z

    .line 167
    iget-object v0, p2, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;->customButton:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v1, Lcom/evie/jigsaw/components/actions/ActionRowComponent$3;

    invoke-direct {v1, p0, p1}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$3;-><init>(Lcom/evie/jigsaw/components/actions/ActionRowComponent;Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;)V

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 179
    :cond_2
    iget-object p1, p2, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;->customButton:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1, v3}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 182
    :goto_2
    iget-object p1, p2, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;->itemView:Landroid/view/View;

    return-object p1
.end method

.method private makeOpenActionDialogAdapterListener(Landroid/content/Context;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .line 234
    new-instance v0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$5;

    invoke-direct {v0, p0, p1}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$5;-><init>(Lcom/evie/jigsaw/components/actions/ActionRowComponent;Landroid/content/Context;)V

    return-object v0
.end method

.method private makeOpenActionDialogListener(Landroid/content/Context;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 224
    new-instance v0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$4;

    invoke-direct {v0, p0, p1}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$4;-><init>(Lcom/evie/jigsaw/components/actions/ActionRowComponent;Landroid/content/Context;)V

    return-object v0
.end method

.method private recordExecuteEvent(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;)V
    .locals 4

    .line 244
    invoke-virtual {p0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->getAnalytics()Lcom/evie/common/services/analytics/models/AnalyticsData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->analyticsService:Lcom/evie/common/services/analytics/AnalyticsService;

    invoke-virtual {p0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->getAppName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, v2, v3, p1}, Lcom/evie/common/services/analytics/AnalyticsService;->recordActionRowExecuteEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 40
    check-cast p2, Lcom/evie/jigsaw/components/actions/ActionRowComponent$Holder;

    invoke-virtual {p0, p1, p2}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->bind(Landroid/content/Context;Lcom/evie/jigsaw/components/actions/ActionRowComponent$Holder;)V

    return-void
.end method

.method public bind(Landroid/content/Context;Lcom/evie/jigsaw/components/actions/ActionRowComponent$Holder;)V
    .locals 4

    .line 96
    invoke-super {p0, p1, p2}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->bind(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 97
    iget-object p2, p2, Lcom/evie/jigsaw/components/actions/ActionRowComponent$Holder;->container:Landroid/view/ViewGroup;

    .line 98
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 99
    invoke-virtual {p0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->getPreferredItem()Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    move-result-object v0

    .line 102
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 105
    new-instance v2, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;

    sget v3, Lcom/evie/jigsaw/R$layout;->v2_subcomponent_action_single:I

    .line 106
    invoke-virtual {p1, v3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;-><init>(Landroid/view/View;)V

    invoke-direct {p0, v0, v2}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->bindSingle(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/evie/jigsaw/components/actions/holders/MultipleActionViewHolder;

    sget v2, Lcom/evie/jigsaw/R$layout;->v2_subcomponent_action_multiple:I

    .line 107
    invoke-virtual {p1, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/evie/jigsaw/components/actions/holders/MultipleActionViewHolder;-><init>(Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->bindMultiple(Lcom/evie/jigsaw/components/actions/holders/MultipleActionViewHolder;)Landroid/view/View;

    move-result-object p1

    .line 105
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public initialize(Lcom/evie/jigsaw/Jigsaw;)V
    .locals 0

    .line 90
    invoke-super {p0, p1}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->initialize(Lcom/evie/jigsaw/Jigsaw;)V

    .line 91
    invoke-virtual {p1, p0}, Lcom/evie/jigsaw/Jigsaw;->inject(Lcom/evie/jigsaw/components/actions/ActionRowComponent;)V

    return-void
.end method
