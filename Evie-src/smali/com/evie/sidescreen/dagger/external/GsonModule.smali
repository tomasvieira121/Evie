.class public abstract Lcom/evie/sidescreen/dagger/external/GsonModule;
.super Ljava/lang/Object;
.source "GsonModule.java"


# direct methods
.method static providesTypeAdapter()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Class;",
            "Lcom/google/gson/JsonDeserializer;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Landroid/util/Pair;

    const-class v1, Lorg/schema/Thing;

    sget-object v2, Lorg/schema/serialization/ThingDeserializer;->INSTANCE:Lorg/schema/serialization/ThingDeserializer;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
