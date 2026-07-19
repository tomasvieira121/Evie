.class public final synthetic Lcom/evie/sidescreen/-$$Lambda$SideScreenConfigurationModel$pDABC3O4Dbub1U36VoRFG9BSk1Q;
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

    iput-object p1, p0, Lcom/evie/sidescreen/-$$Lambda$SideScreenConfigurationModel$pDABC3O4Dbub1U36VoRFG9BSk1Q;->f$0:Lcom/evie/sidescreen/SideScreenConfigurationModel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/-$$Lambda$SideScreenConfigurationModel$pDABC3O4Dbub1U36VoRFG9BSk1Q;->f$0:Lcom/evie/sidescreen/SideScreenConfigurationModel;

    check-cast p1, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    invoke-static {v0, p1}, Lcom/evie/sidescreen/SideScreenConfigurationModel;->lambda$new$1(Lcom/evie/sidescreen/SideScreenConfigurationModel;Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)V

    return-void
.end method
