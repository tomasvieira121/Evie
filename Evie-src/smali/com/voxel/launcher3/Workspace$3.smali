.class Lcom/voxel/launcher3/Workspace$3;
.super Landroid/os/AsyncTask;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/Workspace;->setWallpaperDimension()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/Workspace;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/Workspace;)V
    .locals 0

    .line 1301
    iput-object p1, p0, Lcom/voxel/launcher3/Workspace$3;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1301
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Workspace$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    const-string p1, "com.voxel.launcher3.WallpaperCropActivity"

    .line 1304
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace$3;->this$0:Lcom/voxel/launcher3/Workspace;

    .line 1305
    invoke-static {v0}, Lcom/voxel/launcher3/Workspace;->access$000(Lcom/voxel/launcher3/Workspace;)Lcom/voxel/launcher3/Launcher;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/voxel/launcher3/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1306
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace$3;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {v0}, Lcom/voxel/launcher3/Workspace;->access$000(Lcom/voxel/launcher3/Workspace;)Lcom/voxel/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/launcher3/Workspace$3;->this$0:Lcom/voxel/launcher3/Workspace;

    .line 1307
    invoke-static {v1}, Lcom/voxel/launcher3/Workspace;->access$000(Lcom/voxel/launcher3/Workspace;)Lcom/voxel/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/launcher3/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/voxel/launcher3/Workspace$3;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {v2}, Lcom/voxel/launcher3/Workspace;->access$200(Lcom/voxel/launcher3/Workspace;)Landroid/app/WallpaperManager;

    move-result-object v2

    iget-object v3, p0, Lcom/voxel/launcher3/Workspace$3;->this$0:Lcom/voxel/launcher3/Workspace;

    .line 1308
    invoke-static {v3}, Lcom/voxel/launcher3/Workspace;->access$000(Lcom/voxel/launcher3/Workspace;)Lcom/voxel/launcher3/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/voxel/launcher3/Launcher;->overrideWallpaperDimensions()Z

    move-result v3

    .line 1306
    invoke-static {v0, p1, v1, v2, v3}, Lcom/voxel/launcher3/util/WallpaperUtils;->suggestWallpaperDimension(Landroid/content/res/Resources;Landroid/content/SharedPreferences;Landroid/view/WindowManager;Landroid/app/WallpaperManager;Z)V

    const/4 p1, 0x0

    return-object p1
.end method
