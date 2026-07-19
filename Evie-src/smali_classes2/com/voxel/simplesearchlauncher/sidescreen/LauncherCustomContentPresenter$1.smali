.class Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter$1;
.super Ljava/lang/Object;
.source "LauncherCustomContentPresenter.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter$1;->this$0:Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "use_celsius"

    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter$1;->this$0:Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;->access$000(Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p1

    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getUseCelsius()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
