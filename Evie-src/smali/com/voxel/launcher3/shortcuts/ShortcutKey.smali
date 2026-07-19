.class public Lcom/voxel/launcher3/shortcuts/ShortcutKey;
.super Lcom/voxel/launcher3/util/ComponentKey;
.source "ShortcutKey.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;Ljava/lang/String;)V
    .locals 1

    .line 17
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/voxel/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    return-void
.end method

.method public static fromInfo(Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;)Lcom/voxel/launcher3/shortcuts/ShortcutKey;
    .locals 3

    .line 25
    new-instance v0, Lcom/voxel/launcher3/shortcuts/ShortcutKey;

    invoke-virtual {p0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->getUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v2

    .line 26
    invoke-virtual {p0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/voxel/launcher3/shortcuts/ShortcutKey;-><init>(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromIntent(Landroid/content/Intent;Lcom/voxel/launcher3/compat/UserHandleCompat;)Lcom/voxel/launcher3/shortcuts/ShortcutKey;
    .locals 2

    const-string v0, "shortcut_id"

    .line 30
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/voxel/launcher3/shortcuts/ShortcutKey;

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, p1, v0}, Lcom/voxel/launcher3/shortcuts/ShortcutKey;-><init>(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;Ljava/lang/String;)V

    return-object v1
.end method

.method public static fromShortcutInfo(Lcom/voxel/launcher3/ShortcutInfo;)Lcom/voxel/launcher3/shortcuts/ShortcutKey;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/voxel/launcher3/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/voxel/launcher3/ShortcutInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-static {v0, p0}, Lcom/voxel/launcher3/shortcuts/ShortcutKey;->fromIntent(Landroid/content/Intent;Lcom/voxel/launcher3/compat/UserHandleCompat;)Lcom/voxel/launcher3/shortcuts/ShortcutKey;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/ShortcutKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
