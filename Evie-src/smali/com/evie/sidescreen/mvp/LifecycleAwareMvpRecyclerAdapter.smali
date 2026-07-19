.class public Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;
.super Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;
.source "LifecycleAwareMvpRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;
    }
.end annotation


# instance fields
.field private final mActivationModel:Lcom/evie/sidescreen/ActivationModel;

.field private final mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/ActivationModel;Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;->mActivationModel:Lcom/evie/sidescreen/ActivationModel;

    .line 23
    iput-object p2, p0, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    return-void
.end method

.method static synthetic access$100(Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;)Lcom/evie/sidescreen/ActivationModel;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;->mActivationModel:Lcom/evie/sidescreen/ActivationModel;

    return-object p0
.end method

.method static synthetic access$200(Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;)Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;->mLifecycleCallbacks:Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    return-object p0
.end method


# virtual methods
.method protected createVisibilityManager()Lcom/evie/sidescreen/mvp/MvpRecyclerAdapter$PresenterVisibilityManager;
    .locals 2

    .line 27
    new-instance v0, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$LifecycleAwarePresenterVisibilityManager;-><init>(Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter$1;)V

    return-object v0
.end method
