.class final Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$ConfirmShortcutActivitySubcomponentImpl;
.super Ljava/lang/Object;
.source "DaggerLauncherAppComponent.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/dagger/module/CommonAndroidInjectionModule_ContributesConfirmShortcutActivityInjector$ConfirmShortcutActivitySubcomponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConfirmShortcutActivitySubcomponentImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;)V
    .locals 0

    .line 1500
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$ConfirmShortcutActivitySubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V
    .locals 0

    .line 1497
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$ConfirmShortcutActivitySubcomponentImpl;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;)V

    return-void
.end method

.method private injectConfirmShortcutActivity(Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;)Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;
    .locals 1

    .line 1509
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$ConfirmShortcutActivitySubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 1510
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$4200(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;

    .line 1509
    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity_MembersInjector;->injectMDeepShortcutManager(Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;)V

    .line 1511
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$ConfirmShortcutActivitySubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 1512
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$4300(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    .line 1511
    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity_MembersInjector;->injectMSettingsStorage(Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;)V
    .locals 0

    .line 1504
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$ConfirmShortcutActivitySubcomponentImpl;->injectConfirmShortcutActivity(Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;)Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;

    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    .line 1497
    check-cast p1, Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$ConfirmShortcutActivitySubcomponentImpl;->inject(Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;)V

    return-void
.end method
