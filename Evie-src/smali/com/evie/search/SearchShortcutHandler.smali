.class public Lcom/evie/search/SearchShortcutHandler;
.super Ljava/lang/Object;
.source "SearchShortcutHandler.java"


# instance fields
.field private final mAdapter:Lcom/evie/search/SearchAdapter;

.field private mDragSink:Lcom/evie/common/dragndrop/DragSink;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageName:Ljava/lang/String;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lcom/evie/search/SearchAdapter;Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/evie/search/SearchShortcutHandler;->mAdapter:Lcom/evie/search/SearchAdapter;

    .line 59
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/search/SearchShortcutHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 60
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/search/SearchShortcutHandler;->mResources:Landroid/content/res/Resources;

    .line 61
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/search/SearchShortcutHandler;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method clearDragSink()V
    .locals 1

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/evie/search/SearchShortcutHandler;->mDragSink:Lcom/evie/common/dragndrop/DragSink;

    return-void
.end method

.method public createShortcut(Landroid/view/View;Lcom/evie/common/dragndrop/ItemInfoCommon;)Z
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/evie/search/SearchShortcutHandler;->mDragSink:Lcom/evie/common/dragndrop/DragSink;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/evie/search/SearchShortcutHandler;->mAdapter:Lcom/evie/search/SearchAdapter;

    invoke-interface {v0, p1, p2, v1}, Lcom/evie/common/dragndrop/DragSink;->startDrag(Landroid/view/View;Lcom/evie/common/dragndrop/ItemInfoCommon;Lcom/evie/common/dragndrop/DragSource;)V

    const/4 p1, 0x1

    return p1
.end method

.method public createShortcut(Landroid/view/View;Lcom/evie/search/local/LocalSearchSubitem;)Z
    .locals 4

    .line 145
    sget v0, Lcom/evie/search/R$id;->search_subitem_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    if-nez v0, :cond_0

    .line 147
    sget v0, Lcom/evie/search/R$id;->search_item_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 151
    :cond_0
    invoke-virtual {p2}, Lcom/evie/search/local/LocalSearchSubitem;->getLink()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tel:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 152
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-virtual {p2}, Lcom/evie/search/local/LocalSearchSubitem;->getLink()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 154
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {p2}, Lcom/evie/search/local/LocalSearchSubitem;->getLink()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 155
    iget-object v2, p0, Lcom/evie/search/SearchShortcutHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 160
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Lcom/voxel/simplesearchlauncher/utils/BitmapUtil;->getBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_3

    return v1

    .line 165
    :cond_3
    new-instance v1, Lcom/evie/common/dragndrop/ItemInfoCommon;

    invoke-virtual {p2}, Lcom/evie/search/local/LocalSearchSubitem;->getRecentsLabel()Ljava/lang/String;

    move-result-object p2

    const-string v3, "shortcut"

    invoke-direct {v1, p2, p1, v2, v3}, Lcom/evie/common/dragndrop/ItemInfoCommon;-><init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/evie/search/SearchShortcutHandler;->createShortcut(Landroid/view/View;Lcom/evie/common/dragndrop/ItemInfoCommon;)Z

    move-result p1

    return p1
.end method

