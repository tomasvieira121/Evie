.class public final Lcom/evie/jigsaw/components/actions/AbstractActionComponent_MembersInjector;
.super Ljava/lang/Object;
.source "AbstractActionComponent_MembersInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static injectShortcutService(Lcom/evie/jigsaw/components/actions/AbstractActionComponent;Lcom/evie/jigsaw/services/shortcuts/ShortcutService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VH:",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">(",
            "Lcom/evie/jigsaw/components/actions/AbstractActionComponent<",
            "TVH;>;",
            "Lcom/evie/jigsaw/services/shortcuts/ShortcutService;",
            ")V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->shortcutService:Lcom/evie/jigsaw/services/shortcuts/ShortcutService;

    return-void
.end method
