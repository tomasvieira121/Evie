.class public final enum Lcom/evie/sidescreen/lifecycle/LifecycleEvent;
.super Ljava/lang/Enum;
.source "LifecycleEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/evie/sidescreen/lifecycle/LifecycleEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

.field public static final enum DETACH:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

.field public static final enum HIDE:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

.field public static final enum PAUSE:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

.field public static final enum RESUME:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

.field public static final enum SHOW:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 7
    new-instance v0, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    const-string v1, "PAUSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->PAUSE:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    .line 8
    new-instance v0, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    const-string v1, "RESUME"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->RESUME:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    .line 9
    new-instance v0, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    const-string v1, "DETACH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->DETACH:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    .line 10
    new-instance v0, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    const-string v1, "HIDE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->HIDE:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    .line 11
    new-instance v0, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    const-string v1, "SHOW"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->SHOW:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    const/4 v0, 0x5

    .line 6
    new-array v0, v0, [Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    sget-object v1, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->PAUSE:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->RESUME:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->DETACH:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->HIDE:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->SHOW:Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    aput-object v1, v0, v6

    sput-object v0, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->$VALUES:[Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evie/sidescreen/lifecycle/LifecycleEvent;
    .locals 1

    .line 6
    const-class v0, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    return-object p0
.end method

.method public static values()[Lcom/evie/sidescreen/lifecycle/LifecycleEvent;
    .locals 1

    .line 6
    sget-object v0, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->$VALUES:[Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    invoke-virtual {v0}, [Lcom/evie/sidescreen/lifecycle/LifecycleEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    return-object v0
.end method
