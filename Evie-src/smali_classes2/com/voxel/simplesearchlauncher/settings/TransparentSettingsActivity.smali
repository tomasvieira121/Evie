.class public Lcom/voxel/simplesearchlauncher/settings/TransparentSettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "TransparentSettingsActivity.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/activity/SafeActivityStarter;
.implements Lcom/voxel/simplesearchlauncher/view/MockLauncherController$MockLauncherHolder;


# static fields
.field private static final TAG:Ljava/lang/String; = "TransparentSettingsActivity"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lcom/voxel/simplesearchlauncher/settings/TransparentSettingsActivity;I)V
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/TransparentSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/TransparentSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryAt(I)Landroidx/fragment/app/FragmentManager$BackStackEntry;

    move-result-object p1

    .line 68
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/TransparentSettingsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-interface {p1}, Landroidx/fragment/app/FragmentManager$BackStackEntry;->getBreadCrumbTitleRes()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/TransparentSettingsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :goto_0
    return-void
.end method

.method private startActivity(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 4

    const/high16 p1, 0x10000000

    .line 94
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 96
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/voxel/simplesearchlauncher/settings/TransparentSettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v0

    const v1, 0x7f12017e

    .line 99
    invoke-static {p0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 100
    sget-object v1, Lcom/voxel/simplesearchlauncher/settings/TransparentSettingsActivity;->TAG:Ljava/lang/String;

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
.method public getRootView()Landroid/view/ViewGroup;
    .locals 1

    const v0, 0x7f0a0221

    .line 90
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/settings/TransparentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getToolbarContainer()Landroid/widget/FrameLayout;
    .locals 1

    const v0, 0x7f0a02c0

    .line 85
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/settings/TransparentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 38
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/TransparentSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/voxel/launcher3/LauncherAppState;->setApplicationContext(Landroid/content/Context;)V

    .line 42
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    .line 44
    invoke-virtual {v0, p0}, Lcom/voxel/launcher3/LauncherAppState;->initDynamicGrid(Landroid/content/Context;)Lcom/voxel/launcher3/DeviceProfile;

    const v0, 0x7f0d009c

    .line 46
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/settings/TransparentSettingsActivity;->setContentView(I)V

    const v0, 0x7f0a02bf

    .line 47
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/settings/TransparentSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 48
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/settings/TransparentSettingsActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 49
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/TransparentSettingsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 50
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/TransparentSettingsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 52
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/TransparentSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "show_fragment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/TransparentSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "show_title"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 55
    invoke-static {p0, v0, p1}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 56
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/TransparentSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x7f0a00ae

    .line 57
    invoke-virtual {v0, v2, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 58
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 60
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/TransparentSettingsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 62
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/TransparentSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$TransparentSettingsActivity$LS88FYDTrxrft1L27pDUuxJw3K4;

    invoke-direct {v0, p0, v1}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$TransparentSettingsActivity$LS88FYDTrxrft1L27pDUuxJw3K4;-><init>(Lcom/voxel/simplesearchlauncher/settings/TransparentSettingsActivity;I)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/TransparentSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/TransparentSettingsActivity;->finish()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public startActivitySafely(Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, v0, p1, v0}, Lcom/voxel/simplesearchlauncher/settings/TransparentSettingsActivity;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 1

    const v0, 0x7f12002c

    .line 115
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/voxel/simplesearchlauncher/settings/TransparentSettingsActivity;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;I)Z
    .locals 3

    const/4 v0, 0x0

    .line 121
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/voxel/simplesearchlauncher/settings/TransparentSettingsActivity;->startActivity(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 123
    invoke-static {p0, p4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/Toast;->show()V

    .line 124
    sget-object p4, Lcom/voxel/simplesearchlauncher/settings/TransparentSettingsActivity;->TAG:Ljava/lang/String;

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
