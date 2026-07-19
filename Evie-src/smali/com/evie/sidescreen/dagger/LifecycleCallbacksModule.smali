.class public Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;
.super Ljava/lang/Object;
.source "LifecycleCallbacksModule.java"


# instance fields
.field private final mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    return-void
.end method


# virtual methods
.method public providesLifecycleCallbacks()Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    return-object v0
.end method
