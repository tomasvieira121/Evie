.class Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment$2;
.super Ljava/lang/Object;
.source "DesktopSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->setupControls(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field clickCount:I

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 244
    iput p1, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment$2;->clickCount:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 248
    iget p1, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment$2;->clickCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment$2;->clickCount:I

    .line 249
    iget p1, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment$2;->clickCount:I

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    .line 250
    iput p1, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment$2;->clickCount:I

    .line 251
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/evie/screen/SettingsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x10008000

    .line 252
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 253
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/settings/DesktopSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
