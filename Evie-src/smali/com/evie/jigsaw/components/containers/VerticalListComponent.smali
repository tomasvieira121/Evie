.class public Lcom/evie/jigsaw/components/containers/VerticalListComponent;
.super Lcom/evie/jigsaw/components/containers/AbstractListComponent;
.source "VerticalListComponent.java"


# instance fields
.field private delimiter:Lcom/evie/jigsaw/components/delimiters/HorizontalDelimiterComponent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/evie/jigsaw/components/containers/AbstractListComponent;-><init>()V

    return-void
.end method

.method private getSpace(Landroid/content/Context;)I
    .locals 1

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/evie/jigsaw/R$dimen;->three_quarter_spacing:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public bridge synthetic bind(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 17
    check-cast p2, Lcom/evie/jigsaw/components/containers/AbstractListComponent$Holder;

    invoke-virtual {p0, p1, p2}, Lcom/evie/jigsaw/components/containers/VerticalListComponent;->bind(Landroid/content/Context;Lcom/evie/jigsaw/components/containers/AbstractListComponent$Holder;)V

    return-void
.end method

.method public bind(Landroid/content/Context;Lcom/evie/jigsaw/components/containers/AbstractListComponent$Holder;)V
    .locals 3

    .line 26
    invoke-super {p0, p1, p2}, Lcom/evie/jigsaw/components/containers/AbstractListComponent;->bind(Landroid/content/Context;Lcom/evie/jigsaw/components/containers/AbstractListComponent$Holder;)V

    .line 27
    iget-object v0, p2, Lcom/evie/jigsaw/components/containers/AbstractListComponent$Holder;->items:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollingTouchSlop(I)V

    .line 29
    sget-object v0, Lcom/evie/jigsaw/components/containers/VerticalListComponent$1;->$SwitchMap$com$evie$jigsaw$adapters$spacing$SpacingType:[I

    invoke-virtual {p0}, Lcom/evie/jigsaw/components/containers/VerticalListComponent;->getSpacing()Lcom/evie/jigsaw/adapters/spacing/SpacingType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/evie/jigsaw/adapters/spacing/SpacingType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    iget-object p2, p2, Lcom/evie/jigsaw/components/containers/AbstractListComponent$Holder;->title:Landroid/widget/TextView;

    .line 32
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 34
    invoke-direct {p0, p1}, Lcom/evie/jigsaw/components/containers/VerticalListComponent;->getSpace(Landroid/content/Context;)I

    move-result p1

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_0
    return-void
.end method

.method public bridge synthetic getDelimiter()Lcom/evie/jigsaw/components/delimiters/AbstractDelimiterComponent;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/evie/jigsaw/components/containers/VerticalListComponent;->getDelimiter()Lcom/evie/jigsaw/components/delimiters/HorizontalDelimiterComponent;

    move-result-object v0

    return-object v0
.end method

.method public getDelimiter()Lcom/evie/jigsaw/components/delimiters/HorizontalDelimiterComponent;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/evie/jigsaw/components/containers/VerticalListComponent;->delimiter:Lcom/evie/jigsaw/components/delimiters/HorizontalDelimiterComponent;

    return-object v0
.end method

.method protected getManager(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 41
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 42
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setAutoMeasureEnabled(Z)V

    return-object v0
.end method

.method protected getSpacingStrategy(Landroid/content/Context;)Lcom/evie/jigsaw/adapters/spacing/SpacingStrategy;
    .locals 2

    .line 48
    sget-object v0, Lcom/evie/jigsaw/components/containers/VerticalListComponent$1;->$SwitchMap$com$evie$jigsaw$adapters$spacing$SpacingType:[I

    invoke-virtual {p0}, Lcom/evie/jigsaw/components/containers/VerticalListComponent;->getSpacing()Lcom/evie/jigsaw/adapters/spacing/SpacingType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evie/jigsaw/adapters/spacing/SpacingType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 53
    sget-object p1, Lcom/evie/jigsaw/adapters/spacing/SpacingStrategy;->NO_SPACING:Lcom/evie/jigsaw/adapters/spacing/SpacingStrategy;

    return-object p1

    .line 50
    :cond_0
    new-instance v0, Lcom/evie/jigsaw/adapters/spacing/VerticalListSpacingStrategy;

    invoke-direct {p0, p1}, Lcom/evie/jigsaw/components/containers/VerticalListComponent;->getSpace(Landroid/content/Context;)I

    move-result p1

    invoke-direct {v0, p1}, Lcom/evie/jigsaw/adapters/spacing/VerticalListSpacingStrategy;-><init>(I)V

    return-object v0
.end method

.method public setDelimiter(Lcom/evie/jigsaw/components/delimiters/HorizontalDelimiterComponent;)Lcom/evie/jigsaw/components/containers/VerticalListComponent;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/evie/jigsaw/components/containers/VerticalListComponent;->delimiter:Lcom/evie/jigsaw/components/delimiters/HorizontalDelimiterComponent;

    return-object p0
.end method
