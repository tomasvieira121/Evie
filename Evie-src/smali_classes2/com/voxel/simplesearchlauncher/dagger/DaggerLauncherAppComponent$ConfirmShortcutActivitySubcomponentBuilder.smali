.class final Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$ConfirmShortcutActivitySubcomponentBuilder;
.super Lcom/voxel/simplesearchlauncher/dagger/module/CommonAndroidInjectionModule_ContributesConfirmShortcutActivityInjector$ConfirmShortcutActivitySubcomponent$Builder;
.source "DaggerLauncherAppComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConfirmShortcutActivitySubcomponentBuilder"
.end annotation


# instance fields
.field private seedInstance:Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)V
    .locals 0

    .line 1478
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$ConfirmShortcutActivitySubcomponentBuilder;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/dagger/module/CommonAndroidInjectionModule_ContributesConfirmShortcutActivityInjector$ConfirmShortcutActivitySubcomponent$Builder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V
    .locals 0

    .line 1478
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$ConfirmShortcutActivitySubcomponentBuilder;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/voxel/simplesearchlauncher/dagger/module/CommonAndroidInjectionModule_ContributesConfirmShortcutActivityInjector$ConfirmShortcutActivitySubcomponent;
    .locals 4

    .line 1492
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$ConfirmShortcutActivitySubcomponentBuilder;->seedInstance:Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;

    const-class v1, Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1493
    new-instance v0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$ConfirmShortcutActivitySubcomponentImpl;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$ConfirmShortcutActivitySubcomponentBuilder;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$ConfirmShortcutActivitySubcomponentBuilder;->seedInstance:Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$ConfirmShortcutActivitySubcomponentImpl;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ldagger/android/AndroidInjector;
    .locals 1

    .line 1478
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$ConfirmShortcutActivitySubcomponentBuilder;->build()Lcom/voxel/simplesearchlauncher/dagger/module/CommonAndroidInjectionModule_ContributesConfirmShortcutActivityInjector$ConfirmShortcutActivitySubcomponent;

    move-result-object v0

    return-object v0
.end method

.method public seedInstance(Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;)V
    .locals 0

    .line 1485
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$ConfirmShortcutActivitySubcomponentBuilder;->seedInstance:Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;

    return-void
.end method

.method public bridge synthetic seedInstance(Ljava/lang/Object;)V
    .locals 0

    .line 1478
    check-cast p1, Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$ConfirmShortcutActivitySubcomponentBuilder;->seedInstance(Lcom/voxel/simplesearchlauncher/shortcut/ConfirmShortcutActivity;)V

    return-void
.end method
