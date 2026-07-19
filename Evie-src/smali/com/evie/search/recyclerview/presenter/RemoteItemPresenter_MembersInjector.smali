.class public final Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter_MembersInjector;
.super Ljava/lang/Object;
.source "RemoteItemPresenter_MembersInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static injectMLinkResolver(Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;Lcom/evie/common/services/links/LinkResolver;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;->mLinkResolver:Lcom/evie/common/services/links/LinkResolver;

    return-void
.end method

.method public static injectShortcutHandler(Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;Lcom/evie/search/SearchShortcutHandler;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;->shortcutHandler:Lcom/evie/search/SearchShortcutHandler;

    return-void
.end method
