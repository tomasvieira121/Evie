.class public final synthetic Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$DesktopSettingsFragment$WHRoIHqDmyK0CaVnlHKW0SrrpN8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;

.field private final synthetic f$1:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$DesktopSettingsFragment$WHRoIHqDmyK0CaVnlHKW0SrrpN8;->f$0:Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$DesktopSettingsFragment$WHRoIHqDmyK0CaVnlHKW0SrrpN8;->f$1:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$DesktopSettingsFragment$WHRoIHqDmyK0CaVnlHKW0SrrpN8;->f$0:Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$DesktopSettingsFragment$WHRoIHqDmyK0CaVnlHKW0SrrpN8;->f$1:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    invoke-static {v0, v1, p1, p2}, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->lambda$setupControls$6(Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
