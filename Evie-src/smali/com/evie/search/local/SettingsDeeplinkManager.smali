.class public Lcom/evie/search/local/SettingsDeeplinkManager;
.super Ljava/lang/Object;
.source "SettingsDeeplinkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;
    }
.end annotation


# direct methods
.method static getAvailableItems(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/evie/search/model/LocalSearchItem;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    invoke-static {}, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->values()[Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, v5, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v7, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 99
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->getName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v6

    .line 101
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v8, "name"

    .line 102
    invoke-static {v7, v6, v8}, Lcom/evie/search/local/LocalSearchUtil;->addKeywords(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->getAlternativeName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    const-string v9, "altname"

    .line 105
    invoke-static {v7, v8, v9}, Lcom/evie/search/local/LocalSearchUtil;->addKeywords(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_1
    new-instance v8, Lcom/evie/search/model/LocalSearchItem;

    iget-object v5, v5, Lcom/evie/search/local/SettingsDeeplinkManager$SettingsConfig;->link:Ljava/lang/String;

    const-string v9, "SETTINGS_DEEPLINK"

    invoke-direct {v8, v5, v6, v7, v9}, Lcom/evie/search/model/LocalSearchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
