.class public final synthetic Lcom/evie/sidescreen/-$$Lambda$rmX0_1eJyDLzmehisJxIcbfpeP8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/SideScreenView;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/SideScreenView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/-$$Lambda$rmX0_1eJyDLzmehisJxIcbfpeP8;->f$0:Lcom/evie/sidescreen/SideScreenView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/-$$Lambda$rmX0_1eJyDLzmehisJxIcbfpeP8;->f$0:Lcom/evie/sidescreen/SideScreenView;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/SideScreenView;->setTabsEnabled(Z)V

    return-void
.end method