.method public createShortcut(Landroid/view/View;Lcom/evie/search/model/FrequentlyUsedItem;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 267
    :try_start_0
    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    invoke-virtual {p2}, Lcom/evie/search/model/FrequentlyUsedItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 274
    iget-object v3, p0, Lcom/evie/search/SearchShortcutHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-nez v3, :cond_0

    const-string p1, "Failed to resolve intent for package %s"

    .line 276
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/evie/search/model/FrequentlyUsedItem;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 280
    :cond_0
    iget-object p2, p0, Lcom/evie/search/SearchShortcutHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 282
    invoke-virtual {p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/utils/BitmapUtil;->getBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 284
    new-instance v1, Lcom/evie/common/dragndrop/ItemInfoCommon;

    const-string v3, "shortcut"

    invoke-direct {v1, p2, v2, v0, v3}, Lcom/evie/common/dragndrop/ItemInfoCommon;-><init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/evie/search/SearchShortcutHandler;->createShortcut(Landroid/view/View;Lcom/evie/common/dragndrop/ItemInfoCommon;)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "Invalid view passed to createShortcut: %s"

    .line 269
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public createShortcut(Landroid/view/View;Lcom/evie/search/model/LocalSearchItem;)Z
    .locals 7

    .line 73
    invoke-virtual {p2}, Lcom/evie/search/model/LocalSearchItem;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 77
    :cond_0
    sget v0, Lcom/evie/search/R$id;->search_item_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 82
    invoke-virtual {p2}, Lcom/evie/search/model/LocalSearchItem;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 84
    invoke-virtual {p2}, Lcom/evie/search/model/LocalSearchItem;->getType()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x3f903c7e

    const/4 v6, 0x1

    if-eq v4, v5, :cond_3

    const v5, 0x5e55770d

    if-eq v4, v5, :cond_2

    const v5, 0x6382b000

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "CONTACT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const-string v4, "LOCAL_APP"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const-string v4, "SETTINGS_DEEPLINK"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, -0x1

    :goto_1
    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    move-object v2, v3

    goto :goto_2

    :pswitch_0
    const-string v3, "shortcut"

    .line 105
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    const-string v4, "|"

    .line 107
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 108
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 109
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 110
    aget-object v4, v0, v1

    aget-object v0, v0, v6

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 112
    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_2

    :pswitch_1
    const-string v3, "app"

    .line 96
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 98
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.LAUNCHER"

    .line 99
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    aget-object v4, v0, v1

    aget-object v0, v0, v6

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :pswitch_2
    const-string v3, "shortcut"

    .line 88
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.evie.jigsaw.OPEN_CARD"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 90
    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/evie/search/SearchShortcutHandler;->mPackageName:Ljava/lang/String;

    const-string v5, "com.evie.jigsaw.JigsawActivity"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_2
    if-nez v2, :cond_6

    return v1

    :cond_6
    const v0, 0x10018000

    .line 122
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "com.evie.search.link"

    .line 123
    invoke-virtual {p2}, Lcom/evie/search/model/LocalSearchItem;->getLink()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.evie.search.itemLabel"

    .line 124
    invoke-virtual {p2}, Lcom/evie/search/model/LocalSearchItem;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.evie.search.itemType"

    .line 125
    invoke-virtual {p2}, Lcom/evie/search/model/LocalSearchItem;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "data:image/bmp;base64,"

    .line 129
    invoke-virtual {p2}, Lcom/evie/search/model/LocalSearchItem;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 130
    invoke-virtual {p2}, Lcom/evie/search/model/LocalSearchItem;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x16

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 132
    array-length v4, v0

    invoke-static {v0, v1, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    .line 134
    :cond_7
    invoke-virtual {p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->getWidth()I

    move-result v4

    invoke-static {v0, v4}, Lcom/voxel/simplesearchlauncher/utils/BitmapUtil;->getBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_3
    if-nez v0, :cond_8

    return v1

    .line 141
    :cond_8
    new-instance v1, Lcom/evie/common/dragndrop/ItemInfoCommon;

    invoke-virtual {p2}, Lcom/evie/search/model/LocalSearchItem;->getLabel()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2, v2, v0, v3}, Lcom/evie/common/dragndrop/ItemInfoCommon;-><init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/evie/search/SearchShortcutHandler;->createShortcut(Landroid/view/View;Lcom/evie/common/dragndrop/ItemInfoCommon;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createShortcut(Landroid/view/View;Lcom/evie/search/model/RecentItem;)Z
    .locals 3

    .line 246
    invoke-virtual {p2}, Lcom/evie/search/model/RecentItem;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "CONTACT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "LOCAL_APP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "ACTION_CONTACT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "WEB_AUTOCOMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v1, "SETTINGS_DEEPLINK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 259
    new-instance v0, Lcom/evie/search/model/RemoteSearchItem;

    invoke-direct {v0, p2}, Lcom/evie/search/model/RemoteSearchItem;-><init>(Lcom/evie/search/model/RecentItem;)V

    invoke-virtual {p0, p1, v0}, Lcom/evie/search/SearchShortcutHandler;->createShortcut(Landroid/view/View;Lcom/evie/search/model/RemoteSearchItem;)Z

    move-result p1

    return p1

    .line 256
    :pswitch_0
    new-instance v0, Lcom/evie/search/model/WebSearchItem;

    invoke-virtual {p2}, Lcom/evie/search/model/RecentItem;->getLabel()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v2, p2}, Lcom/evie/search/model/WebSearchItem;-><init>(ZLjava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/evie/search/SearchShortcutHandler;->createShortcut(Landroid/view/View;Lcom/evie/search/model/WebSearchItem;)Z

    move-result p1

    return p1

    .line 253
    :pswitch_1
    new-instance v0, Lcom/evie/search/local/LocalSearchSubitem;

    invoke-direct {v0, p2}, Lcom/evie/search/local/LocalSearchSubitem;-><init>(Lcom/evie/search/model/RecentItem;)V

    invoke-virtual {p0, p1, v0}, Lcom/evie/search/SearchShortcutHandler;->createShortcut(Landroid/view/View;Lcom/evie/search/local/LocalSearchSubitem;)Z

    move-result p1

    return p1

    .line 250
    :pswitch_2
    new-instance v0, Lcom/evie/search/model/LocalSearchItem;

    invoke-direct {v0, p2}, Lcom/evie/search/model/LocalSearchItem;-><init>(Lcom/evie/search/model/RecentItem;)V

    invoke-virtual {p0, p1, v0}, Lcom/evie/search/SearchShortcutHandler;->createShortcut(Landroid/view/View;Lcom/evie/search/model/LocalSearchItem;)Z

    move-result p1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3f903c7e -> :sswitch_4
        -0x94fb8ed -> :sswitch_3
        0x40b232f7 -> :sswitch_2
        0x5e55770d -> :sswitch_1
        0x6382b000 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createShortcut(Landroid/view/View;Lcom/evie/search/model/RemoteSearchItem;)Z
    .locals 6

    .line 169
    sget v0, Lcom/evie/search/R$id;->search_item_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    if-nez v0, :cond_0

    .line 171
    sget v0, Lcom/evie/search/R$id;->search_subitem_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 177
    :cond_0
    invoke-virtual {p2}, Lcom/evie/search/model/RemoteSearchItem;->getLinks()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v2, "places:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const v2, 0x10008000

    if-eqz p1, :cond_2

    .line 178
    invoke-virtual {p2}, Lcom/evie/search/model/RemoteSearchItem;->getLinks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v3, "\\|"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 179
    array-length v3, p1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    return v1

    .line 183
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.evie.jigsaw.HANDLE_PLACES"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.evie.jigsaw.HANDLE_PLACES.label"

    .line 184
    invoke-virtual {p2}, Lcom/evie/search/model/RemoteSearchItem;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.evie.jigsaw.HANDLE_PLACES.plan"

    const/4 v4, 0x1

    .line 185
    aget-object p1, p1, v4

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 189
    :cond_2
    invoke-virtual {p2}, Lcom/evie/search/model/RemoteSearchItem;->getLinks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 191
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.evie.jigsaw.OPEN_CARD"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 193
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/evie/search/SearchShortcutHandler;->mPackageName:Ljava/lang/String;

    const-string v5, "com.evie.jigsaw.JigsawActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 194
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "com.evie.search.link"

    .line 196
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.evie.search.itemLabel"

    .line 197
    invoke-virtual {p2}, Lcom/evie/search/model/RemoteSearchItem;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.evie.search.itemType"

    const-string v2, "remote"

    .line 198
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    :goto_0
    new-instance p1, Lcom/evie/common/dragndrop/ItemInfoCommon;

    .line 202
    invoke-virtual {p2}, Lcom/evie/search/model/RemoteSearchItem;->getLabel()Ljava/lang/String;

    move-result-object p2

    .line 204
    invoke-virtual {v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Lcom/voxel/simplesearchlauncher/utils/BitmapUtil;->getBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v3, "shortcut"

    invoke-direct {p1, p2, v1, v2, v3}, Lcom/evie/common/dragndrop/ItemInfoCommon;-><init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0, v0, p1}, Lcom/evie/search/SearchShortcutHandler;->createShortcut(Landroid/view/View;Lcom/evie/common/dragndrop/ItemInfoCommon;)Z

    move-result p1

    return p1
.end method

.method public createShortcut(Landroid/view/View;Lcom/evie/search/model/WebSearchItem;)Z
    .locals 5

    .line 209
    sget v0, Lcom/evie/search/R$id;->search_autocomplete_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 211
    sget v0, Lcom/evie/search/R$id;->search_item_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 214
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.WEB_SEARCH"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.googlequicksearchbox"

    .line 215
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "query"

    .line 216
    invoke-virtual {p2}, Lcom/evie/search/model/WebSearchItem;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.evie.search.link"

    .line 218
    invoke-virtual {p2}, Lcom/evie/search/model/WebSearchItem;->getLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.evie.search.itemLabel"

    .line 219
    invoke-virtual {p2}, Lcom/evie/search/model/WebSearchItem;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.evie.search.itemType"

    const-string v2, "WEB_AUTOCOMPLETE"

    .line 220
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    iget-object v1, p0, Lcom/evie/search/SearchShortcutHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 227
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    .line 228
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 231
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.google.com/search?q="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/evie/search/model/WebSearchItem;->getLabel()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Error encoding search query"

    .line 233
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 238
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/evie/search/SearchShortcutHandler;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/evie/search/R$drawable;->autocomplete_shortcut_icon:I

    .line 239
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/evie/search/SearchShortcutHandler;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/evie/search/R$dimen;->shortcut_icon_dimension:I

    .line 240
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 238
    invoke-static {v1, v2}, Lcom/voxel/simplesearchlauncher/utils/BitmapUtil;->getBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 242
    new-instance v2, Lcom/evie/common/dragndrop/ItemInfoCommon;

    invoke-virtual {p2}, Lcom/evie/search/model/WebSearchItem;->getLabel()Ljava/lang/String;

    move-result-object p2

    const-string v3, "shortcut"

    invoke-direct {v2, p2, p1, v1, v3}, Lcom/evie/common/dragndrop/ItemInfoCommon;-><init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/evie/search/SearchShortcutHandler;->createShortcut(Landroid/view/View;Lcom/evie/common/dragndrop/ItemInfoCommon;)Z

    move-result p1

    return p1
.end method

.method setDragSink(Lcom/evie/common/dragndrop/DragSink;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/evie/search/SearchShortcutHandler;->mDragSink:Lcom/evie/common/dragndrop/DragSink;

    return-void
.end method
