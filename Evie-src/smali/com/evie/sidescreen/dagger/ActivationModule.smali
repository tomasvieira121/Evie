.class public Lcom/evie/sidescreen/dagger/ActivationModule;
.super Ljava/lang/Object;
.source "ActivationModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public providesActivationModel()Lcom/evie/sidescreen/ActivationModel;
    .locals 1

    .line 16
    new-instance v0, Lcom/evie/sidescreen/ActivationModel;

    invoke-direct {v0}, Lcom/evie/sidescreen/ActivationModel;-><init>()V

    return-object v0
.end method
