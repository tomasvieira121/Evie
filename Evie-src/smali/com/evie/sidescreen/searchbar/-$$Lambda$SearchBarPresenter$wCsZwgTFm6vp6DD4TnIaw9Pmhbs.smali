.class public final synthetic Lcom/evie/sidescreen/searchbar/-$$Lambda$SearchBarPresenter$wCsZwgTFm6vp6DD4TnIaw9Pmhbs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/searchbar/SearchBarPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/searchbar/SearchBarPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/searchbar/-$$Lambda$SearchBarPresenter$wCsZwgTFm6vp6DD4TnIaw9Pmhbs;->f$0:Lcom/evie/sidescreen/searchbar/SearchBarPresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/searchbar/-$$Lambda$SearchBarPresenter$wCsZwgTFm6vp6DD4TnIaw9Pmhbs;->f$0:Lcom/evie/sidescreen/searchbar/SearchBarPresenter;

    check-cast p1, Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel$SearchBarBackground;

    invoke-static {v0, p1}, Lcom/evie/sidescreen/searchbar/SearchBarPresenter;->lambda$onBindViewHolder$0(Lcom/evie/sidescreen/searchbar/SearchBarPresenter;Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel$SearchBarBackground;)V

    return-void
.end method
