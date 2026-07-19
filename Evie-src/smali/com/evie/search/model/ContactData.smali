.class public Lcom/evie/search/model/ContactData;
.super Ljava/lang/Object;
.source "ContactData.java"


# instance fields
.field private actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/search/model/ActionData;",
            ">;"
        }
    .end annotation
.end field

.field private headerUri:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private overlayUri:Ljava/lang/String;

.field private shortcutUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evie/search/model/ContactData;->actions:Ljava/util/List;

    .line 23
    iput-object p1, p0, Lcom/evie/search/model/ContactData;->link:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evie/search/model/ActionData;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/evie/search/model/ContactData;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getHeaderUri()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/evie/search/model/ContactData;->headerUri:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/evie/search/model/ContactData;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/evie/search/model/ContactData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOverlayUri()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/evie/search/model/ContactData;->overlayUri:Ljava/lang/String;

    return-object v0
.end method

.method public getShortcutUri()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/evie/search/model/ContactData;->shortcutUri:Ljava/lang/String;

    return-object v0
.end method

.method public setActions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/evie/search/model/ActionData;",
            ">;)V"
        }
    .end annotation

    .line 10
    iput-object p1, p0, Lcom/evie/search/model/ContactData;->actions:Ljava/util/List;

    return-void
.end method

.method public setHeaderUri(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/evie/search/model/ContactData;->headerUri:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/evie/search/model/ContactData;->name:Ljava/lang/String;

    return-void
.end method

.method public setOverlayUri(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/evie/search/model/ContactData;->overlayUri:Ljava/lang/String;

    return-void
.end method

.method public setShortcutUri(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/evie/search/model/ContactData;->shortcutUri:Ljava/lang/String;

    return-void
.end method
