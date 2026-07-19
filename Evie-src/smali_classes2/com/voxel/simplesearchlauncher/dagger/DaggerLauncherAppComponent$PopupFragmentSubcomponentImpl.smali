.class final Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$PopupFragmentSubcomponentImpl;
.super Ljava/lang/Object;
.source "DaggerLauncherAppComponent.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/dagger/module/FlavorAndroidInjectionModule_PopupFragment$PopupFragmentSubcomponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PopupFragmentSubcomponentImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)V
    .locals 0

    .line 1834
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$PopupFragmentSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/popup/PopupFragment;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V
    .locals 0

    .line 1832
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$PopupFragmentSubcomponentImpl;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)V

    return-void
.end method

.method private injectPopupFragment(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)Lcom/voxel/simplesearchlauncher/popup/PopupFragment;
    .locals 1

    .line 1842
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$PopupFragmentSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 1843
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$4200(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;

    .line 1842
    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment_MembersInjector;->injectMDeepShortcutManager(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)V
    .locals 0

    .line 1838
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$PopupFragmentSubcomponentImpl;->injectPopupFragment(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)Lcom/voxel/simplesearchlauncher/popup/PopupFragment;

    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    .line 1832
    check-cast p1, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$PopupFragmentSubcomponentImpl;->inject(Lcom/voxel/simplesearchlauncher/popup/PopupFragment;)V

    return-void
.end method
