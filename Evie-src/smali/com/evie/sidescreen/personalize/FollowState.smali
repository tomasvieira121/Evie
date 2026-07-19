.class public final enum Lcom/evie/sidescreen/personalize/FollowState;
.super Ljava/lang/Enum;
.source "FollowState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/evie/sidescreen/personalize/FollowState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/evie/sidescreen/personalize/FollowState;

.field public static final enum BLOCKED:Lcom/evie/sidescreen/personalize/FollowState;

.field public static final enum FOLLOW:Lcom/evie/sidescreen/personalize/FollowState;

.field public static final enum FOLLOWING:Lcom/evie/sidescreen/personalize/FollowState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lcom/evie/sidescreen/personalize/FollowState;

    const-string v1, "FOLLOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/evie/sidescreen/personalize/FollowState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/sidescreen/personalize/FollowState;->FOLLOW:Lcom/evie/sidescreen/personalize/FollowState;

    .line 14
    new-instance v0, Lcom/evie/sidescreen/personalize/FollowState;

    const-string v1, "FOLLOWING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/evie/sidescreen/personalize/FollowState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/sidescreen/personalize/FollowState;->FOLLOWING:Lcom/evie/sidescreen/personalize/FollowState;

    .line 15
    new-instance v0, Lcom/evie/sidescreen/personalize/FollowState;

    const-string v1, "BLOCKED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/evie/sidescreen/personalize/FollowState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/sidescreen/personalize/FollowState;->BLOCKED:Lcom/evie/sidescreen/personalize/FollowState;

    const/4 v0, 0x3

    .line 12
    new-array v0, v0, [Lcom/evie/sidescreen/personalize/FollowState;

    sget-object v1, Lcom/evie/sidescreen/personalize/FollowState;->FOLLOW:Lcom/evie/sidescreen/personalize/FollowState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/evie/sidescreen/personalize/FollowState;->FOLLOWING:Lcom/evie/sidescreen/personalize/FollowState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/evie/sidescreen/personalize/FollowState;->BLOCKED:Lcom/evie/sidescreen/personalize/FollowState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/evie/sidescreen/personalize/FollowState;->$VALUES:[Lcom/evie/sidescreen/personalize/FollowState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static determineFollowState(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)Lcom/evie/sidescreen/personalize/FollowState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/evie/models/topics/data/TopicId;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/evie/models/topics/data/TopicId;",
            ">;)",
            "Lcom/evie/sidescreen/personalize/FollowState;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Lcom/evie/models/topics/data/TopicId;

    invoke-direct {v0, p0}, Lcom/evie/models/topics/data/TopicId;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    .line 44
    invoke-interface {p2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 46
    invoke-static {p0, p1}, Lcom/evie/sidescreen/personalize/FollowState;->determineFollowState(ZZ)Lcom/evie/sidescreen/personalize/FollowState;

    move-result-object p0

    return-object p0

    .line 39
    :cond_1
    :goto_0
    sget-object p0, Lcom/evie/sidescreen/personalize/FollowState;->FOLLOW:Lcom/evie/sidescreen/personalize/FollowState;

    return-object p0
.end method

.method public static determineFollowState(Lorg/schema/evie/topics/Topic;Ljava/util/Collection;Ljava/util/Collection;)Lcom/evie/sidescreen/personalize/FollowState;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schema/evie/topics/Topic;",
            "Ljava/util/Collection<",
            "Lcom/evie/models/topics/data/TopicId;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/evie/models/topics/data/TopicId;",
            ">;)",
            "Lcom/evie/sidescreen/personalize/FollowState;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 31
    sget-object p0, Lcom/evie/sidescreen/personalize/FollowState;->FOLLOW:Lcom/evie/sidescreen/personalize/FollowState;

    return-object p0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lorg/schema/evie/topics/Topic;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/evie/sidescreen/personalize/FollowState;->determineFollowState(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)Lcom/evie/sidescreen/personalize/FollowState;

    move-result-object p0

    return-object p0
.end method

.method public static determineFollowState(ZZ)Lcom/evie/sidescreen/personalize/FollowState;
    .locals 0

    if-eqz p0, :cond_0

    .line 20
    sget-object p0, Lcom/evie/sidescreen/personalize/FollowState;->FOLLOWING:Lcom/evie/sidescreen/personalize/FollowState;

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 22
    sget-object p0, Lcom/evie/sidescreen/personalize/FollowState;->BLOCKED:Lcom/evie/sidescreen/personalize/FollowState;

    return-object p0

    .line 25
    :cond_1
    sget-object p0, Lcom/evie/sidescreen/personalize/FollowState;->FOLLOW:Lcom/evie/sidescreen/personalize/FollowState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evie/sidescreen/personalize/FollowState;
    .locals 1

    .line 12
    const-class v0, Lcom/evie/sidescreen/personalize/FollowState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/evie/sidescreen/personalize/FollowState;

    return-object p0
.end method

.method public static values()[Lcom/evie/sidescreen/personalize/FollowState;
    .locals 1

    .line 12
    sget-object v0, Lcom/evie/sidescreen/personalize/FollowState;->$VALUES:[Lcom/evie/sidescreen/personalize/FollowState;

    invoke-virtual {v0}, [Lcom/evie/sidescreen/personalize/FollowState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evie/sidescreen/personalize/FollowState;

    return-object v0
.end method
