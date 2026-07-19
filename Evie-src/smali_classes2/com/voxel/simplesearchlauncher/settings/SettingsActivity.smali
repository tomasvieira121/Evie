.class public Lcom/voxel/simplesearchlauncher/settings/SettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SettingsActivity.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/activity/SafeActivityStarter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/settings/SettingsActivity$OnSettingsBackButtonPressedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsActivity"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lcom/voxel/simplesearchlauncher/settings/SettingsActivity;)V
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/SettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/SettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryAt(I)Landroidx/fragment/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/SettingsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-interface {v0}, Landroidx/fragment/app/FragmentManager$BackStackEntry;->getBreadCrumbTitleRes()I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/SettingsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f1200d8

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :goto_0
    return-void
.end method

.method private startActivity(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 4

    const/high16 p1, 0x10000000

    .line 132
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 134
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/voxel/simplesearchlauncher/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v0

    const v1, 0x7f12017e

    .line 137
    invoke-static {p0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 138
    sget-object v1, Lcom/voxel/simplesearchlauncher/settings/SettingsActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launcher does not have the permission to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Make sure to create a MAIN intent-filter for the corresponding activity or use the exported attribute for this activity. tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " intent="

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    return p1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 117
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 121
    :try_start_0
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->handleActivityResult(IILandroid/content/Intent;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 123
    sget-object p2, Lcom/voxel/simplesearchlauncher/settings/SettingsActivity;->TAG:Ljava/lang/String;

    const-string p3, "handleActivityResult called before BackupRestoreManager initialized"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 104
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/SettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 106
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 107
    instance-of v2, v1, Lcom/voxel/simplesearchlauncher/settings/SettingsActivity$OnSettingsBackButtonPressedListener;

    if-eqz v2, :cond_0

    .line 108
    check-cast v1, Lcom/voxel/simplesearchlauncher/settings/SettingsActivity$OnSettingsBackButtonPressedListener;

    invoke-interface {v1}, Lcom/voxel/simplesearchlauncher/settings/SettingsActivity$OnSettingsBackButtonPressedListener;->onBackPressed()V

    goto :goto_0

    .line 112
    :cond_1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/voxel/launcher3/LauncherAppState;->setApplicationContext(Landroid/content/Context;)V

    .line 41
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object p1

    .line 43
    invoke-virtual {p1, p0}, Lcom/voxel/launcher3/LauncherAppState;->initDynamicGrid(Landroid/content/Context;)Lcom/voxel/launcher3/DeviceProfile;

    const p1, 0x7f0d009c

    .line 45
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsActivity;->setContentView(I)V

    const p1, 0x7f0a02bf

    .line 46
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 47
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 48
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/SettingsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/SettingsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 51
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/SettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "root"

    .line 52
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v1, 0x7f0a00ae

    const-string v2, "root"

    .line 58
    invoke-virtual {p1, v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 59
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/SettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SettingsActivity$fr4s8hBjBi1ty7LKs49sreoROeY;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SettingsActivity$fr4s8hBjBi1ty7LKs49sreoROeY;-><init>(Lcom/voxel/simplesearchlauncher/settings/SettingsActivity;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 77
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/BackupRestoreManager;->deinit()V

    .line 78
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 3

    .line 83
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/SettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 85
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 86
    instance-of v2, v1, Lcom/voxel/simplesearchlauncher/settings/SettingsActivity$OnSettingsBackButtonPressedListener;

    if-eqz v2, :cond_0

    .line 87
    check-cast v1, Lcom/voxel/simplesearchlauncher/settings/SettingsActivity$OnSettingsBackButtonPressedListener;

    invoke-interface {v1}, Lcom/voxel/simplesearchlauncher/settings/SettingsActivity$OnSettingsBackButtonPressedListener;->onBackPressed()V

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/SettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_2

    .line 92
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/SettingsActivity;->finish()V

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public startActivitySafely(Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p0, v0, p1, v0}, Lcom/voxel/simplesearchlauncher/settings/SettingsActivity;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 1

    const v0, 0x7f12002c

    .line 153
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/voxel/simplesearchlauncher/settings/SettingsActivity;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;I)Z
    .locals 3

    const/4 v0, 0x0

    .line 159
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/voxel/simplesearchlauncher/settings/SettingsActivity;->startActivity(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 161
    invoke-static {p0, p4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/Toast;->show()V

    .line 162
    sget-object p4, Lcom/voxel/simplesearchlauncher/settings/SettingsActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to launch. tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " intent="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method
