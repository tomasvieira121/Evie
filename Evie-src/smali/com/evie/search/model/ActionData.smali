.class public Lcom/evie/search/model/ActionData;
.super Ljava/lang/Object;
.source "ActionData.java"


# instance fields
.field private actionType:Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private links:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/search/model/AppLink;",
            ">;"
        }
    .end annotation
.end field

.field private subtext:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evie/search/model/ActionData;->links:Ljava/util/List;

    .line 19
    iput-object p1, p0, Lcom/evie/search/model/ActionData;->label:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/evie/search/model/ActionData;->subtext:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/evie/search/model/ActionData;->iconUrl:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/evie/search/model/ActionData;->actionType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addLink(Lcom/evie/search/model/AppLink;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/evie/search/model/ActionData;->links:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getActionType()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/evie/search/model/ActionData;->actionType:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/evie/search/model/ActionData;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/evie/search/model/ActionData;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLinks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evie/search/model/AppLink;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/evie/search/model/ActionData;->links:Ljava/util/List;

    return-object v0
.end method

.method public getSubtext()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/evie/search/model/ActionData;->subtext:Ljava/lang/String;

    return-object v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/evie/search/model/ActionData;->label:Ljava/lang/String;

    return-void
.end method

.method public setSubtext(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/evie/search/model/ActionData;->subtext:Ljava/lang/String;

    return-void
.end method
