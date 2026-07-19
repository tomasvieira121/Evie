.class Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$3;
.super Landroid/os/AsyncTask;
.source "WidgetsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->refreshList(Landroid/content/Context;)V
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
        "Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;Landroid/content/Context;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;
    .locals 2

    .line 234
    new-instance p1, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$3;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/launcher3/LauncherAppState;->getIconCache()Lcom/voxel/launcher3/IconCache;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;-><init>(Landroid/content/Context;Lcom/voxel/launcher3/IconCache;)V

    .line 235
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$3;->val$context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;->updateAndClone(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 231
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$3;->doInBackground([Ljava/lang/Void;)Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;)V
    .locals 2

    .line 241
    invoke-static {}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPostExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;

    invoke-static {v0, p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->access$202(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;)Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;

    .line 245
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->access$300(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;)Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;->setWidgets(Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;)V

    .line 246
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->access$400(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;)Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->access$200(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;)Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;->setWidgetsModel(Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;)V

    .line 250
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 251
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->access$500(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->access$500(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 253
    :cond_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->access$400(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;)Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsListAdapter;->notifyDataSetChanged()V

    .line 256
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->access$300(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;)Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 257
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->access$300(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;)Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 258
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 231
    check-cast p1, Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$3;->onPostExecute(Lcom/voxel/simplesearchlauncher/widget/WidgetsModel;)V

    return-void
.end method
