.class public final Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSidescreenApiVersionCodeFactory;
.super Ljava/lang/Object;
.source "SideScreenContentModule_ProvidesSidescreenApiVersionCodeFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/evie/sidescreen/dagger/SideScreenContentModule;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/dagger/SideScreenContentModule;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSidescreenApiVersionCodeFactory;->module:Lcom/evie/sidescreen/dagger/SideScreenContentModule;

    return-void
.end method

.method public static create(Lcom/evie/sidescreen/dagger/SideScreenContentModule;)Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSidescreenApiVersionCodeFactory;
    .locals 1

    .line 26
    new-instance v0, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSidescreenApiVersionCodeFactory;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSidescreenApiVersionCodeFactory;-><init>(Lcom/evie/sidescreen/dagger/SideScreenContentModule;)V

    return-object v0
.end method

.method public static proxyProvidesSidescreenApiVersionCode(Lcom/evie/sidescreen/dagger/SideScreenContentModule;)I
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/SideScreenContentModule;->providesSidescreenApiVersionCode()I

    move-result p0

    return p0
.end method


# virtual methods
.method public get()Ljava/lang/Integer;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSidescreenApiVersionCodeFactory;->module:Lcom/evie/sidescreen/dagger/SideScreenContentModule;

    invoke-static {v0}, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSidescreenApiVersionCodeFactory;->proxyProvidesSidescreenApiVersionCode(Lcom/evie/sidescreen/dagger/SideScreenContentModule;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSidescreenApiVersionCodeFactory;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
