.class public final synthetic Lcom/voxel/simplesearchlauncher/dagger/module/-$$Lambda$TileSettingsModule$ZrYiuZ0UfbajQLlXrq9bD3J20Us;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private final synthetic f$0:Lio/reactivex/subjects/BehaviorSubject;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/subjects/BehaviorSubject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/module/-$$Lambda$TileSettingsModule$ZrYiuZ0UfbajQLlXrq9bD3J20Us;->f$0:Lio/reactivex/subjects/BehaviorSubject;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/module/-$$Lambda$TileSettingsModule$ZrYiuZ0UfbajQLlXrq9bD3J20Us;->f$0:Lio/reactivex/subjects/BehaviorSubject;

    invoke-static {v0, p1, p2}, Lcom/voxel/simplesearchlauncher/dagger/module/TileSettingsModule;->lambda$providesOnSharedPreferenceChangeListener$0(Lio/reactivex/subjects/BehaviorSubject;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
