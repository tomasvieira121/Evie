.class public final Lcom/evie/sidescreen/firebase/MessagingService_MembersInjector;
.super Ljava/lang/Object;
.source "MessagingService_MembersInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static injectMPromptStoreModel(Lcom/evie/sidescreen/firebase/MessagingService;Lcom/evie/models/PromptStoreModel;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/evie/sidescreen/firebase/MessagingService;->mPromptStoreModel:Lcom/evie/models/PromptStoreModel;

    return-void
.end method

.method public static injectMSideScreenSharedDependencies(Lcom/evie/sidescreen/firebase/MessagingService;Lcom/evie/sidescreen/SideScreenSharedDependencies;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/evie/sidescreen/firebase/MessagingService;->mSideScreenSharedDependencies:Lcom/evie/sidescreen/SideScreenSharedDependencies;

    return-void
.end method
