.class public final Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter_MembersInjector;
.super Ljava/lang/Object;
.source "LocalSubitemPresenter_MembersInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static injectMLinkResolver(Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;Lcom/evie/common/services/links/LinkResolver;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;->mLinkResolver:Lcom/evie/common/services/links/LinkResolver;

    return-void
.end method

.method public static injectShortcutHandler(Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;Lcom/evie/search/SearchShortcutHandler;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;->shortcutHandler:Lcom/evie/search/SearchShortcutHandler;

    return-void
.end method
