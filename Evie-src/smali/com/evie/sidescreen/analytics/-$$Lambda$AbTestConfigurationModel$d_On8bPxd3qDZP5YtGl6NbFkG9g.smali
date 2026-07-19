.class public final synthetic Lcom/evie/sidescreen/analytics/-$$Lambda$AbTestConfigurationModel$d_On8bPxd3qDZP5YtGl6NbFkG9g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/evie/sidescreen/analytics/-$$Lambda$AbTestConfigurationModel$d_On8bPxd3qDZP5YtGl6NbFkG9g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/evie/sidescreen/analytics/-$$Lambda$AbTestConfigurationModel$d_On8bPxd3qDZP5YtGl6NbFkG9g;

    invoke-direct {v0}, Lcom/evie/sidescreen/analytics/-$$Lambda$AbTestConfigurationModel$d_On8bPxd3qDZP5YtGl6NbFkG9g;-><init>()V

    sput-object v0, Lcom/evie/sidescreen/analytics/-$$Lambda$AbTestConfigurationModel$d_On8bPxd3qDZP5YtGl6NbFkG9g;->INSTANCE:Lcom/evie/sidescreen/analytics/-$$Lambda$AbTestConfigurationModel$d_On8bPxd3qDZP5YtGl6NbFkG9g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/evie/sidescreen/lifecycle/LifecycleEvent;

    invoke-static {p1}, Lcom/evie/sidescreen/analytics/AbTestConfigurationModel;->lambda$new$1(Lcom/evie/sidescreen/lifecycle/LifecycleEvent;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
