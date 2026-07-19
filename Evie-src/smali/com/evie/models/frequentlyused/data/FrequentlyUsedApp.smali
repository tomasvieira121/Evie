.class public Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;
.super Ljava/lang/Object;
.source "FrequentlyUsedApp.java"


# instance fields
.field public final className:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "activity"
    .end annotation
.end field

.field public final packageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "package"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;->className:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 35
    instance-of v0, p1, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;

    iget-object p1, p1, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 2

    .line 22
    sget-object v0, Lcom/evie/models/frequentlyused/SpecialAppsList;->ALWAYS_USE_DEFAULT:Ljava/util/List;

    invoke-virtual {p0}, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toComponentName()Landroid/content/ComponentName;
    .locals 3

    .line 30
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;->className:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FrequentlyUsedApp(packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", className="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
