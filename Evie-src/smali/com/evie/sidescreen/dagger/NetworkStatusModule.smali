.class public Lcom/evie/sidescreen/dagger/NetworkStatusModule;
.super Ljava/lang/Object;
.source "NetworkStatusModule.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/NetworkStatusModule;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public providesNetworkStatusModel()Lcom/evie/sidescreen/network/NetworkStatusModel;
    .locals 2

    .line 26
    new-instance v0, Lcom/evie/sidescreen/network/NetworkStatusModel;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/NetworkStatusModule;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/evie/sidescreen/network/NetworkStatusModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
