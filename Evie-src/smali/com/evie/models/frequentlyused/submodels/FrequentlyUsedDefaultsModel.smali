.class public Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;
.super Ljava/lang/Object;
.source "FrequentlyUsedDefaultsModel.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaults:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/util/List<",
            "Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInitialized:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;->mDefaults:Lio/reactivex/subjects/BehaviorSubject;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;->mInitialized:Z

    .line 29
    iput-object p1, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getBrowser()Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;
    .locals 2

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "http://www.google.com"

    .line 90
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0, v0}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;->getActivityForIntent(Landroid/content/Intent;)Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;

    move-result-object v0

    return-object v0
.end method

.method private getCalendar()Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;
    .locals 4

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10200000

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 136
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-wide/32 v2, 0x1e240

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v0}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;->getActivityForIntent(Landroid/content/Intent;)Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;

    move-result-object v0

    return-object v0
.end method

.method private getCamera()Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;
    .locals 2

    .line 97
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v0}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;->getActivityForIntent(Landroid/content/Intent;)Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;

    move-result-object v0

    return-object v0
.end method

.method private getContacts()Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;
    .locals 2

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.APP_CONTACTS"

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0, v0}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;->getActivityForIntent(Landroid/content/Intent;)Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "com.android.contacts"

    .line 117
    invoke-virtual {p0, v1}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;->getIntentForPackageName(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {p0, v1}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;->getActivityForIntent(Landroid/content/Intent;)Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v1, "com.google.android.contacts"

    .line 123
    invoke-virtual {p0, v1}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;->getIntentForPackageName(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 125
    invoke-virtual {p0, v1}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;->getActivityForIntent(Landroid/content/Intent;)Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getDefaultAppInfoForAction(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;
    .locals 5

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 164
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 165
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v4, "com.android.internal.app.ResolverActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 166
    invoke-direct {p0, p1, v0}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;->getLaunchableAppInfoForResolveInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_2

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 173
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 174
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 175
    invoke-direct {p0, p1, v0}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;->getLaunchableAppInfoForResolveInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_2
    return-object v2
.end method

.method private getLaunchableAppInfoForResolveInfo(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ResolveInfo;
    .locals 3

    .line 190
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    .line 195
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 199
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 200
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    return-object p1

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method private getMessenger()Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;
    .locals 2

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 81
    invoke-virtual {p0, v0}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;->getActivityForIntent(Landroid/content/Intent;)Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getPhone()Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;
    .locals 2

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v0}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;->getActivityForIntent(Landroid/content/Intent;)Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;

    move-result-object v0

    return-object v0
.end method

.method private getSettings()Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;
    .locals 2

    .line 104
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v0}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;->getActivityForIntent(Landroid/content/Intent;)Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$getDefaultFrequentlyUsedApps$0(Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-direct {p0}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;->getBrowser()Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-direct {p0}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;->getPhone()Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-direct {p0}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;->getMessenger()Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-direct {p0}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;->getCamera()Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-direct {p0}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;->getSettings()Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-direct {p0}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;->getContacts()Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-direct {p0}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;->getCalendar()Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 54
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 57
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method getActivityForIntent(Landroid/content/Intent;)Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 145
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;->getDefaultAppInfoForAction(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 149
    :cond_1
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 150
    new-instance v1, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public getDefaultFrequentlyUsedApps()Lio/reactivex/Observable;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;",
            ">;>;"
        }
    .end annotation

    .line 40
    iget-boolean v0, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;->mInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;->mInitialized:Z

    .line 42
    new-instance v0, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$FrequentlyUsedDefaultsModel$jKjSxlZ7xH3BO6cQC4ZscYBYiz4;

    invoke-direct {v0, p0}, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$FrequentlyUsedDefaultsModel$jKjSxlZ7xH3BO6cQC4ZscYBYiz4;-><init>(Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;)V

    .line 43
    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 63
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;->mDefaults:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$0QD_bvz-n6C4nj2EF1sNcbmJ-nU;

    invoke-direct {v2, v1}, Lcom/evie/models/frequentlyused/submodels/-$$Lambda$0QD_bvz-n6C4nj2EF1sNcbmJ-nU;-><init>(Lio/reactivex/subjects/BehaviorSubject;)V

    .line 64
    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;->mDefaults:Lio/reactivex/subjects/BehaviorSubject;

    return-object v0
.end method

.method getIntentForPackageName(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedDefaultsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
