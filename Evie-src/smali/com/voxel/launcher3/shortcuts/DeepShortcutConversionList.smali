.class public Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList;
.super Ljava/lang/Object;
.source "DeepShortcutConversionList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList$Matcher;
    }
.end annotation


# instance fields
.field private mMatchers:Lcom/voxel/launcher3/util/MultiHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/voxel/launcher3/util/MultiHashMap<",
            "Ljava/lang/String;",
            "Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList$Matcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/voxel/launcher3/util/MultiHashMap;

    invoke-direct {v0}, Lcom/voxel/launcher3/util/MultiHashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList;->mMatchers:Lcom/voxel/launcher3/util/MultiHashMap;

    .line 24
    invoke-direct {p0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList;->addGmailConverters()V

    .line 25
    invoke-direct {p0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList;->addGMapsConverters()V

    return-void
.end method

.method private addGMapsConverters()V
    .locals 7

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.apps.maps"

    const-string v2, "com.google.android.apps.maps.LauncherShortcutActivity"

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_destination_home_key"

    const/4 v2, 0x1

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "extra_destination_home_key"

    .line 57
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "google.navigation:/?target=n&mode=d&q=Home&entry=dw"

    .line 60
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v4, "com.google.android.apps.maps"

    .line 61
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    iget-object v4, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList;->mMatchers:Lcom/voxel/launcher3/util/MultiHashMap;

    const-string v5, "com.google.android.apps.maps"

    new-instance v6, Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList$Matcher;

    invoke-direct {v6, p0, v0, v1, v3}, Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList$Matcher;-><init>(Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList;Landroid/content/Intent;Ljava/util/List;Landroid/content/Intent;)V

    invoke-virtual {v4, v5, v6}, Lcom/voxel/launcher3/util/MultiHashMap;->addToList(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.apps.maps"

    const-string v3, "com.google.android.apps.maps.LauncherShortcutActivity"

    .line 67
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_destination_work_key"

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "extra_destination_work_key"

    .line 71
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "google.navigation:/?target=n&mode=d&q=Work&entry=dw"

    .line 74
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v3, "com.google.android.apps.maps"

    .line 75
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    iget-object v3, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList;->mMatchers:Lcom/voxel/launcher3/util/MultiHashMap;

    const-string v4, "com.google.android.apps.maps"

    new-instance v5, Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList$Matcher;

    invoke-direct {v5, p0, v0, v1, v2}, Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList$Matcher;-><init>(Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList;Landroid/content/Intent;Ljava/util/List;Landroid/content/Intent;)V

    invoke-virtual {v3, v4, v5}, Lcom/voxel/launcher3/util/MultiHashMap;->addToList(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private addGmailConverters()V
    .locals 6

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mail.intent.action.LAUNCH_COMPOSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/plain"

    .line 42
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.google.android.gm"

    .line 43
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    iget-object v2, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList;->mMatchers:Lcom/voxel/launcher3/util/MultiHashMap;

    const-string v3, "com.google.android.gm"

    new-instance v4, Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList$Matcher;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, p0, v0, v5, v1}, Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList$Matcher;-><init>(Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList;Landroid/content/Intent;Ljava/util/List;Landroid/content/Intent;)V

    invoke-virtual {v2, v3, v4}, Lcom/voxel/launcher3/util/MultiHashMap;->addToList(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getConversionsForPackage(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList$Matcher;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList;->mMatchers:Lcom/voxel/launcher3/util/MultiHashMap;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/util/MultiHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method
