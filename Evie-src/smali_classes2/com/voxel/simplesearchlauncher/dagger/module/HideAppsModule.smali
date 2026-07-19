.class public Lcom/voxel/simplesearchlauncher/dagger/module/HideAppsModule;
.super Ljava/lang/Object;
.source "HideAppsModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public providesHideAppsModel(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;
    .locals 1

    .line 21
    new-instance v0, Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;

    invoke-direct {v0, p1}, Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
