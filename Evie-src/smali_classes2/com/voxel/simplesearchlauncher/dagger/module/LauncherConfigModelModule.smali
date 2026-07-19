.class public Lcom/voxel/simplesearchlauncher/dagger/module/LauncherConfigModelModule;
.super Ljava/lang/Object;
.source "LauncherConfigModelModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public providesLauncherConfigModel(Lretrofit2/Retrofit;)Lcom/evie/config/LauncherConfigModel;
    .locals 1

    .line 17
    const-class v0, Lcom/evie/config/LauncherConfigAPI;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/config/LauncherConfigAPI;

    .line 18
    new-instance v0, Lcom/evie/config/LauncherConfigModel;

    invoke-direct {v0, p1}, Lcom/evie/config/LauncherConfigModel;-><init>(Lcom/evie/config/LauncherConfigAPI;)V

    return-object v0
.end method
