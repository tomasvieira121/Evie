.class public Lcom/voxel/simplesearchlauncher/jigsaw/JigsawEventReceiver;
.super Lcom/voxel/simplesearchlauncher/jigsaw/AbstractJigsawEventReceiver;
.source "JigsawEventReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/jigsaw/AbstractJigsawEventReceiver;-><init>()V

    return-void
.end method

.method private static startSearchActivity(Landroid/content/Context;)V
    .locals 2

    .line 28
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 29
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 30
    const-class v1, Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 31
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x209d6fe6

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.evie.jigsaw.HANDLE_SEARCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 22
    invoke-super {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/jigsaw/AbstractJigsawEventReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_2

    .line 18
    :cond_2
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/jigsaw/JigsawEventReceiver;->startSearchActivity(Landroid/content/Context;)V

    :goto_2
    return-void
.end method
