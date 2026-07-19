.class public abstract Lcom/evie/jigsaw/components/containers/AbstractListComponent;
.super Lcom/evie/jigsaw/components/containers/AbstractContainerComponent;
.source "AbstractListComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/jigsaw/components/containers/AbstractListComponent$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/jigsaw/components/containers/AbstractContainerComponent<",
        "Lcom/evie/jigsaw/components/containers/AbstractListComponent$Holder;",
        ">;"
    }
.end annotation


# instance fields
.field private overscroll:Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;

.field private spacing:Lcom/evie/jigsaw/adapters/spacing/SpacingType;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/evie/jigsaw/components/containers/AbstractContainerComponent;-><init>()V

    .line 27
    sget-object v0, Lcom/evie/jigsaw/adapters/spacing/SpacingType;->regular:Lcom/evie/jigsaw/adapters/spacing/SpacingType;

    iput-object v0, p0, Lcom/evie/jigsaw/components/containers/AbstractListComponent;->spacing:Lcom/evie/jigsaw/adapters/spacing/SpacingType;

    .line 29
    sget-object v0, Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;->regular:Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;

    iput-object v0, p0, Lcom/evie/jigsaw/components/containers/AbstractListComponent;->overscroll:Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 19
    check-cast p2, Lcom/evie/jigsaw/components/containers/AbstractListComponent$Holder;

    invoke-virtual {p0, p1, p2}, Lcom/evie/jigsaw/components/containers/AbstractListComponent;->bind(Landroid/content/Context;Lcom/evie/jigsaw/components/containers/AbstractListComponent$Holder;)V

    return-void
.end method

.method public bind(Landroid/content/Context;Lcom/evie/jigsaw/components/containers/AbstractListComponent$Holder;)V
    .locals 3

    .line 33
    invoke-super {p0, p1, p2}, Lcom/evie/jigsaw/components/containers/AbstractContainerComponent;->bind(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 34
    iget-object v0, p2, Lcom/evie/jigsaw/components/containers/AbstractListComponent$Holder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/evie/jigsaw/components/containers/AbstractListComponent;->title:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/evie/jigsaw/components/containers/AbstractListComponent;->bind(Landroid/widget/TextView;Ljava/lang/CharSequence;I)Z

    .line 35
    iget-object v0, p2, Lcom/evie/jigsaw/components/containers/AbstractListComponent$Holder;->items:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lcom/evie/jigsaw/components/containers/AbstractListComponent;->getAdapter(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/evie/jigsaw/components/containers/AbstractListComponent;->getManager(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/evie/jigsaw/components/containers/AbstractListComponent;->bind(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 37
    sget-object p1, Lcom/evie/jigsaw/components/containers/AbstractListComponent$1;->$SwitchMap$com$evie$jigsaw$adapters$scrolling$ScrollingType:[I

    iget-object v0, p0, Lcom/evie/jigsaw/components/containers/AbstractListComponent;->overscroll:Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;

    invoke-virtual {v0}, Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 43
    :pswitch_0
    iget-object p1, p2, Lcom/evie/jigsaw/components/containers/AbstractListComponent$Holder;->items:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setOverScrollMode(I)V

    goto :goto_0

    .line 39
    :pswitch_1
    iget-object p1, p2, Lcom/evie/jigsaw/components/containers/AbstractListComponent$Holder;->items:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setOverScrollMode(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getAdapter(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 3

    .line 54
    new-instance v0, Lcom/evie/jigsaw/adapters/ComponentListAdapter;

    invoke-virtual {p0}, Lcom/evie/jigsaw/components/containers/AbstractListComponent;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/evie/jigsaw/components/containers/AbstractListComponent;->getSpacingStrategy(Landroid/content/Context;)Lcom/evie/jigsaw/adapters/spacing/SpacingStrategy;

    move-result-object p1

    invoke-virtual {p0}, Lcom/evie/jigsaw/components/containers/AbstractListComponent;->getDelimiter()Lcom/evie/jigsaw/components/delimiters/AbstractDelimiterComponent;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/evie/jigsaw/adapters/ComponentListAdapter;-><init>(Ljava/util/List;Lcom/evie/jigsaw/adapters/spacing/SpacingStrategy;Lcom/evie/jigsaw/components/delimiters/AbstractDelimiterComponent;)V

    return-object v0
.end method

.method protected abstract getDelimiter()Lcom/evie/jigsaw/components/delimiters/AbstractDelimiterComponent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/evie/jigsaw/components/delimiters/AbstractDelimiterComponent<",
            "*>;"
        }
    .end annotation
.end method

.method public getInset(Landroid/content/Context;)I
    .locals 1

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/evie/jigsaw/R$dimen;->base_and_half_spacing:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method protected abstract getManager(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.end method

.method public getSpacing()Lcom/evie/jigsaw/adapters/spacing/SpacingType;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/evie/jigsaw/components/containers/AbstractListComponent;->spacing:Lcom/evie/jigsaw/adapters/spacing/SpacingType;

    return-object v0
.end method

.method protected abstract getSpacingStrategy(Landroid/content/Context;)Lcom/evie/jigsaw/adapters/spacing/SpacingStrategy;
.end method

.method public setSpacing(Lcom/evie/jigsaw/adapters/spacing/SpacingType;)Lcom/evie/jigsaw/components/containers/AbstractListComponent;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/evie/jigsaw/components/containers/AbstractListComponent;->spacing:Lcom/evie/jigsaw/adapters/spacing/SpacingType;

    return-object p0
.end method
