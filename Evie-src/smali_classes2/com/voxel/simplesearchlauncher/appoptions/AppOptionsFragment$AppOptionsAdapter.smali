.class Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;
.super Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$Adapter;
.source "AppOptionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppOptionsAdapter"
.end annotation


# instance fields
.field private final mItemHeight:I

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)V
    .locals 4

    .line 348
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;

    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$Adapter;-><init>(Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;)V

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->mItems:Ljava/util/List;

    .line 349
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->mItemHeight:I

    .line 350
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->mItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->access$000(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object v0

    instance-of v0, v0, Lcom/voxel/launcher3/AppInfo;

    if-eqz v0, :cond_0

    .line 354
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->access$000(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/AppInfo;

    iget-object v0, v0, Lcom/voxel/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    goto :goto_0

    .line 355
    :cond_0
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->access$000(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object v0

    instance-of v0, v0, Lcom/voxel/launcher3/ShortcutInfo;

    if-eqz v0, :cond_2

    .line 356
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->access$000(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/ShortcutInfo;

    iget-object v0, v0, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 357
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    .line 358
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 359
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 361
    :cond_2
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->access$000(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object v0

    instance-of v0, v0, Lcom/voxel/launcher3/PendingAddItemInfo;

    if-eqz v0, :cond_3

    .line 362
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->access$000(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/PendingAddItemInfo;

    iget-object v0, v0, Lcom/voxel/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 366
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->mItems:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 368
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Iteminfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->access$000(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 370
    :goto_1
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->access$000(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object v1

    iget v1, v1, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    if-nez v1, :cond_6

    if-eqz v0, :cond_5

    .line 372
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mLocalAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->getApp(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 373
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->mItems:Ljava/util/List;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_5
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->mItems:Ljava/util/List;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;Landroid/view/View;)V
    .locals 5

    .line 416
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->access$000(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object p1

    instance-of p1, p1, Lcom/voxel/launcher3/AppInfo;

    if-eqz p1, :cond_0

    .line 417
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->access$000(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/AppInfo;

    iget-object p1, p1, Lcom/voxel/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    goto :goto_0

    .line 418
    :cond_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->access$000(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object p1

    instance-of p1, p1, Lcom/voxel/launcher3/ShortcutInfo;

    if-eqz p1, :cond_2

    .line 419
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->access$000(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/ShortcutInfo;

    iget-object p1, p1, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 420
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    .line 421
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 422
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_0

    :cond_1
    move-object p1, v0

    goto :goto_0

    .line 424
    :cond_2
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->access$000(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object p1

    instance-of p1, p1, Lcom/voxel/launcher3/PendingAddItemInfo;

    if-eqz p1, :cond_3

    .line 425
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->access$000(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/PendingAddItemInfo;

    iget-object p1, p1, Lcom/voxel/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 429
    :goto_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->access$000(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object v0

    instance-of v0, v0, Lcom/voxel/launcher3/ItemInfo;

    if-eqz v0, :cond_4

    .line 430
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->access$000(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/voxel/launcher3/ItemInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    goto :goto_1

    .line 432
    :cond_4
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v0

    :goto_1
    if-eqz p1, :cond_5

    const/4 v1, 0x0

    const v2, 0x7f12002c

    .line 437
    :try_start_0
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;

    invoke-virtual {v3}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/LauncherAppsCompat;

    move-result-object v3

    .line 438
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;

    invoke-virtual {v4}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/UserManagerCompat;

    .line 439
    invoke-virtual {v3, p1, v0}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->showAppDetailsForProfile(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 444
    :catch_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 445
    invoke-static {}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unable to launch settings"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 441
    :catch_1
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 442
    invoke-static {}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Launcher does not have permission to launch settings"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$1(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;Landroid/view/View;)V
    .locals 1

    .line 454
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->access$000(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->newInstance(Lcom/voxel/launcher3/ItemInfo;)Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;

    move-result-object p1

    .line 455
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;

    invoke-static {v0, p1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->access$500(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$2(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;Landroid/view/View;)V
    .locals 3

    .line 465
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->access$000(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object p1

    instance-of p1, p1, Lcom/voxel/launcher3/ShortcutInfo;

    if-eqz p1, :cond_0

    .line 466
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->access$000(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/ShortcutInfo;

    .line 467
    iget v0, p1, Lcom/voxel/launcher3/ShortcutInfo;->flags:I

    .line 468
    iget-object v0, p1, Lcom/voxel/launcher3/ShortcutInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    .line 469
    invoke-virtual {p1}, Lcom/voxel/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_1

    .line 471
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->access$000(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/voxel/launcher3/ItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 472
    new-instance p1, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->access$000(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/voxel/launcher3/ItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {p1, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 475
    :cond_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->access$000(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/AppInfo;

    .line 476
    iget v0, p1, Lcom/voxel/launcher3/AppInfo;->flags:I

    .line 477
    iget-object v0, p1, Lcom/voxel/launcher3/AppInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    .line 478
    iget-object p1, p1, Lcom/voxel/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 480
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->access$300(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$OnFragmentInteractionListener;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$OnFragmentInteractionListener;->startApplicationUninstallActivity(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 483
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;

    const/4 v0, 0x1

    invoke-static {p1, p1, v0}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->access$400(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewHeightForPosition(I)I
    .locals 0

    .line 508
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->getItemViewType(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->getItemViewHeightForViewType(I)I

    move-result p1

    return p1
.end method

.method public getItemViewHeightForViewType(I)I
    .locals 4

    if-nez p1, :cond_2

    .line 521
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->access$200(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->getHeight()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 522
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->getItemCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 523
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->getItemViewType(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->getItemViewHeightForViewType(I)I

    move-result v3

    add-int/2addr v2, v3

    if-lt v2, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sub-int/2addr p1, v2

    .line 528
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    .line 532
    :cond_2
    iget p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->mItemHeight:I

    return p1
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public hasUniformViewHeight()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isItemInBackground(I)Z
    .locals 0

    .line 493
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->getItemViewType(I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 398
    invoke-virtual {p0, p2}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 404
    :cond_0
    check-cast p1, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsViewHolder;

    .line 405
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge p2, v1, :cond_1

    .line 406
    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsViewHolder;->mDivider:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 408
    :cond_1
    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsViewHolder;->mDivider:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    if-ne v0, v2, :cond_2

    .line 411
    iget-object p2, p1, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsViewHolder;->mLabel:Landroid/widget/TextView;

    const v0, 0x7f120038

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 412
    iget-object p2, p1, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsViewHolder;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f08013f

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 413
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsViewHolder;->mView:Landroid/view/View;

    new-instance p2, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$AppOptionsFragment$AppOptionsAdapter$v_WJMX7Eb4-IfYNu0TviIKRlkKM;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$AppOptionsFragment$AppOptionsAdapter$v_WJMX7Eb4-IfYNu0TviIKRlkKM;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 451
    iget-object p2, p1, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsViewHolder;->mLabel:Landroid/widget/TextView;

    const v0, 0x7f120039

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 452
    iget-object p2, p1, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsViewHolder;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f080140

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 453
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsViewHolder;->mView:Landroid/view/View;

    new-instance p2, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$AppOptionsFragment$AppOptionsAdapter$1xomMLmA-063eEUBsiWzx8AgAUk;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$AppOptionsFragment$AppOptionsAdapter$1xomMLmA-063eEUBsiWzx8AgAUk;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 458
    iget-object p2, p1, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsViewHolder;->mLabel:Landroid/widget/TextView;

    const v0, 0x7f12003b

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 459
    iget-object p2, p1, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsViewHolder;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f080142

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 460
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsViewHolder;->mView:Landroid/view/View;

    new-instance p2, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$AppOptionsFragment$AppOptionsAdapter$xYwmy2PObsvMuEohZ9OzBpbJPRg;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$AppOptionsFragment$AppOptionsAdapter$xYwmy2PObsvMuEohZ9OzBpbJPRg;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void

    .line 487
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal view type! position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " viewtype = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    if-nez p2, :cond_0

    .line 382
    new-instance v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 383
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->access$100(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;->generateDefaultLayoutParams()Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object p1

    const/4 v1, -0x1

    .line 384
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 385
    invoke-virtual {p0, p2}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->getItemViewHeightForViewType(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 386
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    new-instance p1, Lcom/voxel/simplesearchlauncher/view/OldEmptyViewHolder;

    invoke-direct {p1, v0}, Lcom/voxel/simplesearchlauncher/view/OldEmptyViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 390
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0028

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 391
    new-instance p2, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsViewHolder;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;

    invoke-direct {p2, v0, p1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsViewHolder;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;Landroid/view/View;)V

    return-object p2
.end method
