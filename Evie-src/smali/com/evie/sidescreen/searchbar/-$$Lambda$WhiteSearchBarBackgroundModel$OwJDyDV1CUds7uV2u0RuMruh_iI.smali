.class public final synthetic Lcom/evie/sidescreen/searchbar/-$$Lambda$WhiteSearchBarBackgroundModel$OwJDyDV1CUds7uV2u0RuMruh_iI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModel;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/searchbar/-$$Lambda$WhiteSearchBarBackgroundModel$OwJDyDV1CUds7uV2u0RuMruh_iI;->f$0:Lcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModel;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/searchbar/-$$Lambda$WhiteSearchBarBackgroundModel$OwJDyDV1CUds7uV2u0RuMruh_iI;->f$0:Lcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModel;

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, p1}, Lcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModel;->lambda$OwJDyDV1CUds7uV2u0RuMruh_iI(Lcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModel;Landroid/util/Pair;)Lcom/evie/sidescreen/searchbar/SearchBarBackgroundModel$SearchBarBackground;

    move-result-object p1

    return-object p1
.end method
