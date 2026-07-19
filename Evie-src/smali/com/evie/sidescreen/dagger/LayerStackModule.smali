.class public Lcom/evie/sidescreen/dagger/LayerStackModule;
.super Ljava/lang/Object;
.source "LayerStackModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method providesLayerStack()Lcom/evie/sidescreen/LayerStack;
    .locals 1

    .line 15
    new-instance v0, Lcom/evie/sidescreen/LayerStack;

    invoke-direct {v0}, Lcom/evie/sidescreen/LayerStack;-><init>()V

    return-object v0
.end method
