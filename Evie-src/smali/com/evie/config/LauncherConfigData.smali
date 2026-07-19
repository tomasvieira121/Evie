.class public Lcom/evie/config/LauncherConfigData;
.super Ljava/lang/Object;
.source "LauncherConfigData.java"


# instance fields
.field private sidescreenEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sidescreen_enabled"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/evie/config/LauncherConfigData;->sidescreenEnabled:Z

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 8
    instance-of p1, p1, Lcom/evie/config/LauncherConfigData;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 8
    :cond_0
    instance-of v1, p1, Lcom/evie/config/LauncherConfigData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/evie/config/LauncherConfigData;

    invoke-virtual {p1, p0}, Lcom/evie/config/LauncherConfigData;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/evie/config/LauncherConfigData;->isSidescreenEnabled()Z

    move-result v1

    invoke-virtual {p1}, Lcom/evie/config/LauncherConfigData;->isSidescreenEnabled()Z

    move-result p1

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 8
    invoke-virtual {p0}, Lcom/evie/config/LauncherConfigData;->isSidescreenEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4f

    goto :goto_0

    :cond_0
    const/16 v0, 0x61

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v1, v0

    return v1
.end method

.method public isSidescreenEnabled()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/evie/config/LauncherConfigData;->sidescreenEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LauncherConfigData(sidescreenEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/config/LauncherConfigData;->isSidescreenEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
