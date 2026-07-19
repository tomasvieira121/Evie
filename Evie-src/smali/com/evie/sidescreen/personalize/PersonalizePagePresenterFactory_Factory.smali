.class public final Lcom/evie/sidescreen/personalize/PersonalizePagePresenterFactory_Factory;
.super Ljava/lang/Object;
.source "PersonalizePagePresenterFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/personalize/PersonalizePagePresenterFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final topicItemPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizePagePresenterFactory_Factory;->topicItemPresenterFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/evie/sidescreen/personalize/PersonalizePagePresenterFactory_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;",
            ">;)",
            "Lcom/evie/sidescreen/personalize/PersonalizePagePresenterFactory_Factory;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/evie/sidescreen/personalize/PersonalizePagePresenterFactory_Factory;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/personalize/PersonalizePagePresenterFactory_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/personalize/PersonalizePagePresenterFactory;
    .locals 2

    .line 22
    new-instance v0, Lcom/evie/sidescreen/personalize/PersonalizePagePresenterFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/personalize/PersonalizePagePresenterFactory_Factory;->topicItemPresenterFactoryProvider:Ljavax/inject/Provider;

    invoke-direct {v0, v1}, Lcom/evie/sidescreen/personalize/PersonalizePagePresenterFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/evie/sidescreen/personalize/PersonalizePagePresenterFactory_Factory;->get()Lcom/evie/sidescreen/personalize/PersonalizePagePresenterFactory;

    move-result-object v0

    return-object v0
.end method
