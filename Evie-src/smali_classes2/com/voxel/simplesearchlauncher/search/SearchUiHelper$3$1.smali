.class Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3$1;
.super Ljava/lang/Object;
.source "SearchUiHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3$1;->this$1:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3$1;->this$1:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;->this$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->access$200(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3$1;->this$1:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;->access$300(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;)Lcom/evie/search/SearchPresenter$SearchState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3$1;->this$1:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;->access$300(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;)Lcom/evie/search/SearchPresenter$SearchState;

    move-result-object v0

    sget-object v1, Lcom/evie/search/SearchPresenter$SearchState;->IN_PROGRESS:Lcom/evie/search/SearchPresenter$SearchState;

    if-ne v0, v1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3$1;->this$1:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;->this$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->access$200(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->showSearchProgressSpinner()V

    :cond_0
    return-void
.end method
