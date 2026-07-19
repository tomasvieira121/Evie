.class public Lcom/voxel/simplesearchlauncher/activity/TimeoutLockScreenActivity;
.super Landroid/app/Activity;
.source "TimeoutLockScreenActivity.java"


# instance fields
.field private mExistingScreenTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/activity/TimeoutLockScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "brightness value"

    const/4 v1, 0x0

    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result p1

    .line 25
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/activity/TimeoutLockScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 26
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 27
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/activity/TimeoutLockScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 29
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-ge p1, v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/activity/TimeoutLockScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/activity/TimeoutLockScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1006

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 39
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/activity/TimeoutLockScreenActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "screen_off_timeout"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/activity/TimeoutLockScreenActivity;->mExistingScreenTimeout:I

    .line 41
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/activity/TimeoutLockScreenActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "screen_off_timeout"

    const/16 v1, 0xa

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 48
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 50
    iget v0, p0, Lcom/voxel/simplesearchlauncher/activity/TimeoutLockScreenActivity;->mExistingScreenTimeout:I

    if-ltz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/activity/TimeoutLockScreenActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    iget v2, p0, Lcom/voxel/simplesearchlauncher/activity/TimeoutLockScreenActivity;->mExistingScreenTimeout:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/activity/TimeoutLockScreenActivity;->finish()V

    return-void
.end method
