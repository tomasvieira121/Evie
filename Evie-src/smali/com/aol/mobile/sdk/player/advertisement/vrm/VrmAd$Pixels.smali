.class public Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;
.super Ljava/lang/Object;
.source "VrmAd.java"


# annotations
.annotation runtime Lcom/aol/mobile/sdk/annotations/PrivateApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pixels"
.end annotation


# instance fields
.field public final clickTracking:[Ljava/lang/String;

.field public final complete:[Ljava/lang/String;

.field public final creativeView:[Ljava/lang/String;

.field public final error:[Ljava/lang/String;

.field public final firstQuartile:[Ljava/lang/String;

.field public final impression:[Ljava/lang/String;

.field public final midpoint:[Ljava/lang/String;

.field public final pause:[Ljava/lang/String;

.field public final resume:[Ljava/lang/String;

.field public final start:[Ljava/lang/String;

.field public final thirdQuartile:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;)V
    .locals 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->impression:[Ljava/lang/String;

    iget-object v1, p2, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->impression:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->concat([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->impression:[Ljava/lang/String;

    .line 125
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->error:[Ljava/lang/String;

    iget-object v1, p2, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->error:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->concat([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->error:[Ljava/lang/String;

    .line 126
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->clickTracking:[Ljava/lang/String;

    iget-object v1, p2, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->clickTracking:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->concat([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->clickTracking:[Ljava/lang/String;

    .line 127
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->creativeView:[Ljava/lang/String;

    iget-object v1, p2, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->creativeView:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->concat([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->creativeView:[Ljava/lang/String;

    .line 128
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->start:[Ljava/lang/String;

    iget-object v1, p2, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->start:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->concat([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->start:[Ljava/lang/String;

    .line 129
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->firstQuartile:[Ljava/lang/String;

    iget-object v1, p2, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->firstQuartile:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->concat([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->firstQuartile:[Ljava/lang/String;

    .line 130
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->midpoint:[Ljava/lang/String;

    iget-object v1, p2, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->midpoint:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->concat([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->midpoint:[Ljava/lang/String;

    .line 131
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->thirdQuartile:[Ljava/lang/String;

    iget-object v1, p2, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->thirdQuartile:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->concat([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->thirdQuartile:[Ljava/lang/String;

    .line 132
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->complete:[Ljava/lang/String;

    iget-object v1, p2, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->complete:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->concat([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->complete:[Ljava/lang/String;

    .line 133
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->pause:[Ljava/lang/String;

    iget-object v1, p2, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->pause:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->concat([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->pause:[Ljava/lang/String;

    .line 134
    iget-object p1, p1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->resume:[Ljava/lang/String;

    iget-object p2, p2, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->resume:[Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->concat([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->resume:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$1;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;-><init>(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 109
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Impression"

    .line 110
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Impression"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->impression:[Ljava/lang/String;

    const-string v1, "Error"

    .line 111
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Error"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->error:[Ljava/lang/String;

    const-string v1, "ClickTracking"

    .line 112
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ClickTracking"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    iput-object v1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->clickTracking:[Ljava/lang/String;

    const-string v1, "creativeView"

    .line 113
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "creativeView"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v1, v0

    :goto_3
    iput-object v1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->creativeView:[Ljava/lang/String;

    const-string v1, "start"

    .line 114
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "start"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v1, v0

    :goto_4
    iput-object v1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->start:[Ljava/lang/String;

    const-string v1, "firstQuartile"

    .line 115
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "firstQuartile"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object v1, v0

    :goto_5
    iput-object v1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->firstQuartile:[Ljava/lang/String;

    const-string v1, "midpoint"

    .line 116
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "midpoint"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object v1, v0

    :goto_6
    iput-object v1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->midpoint:[Ljava/lang/String;

    const-string v1, "thirdQuartile"

    .line 117
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "thirdQuartile"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object v1, v0

    :goto_7
    iput-object v1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->thirdQuartile:[Ljava/lang/String;

    const-string v1, "complete"

    .line 118
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "complete"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object v1, v0

    :goto_8
    iput-object v1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->complete:[Ljava/lang/String;

    const-string v1, "pause"

    .line 119
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "pause"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object v1, v0

    :goto_9
    iput-object v1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->pause:[Ljava/lang/String;

    const-string v1, "resume"

    .line 120
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "resume"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    :cond_a
    iput-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;->resume:[Ljava/lang/String;

    return-void
.end method

.method private concat([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 139
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 140
    array-length p1, p1

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
