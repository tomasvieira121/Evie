.class public final Lcom/evie/sidescreen/dagger/external/GsonModule_ProvidesTypeAdapterFactory;
.super Ljava/lang/Object;
.source "GsonModule_ProvidesTypeAdapterFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/util/Pair<",
        "Ljava/lang/Class;",
        "Lcom/google/gson/JsonDeserializer;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/evie/sidescreen/dagger/external/GsonModule_ProvidesTypeAdapterFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/evie/sidescreen/dagger/external/GsonModule_ProvidesTypeAdapterFactory;

    invoke-direct {v0}, Lcom/evie/sidescreen/dagger/external/GsonModule_ProvidesTypeAdapterFactory;-><init>()V

    sput-object v0, Lcom/evie/sidescreen/dagger/external/GsonModule_ProvidesTypeAdapterFactory;->INSTANCE:Lcom/evie/sidescreen/dagger/external/GsonModule_ProvidesTypeAdapterFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/evie/sidescreen/dagger/external/GsonModule_ProvidesTypeAdapterFactory;
    .locals 1

    .line 24
    sget-object v0, Lcom/evie/sidescreen/dagger/external/GsonModule_ProvidesTypeAdapterFactory;->INSTANCE:Lcom/evie/sidescreen/dagger/external/GsonModule_ProvidesTypeAdapterFactory;

    return-object v0
.end method

.method public static proxyProvidesTypeAdapter()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Class;",
            "Lcom/google/gson/JsonDeserializer;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-static {}, Lcom/evie/sidescreen/dagger/external/GsonModule;->providesTypeAdapter()Landroid/util/Pair;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 28
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method


# virtual methods
.method public get()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Class;",
            "Lcom/google/gson/JsonDeserializer;",
            ">;"
        }
    .end annotation

    .line 20
    invoke-static {}, Lcom/evie/sidescreen/dagger/external/GsonModule_ProvidesTypeAdapterFactory;->proxyProvidesTypeAdapter()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/external/GsonModule_ProvidesTypeAdapterFactory;->get()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
