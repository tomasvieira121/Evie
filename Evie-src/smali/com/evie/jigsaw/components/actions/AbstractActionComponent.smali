.class public abstract Lcom/evie/jigsaw/components/actions/AbstractActionComponent;
.super Lcom/evie/jigsaw/components/base/AbstractComponent;
.source "AbstractActionComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Lcom/evie/jigsaw/components/base/AbstractComponent<",
        "TVH;>;"
    }
.end annotation


# static fields
.field private static final transient INSTALLED_ITEMS_FIRST_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private action:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private icon:Lcom/evie/jigsaw/services/images/models/EvieImage;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;",
            ">;"
        }
    .end annotation
.end field

.field private shortcutIcon:Lcom/evie/jigsaw/services/images/models/EvieImage;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shortcut_icon"
    .end annotation
.end field

.field transient shortcutService:Lcom/evie/jigsaw/services/shortcuts/ShortcutService;

.field private transient streamingEnabled:Z

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$1;

    invoke-direct {v0}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$1;-><init>()V

    sput-object v0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->INSTALLED_ITEMS_FIRST_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/evie/jigsaw/components/base/AbstractComponent;-><init>()V

    .line 67
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Lcom/evie/jigsaw/services/images/models/EvieImage;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->icon:Lcom/evie/jigsaw/services/images/models/EvieImage;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->items:Ljava/util/List;

    return-object v0
.end method

.method protected getPreferredItem()Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->items:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    return-object v0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    .line 168
    invoke-virtual {v1}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->isPreferred()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShortcutIcon()Lcom/evie/jigsaw/services/images/models/EvieImage;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->shortcutIcon:Lcom/evie/jigsaw/services/images/models/EvieImage;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->title:Ljava/lang/String;

    return-object v0
.end method

.method public initialize(Lcom/evie/jigsaw/Jigsaw;)V
    .locals 5

    .line 99
    invoke-super {p0, p1}, Lcom/evie/jigsaw/components/base/AbstractComponent;->initialize(Lcom/evie/jigsaw/Jigsaw;)V

    .line 100
    invoke-virtual {p1, p0}, Lcom/evie/jigsaw/Jigsaw;->inject(Lcom/evie/jigsaw/components/actions/AbstractActionComponent;)V

    .line 102
    invoke-virtual {p1}, Lcom/evie/jigsaw/Jigsaw;->settings()Lcom/evie/jigsaw/JigsawSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evie/jigsaw/JigsawSettings;->streamingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->streamingEnabled:Z

    .line 105
    invoke-virtual {p1}, Lcom/evie/jigsaw/Jigsaw;->application()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    .line 111
    invoke-virtual {v2}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->getAppId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 115
    invoke-virtual {v2, v4}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->setInstalled(Z)Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 125
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 126
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    .line 128
    invoke-virtual {v1}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->isInstalled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->isSkipIfAppInstalled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 129
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 134
    :cond_3
    invoke-virtual {p0}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->getItems()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->INSTALLED_ITEMS_FIRST_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 137
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->shortcutService:Lcom/evie/jigsaw/services/shortcuts/ShortcutService;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->shortcutIcon:Lcom/evie/jigsaw/services/images/models/EvieImage;

    if-eqz v1, :cond_4

    .line 138
    invoke-virtual {p1}, Lcom/evie/jigsaw/Jigsaw;->application()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->shortcutIcon:Lcom/evie/jigsaw/services/images/models/EvieImage;

    invoke-virtual {v0, v1, v2}, Lcom/evie/jigsaw/services/shortcuts/ShortcutService;->loadShortcut(Landroid/content/Context;Lcom/evie/jigsaw/services/images/models/Image;)V

    .line 142
    :cond_4
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    .line 143
    invoke-virtual {p1, v1}, Lcom/evie/jigsaw/Jigsaw;->inject(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method public proliferate()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    .line 150
    invoke-virtual {v1, p0}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->setParent(Lcom/evie/jigsaw/components/actions/AbstractActionComponent;)Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ready()Z
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAction(Ljava/lang/String;)Lcom/evie/jigsaw/components/actions/AbstractActionComponent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/evie/jigsaw/components/actions/AbstractActionComponent<",
            "TVH;>;"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->action:Ljava/lang/String;

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/evie/jigsaw/components/actions/AbstractActionComponent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/evie/jigsaw/components/actions/AbstractActionComponent<",
            "TVH;>;"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->description:Ljava/lang/String;

    return-object p0
.end method

.method public setIcon(Lcom/evie/jigsaw/services/images/models/EvieImage;)Lcom/evie/jigsaw/components/actions/AbstractActionComponent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/jigsaw/services/images/models/EvieImage;",
            ")",
            "Lcom/evie/jigsaw/components/actions/AbstractActionComponent<",
            "TVH;>;"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->icon:Lcom/evie/jigsaw/services/images/models/EvieImage;

    return-object p0
.end method

.method public setItems(Ljava/util/List;)Lcom/evie/jigsaw/components/actions/AbstractActionComponent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;",
            ">;)",
            "Lcom/evie/jigsaw/components/actions/AbstractActionComponent<",
            "TVH;>;"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->items:Ljava/util/List;

    return-object p0
.end method

.method public setShortcutIcon(Lcom/evie/jigsaw/services/images/models/EvieImage;)Lcom/evie/jigsaw/components/actions/AbstractActionComponent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/jigsaw/services/images/models/EvieImage;",
            ")",
            "Lcom/evie/jigsaw/components/actions/AbstractActionComponent<",
            "TVH;>;"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->shortcutIcon:Lcom/evie/jigsaw/services/images/models/EvieImage;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/evie/jigsaw/components/actions/AbstractActionComponent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/evie/jigsaw/components/actions/AbstractActionComponent<",
            "TVH;>;"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->title:Ljava/lang/String;

    return-object p0
.end method
