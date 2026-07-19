.class public final synthetic Lcom/evie/sidescreen/tiles/recommended/-$$Lambda$RecommendedPresenter$s_f_Dc68tr7G7lluPKqXH5t9C-g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenter;

.field private final synthetic f$1:Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenter;Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/recommended/-$$Lambda$RecommendedPresenter$s_f_Dc68tr7G7lluPKqXH5t9C-g;->f$0:Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenter;

    iput-object p2, p0, Lcom/evie/sidescreen/tiles/recommended/-$$Lambda$RecommendedPresenter$s_f_Dc68tr7G7lluPKqXH5t9C-g;->f$1:Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/recommended/-$$Lambda$RecommendedPresenter$s_f_Dc68tr7G7lluPKqXH5t9C-g;->f$0:Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenter;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/recommended/-$$Lambda$RecommendedPresenter$s_f_Dc68tr7G7lluPKqXH5t9C-g;->f$1:Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;

    check-cast p1, Lcom/evie/common/data/Lce;

    invoke-static {v0, v1, p1}, Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenter;->lambda$onBindViewHolder$0(Lcom/evie/sidescreen/tiles/recommended/RecommendedPresenter;Lcom/evie/sidescreen/tiles/recommended/RecommendedViewHolder;Lcom/evie/common/data/Lce;)V

    return-void
.end method
