.class public Lcom/evie/models/wallpaper/WallpaperData;
.super Ljava/lang/Object;
.source "WallpaperData.java"


# instance fields
.field private hdpi:Ljava/lang/String;

.field private mdpi:Ljava/lang/String;

.field private xhdpi:Ljava/lang/String;

.field private xxhdpi:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 5
    instance-of p1, p1, Lcom/evie/models/wallpaper/WallpaperData;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/evie/models/wallpaper/WallpaperData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/evie/models/wallpaper/WallpaperData;

    invoke-virtual {p1, p0}, Lcom/evie/models/wallpaper/WallpaperData;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/evie/models/wallpaper/WallpaperData;->getHdpi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evie/models/wallpaper/WallpaperData;->getHdpi()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/evie/models/wallpaper/WallpaperData;->getMdpi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evie/models/wallpaper/WallpaperData;->getMdpi()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/evie/models/wallpaper/WallpaperData;->getXhdpi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evie/models/wallpaper/WallpaperData;->getXhdpi()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/evie/models/wallpaper/WallpaperData;->getXxhdpi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evie/models/wallpaper/WallpaperData;->getXxhdpi()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_9

    if-eqz p1, :cond_a

    goto :goto_3

    :cond_9
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    :goto_3
    return v2

    :cond_a
    return v0
.end method

.method public getHdpi()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/evie/models/wallpaper/WallpaperData;->hdpi:Ljava/lang/String;

    return-object v0
.end method

.method public getMdpi()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/evie/models/wallpaper/WallpaperData;->mdpi:Ljava/lang/String;

    return-object v0
.end method

.method public getXhdpi()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/evie/models/wallpaper/WallpaperData;->xhdpi:Ljava/lang/String;

    return-object v0
.end method

.method public getXxhdpi()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/evie/models/wallpaper/WallpaperData;->xxhdpi:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 5
    invoke-virtual {p0}, Lcom/evie/models/wallpaper/WallpaperData;->getHdpi()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/evie/models/wallpaper/WallpaperData;->getMdpi()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/evie/models/wallpaper/WallpaperData;->getXhdpi()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/evie/models/wallpaper/WallpaperData;->getXxhdpi()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WallpaperData(hdpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/models/wallpaper/WallpaperData;->getHdpi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mdpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/models/wallpaper/WallpaperData;->getMdpi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", xhdpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/models/wallpaper/WallpaperData;->getXhdpi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", xxhdpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/models/wallpaper/WallpaperData;->getXxhdpi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
