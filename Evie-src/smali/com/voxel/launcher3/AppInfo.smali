.class public Lcom/voxel/launcher3/AppInfo;
.super Lcom/voxel/launcher3/ItemInfo;
.source "AppInfo.java"


# instance fields
.field public componentName:Landroid/content/ComponentName;

.field firstInstallTime:J

.field public flags:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/voxel/launcher3/ItemInfo;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/voxel/launcher3/AppInfo;->flags:I

    const/4 v0, 0x1

    .line 51
    iput v0, p0, Lcom/voxel/launcher3/AppInfo;->itemType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;Lcom/voxel/launcher3/compat/UserHandleCompat;Lcom/voxel/launcher3/IconCache;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            "Lcom/voxel/launcher3/IconCache;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Lcom/voxel/launcher3/ItemInfo;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/voxel/launcher3/AppInfo;->flags:I

    .line 67
    invoke-virtual {p2}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    const-wide/16 v0, -0x1

    .line 68
    iput-wide v0, p0, Lcom/voxel/launcher3/AppInfo;->container:J

    .line 70
    invoke-static {p2}, Lcom/voxel/launcher3/AppInfo;->initFlags(Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;)I

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/AppInfo;->flags:I

    .line 71
    invoke-virtual {p2}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getFirstInstallTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/voxel/launcher3/AppInfo;->firstInstallTime:J

    .line 72
    invoke-virtual {p4, p0, p2, p5}, Lcom/voxel/launcher3/IconCache;->getTitleAndIcon(Lcom/voxel/launcher3/AppInfo;Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;Ljava/util/HashMap;)V

    .line 73
    new-instance p4, Landroid/content/Intent;

    const-string p5, "android.intent.action.MAIN"

    invoke-direct {p4, p5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p4, p0, Lcom/voxel/launcher3/AppInfo;->intent:Landroid/content/Intent;

    .line 74
    iget-object p4, p0, Lcom/voxel/launcher3/AppInfo;->intent:Landroid/content/Intent;

    const-string p5, "android.intent.category.LAUNCHER"

    invoke-virtual {p4, p5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object p4, p0, Lcom/voxel/launcher3/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 76
    iget-object p2, p0, Lcom/voxel/launcher3/AppInfo;->intent:Landroid/content/Intent;

    const/high16 p4, 0x10200000

    invoke-virtual {p2, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 77
    invoke-static {p1}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/UserManagerCompat;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/voxel/launcher3/compat/UserHandleCompat;)J

    move-result-wide p1

    .line 78
    iget-object p4, p0, Lcom/voxel/launcher3/AppInfo;->intent:Landroid/content/Intent;

    const-string p5, "profile"

    invoke-virtual {p4, p5, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 79
    iput-object p3, p0, Lcom/voxel/launcher3/AppInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    return-void
.end method

.method public static dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " size="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/voxel/launcher3/AppInfo;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   title=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/voxel/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\" iconBitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/voxel/launcher3/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " firstInstallTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p2, Lcom/voxel/launcher3/AppInfo;->firstInstallTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static initFlags(Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;)I
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_1

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/voxel/launcher3/AppInfo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public makeShortcut()Lcom/voxel/launcher3/ShortcutInfo;
    .locals 1

    .line 124
    new-instance v0, Lcom/voxel/launcher3/ShortcutInfo;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/ShortcutInfo;-><init>(Lcom/voxel/launcher3/AppInfo;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApplicationInfo(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/voxel/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/voxel/launcher3/AppInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/launcher3/AppInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/voxel/launcher3/AppInfo;->container:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/voxel/launcher3/AppInfo;->screenId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/launcher3/AppInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/launcher3/AppInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/launcher3/AppInfo;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/launcher3/AppInfo;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dropPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/voxel/launcher3/AppInfo;->dropPos:[I

    .line 110
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/voxel/launcher3/AppInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
