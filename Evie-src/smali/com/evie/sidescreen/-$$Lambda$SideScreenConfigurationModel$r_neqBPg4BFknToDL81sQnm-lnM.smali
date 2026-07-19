.class public final synthetic Lcom/evie/sidescreen/-$$Lambda$SideScreenConfigurationModel$r_neqBPg4BFknToDL81sQnm-lnM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/SideScreenConfigurationModel;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/SideScreenConfigurationModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/-$$Lambda$SideScreenConfigurationModel$r_neqBPg4BFknToDL81sQnm-lnM;->f$0:Lcom/evie/sidescreen/SideScreenConfigurationModel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/-$$Lambda$SideScreenConfigurationModel$r_neqBPg4BFknToDL81sQnm-lnM;->f$0:Lcom/evie/sidescreen/SideScreenConfigurationModel;

    check-cast p1, Lcom/evie/common/data/Lce;

    invoke-static {v0, p1}, Lcom/evie/sidescreen/SideScreenConfigurationModel;->lambda$update$2(Lcom/evie/sidescreen/SideScreenConfigurationModel;Lcom/evie/common/data/Lce;)V

    return-void
.end method
