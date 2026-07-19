.class public final Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection_Factory;
.super Ljava/lang/Object;
.source "AnnouncementSection_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;",
        ">;"
    }
.end annotation


# instance fields
.field private final activationModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivationModel;",
            ">;"
        }
    .end annotation
.end field

.field private final analyticsModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;"
        }
    .end annotation
.end field

.field private final lifecycleCallbacksProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final promptStoreModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/PromptStoreModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivationModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/PromptStoreModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection_Factory;->activationModelProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p2, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection_Factory;->lifecycleCallbacksProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p3, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection_Factory;->promptStoreModelProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p4, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivationModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/PromptStoreModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/analytics/AnalyticsModel;",
            ">;)",
            "Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection_Factory;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;
    .locals 5

    .line 37
    new-instance v0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;

    iget-object v1, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection_Factory;->activationModelProvider:Ljavax/inject/Provider;

    .line 38
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/sidescreen/ActivationModel;

    iget-object v2, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection_Factory;->lifecycleCallbacksProvider:Ljavax/inject/Provider;

    .line 39
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    iget-object v3, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection_Factory;->promptStoreModelProvider:Ljavax/inject/Provider;

    .line 40
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evie/models/PromptStoreModel;

    iget-object v4, p0, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection_Factory;->analyticsModelProvider:Ljavax/inject/Provider;

    .line 41
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/evie/sidescreen/analytics/AnalyticsModel;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;-><init>(Lcom/evie/sidescreen/ActivationModel;Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;Lcom/evie/models/PromptStoreModel;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection_Factory;->get()Lcom/evie/sidescreen/prompts/announcement/AnnouncementSection;

    move-result-object v0

    return-object v0
.end method
