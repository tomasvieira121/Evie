.class public Lcom/evie/jigsaw/adapters/ComponentListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ComponentListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final PLACEHOLDER:Lcom/evie/jigsaw/components/containers/EmptyComponent;


# instance fields
.field private final mComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/jigsaw/components/base/AbstractComponent<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mSpacingStrategy:Lcom/evie/jigsaw/adapters/spacing/SpacingStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/evie/jigsaw/components/containers/EmptyComponent;

    invoke-direct {v0}, Lcom/evie/jigsaw/components/containers/EmptyComponent;-><init>()V

    sput-object v0, Lcom/evie/jigsaw/adapters/ComponentListAdapter;->PLACEHOLDER:Lcom/evie/jigsaw/components/containers/EmptyComponent;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/evie/jigsaw/adapters/spacing/SpacingStrategy;Lcom/evie/jigsaw/components/delimiters/AbstractDelimiterComponent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/evie/jigsaw/components/base/AbstractComponent<",
            "*>;>;",
            "Lcom/evie/jigsaw/adapters/spacing/SpacingStrategy;",
            "Lcom/evie/jigsaw/components/delimiters/AbstractDelimiterComponent<",
            "*>;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/evie/jigsaw/adapters/ComponentListAdapter;->mComponents:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 34
    iput-object p2, p0, Lcom/evie/jigsaw/adapters/ComponentListAdapter;->mSpacingStrategy:Lcom/evie/jigsaw/adapters/spacing/SpacingStrategy;

    goto :goto_0

    .line 37
    :cond_0
    sget-object p2, Lcom/evie/jigsaw/adapters/spacing/SpacingStrategy;->NO_SPACING:Lcom/evie/jigsaw/adapters/spacing/SpacingStrategy;

    iput-object p2, p0, Lcom/evie/jigsaw/adapters/ComponentListAdapter;->mSpacingStrategy:Lcom/evie/jigsaw/adapters/spacing/SpacingStrategy;

    :goto_0
    if-eqz p3, :cond_1

    const/4 p2, 0x1

    .line 41
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 42
    invoke-interface {p1, p2, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x2

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/evie/jigsaw/adapters/ComponentListAdapter;->mComponents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/evie/jigsaw/adapters/ComponentListAdapter;->mComponents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/jigsaw/components/base/AbstractComponent;

    .line 67
    invoke-virtual {p1}, Lcom/evie/jigsaw/components/base/AbstractComponent;->ready()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    sget-object p1, Lcom/evie/jigsaw/adapters/ComponentListAdapter;->PLACEHOLDER:Lcom/evie/jigsaw/components/containers/EmptyComponent;

    invoke-static {p1}, Lcom/evie/jigsaw/internal/Library;->layoutForComponent(Lcom/evie/jigsaw/components/base/AbstractComponent;)I

    move-result p1

    return p1

    .line 71
    :cond_0
    invoke-static {p1}, Lcom/evie/jigsaw/internal/Library;->layoutForComponent(Lcom/evie/jigsaw/components/base/AbstractComponent;)I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 56
    instance-of v0, p1, Lcom/evie/jigsaw/components/containers/EmptyComponent$Holder;

    if-eqz v0, :cond_0

    return-void

    .line 57
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 58
    iget-object v1, p0, Lcom/evie/jigsaw/adapters/ComponentListAdapter;->mComponents:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/jigsaw/components/base/AbstractComponent;

    .line 59
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/evie/jigsaw/components/base/AbstractComponent;->bind(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 60
    iget-object p1, p0, Lcom/evie/jigsaw/adapters/ComponentListAdapter;->mSpacingStrategy:Lcom/evie/jigsaw/adapters/spacing/SpacingStrategy;

    invoke-virtual {p0}, Lcom/evie/jigsaw/adapters/ComponentListAdapter;->getItemCount()I

    move-result v1

    invoke-interface {p1, v0, p2, v1}, Lcom/evie/jigsaw/adapters/spacing/SpacingStrategy;->space(Landroid/view/View;II)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 49
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 51
    invoke-static {p2, p1}, Lcom/evie/jigsaw/internal/Library;->holderForLayout(ILandroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method
