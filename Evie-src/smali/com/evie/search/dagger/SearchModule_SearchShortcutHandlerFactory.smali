.class public final Lcom/evie/search/dagger/SearchModule_SearchShortcutHandlerFactory;
.super Ljava/lang/Object;
.source "SearchModule_SearchShortcutHandlerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/search/SearchShortcutHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/evie/search/dagger/SearchModule;


# direct methods
.method public constructor <init>(Lcom/evie/search/dagger/SearchModule;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/evie/search/dagger/SearchModule_SearchShortcutHandlerFactory;->module:Lcom/evie/search/dagger/SearchModule;

    return-void
.end method

.method public static create(Lcom/evie/search/dagger/SearchModule;)Lcom/evie/search/dagger/SearchModule_SearchShortcutHandlerFactory;
    .locals 1

    .line 26
    new-instance v0, Lcom/evie/search/dagger/SearchModule_SearchShortcutHandlerFactory;

    invoke-direct {v0, p0}, Lcom/evie/search/dagger/SearchModule_SearchShortcutHandlerFactory;-><init>(Lcom/evie/search/dagger/SearchModule;)V

    return-object v0
.end method

.method public static proxySearchShortcutHandler(Lcom/evie/search/dagger/SearchModule;)Lcom/evie/search/SearchShortcutHandler;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/evie/search/dagger/SearchModule;->searchShortcutHandler()Lcom/evie/search/SearchShortcutHandler;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 30
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/search/SearchShortcutHandler;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/search/SearchShortcutHandler;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/evie/search/dagger/SearchModule_SearchShortcutHandlerFactory;->module:Lcom/evie/search/dagger/SearchModule;

    invoke-static {v0}, Lcom/evie/search/dagger/SearchModule_SearchShortcutHandlerFactory;->proxySearchShortcutHandler(Lcom/evie/search/dagger/SearchModule;)Lcom/evie/search/SearchShortcutHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/evie/search/dagger/SearchModule_SearchShortcutHandlerFactory;->get()Lcom/evie/search/SearchShortcutHandler;

    move-result-object v0

    return-object v0
.end method
