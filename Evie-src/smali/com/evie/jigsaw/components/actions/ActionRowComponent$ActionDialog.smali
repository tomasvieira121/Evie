.class Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;
.super Landroid/app/Dialog;
.source "ActionRowComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/components/actions/ActionRowComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionDialog"
.end annotation


# instance fields
.field private mCloseMethod:Lcom/evie/common/services/analytics/models/CloseMethod;

.field private mItemsAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private mPreferredItemHolder:Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;

.field final synthetic this$0:Lcom/evie/jigsaw/components/actions/ActionRowComponent;


# direct methods
.method constructor <init>(Lcom/evie/jigsaw/components/actions/ActionRowComponent;Landroid/content/Context;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->this$0:Lcom/evie/jigsaw/components/actions/ActionRowComponent;

    .line 271
    sget p1, Lcom/evie/jigsaw/R$style;->ActionDialog:I

    invoke-direct {p0, p2, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 263
    sget-object p1, Lcom/evie/common/services/analytics/models/CloseMethod;->HARDWARE_TOUCH:Lcom/evie/common/services/analytics/models/CloseMethod;

    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->mCloseMethod:Lcom/evie/common/services/analytics/models/CloseMethod;

    return-void
.end method

.method static synthetic access$100(Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;)V
    .locals 0

    .line 252
    invoke-direct {p0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->recordCloseEvent()V

    return-void
.end method

.method static synthetic access$200(Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;)V
    .locals 0

    .line 252
    invoke-direct {p0, p1, p2}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->bindDialogItem(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;)V
    .locals 0

    .line 252
    invoke-direct {p0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->unprefer()V

    return-void
.end method

.method static synthetic access$400(Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;)V
    .locals 0

    .line 252
    invoke-direct {p0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->recordUnselectEvent()V

    return-void
.end method

.method static synthetic access$500(Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;)V
    .locals 0

    .line 252
    invoke-direct {p0, p1}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->prefer(Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;)V

    return-void
.end method

.method static synthetic access$600(Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;)V
    .locals 0

    .line 252
    invoke-direct {p0, p1}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->recordSelectEvent(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;)V

    return-void
.end method

.method static synthetic access$700(Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;Lcom/evie/common/services/analytics/models/CloseMethod;)V
    .locals 0

    .line 252
    invoke-direct {p0, p1}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->dismiss(Lcom/evie/common/services/analytics/models/CloseMethod;)V

    return-void
.end method

.method private bindDialogItem(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;)V
    .locals 5

    .line 376
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->this$0:Lcom/evie/jigsaw/components/actions/ActionRowComponent;

    invoke-virtual {v0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 377
    iget-object v1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->this$0:Lcom/evie/jigsaw/components/actions/ActionRowComponent;

    iget-object v2, p2, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->getIcon()Lcom/evie/jigsaw/services/images/models/EvieImage;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->bind(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/evie/jigsaw/services/images/models/Image;)Z

    .line 380
    iget-object v1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->this$0:Lcom/evie/jigsaw/components/actions/ActionRowComponent;

    iget-object v2, p2, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v1, v2, v3, v4}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->bind(Landroid/widget/TextView;Ljava/lang/CharSequence;I)Z

    .line 383
    iget-object v1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->this$0:Lcom/evie/jigsaw/components/actions/ActionRowComponent;

    iget-object v2, p2, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;->description:Lcom/evie/jigsaw/views/RichTextView;

    invoke-virtual {p1}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->getPermittedDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->bind(Lcom/evie/jigsaw/views/RichTextView;Ljava/lang/String;I)Z

    .line 386
    iget-object v1, p2, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$3;

    invoke-direct {v2, p0, p1}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$3;-><init>(Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    iget-object v1, p2, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->getListenerToShortcut()Landroid/view/View$OnLongClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 398
    invoke-virtual {p1}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->isPreferred()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    invoke-direct {p0, p2}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->prefer(Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;)V

    goto :goto_0

    .line 402
    :cond_0
    iget-object v1, p2, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;->mainButton:Landroid/widget/ImageView;

    sget v2, Lcom/evie/jigsaw/R$drawable;->star_outline:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 406
    :goto_0
    invoke-virtual {p0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/evie/jigsaw/R$dimen;->action_row_star_inset:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 407
    iget-object v2, p2, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;->mainButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 410
    iget-object v1, p2, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;->mainButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$4;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$4;-><init>(Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;Ljava/lang/String;Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    invoke-virtual {p1}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->hasCustomButton()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->this$0:Lcom/evie/jigsaw/components/actions/ActionRowComponent;

    iget-object v1, p2, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;->customButton:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->getCustomButtonImage()Lcom/evie/jigsaw/services/images/models/EvieImage;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->bind(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/evie/jigsaw/services/images/models/Image;)Z

    .line 440
    iget-object p2, p2, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;->customButton:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$5;

    invoke-direct {v0, p0, p1}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$5;-><init>(Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;)V

    invoke-virtual {p2, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 452
    :cond_1
    iget-object p1, p2, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;->customButton:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1, v4}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private dismiss(Lcom/evie/common/services/analytics/models/CloseMethod;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->mCloseMethod:Lcom/evie/common/services/analytics/models/CloseMethod;

    .line 490
    invoke-virtual {p0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->dismiss()V

    return-void
.end method

.method private getDialogItemsAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 312
    new-instance v0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$2;

    invoke-direct {v0, p0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$2;-><init>(Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;)V

    return-object v0
.end method

.method private prefer(Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;)V
    .locals 1

    .line 458
    invoke-direct {p0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->unprefer()V

    .line 459
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->mPreferredItemHolder:Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;

    .line 460
    iget-object p1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->mPreferredItemHolder:Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;

    iget-object p1, p1, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;->mainButton:Landroid/widget/ImageView;

    sget v0, Lcom/evie/jigsaw/R$drawable;->star:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private recordCloseEvent()V
    .locals 3

    .line 483
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->this$0:Lcom/evie/jigsaw/components/actions/ActionRowComponent;

    invoke-virtual {v0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->getAnalytics()Lcom/evie/common/services/analytics/models/AnalyticsData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 485
    :cond_0
    iget-object v1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->this$0:Lcom/evie/jigsaw/components/actions/ActionRowComponent;

    iget-object v1, v1, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->analyticsService:Lcom/evie/common/services/analytics/AnalyticsService;

    iget-object v2, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->mCloseMethod:Lcom/evie/common/services/analytics/models/CloseMethod;

    invoke-interface {v1, v0, v2}, Lcom/evie/common/services/analytics/AnalyticsService;->recordActionDialogCloseEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Lcom/evie/common/services/analytics/models/CloseMethod;)V

    return-void
.end method

.method private recordSelectEvent(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;)V
    .locals 4

    .line 471
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->this$0:Lcom/evie/jigsaw/components/actions/ActionRowComponent;

    invoke-virtual {v0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->getAnalytics()Lcom/evie/common/services/analytics/models/AnalyticsData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 473
    :cond_0
    iget-object v1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->this$0:Lcom/evie/jigsaw/components/actions/ActionRowComponent;

    iget-object v1, v1, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->analyticsService:Lcom/evie/common/services/analytics/AnalyticsService;

    iget-object v2, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->this$0:Lcom/evie/jigsaw/components/actions/ActionRowComponent;

    invoke-virtual {v2}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->getAppName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, v2, v3, p1}, Lcom/evie/common/services/analytics/AnalyticsService;->recordActionDialogSelectEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private recordUnselectEvent()V
    .locals 3

    .line 477
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->this$0:Lcom/evie/jigsaw/components/actions/ActionRowComponent;

    invoke-virtual {v0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->getAnalytics()Lcom/evie/common/services/analytics/models/AnalyticsData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 479
    :cond_0
    iget-object v1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->this$0:Lcom/evie/jigsaw/components/actions/ActionRowComponent;

    iget-object v1, v1, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->analyticsService:Lcom/evie/common/services/analytics/AnalyticsService;

    iget-object v2, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->this$0:Lcom/evie/jigsaw/components/actions/ActionRowComponent;

    invoke-virtual {v2}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/evie/common/services/analytics/AnalyticsService;->recordActionDialogUnselectEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Ljava/lang/String;)V

    return-void
.end method

.method private unprefer()V
    .locals 2

    .line 464
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->mPreferredItemHolder:Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, v0, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;->mainButton:Landroid/widget/ImageView;

    sget v1, Lcom/evie/jigsaw/R$drawable;->star_outline:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    .line 466
    iput-object v0, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->mPreferredItemHolder:Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 276
    invoke-virtual {p0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/evie/jigsaw/R$layout;->v2_subcomponent_action_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 277
    sget v0, Lcom/evie/jigsaw/R$id;->action_dialog_items:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 278
    invoke-direct {p0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->getDialogItemsAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    iput-object v1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->mItemsAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 279
    iget-object v1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->mItemsAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 280
    invoke-virtual {p0, p1}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->setContentView(Landroid/view/View;)V

    .line 282
    invoke-virtual {p0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x50

    .line 283
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 284
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 286
    new-instance p1, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$1;

    invoke-direct {p1, p0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog$1;-><init>(Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;)V

    invoke-virtual {p0, p1}, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 307
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 308
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->this$0:Lcom/evie/jigsaw/components/actions/ActionRowComponent;

    invoke-virtual {v0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->invalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 297
    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 298
    sget-object p1, Lcom/evie/common/services/analytics/models/CloseMethod;->EMPTY_SPACE_TOUCH:Lcom/evie/common/services/analytics/models/CloseMethod;

    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$ActionDialog;->mCloseMethod:Lcom/evie/common/services/analytics/models/CloseMethod;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
