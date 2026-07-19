.class public final Lcom/evie/search/recyclerview/presenter/RemoteSubitemPresenter_MembersInjector;
.super Ljava/lang/Object;
.source "RemoteSubitemPresenter_MembersInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static injectMLinkResolver(Lcom/evie/search/recyclerview/presenter/RemoteSubitemPresenter;Lcom/evie/common/services/links/LinkResolver;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/evie/search/recyclerview/presenter/RemoteSubitemPresenter;->mLinkResolver:Lcom/evie/common/services/links/LinkResolver;

    return-void
.end method

.method public static injectShortcutHandler(Lcom/evie/search/recyclerview/presenter/RemoteSubitemPresenter;Lcom/evie/search/SearchShortcutHandler;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/evie/search/recyclerview/presenter/RemoteSubitemPresenter;->shortcutHandler:Lcom/evie/search/SearchShortcutHandler;

    return-void
.end method
