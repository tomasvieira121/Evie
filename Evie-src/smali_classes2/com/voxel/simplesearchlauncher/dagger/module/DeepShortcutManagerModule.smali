.class public Lcom/voxel/simplesearchlauncher/dagger/module/DeepShortcutManagerModule;
.super Ljava/lang/Object;
.source "DeepShortcutManagerModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideDeepShortcutManager(Landroid/content/Context;)Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;
    .locals 1

    .line 25
    invoke-static {}, Lcom/voxel/launcher3/Utilities;->isNycMR1OrAbove()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;

    invoke-direct {v0, p1}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatVNMr1;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 28
    :cond_0
    new-instance v0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV;

    invoke-direct {v0, p1}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManagerCompatV;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
