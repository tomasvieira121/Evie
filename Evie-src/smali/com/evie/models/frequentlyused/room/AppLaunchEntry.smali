.class public Lcom/evie/models/frequentlyused/room/AppLaunchEntry;
.super Ljava/lang/Object;
.source "AppLaunchEntry.java"


# instance fields
.field private className:Ljava/lang/String;

.field private id:I

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;->id:I

    .line 28
    iput-object p2, p0, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;->packageName:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;->className:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 18
    instance-of p1, p1, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 18
    :cond_0
    instance-of v1, p1, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;

    invoke-virtual {p1, p0}, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;->getPackageName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;->getClassName()Ljava/lang/String;

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

.method public getClassName()Ljava/lang/String;
    .locals 2

    .line 65
    sget-object v0, Lcom/evie/models/frequentlyused/SpecialAppsList;->ALWAYS_USE_DEFAULT:Ljava/util/List;

    invoke-virtual {p0}, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;->id:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 18
    invoke-virtual {p0}, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;->getPackageName()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;->getClassName()Ljava/lang/String;

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

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;->className:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;->id:I

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/evie/models/frequentlyused/room/AppLaunchEntry;->packageName:Ljava/lang/String;

    return-void
.end method
