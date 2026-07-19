.class Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$1;
.super Ljava/lang/Object;
.source "SearchUiHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$1;->this$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$1;->this$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->access$100(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)Lcom/evie/search/SearchPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$1;->this$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->access$000(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evie/search/SearchPresenter;->search(Ljava/lang/String;)V

    return-void
.end method
