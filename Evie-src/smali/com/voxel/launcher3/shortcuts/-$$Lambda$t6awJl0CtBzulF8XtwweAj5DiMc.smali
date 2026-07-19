.class public final synthetic Lcom/voxel/launcher3/shortcuts/-$$Lambda$t6awJl0CtBzulF8XtwweAj5DiMc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/shortcuts/DeepShortcutManager$ShortcutHostPermissionChangedListener;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/shortcuts/DeepShortcutManager$ShortcutHostPermissionChangedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/shortcuts/-$$Lambda$t6awJl0CtBzulF8XtwweAj5DiMc;->f$0:Lcom/voxel/launcher3/shortcuts/DeepShortcutManager$ShortcutHostPermissionChangedListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/-$$Lambda$t6awJl0CtBzulF8XtwweAj5DiMc;->f$0:Lcom/voxel/launcher3/shortcuts/DeepShortcutManager$ShortcutHostPermissionChangedListener;

    invoke-interface {v0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManager$ShortcutHostPermissionChangedListener;->onShortcutHostPermissionChanged()V

    return-void
.end method
