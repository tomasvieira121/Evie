.class final Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$TermsAndConditionsActivitySubcomponentImpl;
.super Ljava/lang/Object;
.source "DaggerLauncherAppComponent.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/dagger/module/CommonAndroidInjectionModule_TermsAndConditionsActivity$TermsAndConditionsActivitySubcomponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TermsAndConditionsActivitySubcomponentImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/evie/screen/TermsAndConditionsActivity;)V
    .locals 0

    .line 1403
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$TermsAndConditionsActivitySubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/evie/screen/TermsAndConditionsActivity;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V
    .locals 0

    .line 1400
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$TermsAndConditionsActivitySubcomponentImpl;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/evie/screen/TermsAndConditionsActivity;)V

    return-void
.end method

.method private injectTermsAndConditionsActivity(Lcom/evie/screen/TermsAndConditionsActivity;)Lcom/evie/screen/TermsAndConditionsActivity;
    .locals 1

    .line 1412
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$TermsAndConditionsActivitySubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 1413
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$3300(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient;

    .line 1412
    invoke-static {p1, v0}, Lcom/evie/screen/TermsAndConditionsActivity_MembersInjector;->injectMClient(Lcom/evie/screen/TermsAndConditionsActivity;Lokhttp3/OkHttpClient;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/evie/screen/TermsAndConditionsActivity;)V
    .locals 0

    .line 1407
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$TermsAndConditionsActivitySubcomponentImpl;->injectTermsAndConditionsActivity(Lcom/evie/screen/TermsAndConditionsActivity;)Lcom/evie/screen/TermsAndConditionsActivity;

    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    .line 1400
    check-cast p1, Lcom/evie/screen/TermsAndConditionsActivity;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$TermsAndConditionsActivitySubcomponentImpl;->inject(Lcom/evie/screen/TermsAndConditionsActivity;)V

    return-void
.end method
