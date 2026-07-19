.class public final Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesSettingsFactory;
.super Ljava/lang/Object;
.source "JigsawModule_ProvidesSettingsFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/jigsaw/JigsawSettings;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/evie/jigsaw/dagger/JigsawModule;


# direct methods
.method public constructor <init>(Lcom/evie/jigsaw/dagger/JigsawModule;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesSettingsFactory;->module:Lcom/evie/jigsaw/dagger/JigsawModule;

    return-void
.end method

.method public static create(Lcom/evie/jigsaw/dagger/JigsawModule;)Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesSettingsFactory;
    .locals 1

    .line 25
    new-instance v0, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesSettingsFactory;

    invoke-direct {v0, p0}, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesSettingsFactory;-><init>(Lcom/evie/jigsaw/dagger/JigsawModule;)V

    return-object v0
.end method

.method public static proxyProvidesSettings(Lcom/evie/jigsaw/dagger/JigsawModule;)Lcom/evie/jigsaw/JigsawSettings;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/evie/jigsaw/dagger/JigsawModule;->providesSettings()Lcom/evie/jigsaw/JigsawSettings;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 29
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/jigsaw/JigsawSettings;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/jigsaw/JigsawSettings;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesSettingsFactory;->module:Lcom/evie/jigsaw/dagger/JigsawModule;

    invoke-static {v0}, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesSettingsFactory;->proxyProvidesSettings(Lcom/evie/jigsaw/dagger/JigsawModule;)Lcom/evie/jigsaw/JigsawSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesSettingsFactory;->get()Lcom/evie/jigsaw/JigsawSettings;

    move-result-object v0

    return-object v0
.end method
