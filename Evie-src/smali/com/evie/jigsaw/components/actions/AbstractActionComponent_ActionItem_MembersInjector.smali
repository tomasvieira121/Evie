.class public final Lcom/evie/jigsaw/components/actions/AbstractActionComponent_ActionItem_MembersInjector;
.super Ljava/lang/Object;
.source "AbstractActionComponent_ActionItem_MembersInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static injectEventService(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;Lcom/evie/common/services/events/EventService;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->eventService:Lcom/evie/common/services/events/EventService;

    return-void
.end method

.method public static injectImageResolver(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;Lcom/evie/jigsaw/services/images/ImageResolver;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->imageResolver:Lcom/evie/jigsaw/services/images/ImageResolver;

    return-void
.end method

.method public static injectLinkResolver(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;Lcom/evie/common/services/links/LinkResolver;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->linkResolver:Lcom/evie/common/services/links/LinkResolver;

    return-void
.end method

.method public static injectPreferences(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->preferences:Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;

    return-void
.end method

.method public static injectShortcutService(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;Lcom/evie/jigsaw/services/shortcuts/ShortcutService;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->shortcutService:Lcom/evie/jigsaw/services/shortcuts/ShortcutService;

    return-void
.end method
