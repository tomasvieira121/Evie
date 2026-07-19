.class public Lcom/evie/models/sidescreen/data/SideScreenContentTile;
.super Ljava/lang/Object;
.source "SideScreenContentTile.java"


# instance fields
.field private fallbackId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fallbackId"
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private positionY:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "positionY"
    .end annotation
.end field

.field private type:Lcom/evie/models/sidescreen/data/TileType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/evie/models/sidescreen/data/TileType;I)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->positionY:I

    .line 27
    iput-object p1, p0, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->id:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->type:Lcom/evie/models/sidescreen/data/TileType;

    .line 29
    iput p3, p0, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->positionY:I

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 9
    instance-of p1, p1, Lcom/evie/models/sidescreen/data/SideScreenContentTile;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 9
    :cond_0
    instance-of v1, p1, Lcom/evie/models/sidescreen/data/SideScreenContentTile;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/evie/models/sidescreen/data/SideScreenContentTile;

    invoke-virtual {p1, p0}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getType()Lcom/evie/models/sidescreen/data/TileType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getType()Lcom/evie/models/sidescreen/data/TileType;

    move-result-object v3

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getParams()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getParams()Ljava/util/Map;

    move-result-object v3

    if-nez v1, :cond_7

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_2
    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getFallbackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getFallbackId()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_9

    if-eqz v3, :cond_a

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_3
    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getPositionY()I

    move-result v1

    invoke-virtual {p1}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getPositionY()I

    move-result p1

    if-eq v1, p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public getFallbackId()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->fallbackId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->params:Ljava/util/Map;

    return-object v0
.end method

.method public getPositionY()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->positionY:I

    return v0
.end method

.method public getType()Lcom/evie/models/sidescreen/data/TileType;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->type:Lcom/evie/models/sidescreen/data/TileType;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 9
    invoke-virtual {p0}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getType()Lcom/evie/models/sidescreen/data/TileType;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_1

    const/16 v3, 0x2b

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getParams()Ljava/util/Map;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_2

    const/16 v3, 0x2b

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getFallbackId()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getPositionY()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setPositionY(I)V
    .locals 0

    .line 9
    iput p1, p0, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->positionY:I

    return-void
.end method

.method public setType(Lcom/evie/models/sidescreen/data/TileType;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->type:Lcom/evie/models/sidescreen/data/TileType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SideScreenContentTile(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getType()Lcom/evie/models/sidescreen/data/TileType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getParams()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fallbackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getFallbackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", positionY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/models/sidescreen/data/SideScreenContentTile;->getPositionY()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
