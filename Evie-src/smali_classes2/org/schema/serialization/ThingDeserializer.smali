.class public Lorg/schema/serialization/ThingDeserializer;
.super Ljava/lang/Object;
.source "ThingDeserializer.java"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer<",
        "Lorg/schema/Thing;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/schema/serialization/ThingDeserializer;


# instance fields
.field private final types:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/schema/Thing;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lorg/schema/serialization/ThingDeserializer;

    invoke-direct {v0}, Lorg/schema/serialization/ThingDeserializer;-><init>()V

    sput-object v0, Lorg/schema/serialization/ThingDeserializer;->INSTANCE:Lorg/schema/serialization/ThingDeserializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/schema/serialization/ThingDeserializer;->types:Ljava/util/Map;

    .line 38
    const-class v0, Lorg/schema/ImageObject;

    invoke-virtual {p0, v0}, Lorg/schema/serialization/ThingDeserializer;->register(Ljava/lang/Class;)Lorg/schema/serialization/ThingDeserializer;

    .line 39
    const-class v0, Lorg/schema/evie/actions/LinkAction;

    invoke-virtual {p0, v0}, Lorg/schema/serialization/ThingDeserializer;->register(Ljava/lang/Class;)Lorg/schema/serialization/ThingDeserializer;

    .line 40
    const-class v0, Lorg/schema/evie/ads/MillennialMediaAd;

    invoke-virtual {p0, v0}, Lorg/schema/serialization/ThingDeserializer;->register(Ljava/lang/Class;)Lorg/schema/serialization/ThingDeserializer;

    .line 41
    const-class v0, Lorg/schema/NewsArticle;

    invoke-virtual {p0, v0}, Lorg/schema/serialization/ThingDeserializer;->register(Ljava/lang/Class;)Lorg/schema/serialization/ThingDeserializer;

    .line 42
    const-class v0, Lorg/schema/evie/NewsChannel;

    invoke-virtual {p0, v0}, Lorg/schema/serialization/ThingDeserializer;->register(Ljava/lang/Class;)Lorg/schema/serialization/ThingDeserializer;

    .line 43
    const-class v0, Lorg/schema/evie/NewsStory;

    invoke-virtual {p0, v0}, Lorg/schema/serialization/ThingDeserializer;->register(Ljava/lang/Class;)Lorg/schema/serialization/ThingDeserializer;

    .line 44
    const-class v0, Lorg/schema/Organization;

    invoke-virtual {p0, v0}, Lorg/schema/serialization/ThingDeserializer;->register(Ljava/lang/Class;)Lorg/schema/serialization/ThingDeserializer;

    .line 45
    const-class v0, Lorg/schema/Person;

    invoke-virtual {p0, v0}, Lorg/schema/serialization/ThingDeserializer;->register(Ljava/lang/Class;)Lorg/schema/serialization/ThingDeserializer;

    .line 46
    const-class v0, Lorg/schema/VideoObject;

    invoke-virtual {p0, v0}, Lorg/schema/serialization/ThingDeserializer;->register(Ljava/lang/Class;)Lorg/schema/serialization/ThingDeserializer;

    .line 47
    const-class v0, Lorg/schema/evie/topics/TopicPublisher;

    const-string v1, "ev:topicPublisher"

    invoke-virtual {p0, v0, v1}, Lorg/schema/serialization/ThingDeserializer;->register(Ljava/lang/Class;Ljava/lang/String;)Lorg/schema/serialization/ThingDeserializer;

    .line 49
    const-class v0, Lorg/schema/evie/topics/TopicMappedCategory;

    const-string v1, "ev:topicMappedCategory"

    invoke-virtual {p0, v0, v1}, Lorg/schema/serialization/ThingDeserializer;->register(Ljava/lang/Class;Ljava/lang/String;)Lorg/schema/serialization/ThingDeserializer;

    .line 50
    const-class v0, Lorg/schema/evie/topics/TopicEntity;

    const-string v1, "ev:topicEntity"

    invoke-virtual {p0, v0, v1}, Lorg/schema/serialization/ThingDeserializer;->register(Ljava/lang/Class;Ljava/lang/String;)Lorg/schema/serialization/ThingDeserializer;

    .line 51
    const-class v0, Lorg/schema/evie/yelp/YelpAd;

    invoke-virtual {p0, v0}, Lorg/schema/serialization/ThingDeserializer;->register(Ljava/lang/Class;)Lorg/schema/serialization/ThingDeserializer;

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lorg/schema/serialization/ThingDeserializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lorg/schema/Thing;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lorg/schema/Thing;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 70
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p2

    const-string v1, "@type"

    .line 76
    invoke-virtual {p2, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const-string v1, "@type"

    .line 80
    invoke-virtual {p2, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v0

    .line 86
    :cond_2
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 88
    iget-object v2, p0, Lorg/schema/serialization/ThingDeserializer;->types:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return-object v0

    .line 93
    :cond_3
    :try_start_0
    iget-object v2, p0, Lorg/schema/serialization/ThingDeserializer;->types:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-nez v1, :cond_4

    .line 94
    const-class v1, Lorg/schema/UnknownThing;

    .line 95
    :cond_4
    invoke-interface {p3, p1, v1}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schema/Thing;
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p3, "Failed to deserialize something with id %s."

    const/4 v1, 0x1

    .line 102
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "@id"

    invoke-virtual {p2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-static {p1, p3, v1}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public register(Ljava/lang/Class;)Lorg/schema/serialization/ThingDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/schema/Thing;",
            ">;)",
            "Lorg/schema/serialization/ThingDeserializer;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/schema/serialization/ThingDeserializer;->types:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public register(Ljava/lang/Class;Ljava/lang/String;)Lorg/schema/serialization/ThingDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/schema/Thing;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/schema/serialization/ThingDeserializer;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/schema/serialization/ThingDeserializer;->types:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
