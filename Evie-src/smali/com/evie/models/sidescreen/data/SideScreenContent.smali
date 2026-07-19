.class public Lcom/evie/models/sidescreen/data/SideScreenContent;
.super Ljava/lang/Object;
.source "SideScreenContent.java"


# instance fields
.field private layout:Lcom/evie/models/sidescreen/data/SideScreenContentLayout;

.field private objects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schema/Thing;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/models/sidescreen/data/SideScreenContent;->objects:Ljava/util/List;

    .line 20
    sget-object v0, Lcom/evie/models/sidescreen/data/SideScreenContentLayout;->EMPTY:Lcom/evie/models/sidescreen/data/SideScreenContentLayout;

    iput-object v0, p0, Lcom/evie/models/sidescreen/data/SideScreenContent;->layout:Lcom/evie/models/sidescreen/data/SideScreenContentLayout;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 15
    instance-of p1, p1, Lcom/evie/models/sidescreen/data/SideScreenContent;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 15
    :cond_0
    instance-of v1, p1, Lcom/evie/models/sidescreen/data/SideScreenContent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/evie/models/sidescreen/data/SideScreenContent;

    invoke-virtual {p1, p0}, Lcom/evie/models/sidescreen/data/SideScreenContent;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/evie/models/sidescreen/data/SideScreenContent;->getObjects()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evie/models/sidescreen/data/SideScreenContent;->getObjects()Ljava/util/List;

    move-result-object v3

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/evie/models/sidescreen/data/SideScreenContent;->getLayout()Lcom/evie/models/sidescreen/data/SideScreenContentLayout;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evie/models/sidescreen/data/SideScreenContent;->getLayout()Lcom/evie/models/sidescreen/data/SideScreenContentLayout;

    move-result-object p1

    if-nez v1, :cond_5

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :goto_1
    return v2

    :cond_6
    return v0
.end method

.method public getLayout()Lcom/evie/models/sidescreen/data/SideScreenContentLayout;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/evie/models/sidescreen/data/SideScreenContent;->layout:Lcom/evie/models/sidescreen/data/SideScreenContentLayout;

    return-object v0
.end method

.method public getObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schema/Thing;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/evie/models/sidescreen/data/SideScreenContent;->objects:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 15
    invoke-virtual {p0}, Lcom/evie/models/sidescreen/data/SideScreenContent;->getObjects()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/evie/models/sidescreen/data/SideScreenContent;->getLayout()Lcom/evie/models/sidescreen/data/SideScreenContentLayout;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SideScreenContent(objects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/models/sidescreen/data/SideScreenContent;->getObjects()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", layout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/models/sidescreen/data/SideScreenContent;->getLayout()Lcom/evie/models/sidescreen/data/SideScreenContentLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
