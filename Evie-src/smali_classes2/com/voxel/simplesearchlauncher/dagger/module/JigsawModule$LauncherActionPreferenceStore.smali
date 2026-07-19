.class final Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule$LauncherActionPreferenceStore;
.super Ljava/lang/Object;
.source "JigsawModule.java"

# interfaces
.implements Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LauncherActionPreferenceStore"
.end annotation


# instance fields
.field private final manager:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule$LauncherActionPreferenceStore;->manager:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;

    return-void
.end method


# virtual methods
.method public clear(Ljava/lang/String;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule$LauncherActionPreferenceStore;->manager:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->clearDefaultActionItem(Ljava/lang/String;)V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule$LauncherActionPreferenceStore;->manager:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->getDefaultActionItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule$LauncherActionPreferenceStore;->manager:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->setDefaultActionItem(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
