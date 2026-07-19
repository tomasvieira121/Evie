.class Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmParser$ParsedData;
.super Ljava/lang/Object;
.source "VrmParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParsedData"
.end annotation


# instance fields
.field final slot:Ljava/lang/String;

.field final tasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/aol/mobile/sdk/player/advertisement/utils/Task<",
            "Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;",
            "Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;",
            ">;>;>;"
        }
    .end annotation
.end field

.field final txid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/aol/mobile/sdk/player/advertisement/utils/Task<",
            "Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;",
            "Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;",
            ">;>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmParser$ParsedData;->tasks:Ljava/util/List;

    .line 83
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmParser$ParsedData;->txid:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmParser$ParsedData;->slot:Ljava/lang/String;

    return-void
.end method
