.class public final synthetic Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$DesktopSettingsFragment$RqYWjatq7CbfQbAie1QwYhkVHbA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$DesktopSettingsFragment$RqYWjatq7CbfQbAie1QwYhkVHbA;->f$0:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$DesktopSettingsFragment$RqYWjatq7CbfQbAie1QwYhkVHbA;->f$0:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    invoke-static {v0, p1, p2}, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->lambda$setupControls$2(Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
