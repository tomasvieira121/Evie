.class Lcom/voxel/simplesearchlauncher/popup/PopupFragment$UnbadgedShortcutInfo;
.super Lcom/voxel/launcher3/ShortcutInfo;
.source "PopupFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/popup/PopupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnbadgedShortcutInfo"
.end annotation


# instance fields
.field public final mDetail:Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;


# direct methods
.method public constructor <init>(Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;Landroid/content/Context;)V
    .locals 0

    .line 616
    invoke-direct {p0, p1, p2, p3}, Lcom/voxel/launcher3/ShortcutInfo;-><init>(Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;Landroid/content/Context;)V

    .line 617
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$UnbadgedShortcutInfo;->mDetail:Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;

    return-void
.end method


# virtual methods
.method protected getBadgedIcon(Landroid/graphics/Bitmap;Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;Lcom/voxel/launcher3/IconCache;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 0

    return-object p1
.end method
