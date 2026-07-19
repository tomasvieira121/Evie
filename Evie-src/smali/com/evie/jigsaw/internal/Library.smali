.class public final Lcom/evie/jigsaw/internal/Library;
.super Ljava/lang/Object;
.source "Library.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/jigsaw/internal/Library$ViewHolderFactory;
    }
.end annotation


# static fields
.field private static final FACTORY_FOR_LAYOUT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/evie/jigsaw/internal/Library$ViewHolderFactory;",
            ">;"
        }
    .end annotation
.end field

.field private static final LAYOUT_FOR_TYPE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/evie/jigsaw/components/base/AbstractComponent;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/evie/jigsaw/internal/Library;->FACTORY_FOR_LAYOUT:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/evie/jigsaw/internal/Library;->LAYOUT_FOR_TYPE:Ljava/util/Map;

    .line 58
    const-class v0, Lcom/evie/jigsaw/components/content/MediaComponent;

    sget v1, Lcom/evie/jigsaw/R$layout;->v2_component_media:I

    new-instance v2, Lcom/evie/jigsaw/internal/Library$1;

    invoke-direct {v2}, Lcom/evie/jigsaw/internal/Library$1;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/evie/jigsaw/internal/Library;->register(Ljava/lang/Class;ILcom/evie/jigsaw/internal/Library$ViewHolderFactory;)V

    .line 68
    const-class v0, Lcom/evie/jigsaw/components/content/DetailsComponent;

    sget v1, Lcom/evie/jigsaw/R$layout;->v2_component_details:I

    new-instance v2, Lcom/evie/jigsaw/internal/Library$2;

    invoke-direct {v2}, Lcom/evie/jigsaw/internal/Library$2;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/evie/jigsaw/internal/Library;->register(Ljava/lang/Class;ILcom/evie/jigsaw/internal/Library$ViewHolderFactory;)V

    .line 78
    new-instance v0, Lcom/evie/jigsaw/internal/Library$3;

    invoke-direct {v0}, Lcom/evie/jigsaw/internal/Library$3;-><init>()V

    .line 86
    const-class v1, Lcom/evie/jigsaw/components/containers/VerticalListComponent;

    sget v2, Lcom/evie/jigsaw/R$layout;->v2_component_vertical_list:I

    invoke-static {v1, v2, v0}, Lcom/evie/jigsaw/internal/Library;->register(Ljava/lang/Class;ILcom/evie/jigsaw/internal/Library$ViewHolderFactory;)V

    .line 88
    const-class v0, Lcom/evie/jigsaw/components/content/DialogComponent;

    sget v1, Lcom/evie/jigsaw/R$layout;->v2_component_dialog:I

    new-instance v2, Lcom/evie/jigsaw/internal/Library$4;

    invoke-direct {v2}, Lcom/evie/jigsaw/internal/Library$4;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/evie/jigsaw/internal/Library;->register(Ljava/lang/Class;ILcom/evie/jigsaw/internal/Library$ViewHolderFactory;)V

    .line 98
    const-class v0, Lcom/evie/jigsaw/components/containers/StackComponent;

    sget v1, Lcom/evie/jigsaw/R$layout;->v2_component_stack:I

    new-instance v2, Lcom/evie/jigsaw/internal/Library$5;

    invoke-direct {v2}, Lcom/evie/jigsaw/internal/Library$5;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/evie/jigsaw/internal/Library;->register(Ljava/lang/Class;ILcom/evie/jigsaw/internal/Library$ViewHolderFactory;)V

    .line 108
    const-class v0, Lcom/evie/jigsaw/components/containers/EmptyComponent;

    sget v1, Lcom/evie/jigsaw/R$layout;->v2_component_empty:I

    new-instance v2, Lcom/evie/jigsaw/internal/Library$6;

    invoke-direct {v2}, Lcom/evie/jigsaw/internal/Library$6;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/evie/jigsaw/internal/Library;->register(Ljava/lang/Class;ILcom/evie/jigsaw/internal/Library$ViewHolderFactory;)V

    .line 118
    const-class v0, Lcom/evie/jigsaw/components/delimiters/HorizontalDelimiterComponent;

    sget v1, Lcom/evie/jigsaw/R$layout;->v2_component_horizontal_delimiter:I

    new-instance v2, Lcom/evie/jigsaw/internal/Library$7;

    invoke-direct {v2}, Lcom/evie/jigsaw/internal/Library$7;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/evie/jigsaw/internal/Library;->register(Ljava/lang/Class;ILcom/evie/jigsaw/internal/Library$ViewHolderFactory;)V

    .line 128
    const-class v0, Lcom/evie/jigsaw/components/delimiters/VerticalDelimiterComponent;

    sget v1, Lcom/evie/jigsaw/R$layout;->v2_component_vertical_delimiter:I

    new-instance v2, Lcom/evie/jigsaw/internal/Library$8;

    invoke-direct {v2}, Lcom/evie/jigsaw/internal/Library$8;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/evie/jigsaw/internal/Library;->register(Ljava/lang/Class;ILcom/evie/jigsaw/internal/Library$ViewHolderFactory;)V

    .line 138
    const-class v0, Lcom/evie/jigsaw/components/actions/ActionRowComponent;

    sget v1, Lcom/evie/jigsaw/R$layout;->v2_component_action_row:I

    new-instance v2, Lcom/evie/jigsaw/internal/Library$9;

    invoke-direct {v2}, Lcom/evie/jigsaw/internal/Library$9;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/evie/jigsaw/internal/Library;->register(Ljava/lang/Class;ILcom/evie/jigsaw/internal/Library$ViewHolderFactory;)V

    .line 149
    const-class v0, Lcom/evie/jigsaw/components/navigation/BackComponent;

    sget v1, Lcom/evie/jigsaw/R$layout;->v2_component_back:I

    new-instance v2, Lcom/evie/jigsaw/internal/Library$10;

    invoke-direct {v2}, Lcom/evie/jigsaw/internal/Library$10;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/evie/jigsaw/internal/Library;->register(Ljava/lang/Class;ILcom/evie/jigsaw/internal/Library$ViewHolderFactory;)V

    return-void
.end method

.method public static holderForLayout(ILandroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 30
    sget-object v0, Lcom/evie/jigsaw/internal/Library;->FACTORY_FOR_LAYOUT:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/jigsaw/internal/Library$ViewHolderFactory;

    invoke-virtual {p0, p1}, Lcom/evie/jigsaw/internal/Library$ViewHolderFactory;->create(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public static layoutForComponent(Lcom/evie/jigsaw/components/base/AbstractComponent;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/jigsaw/components/base/AbstractComponent<",
            "*>;)I"
        }
    .end annotation

    .line 34
    sget-object v0, Lcom/evie/jigsaw/internal/Library;->LAYOUT_FOR_TYPE:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static register(Ljava/lang/Class;ILcom/evie/jigsaw/internal/Library$ViewHolderFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/evie/jigsaw/components/base/AbstractComponent;",
            ">;I",
            "Lcom/evie/jigsaw/internal/Library$ViewHolderFactory;",
            ")V"
        }
    .end annotation

    .line 47
    sget-object v0, Lcom/evie/jigsaw/internal/Library;->LAYOUT_FOR_TYPE:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object p0, Lcom/evie/jigsaw/internal/Library;->FACTORY_FOR_LAYOUT:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
