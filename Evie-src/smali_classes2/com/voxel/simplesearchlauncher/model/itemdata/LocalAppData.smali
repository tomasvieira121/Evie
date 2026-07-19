.class public Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;
.super Lcom/voxel/simplesearchlauncher/model/itemdata/BaseAppData;
.source "LocalAppData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalAppData"


# instance fields
.field private firstInstallTime:J

.field private hasOpened:Z

.field private labelOverride:Ljava/lang/String;

.field private transient mCustomIcon:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/itemdata/BaseAppData;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/model/itemdata/BaseAppData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private launchApplication(Landroid/app/Activity;)Z
    .locals 4

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10200000

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 105
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 108
    :try_start_0
    instance-of v1, p1, Lcom/voxel/simplesearchlauncher/activity/SafeActivityStarter;

    if-eqz v1, :cond_0

    .line 109
    check-cast p1, Lcom/voxel/simplesearchlauncher/activity/SafeActivityStarter;

    invoke-interface {p1, v0}, Lcom/voxel/simplesearchlauncher/activity/SafeActivityStarter;->startActivitySafely(Landroid/content/Intent;)Z

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 118
    sget-object v0, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecurityException launching app: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getActivityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    return v2

    :catch_1
    move-exception p1

    .line 114
    sget-object v0, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity not found. App probably uninstalled: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getActivityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    .line 124
    :cond_1
    sget-object p1, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not launch activity for app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 183
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->firstInstallTime:J

    .line 184
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->hasOpened:Z

    .line 185
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->labelOverride:Ljava/lang/String;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iget-wide v0, p0, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->firstInstallTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 178
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->hasOpened:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 179
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->labelOverride:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getAppActivityName()Ljava/lang/String;
    .locals 1

    .line 159
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getActivityName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    .line 154
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppVersionCode()I
    .locals 1

    .line 164
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getVersionCode()I

    move-result v0

    return v0
.end method

.method public getCustomIcon()Landroid/graphics/Bitmap;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->mCustomIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFirstInstallTime()J
    .locals 2

    .line 74
    iget-wide v0, p0, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->firstInstallTime:J

    return-wide v0
.end method

.method public getHasOpened()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->hasOpened:Z

    return v0
.end method

.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 92
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.LAUNCHER"

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getActivityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10200000

    .line 95
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object p1
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->labelOverride:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 172
    :cond_0
    invoke-super {p0}, Lcom/voxel/simplesearchlauncher/model/itemdata/BaseAppData;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabelOverride()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->labelOverride:Ljava/lang/String;

    return-object v0
.end method

.method public handleAction(Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData$ActionType;Landroid/app/Activity;)V
    .locals 1

    .line 60
    sget-object v0, Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData$ActionType;->CLICK:Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData$ActionType;

    if-ne p1, v0, :cond_0

    .line 61
    invoke-direct {p0, p2}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->launchApplication(Landroid/app/Activity;)Z

    :cond_0
    return-void
.end method

.method public setCustomIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->mCustomIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setFirstInstallTime(J)V
    .locals 0

    .line 78
    iput-wide p1, p0, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->firstInstallTime:J

    return-void
.end method

.method public setHasOpened(Z)V
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->hasOpened:Z

    return-void
.end method

.method public setLabelOverride(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->labelOverride:Ljava/lang/String;

    return-void
.end method
