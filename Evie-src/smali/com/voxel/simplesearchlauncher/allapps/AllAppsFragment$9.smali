.class Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$9;
.super Landroid/os/AsyncTask;
.source "AllAppsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->prefetchIcons(Ljava/util/List;I)V
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
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

.field final synthetic val$firstVisible:I

.field final synthetic val$localApps:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;Ljava/util/List;I)V
    .locals 0

    .line 647
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$9;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$9;->val$localApps:Ljava/util/List;

    iput p3, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$9;->val$firstVisible:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 647
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$9;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    .line 650
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$9;->val$localApps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 654
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$9;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    iget v1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$9;->val$firstVisible:I

    invoke-static {v0, v1, p1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->access$1900(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;II)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$9;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$9;->val$localApps:Ljava/util/List;

    iget v4, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$9;->val$firstVisible:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    invoke-static {v0, v3}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->access$2000(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x1

    :goto_1
    const/16 v4, 0xc8

    if-ge v0, v4, :cond_4

    .line 664
    iget v4, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$9;->val$firstVisible:I

    add-int/2addr v4, v3

    .line 666
    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$9;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-static {v5, v4, p1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->access$1900(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 667
    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$9;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    iget-object v6, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$9;->val$localApps:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    invoke-static {v5, v4}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->access$2000(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;)V

    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 672
    :goto_2
    iget v5, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$9;->val$firstVisible:I

    sub-int/2addr v5, v3

    .line 674
    iget-object v6, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$9;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-static {v6, v5, p1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->access$1900(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 675
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$9;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    iget-object v6, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$9;->val$localApps:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    invoke-static {v4, v5}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->access$2000(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;)V

    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x1

    :cond_2
    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 685
    :cond_4
    :goto_3
    invoke-static {}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->access$600()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prefetched: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method
