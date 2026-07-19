.class public Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;
.super Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;
.source "GmailExtractor.java"


# static fields
.field public static final FIELDS:[Ljava/lang/String;

.field public static final PERMISSIONS:[Ljava/lang/String;

.field public static final SUPPORTED_LABELS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAccounts:[Ljava/lang/String;

.field mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.permission.GET_ACCOUNTS"

    const-string v1, "com.google.android.gm.permission.READ_CONTENT_PROVIDER"

    .line 27
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;->PERMISSIONS:[Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "^sq_ig_i_personal"

    const-string v2, "^iim"

    const-string v3, "^i"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;->SUPPORTED_LABELS:Ljava/util/List;

    const-string v0, "canonicalName"

    const-string v1, "numUnreadConversations"

    .line 46
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;->FIELDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;->mObservers:Ljava/util/List;

    return-void
.end method

.method private getContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.google.android.gm/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/labels"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private resetObservers()V
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;->unregisterObserver()V

    .line 79
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public extractNotificationInfo()Lcom/voxel/simplesearchlauncher/notification/NotificationCount;
    .locals 6

    .line 121
    new-instance v0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;->getPackageId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;->mAccounts:[Ljava/lang/String;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    .line 126
    iput v2, v0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->count:I

    .line 127
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 128
    iget v5, v0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->count:I

    invoke-virtual {p0, v4}, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;->getUnreadForAccount(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    iput v5, v0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->count:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getConfig()Ljava/lang/String;
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;->mAccounts:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    .line 188
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getConfigKey()Ljava/lang/String;
    .locals 1

    const-string v0, "extractor.gmail"

    return-object v0
.end method

.method public getEnabledAccounts()[Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;->mAccounts:[Ljava/lang/String;

    return-object v0
.end method

.method public getPackageId()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gm"

    return-object v0
.end method

.method public getPermissions()[Ljava/lang/String;
    .locals 1

    .line 65
    sget-object v0, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;->PERMISSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method public getUnreadForAccount(Ljava/lang/String;)I
    .locals 7

    .line 87
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;->FIELDS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 93
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 95
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 106
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v0

    .line 98
    :cond_1
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "canonicalName"

    .line 99
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 100
    sget-object v3, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;->SUPPORTED_LABELS:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "numUnreadConversations"

    .line 101
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 109
    sget-object p1, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;->SUPPORTED_LABELS:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 110
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 111
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_3

    return v2

    :cond_4
    return v0

    :catchall_0
    move-exception v0

    .line 106
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 107
    throw v0

    return-void
.end method

.method public isConfigured()Z
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;->mAccounts:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public registerObserver()V
    .locals 7

    .line 136
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;->mAccounts:[Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 141
    new-instance v4, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor$1;

    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor$1;-><init>(Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;Landroid/os/Handler;)V

    .line 154
    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;->mObservers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {p0, v3}, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setConfig(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 197
    new-array p1, v0, [Ljava/lang/String;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;->mAccounts:[Ljava/lang/String;

    return-void

    .line 202
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;->mAccounts:[Ljava/lang/String;

    .line 204
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 205
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;->mAccounts:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    return-void
.end method

.method public setEnabledAccounts([Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;->resetObservers()V

    .line 70
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;->mAccounts:[Ljava/lang/String;

    return-void
.end method

.method public unregisterObserver()V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;->mObservers:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/ContentObserver;

    .line 167
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    :cond_1
    return-void
.end method
