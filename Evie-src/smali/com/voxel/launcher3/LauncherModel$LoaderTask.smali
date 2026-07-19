.class Lcom/voxel/launcher3/LauncherModel$LoaderTask;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderTask"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFlags:I

.field private mIsLaunching:Z

.field private mIsLoadingAndBindingWorkspace:Z

.field private mLabelCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadAndBindStepFinished:Z

.field private mStopped:Z

.field final synthetic this$0:Lcom/voxel/launcher3/LauncherModel;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/LauncherModel;Landroid/content/Context;ZI)V
    .locals 0

    .line 1634
    iput-object p1, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1635
    iput-object p2, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 1636
    iput-boolean p3, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->mIsLaunching:Z

    .line 1637
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->mLabelCache:Ljava/util/HashMap;

    .line 1638
    iput p4, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->mFlags:I

    return-void
.end method

.method private bindWorkspace(IZ)V
    .locals 24

    move-object/from16 v8, p0

    .line 2894
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2899
    iget-object v0, v8, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/voxel/launcher3/LauncherModel;->access$800(Lcom/voxel/launcher3/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/LauncherModel$Callbacks;

    if-nez v0, :cond_0

    const-string v0, "Launcher.Model"

    const-string v1, "LoaderTask running with no launcher"

    .line 2902
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2907
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2908
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2910
    new-instance v1, Lcom/voxel/launcher3/util/LongArrayMap;

    invoke-direct {v1}, Lcom/voxel/launcher3/util/LongArrayMap;-><init>()V

    .line 2911
    new-instance v1, Lcom/voxel/launcher3/util/LongArrayMap;

    invoke-direct {v1}, Lcom/voxel/launcher3/util/LongArrayMap;-><init>()V

    .line 2912
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2913
    sget-object v1, Lcom/voxel/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2914
    :try_start_0
    sget-object v2, Lcom/voxel/launcher3/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2915
    sget-object v2, Lcom/voxel/launcher3/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2916
    sget-object v2, Lcom/voxel/launcher3/LauncherModel;->sBgFolders:Lcom/voxel/launcher3/util/LongArrayMap;

    invoke-virtual {v2}, Lcom/voxel/launcher3/util/LongArrayMap;->clone()Lcom/voxel/launcher3/util/LongArrayMap;

    move-result-object v12

    .line 2917
    sget-object v2, Lcom/voxel/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/voxel/launcher3/util/LongArrayMap;

    invoke-virtual {v2}, Lcom/voxel/launcher3/util/LongArrayMap;->clone()Lcom/voxel/launcher3/util/LongArrayMap;

    move-result-object v13

    .line 2918
    sget-object v2, Lcom/voxel/launcher3/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2919
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v1, -0x3e9

    const/4 v14, 0x1

    move/from16 v2, p1

    if-eq v2, v1, :cond_1

    const/4 v15, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v15, 0x0

    :goto_0
    if-eqz v15, :cond_2

    goto :goto_1

    .line 2924
    :cond_2
    invoke-interface {v0}, Lcom/voxel/launcher3/LauncherModel$Callbacks;->getCurrentWorkspaceScreen()I

    move-result v2

    .line 2925
    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_3

    const/16 v6, -0x3e9

    goto :goto_2

    :cond_3
    move v6, v2

    :goto_2
    if-gez v6, :cond_4

    const-wide/16 v1, -0x1

    move-wide/from16 v16, v1

    goto :goto_3

    .line 2931
    :cond_4
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide/from16 v16, v1

    .line 2935
    :goto_3
    iget-object v1, v8, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-virtual {v1}, Lcom/voxel/launcher3/LauncherModel;->unbindWorkspaceItemsOnMainThread()V

    .line 2938
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2939
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2940
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 2942
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 2944
    new-instance v20, Lcom/voxel/launcher3/util/LongArrayMap;

    invoke-direct/range {v20 .. v20}, Lcom/voxel/launcher3/util/LongArrayMap;-><init>()V

    .line 2945
    new-instance v21, Lcom/voxel/launcher3/util/LongArrayMap;

    invoke-direct/range {v21 .. v21}, Lcom/voxel/launcher3/util/LongArrayMap;-><init>()V

    move-object/from16 v1, p0

    move-object/from16 p1, v2

    move-wide/from16 v2, v16

    move-object/from16 v22, v5

    move/from16 v23, v6

    move-object/from16 v6, p1

    .line 2947
    invoke-direct/range {v1 .. v6}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->filterCurrentWorkspaceItems(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object v4, v7

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    .line 2949
    invoke-direct/range {v1 .. v6}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->filterCurrentAppWidgets(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object v4, v13

    move-object v5, v12

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    .line 2951
    invoke-direct/range {v1 .. v7}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->filterCurrentFolders(JLcom/voxel/launcher3/util/LongArrayMap;Lcom/voxel/launcher3/util/LongArrayMap;Lcom/voxel/launcher3/util/LongArrayMap;Lcom/voxel/launcher3/util/LongArrayMap;)V

    move-object/from16 v3, v22

    .line 2953
    invoke-direct {v8, v3}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V

    move-object/from16 v7, p1

    .line 2954
    invoke-direct {v8, v7}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V

    .line 2957
    new-instance v1, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$5UXiYgXVqDUUWTS2dbfhmAxuiCQ;

    invoke-direct {v1, v8, v0}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$5UXiYgXVqDUUWTS2dbfhmAxuiCQ;-><init>(Lcom/voxel/launcher3/LauncherModel$LoaderTask;Lcom/voxel/launcher3/LauncherModel$Callbacks;)V

    .line 2963
    iget-object v2, v8, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v2, v1, v14}, Lcom/voxel/launcher3/LauncherModel;->access$1800(Lcom/voxel/launcher3/LauncherModel;Ljava/lang/Runnable;I)V

    .line 2965
    invoke-direct {v8, v0, v11}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->bindWorkspaceScreens(Lcom/voxel/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v0

    move-object/from16 v4, v18

    move-object/from16 v5, v20

    .line 2968
    invoke-direct/range {v1 .. v6}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->bindWorkspaceItems(Lcom/voxel/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/voxel/launcher3/util/LongArrayMap;Ljava/util/ArrayList;)V

    if-eqz v15, :cond_5

    .line 2971
    new-instance v1, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$CrnhQQptRdaODCLHsDNT_UolRFE;

    move/from16 v2, v23

    invoke-direct {v1, v8, v0, v2}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$CrnhQQptRdaODCLHsDNT_UolRFE;-><init>(Lcom/voxel/launcher3/LauncherModel$LoaderTask;Lcom/voxel/launcher3/LauncherModel$Callbacks;I)V

    .line 2977
    iget-object v2, v8, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v2, v1, v14}, Lcom/voxel/launcher3/LauncherModel;->access$1800(Lcom/voxel/launcher3/LauncherModel;Ljava/lang/Runnable;I)V

    .line 2982
    :cond_5
    sget-object v2, Lcom/voxel/launcher3/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    monitor-enter v2

    .line 2983
    :try_start_1
    sget-object v1, Lcom/voxel/launcher3/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2984
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v15, :cond_6

    .line 2985
    sget-object v1, Lcom/voxel/launcher3/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    move-object v6, v1

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v7

    move-object/from16 v4, v19

    move-object/from16 v5, v21

    invoke-direct/range {v1 .. v6}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->bindWorkspaceItems(Lcom/voxel/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/voxel/launcher3/util/LongArrayMap;Ljava/util/ArrayList;)V

    .line 2989
    new-instance v7, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$5XWH22eo08cz_5KIo-PRaQYOE3w;

    move-object v1, v7

    move-object/from16 v2, p0

    move-object v3, v0

    move/from16 v4, p2

    move-wide v5, v9

    invoke-direct/range {v1 .. v6}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$5XWH22eo08cz_5KIo-PRaQYOE3w;-><init>(Lcom/voxel/launcher3/LauncherModel$LoaderTask;Lcom/voxel/launcher3/LauncherModel$Callbacks;ZJ)V

    if-eqz v15, :cond_7

    .line 3004
    sget-object v1, Lcom/voxel/launcher3/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3005
    :try_start_2
    sget-object v0, Lcom/voxel/launcher3/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3006
    monitor-exit v1

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 3008
    :cond_7
    iget-object v0, v8, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v0, v7, v14}, Lcom/voxel/launcher3/LauncherModel;->access$1800(Lcom/voxel/launcher3/LauncherModel;Ljava/lang/Runnable;I)V

    :goto_5
    return-void

    :catchall_1
    move-exception v0

    .line 2984
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 2919
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method private bindWorkspaceItems(Lcom/voxel/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/voxel/launcher3/util/LongArrayMap;Ljava/util/ArrayList;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/launcher3/LauncherModel$Callbacks;",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/LauncherAppWidgetInfo;",
            ">;",
            "Lcom/voxel/launcher3/util/LongArrayMap<",
            "Lcom/voxel/launcher3/FolderInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p5

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v8, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 2835
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v12, :cond_3

    add-int/lit8 v13, v5, 0x6

    if-gt v13, v12, :cond_1

    const/4 v1, 0x6

    const/4 v6, 0x6

    goto :goto_2

    :cond_1
    sub-int v1, v12, v5

    move v6, v1

    .line 2839
    :goto_2
    new-instance v14, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$eZUM34QssUZ_cjzojkvvUhQuc_Q;

    move-object v1, v14

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$eZUM34QssUZ_cjzojkvvUhQuc_Q;-><init>(Lcom/voxel/launcher3/LauncherModel$LoaderTask;Lcom/voxel/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;II)V

    if-eqz v11, :cond_2

    .line 2847
    monitor-enter p5

    .line 2848
    :try_start_0
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2849
    monitor-exit p5

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2851
    :cond_2
    iget-object v1, v7, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v1, v14, v10}, Lcom/voxel/launcher3/LauncherModel;->access$1800(Lcom/voxel/launcher3/LauncherModel;Ljava/lang/Runnable;I)V

    :goto_3
    move v5, v13

    goto :goto_1

    .line 2856
    :cond_3
    invoke-virtual/range {p4 .. p4}, Lcom/voxel/launcher3/util/LongArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2857
    new-instance v1, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$TrzN1wt1_W1koHsj9RxmsZyaocI;

    move-object/from16 v2, p4

    invoke-direct {v1, p0, v0, v2}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$TrzN1wt1_W1koHsj9RxmsZyaocI;-><init>(Lcom/voxel/launcher3/LauncherModel$LoaderTask;Lcom/voxel/launcher3/LauncherModel$Callbacks;Lcom/voxel/launcher3/util/LongArrayMap;)V

    if-eqz v11, :cond_4

    .line 2864
    monitor-enter p5

    .line 2865
    :try_start_1
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2866
    monitor-exit p5

    goto :goto_4

    :catchall_1
    move-exception v0

    monitor-exit p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 2868
    :cond_4
    iget-object v2, v7, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v2, v1, v10}, Lcom/voxel/launcher3/LauncherModel;->access$1800(Lcom/voxel/launcher3/LauncherModel;Ljava/lang/Runnable;I)V

    .line 2873
    :cond_5
    :goto_4
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_5
    if-ge v9, v1, :cond_7

    move-object/from16 v2, p3

    .line 2875
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    .line 2876
    new-instance v4, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$MH0VhMJwmhZ9AhZ9aL1Tn5xh5WU;

    invoke-direct {v4, p0, v0, v3}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$MH0VhMJwmhZ9AhZ9aL1Tn5xh5WU;-><init>(Lcom/voxel/launcher3/LauncherModel$LoaderTask;Lcom/voxel/launcher3/LauncherModel$Callbacks;Lcom/voxel/launcher3/LauncherAppWidgetInfo;)V

    if-eqz v11, :cond_6

    .line 2883
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 2885
    :cond_6
    iget-object v3, v7, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v3, v4, v10}, Lcom/voxel/launcher3/LauncherModel;->access$1800(Lcom/voxel/launcher3/LauncherModel;Ljava/lang/Runnable;I)V

    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_7
    return-void
.end method

.method private bindWorkspaceScreens(Lcom/voxel/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/launcher3/LauncherModel$Callbacks;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 2817
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$oZ-NpVeXh8xRtxhmmRJnoEJZAHM;

    invoke-direct {v0, p0, p1, p2}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$oZ-NpVeXh8xRtxhmmRJnoEJZAHM;-><init>(Lcom/voxel/launcher3/LauncherModel$LoaderTask;Lcom/voxel/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    .line 2823
    iget-object p1, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    const/4 p2, 0x1

    invoke-static {p1, v0, p2}, Lcom/voxel/launcher3/LauncherModel;->access$1800(Lcom/voxel/launcher3/LauncherModel;Ljava/lang/Runnable;I)V

    return-void
.end method

.method private checkItemPlacement(Ljava/util/HashMap;Lcom/voxel/launcher3/ItemInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "[[",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;",
            "Lcom/voxel/launcher3/ItemInfo;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")Z"
        }
    .end annotation

    .line 1885
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    .line 1886
    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v0

    .line 1887
    sget-object v1, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v1

    .line 1888
    iget v2, v1, Lcom/voxel/launcher3/CellParams;->numColumns:F

    float-to-int v2, v2

    .line 1889
    iget v1, v1, Lcom/voxel/launcher3/CellParams;->numRows:F

    float-to-int v1, v1

    .line 1890
    sget-object v3, Lcom/voxel/launcher3/DeviceProfile$ParamType;->HOTSEAT:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v0, v3}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v0

    iget v0, v0, Lcom/voxel/launcher3/CellParams;->numColumns:F

    float-to-int v0, v0

    .line 1892
    iget-wide v3, p2, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    .line 1893
    iget-wide v5, p2, Lcom/voxel/launcher3/ItemInfo;->container:J

    const-wide/16 v7, -0x65

    const/4 v9, 0x0

    const/4 v10, 0x1

    cmp-long v11, v5, v7

    if-nez v11, :cond_5

    .line 1895
    iget-object v1, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v1}, Lcom/voxel/launcher3/LauncherModel;->access$800(Lcom/voxel/launcher3/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    .line 1896
    invoke-static {v1}, Lcom/voxel/launcher3/LauncherModel;->access$800(Lcom/voxel/launcher3/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/LauncherModel$Callbacks;

    iget-wide v2, p2, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    long-to-int v2, v2

    invoke-interface {v1, v2}, Lcom/voxel/launcher3/LauncherModel$Callbacks;->isAllAppsButtonRank(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 1905
    :cond_0
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [[Lcom/voxel/launcher3/ItemInfo;

    .line 1907
    iget-wide v1, p2, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    int-to-long v3, v0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    const-string p1, "Launcher.Model"

    .line 1908
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error loading shortcut "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " into hotseat position "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p2, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", position out of bounds: (0 to "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v0, v10

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_1
    if-eqz p3, :cond_3

    .line 1916
    iget-wide v0, p2, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    long-to-int v0, v0

    aget-object v0, p3, v0

    aget-object v0, v0, v9

    if-eqz v0, :cond_2

    const-string p3, "Launcher.Model"

    .line 1917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error loading shortcut into hotseat "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " into position ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p2, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") occupied by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, -0x65

    .line 1920
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Lcom/voxel/launcher3/ItemInfo;

    iget-wide v1, p2, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    long-to-int p2, v1

    aget-object p1, p1, p2

    aget-object p1, p1, v9

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1917
    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    .line 1924
    :cond_2
    iget-wide v0, p2, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    long-to-int p1, v0

    aget-object p1, p3, p1

    aput-object p2, p1, v9

    return v10

    .line 1928
    :cond_3
    filled-new-array {v0, v10}, [I

    move-result-object p3

    const-class v0, Lcom/voxel/launcher3/ItemInfo;

    invoke-static {v0, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [[Lcom/voxel/launcher3/ItemInfo;

    .line 1929
    iget-wide v0, p2, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    long-to-int v0, v0

    aget-object v0, p3, v0

    aput-object p2, v0, v9

    .line 1930
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v10

    .line 1897
    :cond_4
    :goto_0
    invoke-virtual {p3, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p1, "Launcher.Model"

    .line 1898
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error loading shortcut into hotseat "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " into position ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p2, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") occupied by all apps"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    .line 1933
    :cond_5
    iget-wide v5, p2, Lcom/voxel/launcher3/ItemInfo;->container:J

    const-wide/16 v7, -0x64

    cmp-long p3, v5, v7

    if-eqz p3, :cond_6

    return v10

    .line 1938
    :cond_6
    iget-wide v5, p2, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    add-int/lit8 p3, v2, 0x1

    add-int/lit8 v0, v1, 0x1

    .line 1939
    filled-new-array {p3, v0}, [I

    move-result-object p3

    const-class v0, Lcom/voxel/launcher3/ItemInfo;

    invoke-static {v0, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [[Lcom/voxel/launcher3/ItemInfo;

    .line 1940
    iget-wide v5, p2, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1943
    :cond_7
    iget-wide v5, p2, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Lcom/voxel/launcher3/ItemInfo;

    .line 1944
    iget-wide v5, p2, Lcom/voxel/launcher3/ItemInfo;->container:J

    cmp-long p3, v5, v7

    if-nez p3, :cond_8

    iget p3, p2, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    if-ltz p3, :cond_f

    :cond_8
    iget p3, p2, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    if-ltz p3, :cond_f

    iget p3, p2, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    iget v0, p2, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    add-int/2addr p3, v0

    if-gt p3, v2, :cond_f

    iget p3, p2, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    iget v0, p2, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    add-int/2addr p3, v0

    if-le p3, v1, :cond_9

    goto/16 :goto_5

    .line 1955
    :cond_9
    iget p3, p2, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    :goto_1
    iget v0, p2, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    iget v1, p2, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    add-int/2addr v0, v1

    if-ge p3, v0, :cond_c

    .line 1956
    iget v0, p2, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    :goto_2
    iget v1, p2, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    iget v2, p2, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_b

    .line 1957
    aget-object v1, p1, p3

    aget-object v1, v1, v0

    if-eqz v1, :cond_a

    const-string v1, "Launcher.Model"

    .line 1958
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading shortcut "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " into cell ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p2, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") occupied by "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, p3

    aget-object p1, p1, v0

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_b
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 1967
    :cond_c
    iget p3, p2, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    :goto_3
    iget v0, p2, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    iget v1, p2, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    add-int/2addr v0, v1

    if-ge p3, v0, :cond_e

    .line 1968
    iget v0, p2, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    :goto_4
    iget v1, p2, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    iget v2, p2, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_d

    .line 1969
    aget-object v1, p1, p3

    aput-object p2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_d
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_e
    return v10

    :cond_f
    :goto_5
    const-string p1, "Launcher.Model"

    .line 1947
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error loading shortcut "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " into cell ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p2, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    invoke-virtual {p3, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") out of screen bounds ( "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "x"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9
.end method

.method private clearSBgDataStructures()V
    .locals 2

    .line 1980
    sget-object v0, Lcom/voxel/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1981
    :try_start_0
    sget-object v1, Lcom/voxel/launcher3/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1982
    sget-object v1, Lcom/voxel/launcher3/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1983
    sget-object v1, Lcom/voxel/launcher3/LauncherModel;->sBgFolders:Lcom/voxel/launcher3/util/LongArrayMap;

    invoke-virtual {v1}, Lcom/voxel/launcher3/util/LongArrayMap;->clear()V

    .line 1984
    sget-object v1, Lcom/voxel/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/voxel/launcher3/util/LongArrayMap;

    invoke-virtual {v1}, Lcom/voxel/launcher3/util/LongArrayMap;->clear()V

    .line 1985
    sget-object v1, Lcom/voxel/launcher3/LauncherModel;->sBgDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1986
    sget-object v1, Lcom/voxel/launcher3/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1987
    sget-object v1, Lcom/voxel/launcher3/LauncherModel;->sBgPinnedShortcutCounts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1988
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private filterCurrentAppWidgets(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/LauncherAppWidgetInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/LauncherAppWidgetInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .line 2757
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2759
    :cond_0
    iget-wide v1, v0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->container:J

    const-wide/16 v3, -0x64

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-wide v1, v0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->screenId:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_1

    .line 2761
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2763
    :cond_1
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private filterCurrentFolders(JLcom/voxel/launcher3/util/LongArrayMap;Lcom/voxel/launcher3/util/LongArrayMap;Lcom/voxel/launcher3/util/LongArrayMap;Lcom/voxel/launcher3/util/LongArrayMap;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/voxel/launcher3/util/LongArrayMap<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;",
            "Lcom/voxel/launcher3/util/LongArrayMap<",
            "Lcom/voxel/launcher3/FolderInfo;",
            ">;",
            "Lcom/voxel/launcher3/util/LongArrayMap<",
            "Lcom/voxel/launcher3/FolderInfo;",
            ">;",
            "Lcom/voxel/launcher3/util/LongArrayMap<",
            "Lcom/voxel/launcher3/FolderInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p4

    .line 2777
    invoke-virtual/range {p4 .. p4}, Lcom/voxel/launcher3/util/LongArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 2779
    invoke-virtual {v0, v2}, Lcom/voxel/launcher3/util/LongArrayMap;->keyAt(I)J

    move-result-wide v3

    .line 2780
    invoke-virtual {v0, v2}, Lcom/voxel/launcher3/util/LongArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voxel/launcher3/FolderInfo;

    move-object/from16 v6, p3

    .line 2782
    invoke-virtual {v6, v3, v4}, Lcom/voxel/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/voxel/launcher3/ItemInfo;

    if-eqz v7, :cond_2

    if-nez v5, :cond_0

    goto :goto_1

    .line 2784
    :cond_0
    iget-wide v8, v7, Lcom/voxel/launcher3/ItemInfo;->container:J

    const-wide/16 v10, -0x64

    cmp-long v12, v8, v10

    if-nez v12, :cond_1

    iget-wide v7, v7, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    cmp-long v9, v7, p1

    if-nez v9, :cond_1

    move-object/from16 v7, p5

    .line 2786
    invoke-virtual {v7, v3, v4, v5}, Lcom/voxel/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    move-object/from16 v8, p6

    goto :goto_2

    :cond_1
    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 2788
    invoke-virtual {v8, v3, v4, v5}, Lcom/voxel/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    goto :goto_2

    :cond_2
    :goto_1
    move-object/from16 v7, p5

    move-object/from16 v8, p6

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private filterCurrentWorkspaceItems(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 2714
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2715
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2716
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/ItemInfo;

    if-nez v1, :cond_0

    .line 2718
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2725
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2726
    sget-object v1, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$vOuXeeiTPZ1OS1hTdT7xObBkpI8;->INSTANCE:Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$vOuXeeiTPZ1OS1hTdT7xObBkpI8;

    invoke-static {p3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2727
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/ItemInfo;

    .line 2728
    iget-wide v2, v1, Lcom/voxel/launcher3/ItemInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    .line 2729
    iget-wide v2, v1, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    cmp-long v4, v2, p1

    if-nez v4, :cond_2

    .line 2730
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2731
    iget-wide v1, v1, Lcom/voxel/launcher3/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2733
    :cond_2
    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2735
    :cond_3
    iget-wide v2, v1, Lcom/voxel/launcher3/ItemInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v6, v2, v4

    if-nez v6, :cond_4

    .line 2736
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2737
    iget-wide v1, v1, Lcom/voxel/launcher3/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2739
    :cond_4
    iget-wide v2, v1, Lcom/voxel/launcher3/ItemInfo;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2740
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2741
    iget-wide v1, v1, Lcom/voxel/launcher3/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2743
    :cond_5
    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    return-void
.end method

.method public static synthetic lambda$bindWorkspace$7(Lcom/voxel/launcher3/LauncherModel$LoaderTask;Lcom/voxel/launcher3/LauncherModel$Callbacks;)V
    .locals 0

    .line 2958
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/voxel/launcher3/LauncherModel$Callbacks;)Lcom/voxel/launcher3/LauncherModel$Callbacks;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2960
    invoke-interface {p1}, Lcom/voxel/launcher3/LauncherModel$Callbacks;->startBinding()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$bindWorkspace$8(Lcom/voxel/launcher3/LauncherModel$LoaderTask;Lcom/voxel/launcher3/LauncherModel$Callbacks;I)V
    .locals 1

    .line 2972
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/voxel/launcher3/LauncherModel$Callbacks;)Lcom/voxel/launcher3/LauncherModel$Callbacks;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, -0x3e9

    if-eq p2, v0, :cond_0

    .line 2974
    invoke-interface {p1, p2}, Lcom/voxel/launcher3/LauncherModel$Callbacks;->onPageBoundSynchronously(I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$bindWorkspace$9(Lcom/voxel/launcher3/LauncherModel$LoaderTask;Lcom/voxel/launcher3/LauncherModel$Callbacks;ZJ)V
    .locals 0

    .line 2990
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/voxel/launcher3/LauncherModel$Callbacks;)Lcom/voxel/launcher3/LauncherModel$Callbacks;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2992
    invoke-interface {p1, p2}, Lcom/voxel/launcher3/LauncherModel$Callbacks;->finishBindingItems(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 3001
    iput-boolean p1, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->mIsLoadingAndBindingWorkspace:Z

    return-void
.end method

.method public static synthetic lambda$bindWorkspaceItems$4(Lcom/voxel/launcher3/LauncherModel$LoaderTask;Lcom/voxel/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;II)V
    .locals 6

    .line 2840
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/voxel/launcher3/LauncherModel$Callbacks;)Lcom/voxel/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_2

    add-int v3, p3, p4

    .line 2842
    iget p1, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->mFlags:I

    and-int/lit8 p1, p1, 0x4

    const/4 p4, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget p1, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->mFlags:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    move-object v1, p2

    move v2, p3

    invoke-interface/range {v0 .. v5}, Lcom/voxel/launcher3/LauncherModel$Callbacks;->bindItems(Ljava/util/ArrayList;IIZZ)V

    :cond_2
    return-void
.end method

.method public static synthetic lambda$bindWorkspaceItems$5(Lcom/voxel/launcher3/LauncherModel$LoaderTask;Lcom/voxel/launcher3/LauncherModel$Callbacks;Lcom/voxel/launcher3/util/LongArrayMap;)V
    .locals 0

    .line 2858
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/voxel/launcher3/LauncherModel$Callbacks;)Lcom/voxel/launcher3/LauncherModel$Callbacks;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2860
    invoke-interface {p1, p2}, Lcom/voxel/launcher3/LauncherModel$Callbacks;->bindFolders(Lcom/voxel/launcher3/util/LongArrayMap;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$bindWorkspaceItems$6(Lcom/voxel/launcher3/LauncherModel$LoaderTask;Lcom/voxel/launcher3/LauncherModel$Callbacks;Lcom/voxel/launcher3/LauncherAppWidgetInfo;)V
    .locals 0

    .line 2877
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/voxel/launcher3/LauncherModel$Callbacks;)Lcom/voxel/launcher3/LauncherModel$Callbacks;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2879
    invoke-interface {p1, p2}, Lcom/voxel/launcher3/LauncherModel$Callbacks;->bindAppWidget(Lcom/voxel/launcher3/LauncherAppWidgetInfo;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$bindWorkspaceScreens$3(Lcom/voxel/launcher3/LauncherModel$LoaderTask;Lcom/voxel/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;)V
    .locals 0

    .line 2818
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/voxel/launcher3/LauncherModel$Callbacks;)Lcom/voxel/launcher3/LauncherModel$Callbacks;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2820
    invoke-interface {p1, p2}, Lcom/voxel/launcher3/LauncherModel$Callbacks;->bindScreens(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$filterCurrentWorkspaceItems$1(Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/ItemInfo;)I
    .locals 2

    .line 2726
    iget-wide v0, p0, Lcom/voxel/launcher3/ItemInfo;->container:J

    iget-wide p0, p1, Lcom/voxel/launcher3/ItemInfo;->container:J

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method public static synthetic lambda$onlyBindAllApps$10(Lcom/voxel/launcher3/LauncherModel$LoaderTask;Lcom/voxel/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;)V
    .locals 0

    .line 3041
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 3042
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/voxel/launcher3/LauncherModel$Callbacks;)Lcom/voxel/launcher3/LauncherModel$Callbacks;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3044
    invoke-interface {p1, p2}, Lcom/voxel/launcher3/LauncherModel$Callbacks;->bindAllApplications(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$sortWorkspaceItemsSpatially$2(IILcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/ItemInfo;)I
    .locals 9

    mul-int p1, p1, p0

    mul-int/lit8 v0, p1, 0x6

    .line 2807
    iget-wide v1, p2, Lcom/voxel/launcher3/ItemInfo;->container:J

    int-to-long v3, v0

    mul-long v1, v1, v3

    iget-wide v5, p2, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    int-to-long v7, p1

    mul-long v5, v5, v7

    add-long/2addr v1, v5

    iget p1, p2, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    mul-int p1, p1, p0

    int-to-long v5, p1

    add-long/2addr v1, v5

    iget p1, p2, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    int-to-long p1, p1

    add-long/2addr v1, p1

    .line 2809
    iget-wide p1, p3, Lcom/voxel/launcher3/ItemInfo;->container:J

    mul-long p1, p1, v3

    iget-wide v3, p3, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    mul-long v3, v3, v7

    add-long/2addr p1, v3

    iget v0, p3, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    mul-int v0, v0, p0

    int-to-long v3, v0

    add-long/2addr p1, v3

    iget p0, p3, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    int-to-long v3, p0

    add-long/2addr p1, v3

    sub-long/2addr v1, p1

    long-to-int p0, v1

    return p0
.end method

.method public static synthetic lambda$waitForIdle$0(Lcom/voxel/launcher3/LauncherModel$LoaderTask;)V
    .locals 1

    .line 1684
    monitor-enter p0

    const/4 v0, 0x1

    .line 1685
    :try_start_0
    iput-boolean v0, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    .line 1689
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1690
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private loadAndBindAllApps()V
    .locals 2

    .line 3016
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/voxel/launcher3/LauncherModel;->access$300(Lcom/voxel/launcher3/LauncherModel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3018
    monitor-enter p0

    .line 3019
    :try_start_0
    iget-boolean v0, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_0

    .line 3020
    monitor-exit p0

    return-void

    .line 3022
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/voxel/launcher3/LauncherModel;->access$302(Lcom/voxel/launcher3/LauncherModel;Z)Z

    .line 3023
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3025
    :cond_1
    invoke-direct {p0}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->onlyBindAllApps()V

    :goto_0
    return-void
.end method

.method private loadAndBindWorkspace()Z
    .locals 3

    const/4 v0, 0x1

    .line 1653
    iput-boolean v0, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->mIsLoadingAndBindingWorkspace:Z

    .line 1661
    iget-object v1, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v1}, Lcom/voxel/launcher3/LauncherModel;->access$100(Lcom/voxel/launcher3/LauncherModel;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1662
    invoke-direct {p0}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->loadWorkspace()Z

    move-result v1

    .line 1663
    monitor-enter p0

    .line 1664
    :try_start_0
    iget-boolean v2, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v2, :cond_0

    .line 1665
    monitor-exit p0

    return v1

    .line 1667
    :cond_0
    iget-object v2, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v2, v0}, Lcom/voxel/launcher3/LauncherModel;->access$102(Lcom/voxel/launcher3/LauncherModel;Z)Z

    .line 1668
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v0, -0x1

    .line 1672
    invoke-direct {p0, v0, v1}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->bindWorkspace(IZ)V

    return v1
.end method

.method private loadWorkspace()Z
    .locals 74

    move-object/from16 v1, p0

    const-string v2, "Launcher.Model"

    const-string v3, "11683562 - loadWorkspace()"

    const/4 v4, 0x1

    .line 1996
    invoke-static {v2, v3, v4}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2000
    iget-object v2, v1, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 2001
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2002
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 2003
    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 2004
    invoke-virtual {v15}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v16

    .line 2005
    invoke-static {v2}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/LauncherAppsCompat;

    move-result-object v14

    .line 2006
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.voxel.launcher3.SYSTEM_READY"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-static {v2, v13, v5}, Lis/shortcut/compat/ReceiverCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v5

    const/4 v12, 0x0

    if-eqz v5, :cond_0

    const/16 v17, 0x1

    goto :goto_0

    :cond_0
    const/16 v17, 0x0

    .line 2009
    :goto_0
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v5

    .line 2010
    invoke-virtual {v5}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v5

    invoke-virtual {v5}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v5

    .line 2011
    sget-object v6, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v5, v6}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v5

    .line 2012
    iget v6, v5, Lcom/voxel/launcher3/CellParams;->numColumns:F

    .line 2013
    iget v5, v5, Lcom/voxel/launcher3/CellParams;->numRows:F

    .line 2015
    iget v5, v1, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->mFlags:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_1

    const-string v5, "Launcher.Model"

    const-string v6, "loadWorkspace: resetting launcher database"

    .line 2016
    invoke-static {v5, v6, v4}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2017
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getLauncherProviderSafe()Lcom/voxel/launcher3/LauncherProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/voxel/launcher3/LauncherProvider;->deleteDatabase()V

    .line 2020
    :cond_1
    iget v5, v1, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->mFlags:I

    const/16 v18, 0x2

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    const-string v5, "Launcher.Model"

    const-string v6, "loadWorkspace: migrating from launcher2"

    .line 2022
    invoke-static {v5, v6, v4}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2023
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getLauncherProviderSafe()Lcom/voxel/launcher3/LauncherProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/voxel/launcher3/LauncherProvider;->migrateLauncher2Shortcuts()V

    goto :goto_1

    :cond_2
    const-string v5, "Launcher.Model"

    const-string v6, "loadWorkspace: loading default favorites"

    .line 2026
    invoke-static {v5, v6, v12}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2027
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getLauncherProviderSafe()Lcom/voxel/launcher3/LauncherProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/voxel/launcher3/LauncherProvider;->loadDefaultFavoritesIfNecessary()V

    :goto_1
    const-string v5, "Launcher.Model"

    .line 2034
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "11683562 -   loadedOldDb: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2036
    sget-object v19, Lcom/voxel/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v19

    .line 2037
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->clearSBgDataStructures()V

    .line 2038
    iget-object v5, v1, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 2039
    invoke-static {v5}, Lcom/voxel/launcher3/compat/PackageInstallerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/PackageInstallerCompat;

    move-result-object v5

    invoke-virtual {v5}, Lcom/voxel/launcher3/compat/PackageInstallerCompat;->updateAndGetActiveSessionCache()Ljava/util/HashSet;

    move-result-object v11

    .line 2041
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2042
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2043
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 2044
    sget-object v7, Lcom/voxel/launcher3/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v5, v3

    move-object v6, v7

    move-object/from16 v24, v7

    move-object/from16 v7, v20

    move-object v4, v8

    move-object/from16 v8, v21

    move-object/from16 v25, v9

    move-object/from16 v9, v22

    move-object/from16 v26, v10

    move-object/from16 v10, v23

    .line 2046
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2051
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    :try_start_1
    const-string v5, "_id"

    .line 2055
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v5, "intent"

    .line 2057
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v5, "title"

    .line 2059
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v5, "iconType"

    .line 2060
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    const-string v5, "icon"

    .line 2062
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v12, "iconPackage"

    .line 2063
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    const-string v12, "iconResource"

    .line 2065
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    const-string v12, "container"

    .line 2067
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "itemType"

    .line 2069
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move/from16 v29, v5

    const-string v5, "appWidgetId"

    .line 2071
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move/from16 v30, v5

    const-string v5, "appWidgetProvider"

    .line 2073
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move/from16 v31, v5

    const-string v5, "screen"

    .line 2075
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v32, v2

    const-string v2, "cellX"

    .line 2078
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v33, v11

    const-string v11, "cellY"

    .line 2080
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v34, v3

    const-string v3, "spanX"

    .line 2082
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move/from16 v35, v3

    const-string v3, "spanY"

    .line 2083
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move/from16 v36, v3

    const-string v3, "rank"

    .line 2085
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move/from16 v37, v3

    const-string v3, "restored"

    .line 2087
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v38, v15

    const-string v15, "profileId"

    .line 2089
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v39, v14

    .line 2092
    new-instance v14, Landroidx/collection/LongSparseArray;

    invoke-direct {v14}, Landroidx/collection/LongSparseArray;-><init>()V

    move/from16 v40, v15

    .line 2093
    new-instance v15, Landroidx/collection/LongSparseArray;

    invoke-direct {v15}, Landroidx/collection/LongSparseArray;-><init>()V

    move/from16 v41, v7

    .line 2094
    new-instance v7, Landroidx/collection/LongSparseArray;

    invoke-direct {v7}, Landroidx/collection/LongSparseArray;-><init>()V

    move-object/from16 v42, v9

    .line 2096
    iget-object v9, v1, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v9}, Lcom/voxel/launcher3/LauncherModel;->access$1000(Lcom/voxel/launcher3/LauncherModel;)Lcom/voxel/launcher3/compat/UserManagerCompat;

    move-result-object v9

    invoke-virtual {v9}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    move-object/from16 v44, v9

    move-object/from16 v9, v43

    check-cast v9, Lcom/voxel/launcher3/compat/UserHandleCompat;

    move/from16 v43, v11

    .line 2097
    iget-object v11, v1, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v11}, Lcom/voxel/launcher3/LauncherModel;->access$1000(Lcom/voxel/launcher3/LauncherModel;)Lcom/voxel/launcher3/compat/UserManagerCompat;

    move-result-object v11

    move/from16 v45, v12

    invoke-virtual {v11, v9}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/voxel/launcher3/compat/UserHandleCompat;)J

    move-result-wide v11

    .line 2098
    invoke-virtual {v14, v11, v12, v9}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object/from16 v46, v14

    .line 2099
    iget-object v14, v1, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v14}, Lcom/voxel/launcher3/LauncherModel;->access$1000(Lcom/voxel/launcher3/LauncherModel;)Lcom/voxel/launcher3/compat/UserManagerCompat;

    move-result-object v14

    invoke-virtual {v14, v9}, Lcom/voxel/launcher3/compat/UserManagerCompat;->isQuietModeEnabled(Lcom/voxel/launcher3/compat/UserHandleCompat;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v15, v11, v12, v14}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2101
    iget-object v14, v1, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v14}, Lcom/voxel/launcher3/LauncherModel;->access$1000(Lcom/voxel/launcher3/LauncherModel;)Lcom/voxel/launcher3/compat/UserManagerCompat;

    move-result-object v14

    invoke-virtual {v14, v9}, Lcom/voxel/launcher3/compat/UserManagerCompat;->isUserUnlocked(Lcom/voxel/launcher3/compat/UserHandleCompat;)Z

    move-result v14

    if-eqz v14, :cond_4

    move/from16 v47, v14

    .line 2105
    iget-object v14, v1, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    iget-object v14, v14, Lcom/voxel/launcher3/LauncherModel;->mDeepShortcutManager:Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;

    move-object/from16 v48, v15

    const/4 v15, 0x0

    .line 2106
    invoke-virtual {v14, v15, v9}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;->queryForPinnedShortcuts(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v9

    .line 2107
    iget-object v14, v1, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    iget-object v14, v14, Lcom/voxel/launcher3/LauncherModel;->mDeepShortcutManager:Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;

    invoke-virtual {v14}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;->wasLastCallSuccess()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 2108
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;

    .line 2109
    invoke-static {v14}, Lcom/voxel/launcher3/shortcuts/ShortcutKey;->fromInfo(Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;)Lcom/voxel/launcher3/shortcuts/ShortcutKey;

    move-result-object v15

    invoke-interface {v4, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v15, 0x0

    goto :goto_3

    :cond_3
    const/16 v47, 0x0

    goto :goto_4

    :cond_4
    move/from16 v47, v14

    move-object/from16 v48, v15

    .line 2119
    :cond_5
    :goto_4
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v11, v12, v9}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    move/from16 v11, v43

    move-object/from16 v9, v44

    move/from16 v12, v45

    move-object/from16 v14, v46

    move-object/from16 v15, v48

    goto/16 :goto_2

    :cond_6
    move/from16 v43, v11

    move/from16 v45, v12

    move-object/from16 v46, v14

    move-object/from16 v48, v15

    const/4 v15, 0x0

    .line 2132
    :goto_5
    iget-boolean v9, v1, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v9, :cond_3c

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_3c

    .line 2133
    new-instance v14, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x0

    invoke-direct {v14, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    .line 2135
    :try_start_2
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 2136
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_60
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    goto :goto_6

    :cond_7
    const/4 v9, 0x0

    :goto_6
    const/4 v11, 0x4

    const/16 v44, 0x8

    if-eq v12, v11, :cond_2c

    const/4 v11, 0x6

    if-eq v12, v11, :cond_b

    packed-switch v12, :pswitch_data_0

    move/from16 v67, v3

    move v14, v5

    move-object/from16 v28, v7

    move/from16 v63, v8

    move-object v9, v10

    move/from16 v22, v13

    move-object/from16 v72, v24

    move/from16 v8, v29

    move/from16 v62, v31

    move-object/from16 v3, v32

    move-object/from16 v65, v33

    move-object/from16 v69, v34

    move-object/from16 v24, v39

    move/from16 v54, v40

    move/from16 v33, v41

    move/from16 v12, v43

    move/from16 v10, v45

    move-object/from16 v39, v48

    move-object/from16 v40, v4

    move/from16 v31, v6

    move-object/from16 v45, v15

    move-object/from16 v6, v26

    move-object/from16 v4, v42

    move-object v15, v1

    move-object/from16 v26, v25

    move-object/from16 v25, v46

    goto/16 :goto_34

    .line 2385
    :pswitch_0
    :try_start_3
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    move-object/from16 v47, v7

    .line 2386
    :try_start_4
    sget-object v7, Lcom/voxel/launcher3/LauncherModel;->sBgFolders:Lcom/voxel/launcher3/util/LongArrayMap;

    invoke-static {v7, v11, v12}, Lcom/voxel/launcher3/LauncherModel;->access$1400(Lcom/voxel/launcher3/util/LongArrayMap;J)Lcom/voxel/launcher3/FolderInfo;

    move-result-object v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    move/from16 v49, v13

    .line 2388
    :try_start_5
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v7, Lcom/voxel/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 2389
    iput-wide v11, v7, Lcom/voxel/launcher3/FolderInfo;->id:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_b

    move/from16 v13, v45

    move-object/from16 v45, v15

    .line 2390
    :try_start_6
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v15
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_b

    move/from16 v51, v3

    move-object/from16 v50, v4

    int-to-long v3, v15

    .line 2391
    :try_start_7
    iput-wide v3, v7, Lcom/voxel/launcher3/FolderInfo;->container:J

    .line 2392
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v7, Lcom/voxel/launcher3/FolderInfo;->screenId:J

    .line 2393
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v7, Lcom/voxel/launcher3/FolderInfo;->cellX:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    move/from16 v3, v43

    .line 2394
    :try_start_8
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v7, Lcom/voxel/launcher3/FolderInfo;->cellY:I

    const/4 v4, 0x1

    .line 2395
    iput v4, v7, Lcom/voxel/launcher3/FolderInfo;->spanX:I

    .line 2396
    iput v4, v7, Lcom/voxel/launcher3/FolderInfo;->spanY:I

    const/4 v4, 0x0

    .line 2399
    invoke-virtual {v14, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    move-object/from16 v4, v42

    .line 2400
    :try_start_9
    invoke-direct {v1, v4, v7, v14}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->checkItemPlacement(Ljava/util/HashMap;Lcom/voxel/launcher3/ItemInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v42

    if-nez v42, :cond_9

    .line 2402
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2403
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    move-object/from16 v14, v26

    :try_start_a
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v15, v1

    move v12, v3

    move/from16 v63, v8

    move-object v9, v10

    move v10, v13

    move-object/from16 v72, v24

    move-object/from16 v26, v25

    move/from16 v8, v29

    move/from16 v62, v31

    move-object/from16 v3, v32

    move-object/from16 v65, v33

    move-object/from16 v69, v34

    move-object/from16 v24, v39

    move/from16 v54, v40

    move/from16 v33, v41

    move-object/from16 v25, v46

    move-object/from16 v28, v47

    move-object/from16 v39, v48

    move/from16 v22, v49

    move-object/from16 v40, v50

    move/from16 v67, v51

    move/from16 v31, v6

    move-object v6, v14

    move v14, v5

    goto/16 :goto_34

    :cond_8
    move-object v15, v1

    move v12, v3

    move v14, v5

    move/from16 v63, v8

    move-object v9, v10

    move v10, v13

    move-object/from16 v72, v24

    move/from16 v8, v29

    move/from16 v62, v31

    move-object/from16 v3, v32

    move-object/from16 v65, v33

    move-object/from16 v69, v34

    move-object/from16 v24, v39

    move/from16 v54, v40

    move/from16 v33, v41

    move-object/from16 v28, v47

    move-object/from16 v39, v48

    move/from16 v22, v49

    move-object/from16 v40, v50

    move/from16 v67, v51

    move/from16 v31, v6

    move-object/from16 v6, v26

    move-object/from16 v26, v25

    move-object/from16 v25, v46

    goto/16 :goto_34

    :cond_9
    move-object/from16 v14, v26

    packed-switch v15, :pswitch_data_1

    goto :goto_8

    .line 2411
    :pswitch_1
    sget-object v15, Lcom/voxel/launcher3/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v7, v1

    move/from16 v66, v3

    move-object/from16 v64, v4

    move/from16 v63, v8

    move-object v9, v10

    move-object/from16 v1, v24

    move-object/from16 v26, v25

    :goto_7
    move/from16 v62, v31

    move-object/from16 v3, v32

    move-object/from16 v65, v33

    move-object/from16 v8, v34

    move/from16 v15, v36

    move-object/from16 v24, v39

    move/from16 v54, v40

    move/from16 v33, v41

    move-object/from16 v25, v46

    move-object/from16 v28, v47

    move-object/from16 v39, v48

    move/from16 v22, v49

    move-object/from16 v40, v50

    move-object v4, v0

    move/from16 v41, v2

    move/from16 v31, v6

    move v2, v13

    move-object v6, v14

    move v14, v5

    goto/16 :goto_62

    :goto_8
    if-eqz v9, :cond_a

    .line 2417
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    move-object/from16 v15, v25

    :try_start_b
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_a
    move-object/from16 v15, v25

    .line 2420
    :goto_9
    sget-object v9, Lcom/voxel/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/voxel/launcher3/util/LongArrayMap;

    iget-wide v11, v7, Lcom/voxel/launcher3/FolderInfo;->id:J

    invoke-virtual {v9, v11, v12, v7}, Lcom/voxel/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 2421
    sget-object v9, Lcom/voxel/launcher3/LauncherModel;->sBgFolders:Lcom/voxel/launcher3/util/LongArrayMap;

    iget-wide v11, v7, Lcom/voxel/launcher3/FolderInfo;->id:J

    invoke-virtual {v9, v11, v12, v7}, Lcom/voxel/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    move v12, v3

    move/from16 v63, v8

    move-object v9, v10

    move v10, v13

    move-object/from16 v26, v15

    move-object/from16 v72, v24

    move/from16 v8, v29

    move/from16 v62, v31

    move-object/from16 v3, v32

    move-object/from16 v65, v33

    move-object/from16 v69, v34

    move-object/from16 v24, v39

    move/from16 v54, v40

    move/from16 v33, v41

    move-object/from16 v25, v46

    move-object/from16 v28, v47

    move-object/from16 v39, v48

    move/from16 v22, v49

    move-object/from16 v40, v50

    move/from16 v67, v51

    move-object v15, v1

    move/from16 v31, v6

    move-object v6, v14

    move v14, v5

    goto/16 :goto_34

    :catch_1
    move-exception v0

    move-object v7, v1

    move/from16 v66, v3

    move-object/from16 v64, v4

    move/from16 v63, v8

    move-object v9, v10

    move-object/from16 v26, v15

    move-object/from16 v1, v24

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v7, v1

    move/from16 v66, v3

    move-object/from16 v64, v4

    move v14, v5

    move/from16 v63, v8

    move-object v9, v10

    move-object/from16 v1, v24

    move/from16 v62, v31

    move-object/from16 v3, v32

    move-object/from16 v65, v33

    move-object/from16 v8, v34

    move/from16 v15, v36

    move-object/from16 v24, v39

    move/from16 v54, v40

    move/from16 v33, v41

    move-object/from16 v28, v47

    move-object/from16 v39, v48

    move/from16 v22, v49

    move-object/from16 v40, v50

    move-object v4, v0

    goto/16 :goto_e

    :catch_3
    move-exception v0

    move-object v4, v0

    move-object v7, v1

    move/from16 v66, v3

    move v14, v5

    move/from16 v63, v8

    move-object v9, v10

    move-object/from16 v1, v24

    move/from16 v62, v31

    move-object/from16 v3, v32

    move-object/from16 v65, v33

    move-object/from16 v8, v34

    move/from16 v15, v36

    move-object/from16 v24, v39

    move/from16 v54, v40

    move/from16 v33, v41

    move-object/from16 v64, v42

    goto :goto_d

    :catch_4
    move-exception v0

    move-object v4, v0

    move-object v7, v1

    goto :goto_c

    :catch_5
    move-exception v0

    move-object/from16 v50, v4

    goto :goto_b

    :catch_6
    move-exception v0

    move-object/from16 v50, v4

    goto :goto_a

    :catch_7
    move-exception v0

    move-object/from16 v50, v4

    move/from16 v49, v13

    :goto_a
    move/from16 v13, v45

    move-object/from16 v45, v15

    :goto_b
    move-object v4, v0

    move-object v7, v1

    move/from16 v51, v3

    :goto_c
    move v14, v5

    move/from16 v63, v8

    move-object v9, v10

    move-object/from16 v1, v24

    move/from16 v62, v31

    move-object/from16 v3, v32

    move-object/from16 v65, v33

    move-object/from16 v8, v34

    move/from16 v15, v36

    move-object/from16 v24, v39

    move/from16 v54, v40

    move/from16 v33, v41

    move-object/from16 v64, v42

    move/from16 v66, v43

    :goto_d
    move-object/from16 v28, v47

    move-object/from16 v39, v48

    move/from16 v22, v49

    move-object/from16 v40, v50

    :goto_e
    move/from16 v41, v2

    move/from16 v31, v6

    move v2, v13

    move-object/from16 v6, v26

    goto :goto_f

    :catch_8
    move-exception v0

    move-object/from16 v50, v4

    move/from16 v49, v13

    move/from16 v13, v45

    move-object/from16 v45, v15

    move-object v4, v0

    move/from16 v51, v3

    move v14, v5

    move-object/from16 v28, v7

    move/from16 v63, v8

    move-object v9, v10

    move/from16 v62, v31

    move-object/from16 v3, v32

    move-object/from16 v65, v33

    move-object/from16 v8, v34

    move/from16 v15, v36

    move/from16 v54, v40

    move/from16 v33, v41

    move-object/from16 v64, v42

    move/from16 v66, v43

    move/from16 v22, v49

    move-object/from16 v40, v50

    move-object v7, v1

    move/from16 v41, v2

    move/from16 v31, v6

    move v2, v13

    move-object/from16 v1, v24

    move-object/from16 v6, v26

    move-object/from16 v24, v39

    move-object/from16 v39, v48

    :goto_f
    move-object/from16 v26, v25

    move-object/from16 v25, v46

    goto/16 :goto_62

    :cond_b
    :pswitch_2
    move/from16 v51, v3

    move-object/from16 v50, v4

    move-object/from16 v47, v7

    move/from16 v49, v13

    move-object/from16 v7, v26

    move/from16 v13, v45

    move-object/from16 v45, v15

    move-object/from16 v15, v25

    .line 2143
    :try_start_c
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_45
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move/from16 v26, v5

    move/from16 v11, v41

    .line 2144
    :try_start_d
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_44
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    move/from16 v41, v2

    move/from16 v2, v40

    move/from16 v40, v8

    .line 2145
    :try_start_e
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_43
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    move/from16 v52, v13

    move-object/from16 v53, v14

    int-to-long v13, v8

    move-object/from16 v8, v46

    .line 2146
    :try_start_f
    invoke-virtual {v8, v13, v14}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v46
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_42
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    move/from16 v54, v2

    :try_start_10
    move-object/from16 v2, v46

    check-cast v2, Lcom/voxel/launcher3/compat/UserHandleCompat;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_41
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    move/from16 v46, v11

    move/from16 v11, v51

    .line 2147
    :try_start_11
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v51
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_40
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    if-nez v2, :cond_c

    .line 2152
    :try_start_12
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    move-object/from16 v25, v8

    move-object v9, v10

    move/from16 v67, v11

    move-object/from16 v72, v24

    move/from16 v14, v26

    move/from16 v62, v31

    move-object/from16 v3, v32

    move-object/from16 v65, v33

    move-object/from16 v69, v34

    move-object/from16 v24, v39

    move/from16 v63, v40

    move/from16 v2, v41

    move-object/from16 v64, v42

    move/from16 v66, v43

    move/from16 v33, v46

    move-object/from16 v28, v47

    move-object/from16 v39, v48

    move/from16 v22, v49

    move-object/from16 v40, v50

    move/from16 v10, v52

    move/from16 v31, v6

    move-object v6, v7

    move-object/from16 v26, v15

    move-object v15, v1

    goto/16 :goto_42

    :catch_9
    move-exception v0

    move-object v4, v0

    move-object/from16 v25, v8

    move-object v9, v10

    move/from16 v51, v11

    move/from16 v14, v26

    move/from16 v62, v31

    move-object/from16 v3, v32

    move-object/from16 v65, v33

    move-object/from16 v8, v34

    move/from16 v63, v40

    move-object/from16 v64, v42

    move/from16 v66, v43

    move/from16 v33, v46

    move-object/from16 v28, v47

    move/from16 v22, v49

    move-object/from16 v40, v50

    move/from16 v2, v52

    move/from16 v31, v6

    move-object v6, v7

    move-object/from16 v26, v15

    move/from16 v15, v36

    move-object v7, v1

    move-object/from16 v1, v24

    move-object/from16 v24, v39

    move-object/from16 v39, v48

    goto/16 :goto_62

    :cond_c
    move-object/from16 v55, v8

    const/4 v8, 0x0

    .line 2156
    :try_start_13
    invoke-static {v5, v8}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v56

    .line 2157
    invoke-virtual/range {v56 .. v56}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8
    :try_end_13
    .catch Ljava/net/URISyntaxException; {:try_start_13 .. :try_end_13} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3d
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    if-eqz v8, :cond_1c

    .line 2158
    :try_start_14
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v57
    :try_end_14
    .catch Ljava/net/URISyntaxException; {:try_start_14 .. :try_end_14} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1d
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    if-eqz v57, :cond_1c

    move/from16 v57, v11

    .line 2160
    :try_start_15
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11
    :try_end_15
    .catch Ljava/net/URISyntaxException; {:try_start_15 .. :try_end_15} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1b
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    move-object/from16 v58, v5

    move-object/from16 v5, v39

    .line 2159
    :try_start_16
    invoke-virtual {v5, v11, v2}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Z

    move-result v11
    :try_end_16
    .catch Ljava/net/URISyntaxException; {:try_start_16 .. :try_end_16} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_19
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    if-eqz v11, :cond_d

    .line 2162
    :try_start_17
    invoke-virtual {v5, v8, v2}, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)Z

    move-result v39

    if-eqz v39, :cond_d

    const/16 v39, 0x1

    goto/16 :goto_12

    :catch_a
    move-exception v0

    move-object v4, v0

    move-object v9, v10

    move/from16 v14, v26

    move/from16 v62, v31

    move-object/from16 v3, v32

    move-object/from16 v65, v33

    move-object/from16 v8, v34

    move/from16 v63, v40

    move-object/from16 v64, v42

    move/from16 v66, v43

    move/from16 v33, v46

    move-object/from16 v28, v47

    move-object/from16 v39, v48

    :goto_10
    move/from16 v22, v49

    move-object/from16 v40, v50

    move/from16 v2, v52

    move-object/from16 v25, v55

    move/from16 v51, v57

    move/from16 v31, v6

    move-object v6, v7

    move-object/from16 v26, v15

    move/from16 v15, v36

    move-object v7, v1

    move-object/from16 v1, v24

    move-object/from16 v24, v5

    goto/16 :goto_62

    :catch_b
    move-object v9, v10

    move-object/from16 v72, v24

    move/from16 v14, v26

    move/from16 v8, v29

    move/from16 v62, v31

    move-object/from16 v3, v32

    move-object/from16 v65, v33

    move-object/from16 v69, v34

    move/from16 v63, v40

    move/from16 v2, v41

    move-object/from16 v4, v42

    move/from16 v12, v43

    move/from16 v33, v46

    move-object/from16 v28, v47

    move-object/from16 v39, v48

    :goto_11
    move/from16 v22, v49

    move-object/from16 v40, v50

    move/from16 v10, v52

    move-object/from16 v25, v55

    move/from16 v67, v57

    move-object/from16 v24, v5

    goto/16 :goto_3b

    :cond_d
    const/16 v39, 0x0

    :goto_12
    if-eqz v11, :cond_e

    .line 2164
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v59

    goto :goto_13

    :cond_e
    const/16 v59, 0x0

    :goto_13
    if-eqz v39, :cond_11

    if-eqz v9, :cond_f

    .line 2170
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catch Ljava/net/URISyntaxException; {:try_start_17 .. :try_end_17} :catch_b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_a
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    move-object/from16 v8, v48

    const/4 v9, 0x0

    goto :goto_14

    :cond_f
    move-object/from16 v8, v48

    .line 2173
    :goto_14
    :try_start_18
    invoke-virtual {v8, v13, v14}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11
    :try_end_18
    .catch Ljava/net/URISyntaxException; {:try_start_18 .. :try_end_18} :catch_d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_c
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    if-eqz v11, :cond_10

    move-object/from16 v39, v8

    move/from16 v48, v12

    move-wide/from16 v60, v13

    move-object/from16 v12, v33

    move-object/from16 v13, v34

    move-object/from16 v11, v38

    const/16 v22, 0x0

    move-object/from16 v38, v5

    move/from16 v33, v9

    const/4 v5, 0x0

    move-object/from16 v73, v24

    move/from16 v24, v6

    move-object/from16 v6, v73

    goto/16 :goto_18

    :cond_10
    move-object/from16 v39, v8

    move/from16 v48, v12

    move-wide/from16 v60, v13

    move-object/from16 v12, v33

    move-object/from16 v13, v34

    move-object/from16 v11, v38

    const/16 v22, 0x0

    const/16 v44, 0x0

    move-object/from16 v38, v5

    move/from16 v33, v9

    const/4 v5, 0x0

    move-object/from16 v73, v24

    move/from16 v24, v6

    move-object/from16 v6, v73

    goto/16 :goto_18

    :catch_c
    move-exception v0

    move-object v4, v0

    move-object/from16 v39, v8

    move-object v9, v10

    move/from16 v14, v26

    move/from16 v62, v31

    move-object/from16 v3, v32

    move-object/from16 v65, v33

    move-object/from16 v8, v34

    move/from16 v63, v40

    move-object/from16 v64, v42

    move/from16 v66, v43

    move/from16 v33, v46

    move-object/from16 v28, v47

    goto/16 :goto_10

    :catch_d
    move-object/from16 v39, v8

    move-object v9, v10

    move-object/from16 v72, v24

    move/from16 v14, v26

    move/from16 v8, v29

    move/from16 v62, v31

    move-object/from16 v3, v32

    move-object/from16 v65, v33

    move-object/from16 v69, v34

    move/from16 v63, v40

    move/from16 v2, v41

    move-object/from16 v4, v42

    move/from16 v12, v43

    move/from16 v33, v46

    move-object/from16 v28, v47

    goto/16 :goto_11

    :cond_11
    move-object/from16 v39, v48

    if-eqz v11, :cond_15

    and-int/lit8 v9, v51, 0x2

    if-eqz v9, :cond_13

    .line 2182
    :try_start_19
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9
    :try_end_19
    .catch Ljava/net/URISyntaxException; {:try_start_19 .. :try_end_19} :catch_12
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_11
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    move-object/from16 v11, v38

    .line 2181
    :try_start_1a
    invoke-virtual {v11, v9}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9
    :try_end_1a
    .catch Ljava/net/URISyntaxException; {:try_start_1a .. :try_end_1a} :catch_10
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_f
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    if-eqz v9, :cond_12

    move-object/from16 v38, v5

    .line 2184
    :try_start_1b
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    move-wide/from16 v60, v13

    const-string v13, "intent"

    move/from16 v48, v12

    const/4 v14, 0x0

    .line 2186
    invoke-virtual {v9, v14}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v12

    .line 2185
    invoke-virtual {v5, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "_id= ?"

    const/4 v13, 0x1

    .line 2188
    new-array v14, v13, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    const/16 v22, 0x0

    aput-object v13, v14, v22
    :try_end_1b
    .catch Ljava/net/URISyntaxException; {:try_start_1b .. :try_end_1b} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_e
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    move-object/from16 v13, v34

    move-object/from16 v73, v24

    move/from16 v24, v6

    move-object/from16 v6, v73

    .line 2189
    :try_start_1c
    invoke-virtual {v13, v6, v5, v12, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_15

    :catch_e
    move-exception v0

    goto/16 :goto_1e

    :cond_12
    move-object/from16 v38, v5

    move/from16 v48, v12

    move-wide/from16 v60, v13

    move-object/from16 v13, v34

    move-object/from16 v73, v24

    move/from16 v24, v6

    move-object/from16 v6, v73

    :goto_15
    move-object/from16 v56, v9

    goto :goto_16

    :catch_f
    move-exception v0

    move-object/from16 v73, v24

    move/from16 v24, v6

    move-object/from16 v6, v73

    move-object v4, v0

    move-object v9, v10

    move-object/from16 v38, v11

    goto/16 :goto_1a

    :catch_10
    move-object/from16 v73, v24

    move/from16 v24, v6

    move-object/from16 v6, v73

    move-object/from16 v72, v6

    move-object v6, v7

    move-object v9, v10

    move-object/from16 v38, v11

    goto/16 :goto_1c

    :catch_11
    move-exception v0

    move-object/from16 v11, v38

    goto/16 :goto_19

    :catch_12
    move-object/from16 v11, v38

    goto/16 :goto_1b

    :cond_13
    move/from16 v48, v12

    move-wide/from16 v60, v13

    move-object/from16 v13, v34

    move-object/from16 v11, v38

    move-object/from16 v38, v5

    move-object/from16 v73, v24

    move/from16 v24, v6

    move-object/from16 v6, v73

    const/16 v56, 0x0

    :goto_16
    if-nez v56, :cond_14

    const-string v2, "Launcher.Model"

    .line 2196
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid component removed: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    invoke-static {v2, v5, v8}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2198
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v72, v6

    move-object v6, v7

    move-object v9, v10

    move-object/from16 v69, v13

    move/from16 v14, v26

    move/from16 v62, v31

    move-object/from16 v3, v32

    move-object/from16 v65, v33

    move/from16 v63, v40

    move/from16 v2, v41

    move-object/from16 v64, v42

    move/from16 v66, v43

    move/from16 v33, v46

    move-object/from16 v28, v47

    move/from16 v22, v49

    move-object/from16 v40, v50

    move/from16 v10, v52

    move-object/from16 v25, v55

    move/from16 v67, v57

    move-object/from16 v26, v15

    move/from16 v31, v24

    move-object/from16 v24, v38

    move-object v15, v1

    move-object/from16 v38, v11

    goto/16 :goto_42

    .line 2202
    :cond_14
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catch Ljava/net/URISyntaxException; {:try_start_1c .. :try_end_1c} :catch_18
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_13
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    move-object/from16 v12, v33

    const/4 v5, 0x0

    const/16 v22, 0x0

    const/16 v33, 0x0

    const/16 v44, 0x0

    goto/16 :goto_18

    :catch_13
    move-exception v0

    goto/16 :goto_17

    :cond_15
    move/from16 v48, v12

    move-wide/from16 v60, v13

    move-object/from16 v13, v34

    move-object/from16 v11, v38

    move-object/from16 v38, v5

    move-object/from16 v73, v24

    move/from16 v24, v6

    move-object/from16 v6, v73

    if-eqz v9, :cond_18

    :try_start_1d
    const-string v5, "Launcher.Model"

    .line 2208
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "package not yet restored: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x1

    invoke-static {v5, v12, v14}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    and-int/lit8 v5, v51, 0x8

    if-eqz v5, :cond_16

    move-object/from16 v12, v33

    const/4 v5, 0x0

    const/16 v22, 0x0

    const/16 v44, 0x0

    move/from16 v33, v9

    goto/16 :goto_18

    .line 2213
    :cond_16
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5
    :try_end_1d
    .catch Ljava/net/URISyntaxException; {:try_start_1d .. :try_end_1d} :catch_17
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_16
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    move-object/from16 v12, v33

    :try_start_1e
    invoke-virtual {v12, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    or-int/lit8 v5, v51, 0x8

    .line 2216
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v14, "restored"

    move/from16 v33, v9

    .line 2218
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 2217
    invoke-virtual {v8, v14, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "_id= ?"

    move/from16 v34, v5

    const/4 v14, 0x1

    .line 2220
    new-array v5, v14, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14
    :try_end_1e
    .catch Ljava/net/URISyntaxException; {:try_start_1e .. :try_end_1e} :catch_15
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_14
    .catchall {:try_start_1e .. :try_end_1e} :catchall_b

    const/16 v22, 0x0

    :try_start_1f
    aput-object v14, v5, v22

    .line 2221
    invoke-virtual {v13, v6, v8, v9, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move/from16 v51, v34

    const/4 v5, 0x0

    const/16 v44, 0x0

    goto/16 :goto_18

    :cond_17
    const/16 v22, 0x0

    const-string v2, "Launcher.Model"

    .line 2224
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrestored package removed: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    invoke-static {v2, v5, v8}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2226
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v72, v6

    move-object v6, v7

    move-object v9, v10

    move-object/from16 v65, v12

    move-object/from16 v69, v13

    move/from16 v14, v26

    move/from16 v62, v31

    move-object/from16 v3, v32

    move/from16 v63, v40

    move/from16 v2, v41

    move-object/from16 v64, v42

    move/from16 v66, v43

    move/from16 v33, v46

    move-object/from16 v28, v47

    move/from16 v22, v49

    move-object/from16 v40, v50

    move/from16 v10, v52

    move-object/from16 v25, v55

    move/from16 v67, v57

    move-object/from16 v26, v15

    move/from16 v31, v24

    move-object/from16 v24, v38

    move-object v15, v1

    move-object/from16 v38, v11

    goto/16 :goto_42

    :catch_14
    move-exception v0

    const/16 v22, 0x0

    goto/16 :goto_23

    :catch_15
    const/16 v22, 0x0

    goto/16 :goto_24

    :catch_16
    move-exception v0

    const/16 v22, 0x0

    :goto_17
    move-object v4, v0

    move-object v9, v10

    move-object v8, v13

    move/from16 v14, v26

    move/from16 v62, v31

    move-object/from16 v3, v32

    move-object/from16 v65, v33

    goto/16 :goto_1f

    :catch_17
    const/16 v22, 0x0

    :catch_18
    move-object/from16 v72, v6

    move-object v6, v7

    move-object v9, v10

    move-object/from16 v69, v13

    move/from16 v14, v26

    move/from16 v8, v29

    move/from16 v62, v31

    move-object/from16 v3, v32

    move-object/from16 v65, v33

    goto/16 :goto_22

    :cond_18
    move-object/from16 v12, v33

    const/16 v22, 0x0

    move/from16 v33, v9

    .line 2230
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2229
    invoke-static {v11, v5}, Lcom/voxel/launcher3/util/PackageManagerHelper;->isAppOnSdcard(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/4 v5, 0x1

    const/16 v44, 0x2

    goto/16 :goto_18

    :cond_19
    if-eqz v17, :cond_1a

    const-string v2, "Launcher.Model"

    .line 2237
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid package removed: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    invoke-static {v2, v5, v8}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2239
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v72, v6

    move-object v6, v7

    move-object v9, v10

    move-object/from16 v65, v12

    move-object/from16 v69, v13

    move/from16 v14, v26

    move/from16 v62, v31

    move-object/from16 v3, v32

    move/from16 v63, v40

    move/from16 v2, v41

    move-object/from16 v64, v42

    move/from16 v66, v43

    move/from16 v33, v46

    move-object/from16 v28, v47

    move/from16 v22, v49

    move-object/from16 v40, v50

    move/from16 v10, v52

    move-object/from16 v25, v55

    move/from16 v67, v57

    move-object/from16 v26, v15

    move/from16 v31, v24

    move-object/from16 v24, v38

    move-object v15, v1

    move-object/from16 v38, v11

    goto/16 :goto_42

    :cond_1a
    const-string v5, "Launcher.Model"

    .line 2244
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid package: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " (check again later)"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v14, 0x1

    invoke-static {v5, v9, v14}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2246
    sget-object v5, Lcom/voxel/launcher3/LauncherModel;->sPendingPackages:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    if-nez v5, :cond_1b

    .line 2248
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 2249
    sget-object v9, Lcom/voxel/launcher3/LauncherModel;->sPendingPackages:Ljava/util/HashMap;

    invoke-virtual {v9, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2251
    :cond_1b
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    const/16 v44, 0x0

    :goto_18
    move/from16 v34, v5

    move/from16 v5, v51

    move-object/from16 v14, v56

    move-object/from16 v9, v59

    goto/16 :goto_25

    :catch_19
    move-exception v0

    move-object/from16 v11, v38

    move-object/from16 v39, v48

    const/16 v22, 0x0

    :goto_19
    move-object/from16 v73, v24

    move/from16 v24, v6

    move-object/from16 v6, v73

    move-object v4, v0

    move-object v9, v10

    :goto_1a
    move/from16 v14, v26

    move/from16 v62, v31

    move-object/from16 v3, v32

    move-object/from16 v65, v33

    move-object/from16 v8, v34

    move/from16 v63, v40

    move-object/from16 v64, v42

    move/from16 v66, v43

    move/from16 v33, v46

    move-object/from16 v28, v47

    move/from16 v22, v49

    move-object/from16 v40, v50

    move/from16 v2, v52

    move-object/from16 v25, v55

    move/from16 v51, v57

    move-object/from16 v26, v15

    move/from16 v31, v24

    move/from16 v15, v36

    move-object/from16 v24, v5

    goto/16 :goto_20

    :catch_1a
    move-object/from16 v11, v38

    move-object/from16 v39, v48

    const/16 v22, 0x0

    :goto_1b
    move-object/from16 v73, v24

    move/from16 v24, v6

    move-object/from16 v6, v73

    move-object/from16 v72, v6

    move-object v6, v7

    move-object v9, v10

    :goto_1c
    move/from16 v14, v26

    move/from16 v8, v29

    move/from16 v62, v31

    move-object/from16 v3, v32

    move-object/from16 v65, v33

    move-object/from16 v69, v34

    move/from16 v63, v40

    move/from16 v2, v41

    move-object/from16 v4, v42

    move/from16 v12, v43

    move/from16 v33, v46

    move-object/from16 v28, v47

    move/from16 v22, v49

    move-object/from16 v40, v50

    move/from16 v10, v52

    move-object/from16 v25, v55

    move/from16 v67, v57

    move-object/from16 v26, v15

    move/from16 v31, v24

    move-object v15, v1

    move-object/from16 v24, v5

    goto/16 :goto_3c

    :catch_1b
    move-exception v0

    goto :goto_1d

    :catch_1c
    move-object/from16 v58, v5

    goto :goto_21

    :catch_1d
    move-exception v0

    move/from16 v57, v11

    :goto_1d
    move-object/from16 v11, v38

    move-object/from16 v38, v39

    move-object/from16 v39, v48

    const/16 v22, 0x0

    :goto_1e
    move-object/from16 v73, v24

    move/from16 v24, v6

    move-object/from16 v6, v73

    move-object v4, v0

    move-object v9, v10

    move/from16 v14, v26

    move/from16 v62, v31

    move-object/from16 v3, v32

    move-object/from16 v65, v33

    move-object/from16 v8, v34

    :goto_1f
    move/from16 v63, v40

    move-object/from16 v64, v42

    move/from16 v66, v43

    move/from16 v33, v46

    move-object/from16 v28, v47

    move/from16 v22, v49

    move-object/from16 v40, v50

    move/from16 v2, v52

    move-object/from16 v25, v55

    move/from16 v51, v57

    move-object/from16 v26, v15

    move/from16 v31, v24

    move/from16 v15, v36

    move-object/from16 v24, v38

    move-object/from16 v38, v11

    :goto_20
    move-object/from16 v73, v7

    move-object v7, v1

    move-object v1, v6

    move-object/from16 v6, v73

    goto/16 :goto_62

    :catch_1e
    move-object/from16 v58, v5

    move/from16 v57, v11

    :goto_21
    move-object/from16 v11, v38

    move-object/from16 v38, v39

    move-object/from16 v39, v48

    const/16 v22, 0x0

    :catch_1f
    move-object/from16 v73, v24

    move/from16 v24, v6

    move-object/from16 v6, v73

    move-object/from16 v72, v6

    move-object v6, v7

    move-object v9, v10

    move/from16 v14, v26

    move/from16 v8, v29

    move/from16 v62, v31

    move-object/from16 v3, v32

    move-object/from16 v65, v33

    move-object/from16 v69, v34

    :goto_22
    move/from16 v63, v40

    move/from16 v2, v41

    move-object/from16 v4, v42

    move/from16 v12, v43

    move/from16 v33, v46

    move-object/from16 v28, v47

    move/from16 v22, v49

    move-object/from16 v40, v50

    move/from16 v10, v52

    move-object/from16 v25, v55

    move/from16 v67, v57

    move-object/from16 v26, v15

    move/from16 v31, v24

    move-object/from16 v24, v38

    move-object v15, v1

    move-object/from16 v38, v11

    goto/16 :goto_3c

    :cond_1c
    move-object/from16 v58, v5

    move/from16 v57, v11

    move-wide/from16 v60, v13

    move-object/from16 v13, v34

    move-object/from16 v11, v38

    move-object/from16 v38, v39

    move-object/from16 v39, v48

    const/16 v22, 0x0

    move/from16 v48, v12

    move-object/from16 v12, v33

    move/from16 v33, v9

    move-object/from16 v73, v24

    move/from16 v24, v6

    move-object/from16 v6, v73

    if-nez v8, :cond_1d

    .line 2257
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Ljava/net/URISyntaxException; {:try_start_1f .. :try_end_1f} :catch_21
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_20
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    move/from16 v5, v51

    move-object/from16 v14, v56

    const/4 v9, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v44, 0x0

    goto :goto_25

    :catch_20
    move-exception v0

    :goto_23
    move-object v4, v0

    move-object v9, v10

    move-object/from16 v65, v12

    move-object v8, v13

    move/from16 v14, v26

    move/from16 v62, v31

    move-object/from16 v3, v32

    goto/16 :goto_1f

    :catch_21
    :goto_24
    move-object/from16 v72, v6

    move-object v6, v7

    move-object v9, v10

    move-object/from16 v65, v12

    move-object/from16 v69, v13

    move/from16 v14, v26

    move/from16 v8, v29

    move/from16 v62, v31

    move-object/from16 v3, v32

    goto :goto_22

    :cond_1d
    move/from16 v5, v51

    move-object/from16 v14, v56

    const/4 v9, 0x0

    const/16 v34, 0x0

    const/16 v44, 0x0

    :goto_25
    if-eqz v33, :cond_1f

    .line 2267
    :try_start_20
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/voxel/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string v2, "Launcher.Model"

    const-string v8, "constructing info for partially restored package"

    const/4 v9, 0x1

    .line 2268
    invoke-static {v2, v8, v9}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2271
    iget-object v2, v1, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_b

    move/from16 v8, v24

    :try_start_21
    invoke-virtual {v2, v10, v8, v14, v5}, Lcom/voxel/launcher3/LauncherModel;->getRestoredItemInfo(Landroid/database/Cursor;ILandroid/content/Intent;I)Lcom/voxel/launcher3/ShortcutInfo;

    move-result-object v2

    .line 2272
    iget-object v5, v1, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_22
    .catchall {:try_start_21 .. :try_end_21} :catchall_b

    move-object/from16 v9, v32

    :try_start_22
    invoke-static {v5, v10, v9, v14}, Lcom/voxel/launcher3/LauncherModel;->access$1100(Lcom/voxel/launcher3/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v14

    move-object v5, v2

    move-object/from16 v72, v6

    move-object/from16 v71, v7

    move-object/from16 v32, v9

    move-object v6, v11

    move-object/from16 v65, v12

    move-object/from16 v69, v13

    move/from16 v62, v31

    move-object/from16 v24, v38

    move/from16 v63, v40

    move-object/from16 v64, v42

    move/from16 v66, v43

    move/from16 v33, v46

    move-object/from16 v28, v47

    move/from16 v22, v49

    move-object/from16 v40, v50

    move/from16 v68, v52

    move-object/from16 v70, v53

    move-object/from16 v25, v55

    move/from16 v67, v57

    const/4 v2, 0x0

    move-wide/from16 v46, v3

    move/from16 v31, v8

    move-object/from16 v42, v10

    move/from16 v38, v26

    move-wide/from16 v3, v60

    move-object/from16 v26, v15

    move-object v15, v1

    move-object v1, v14

    goto/16 :goto_30

    :catch_22
    move-exception v0

    move-object v4, v0

    move-object v9, v10

    move-object/from16 v65, v12

    move/from16 v14, v26

    move/from16 v62, v31

    move-object/from16 v3, v32

    goto :goto_26

    :cond_1e
    move/from16 v8, v24

    move-object/from16 v9, v32

    .line 2275
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_23
    .catchall {:try_start_22 .. :try_end_22} :catchall_b

    move-object/from16 v72, v6

    move-object v6, v7

    move-object v3, v9

    move-object v9, v10

    move-object/from16 v65, v12

    move-object/from16 v69, v13

    move/from16 v14, v26

    move/from16 v62, v31

    move-object/from16 v24, v38

    move/from16 v63, v40

    move/from16 v2, v41

    move-object/from16 v64, v42

    move/from16 v66, v43

    move/from16 v33, v46

    move-object/from16 v28, v47

    move/from16 v22, v49

    move-object/from16 v40, v50

    move/from16 v10, v52

    move-object/from16 v25, v55

    move/from16 v67, v57

    move/from16 v31, v8

    move-object/from16 v38, v11

    move-object/from16 v26, v15

    move-object v15, v1

    goto/16 :goto_42

    :catch_23
    move-exception v0

    move-object v4, v0

    move-object v3, v9

    move-object v9, v10

    move-object/from16 v65, v12

    move/from16 v14, v26

    move/from16 v62, v31

    :goto_26
    move-object/from16 v24, v38

    move/from16 v63, v40

    move-object/from16 v64, v42

    move/from16 v66, v43

    move/from16 v33, v46

    move-object/from16 v28, v47

    move/from16 v22, v49

    move-object/from16 v40, v50

    move/from16 v2, v52

    move-object/from16 v25, v55

    move/from16 v51, v57

    move/from16 v31, v8

    move-object/from16 v38, v11

    move-object v8, v13

    move-object/from16 v26, v15

    move/from16 v15, v36

    goto/16 :goto_20

    :cond_1f
    move/from16 v8, v24

    move-object/from16 v5, v32

    if-nez v48, :cond_20

    .line 2280
    :try_start_23
    iget-object v9, v1, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_26
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    move-object/from16 v24, v13

    :try_start_24
    iget-object v13, v1, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->mLabelCache:Ljava/util/HashMap;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_25
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    move-object/from16 v32, v5

    move/from16 v62, v31

    move-object/from16 v25, v38

    move/from16 v73, v26

    move-object/from16 v26, v15

    move/from16 v15, v73

    move-object v5, v9

    move-object v9, v6

    move/from16 v31, v8

    move-object v6, v11

    move-object v8, v7

    move/from16 v38, v15

    move/from16 v33, v46

    move-object/from16 v15, v47

    move-object v7, v14

    move-object v1, v8

    move/from16 v63, v40

    move-object/from16 v40, v55

    move-object v8, v2

    move-object v2, v9

    move-object/from16 v64, v42

    move-object/from16 v9, v32

    move-object/from16 v42, v10

    move-object/from16 v65, v12

    move/from16 v66, v43

    move/from16 v67, v57

    move-object v12, v11

    move/from16 v11, v29

    move-object/from16 v43, v12

    move/from16 v68, v52

    move/from16 v12, v31

    move-wide/from16 v46, v3

    move-object/from16 v69, v24

    move/from16 v22, v49

    move-wide/from16 v3, v60

    move-object/from16 v28, v1

    move-object v1, v14

    move-object/from16 v24, v25

    move-object/from16 v25, v40

    move-object/from16 v70, v53

    move/from16 v14, v34

    :try_start_25
    invoke-virtual/range {v5 .. v14}, Lcom/voxel/launcher3/LauncherModel;->getAppShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Lcom/voxel/launcher3/compat/UserHandleCompat;Landroid/content/Context;Landroid/database/Cursor;IILjava/util/HashMap;Z)Lcom/voxel/launcher3/ShortcutInfo;

    move-result-object v5
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_24
    .catchall {:try_start_25 .. :try_end_25} :catchall_2

    move-object/from16 v72, v2

    move-object/from16 v71, v28

    move-object/from16 v6, v43

    move-object/from16 v40, v50

    const/4 v2, 0x0

    move-object/from16 v28, v15

    move-object/from16 v15, p0

    goto/16 :goto_30

    :catch_24
    move-exception v0

    move-object v4, v0

    move-object v1, v2

    move-object/from16 v6, v28

    move-object/from16 v3, v32

    move/from16 v14, v38

    move-object/from16 v9, v42

    move-object/from16 v38, v43

    move-object/from16 v40, v50

    :goto_27
    move/from16 v51, v67

    move/from16 v2, v68

    move-object/from16 v8, v69

    move-object/from16 v7, p0

    move-object/from16 v28, v15

    move/from16 v15, v36

    goto/16 :goto_62

    :catch_25
    move-exception v0

    move-object/from16 v69, v24

    move/from16 v62, v31

    move-object/from16 v24, v38

    move/from16 v33, v46

    move/from16 v22, v49

    move-object/from16 v25, v55

    move/from16 v31, v8

    move/from16 v38, v26

    move-object/from16 v26, v15

    move-object v4, v0

    move-object v3, v5

    move-object v1, v6

    move-object v6, v7

    move-object v9, v10

    move-object/from16 v65, v12

    move/from16 v15, v36

    move/from16 v14, v38

    move/from16 v63, v40

    move-object/from16 v64, v42

    move/from16 v66, v43

    move-object/from16 v28, v47

    move-object/from16 v40, v50

    move/from16 v2, v52

    move/from16 v51, v57

    move-object/from16 v8, v69

    goto :goto_29

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v9, v10

    :goto_28
    move-object/from16 v7, p0

    goto/16 :goto_6b

    :catch_26
    move-exception v0

    move/from16 v62, v31

    move-object/from16 v24, v38

    move/from16 v33, v46

    move/from16 v22, v49

    move-object/from16 v25, v55

    move/from16 v31, v8

    move/from16 v38, v26

    move-object/from16 v26, v15

    move-object v4, v0

    move-object v3, v5

    move-object v1, v6

    move-object v6, v7

    move-object v9, v10

    move-object/from16 v65, v12

    move-object v8, v13

    move/from16 v15, v36

    move/from16 v14, v38

    move/from16 v63, v40

    move-object/from16 v64, v42

    move/from16 v66, v43

    move-object/from16 v28, v47

    move-object/from16 v40, v50

    move/from16 v2, v52

    move/from16 v51, v57

    :goto_29
    move-object/from16 v7, p0

    move-object/from16 v38, v11

    goto/16 :goto_62

    :cond_20
    move-object/from16 v32, v5

    move-object/from16 v28, v7

    move-object/from16 v65, v12

    move-object/from16 v69, v13

    move-object v1, v14

    move/from16 v62, v31

    move-object/from16 v24, v38

    move/from16 v63, v40

    move-object/from16 v64, v42

    move/from16 v66, v43

    move/from16 v33, v46

    move/from16 v12, v48

    move/from16 v22, v49

    move/from16 v68, v52

    move-object/from16 v70, v53

    move-object/from16 v25, v55

    move/from16 v67, v57

    const/4 v5, 0x6

    move-object v14, v6

    move/from16 v31, v8

    move-object/from16 v42, v10

    move-object/from16 v43, v11

    move/from16 v38, v26

    move-object/from16 v26, v15

    move-object/from16 v15, v47

    move-wide/from16 v46, v3

    move-wide/from16 v3, v60

    if-ne v12, v5, :cond_23

    .line 2285
    :try_start_26
    invoke-static {v1, v2}, Lcom/voxel/launcher3/shortcuts/ShortcutKey;->fromIntent(Landroid/content/Intent;Lcom/voxel/launcher3/compat/UserHandleCompat;)Lcom/voxel/launcher3/shortcuts/ShortcutKey;

    move-result-object v13

    .line 2286
    invoke-virtual {v15, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_2c
    .catchall {:try_start_26 .. :try_end_26} :catchall_2

    if-eqz v5, :cond_22

    move-object/from16 v11, v50

    .line 2288
    :try_start_27
    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;

    if-nez v1, :cond_21

    .line 2291
    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_2a
    .catchall {:try_start_27 .. :try_end_27} :catchall_2

    move-object/from16 v10, v28

    :try_start_28
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v10

    move-object/from16 v40, v11

    move-object/from16 v72, v14

    move-object/from16 v28, v15

    move-object/from16 v3, v32

    move/from16 v14, v38

    move/from16 v2, v41

    move-object/from16 v9, v42

    move-object/from16 v38, v43

    move/from16 v10, v68

    move-object/from16 v15, p0

    goto/16 :goto_42

    :cond_21
    move-object/from16 v10, v28

    .line 2294
    new-instance v2, Lcom/voxel/launcher3/ShortcutInfo;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_29
    .catchall {:try_start_28 .. :try_end_28} :catchall_2

    move-object/from16 v9, p0

    :try_start_29
    iget-object v5, v9, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    iget-object v5, v5, Lcom/voxel/launcher3/LauncherModel;->mDeepShortcutManager:Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_28
    .catchall {:try_start_29 .. :try_end_29} :catchall_1

    move-object/from16 v8, v32

    :try_start_2a
    invoke-direct {v2, v1, v5, v8}, Lcom/voxel/launcher3/ShortcutInfo;-><init>(Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;Landroid/content/Context;)V

    .line 2295
    iget-object v1, v2, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_27
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1

    move-object/from16 v32, v8

    move-object/from16 v71, v10

    move-object/from16 v40, v11

    move-object/from16 v48, v14

    move-object/from16 v28, v15

    move-object v14, v1

    move-object v15, v9

    goto/16 :goto_2a

    :catch_27
    move-exception v0

    move-object v4, v0

    move-object v3, v8

    move-object v7, v9

    move-object v6, v10

    move-object/from16 v40, v11

    move-object v1, v14

    move-object/from16 v28, v15

    goto/16 :goto_2b

    :catch_28
    move-exception v0

    move-object v4, v0

    move-object v7, v9

    move-object v6, v10

    move-object/from16 v40, v11

    move-object v1, v14

    move-object/from16 v28, v15

    move-object/from16 v3, v32

    goto/16 :goto_2b

    :catch_29
    move-exception v0

    move-object v4, v0

    move-object v6, v10

    move-object/from16 v40, v11

    move-object v1, v14

    move-object/from16 v28, v15

    move-object/from16 v3, v32

    move/from16 v15, v36

    move/from16 v14, v38

    move-object/from16 v9, v42

    move-object/from16 v38, v43

    move/from16 v51, v67

    move/from16 v2, v68

    move-object/from16 v8, v69

    goto/16 :goto_2c

    :catch_2a
    move-exception v0

    move-object v4, v0

    move-object/from16 v40, v11

    move-object v1, v14

    move-object/from16 v6, v28

    move-object/from16 v3, v32

    move/from16 v14, v38

    move-object/from16 v9, v42

    move-object/from16 v38, v43

    goto/16 :goto_27

    :cond_22
    move-object/from16 v10, v28

    move-object/from16 v8, v32

    move-object/from16 v11, v50

    move-object/from16 v9, p0

    .line 2299
    :try_start_2b
    iget-object v5, v9, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1

    move-object/from16 v6, v42

    move-object v7, v8

    move-object/from16 v32, v8

    move/from16 v8, v21

    move-object/from16 v28, v15

    move-object v15, v9

    move/from16 v9, v23

    move-object/from16 v71, v10

    move/from16 v10, v27

    move-object/from16 v40, v11

    move/from16 v11, v29

    move-object/from16 v48, v14

    move v14, v12

    move/from16 v12, v31

    :try_start_2c
    invoke-static/range {v5 .. v12}, Lcom/voxel/launcher3/LauncherModel;->access$1200(Lcom/voxel/launcher3/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/voxel/launcher3/ShortcutInfo;

    move-result-object v5

    .line 2302
    iput-object v2, v5, Lcom/voxel/launcher3/ShortcutInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    .line 2303
    iput v14, v5, Lcom/voxel/launcher3/ShortcutInfo;->itemType:I

    .line 2305
    iget v2, v5, Lcom/voxel/launcher3/ShortcutInfo;->isDisabled:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v5, Lcom/voxel/launcher3/ShortcutInfo;->isDisabled:I

    move-object v14, v1

    move-object v2, v5

    .line 2307
    :goto_2a
    iget-object v1, v15, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    const/4 v12, 0x0

    invoke-static {v1, v13, v12}, Lcom/voxel/launcher3/LauncherModel;->access$1300(Lcom/voxel/launcher3/LauncherModel;Lcom/voxel/launcher3/shortcuts/ShortcutKey;Z)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_2e
    .catchall {:try_start_2c .. :try_end_2c} :catchall_3

    move-object v5, v2

    move-object v1, v14

    move-object/from16 v6, v43

    move-object/from16 v72, v48

    const/4 v2, 0x0

    goto/16 :goto_30

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v7, v9

    goto/16 :goto_2e

    :catch_2b
    move-exception v0

    move-object/from16 v40, v11

    move-object/from16 v28, v15

    move-object v4, v0

    move-object v3, v8

    move-object v7, v9

    move-object v6, v10

    move-object v1, v14

    :goto_2b
    move/from16 v15, v36

    move/from16 v14, v38

    move-object/from16 v9, v42

    move-object/from16 v38, v43

    goto/16 :goto_3a

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object/from16 v9, v42

    goto/16 :goto_28

    :catch_2c
    move-exception v0

    move-object/from16 v71, v28

    move-object/from16 v40, v50

    move-object/from16 v28, v15

    move-object v4, v0

    move-object v1, v14

    move-object/from16 v3, v32

    move/from16 v15, v36

    move/from16 v14, v38

    move-object/from16 v9, v42

    move-object/from16 v38, v43

    move/from16 v51, v67

    move/from16 v2, v68

    move-object/from16 v8, v69

    move-object/from16 v6, v71

    :goto_2c
    move-object/from16 v7, p0

    goto/16 :goto_62

    :cond_23
    move-object/from16 v48, v14

    move-object/from16 v71, v28

    move-object/from16 v40, v50

    const/4 v12, 0x0

    move-object/from16 v28, v15

    move-object/from16 v15, p0

    .line 2309
    :try_start_2d
    invoke-static {v1}, Lcom/voxel/launcher3/InstallShortcutReceiver;->isValidShortcutLaunchIntent(Landroid/content/Intent;)Z

    move-result v5
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_3c
    .catchall {:try_start_2d .. :try_end_2d} :catchall_4

    if-nez v5, :cond_24

    .line 2310
    :try_start_2e
    iget-object v5, v15, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    iget-object v13, v15, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->mLabelCache:Ljava/util/HashMap;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_3

    move-object/from16 v6, v43

    move-object v7, v1

    move-object v8, v2

    move-object/from16 v9, v32

    move-object/from16 v10, v42

    move/from16 v11, v29

    const/4 v2, 0x0

    move/from16 v12, v31

    move-object/from16 v72, v48

    move/from16 v14, v34

    :try_start_2f
    invoke-virtual/range {v5 .. v14}, Lcom/voxel/launcher3/LauncherModel;->getAppShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Lcom/voxel/launcher3/compat/UserHandleCompat;Landroid/content/Context;Landroid/database/Cursor;IILjava/util/HashMap;Z)Lcom/voxel/launcher3/ShortcutInfo;

    move-result-object v5
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_2d
    .catchall {:try_start_2f .. :try_end_2f} :catchall_3

    move-object/from16 v6, v43

    goto/16 :goto_30

    :catch_2d
    move-exception v0

    move-object v4, v0

    move-object v7, v15

    move-object/from16 v3, v32

    move/from16 v15, v36

    move/from16 v14, v38

    move-object/from16 v9, v42

    move-object/from16 v38, v43

    move/from16 v51, v67

    move/from16 v2, v68

    :goto_2d
    move-object/from16 v8, v69

    move-object/from16 v6, v71

    goto/16 :goto_41

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object v7, v15

    :goto_2e
    move-object/from16 v9, v42

    goto/16 :goto_6b

    :catch_2e
    move-exception v0

    move-object v4, v0

    move-object v7, v15

    move-object/from16 v3, v32

    move/from16 v15, v36

    move/from16 v14, v38

    move-object/from16 v9, v42

    move-object/from16 v38, v43

    move-object/from16 v1, v48

    move/from16 v51, v67

    move/from16 v2, v68

    move-object/from16 v8, v69

    :goto_2f
    move-object/from16 v6, v71

    goto/16 :goto_62

    :cond_24
    move-object/from16 v72, v48

    const/4 v2, 0x0

    .line 2313
    :try_start_30
    iget-object v5, v15, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    move-object/from16 v6, v42

    move-object/from16 v7, v32

    move/from16 v8, v21

    move-object v13, v9

    move/from16 v9, v23

    move/from16 v10, v27

    move/from16 v11, v29

    move/from16 v12, v31

    invoke-static/range {v5 .. v12}, Lcom/voxel/launcher3/LauncherModel;->access$1200(Lcom/voxel/launcher3/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/voxel/launcher3/ShortcutInfo;

    move-result-object v5
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_3b
    .catchall {:try_start_30 .. :try_end_30} :catchall_4

    move-object/from16 v6, v43

    .line 2318
    :try_start_31
    invoke-static {v6, v13}, Lcom/voxel/launcher3/util/PackageManagerHelper;->isAppSuspended(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_25

    or-int/lit8 v44, v44, 0x4

    .line 2325
    :cond_25
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_3a
    .catchall {:try_start_31 .. :try_end_31} :catchall_4

    if-eqz v7, :cond_26

    .line 2326
    :try_start_32
    invoke-virtual {v1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v7

    if-eqz v7, :cond_26

    .line 2327
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.MAIN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 2328
    invoke-virtual {v1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v7

    const-string v8, "android.intent.category.LAUNCHER"

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    const/high16 v7, 0x10200000

    .line 2329
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_2f
    .catchall {:try_start_32 .. :try_end_32} :catchall_3

    goto :goto_30

    :catch_2f
    move-exception v0

    move-object v4, v0

    move-object v7, v15

    move-object/from16 v3, v32

    move/from16 v15, v36

    move/from16 v14, v38

    move-object/from16 v9, v42

    move/from16 v51, v67

    move/from16 v2, v68

    move-object/from16 v8, v69

    move-object/from16 v1, v72

    move-object/from16 v38, v6

    goto :goto_2f

    :cond_26
    :goto_30
    if-eqz v5, :cond_2b

    move-wide/from16 v7, v46

    .line 2337
    :try_start_33
    iput-wide v7, v5, Lcom/voxel/launcher3/ShortcutInfo;->id:J

    .line 2338
    iput-object v1, v5, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_3a
    .catchall {:try_start_33 .. :try_end_33} :catchall_4

    move-object/from16 v9, v42

    move/from16 v10, v68

    .line 2339
    :try_start_34
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    int-to-long v12, v11

    .line 2340
    iput-wide v12, v5, Lcom/voxel/launcher3/ShortcutInfo;->container:J
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_39
    .catchall {:try_start_34 .. :try_end_34} :catchall_6

    move/from16 v14, v38

    .line 2341
    :try_start_35
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-wide/from16 v42, v12

    int-to-long v12, v2

    iput-wide v12, v5, Lcom/voxel/launcher3/ShortcutInfo;->screenId:J
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_38
    .catchall {:try_start_35 .. :try_end_35} :catchall_6

    move/from16 v2, v41

    .line 2342
    :try_start_36
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v5, Lcom/voxel/launcher3/ShortcutInfo;->cellX:I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_37
    .catchall {:try_start_36 .. :try_end_36} :catchall_6

    move/from16 v12, v66

    .line 2343
    :try_start_37
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    iput v13, v5, Lcom/voxel/launcher3/ShortcutInfo;->cellY:I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_36
    .catchall {:try_start_37 .. :try_end_37} :catchall_6

    move-object/from16 v38, v6

    move/from16 v13, v37

    .line 2344
    :try_start_38
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v5, Lcom/voxel/launcher3/ShortcutInfo;->rank:I

    const/4 v6, 0x1

    .line 2345
    iput v6, v5, Lcom/voxel/launcher3/ShortcutInfo;->spanX:I

    .line 2346
    iput v6, v5, Lcom/voxel/launcher3/ShortcutInfo;->spanY:I

    .line 2347
    iget-object v6, v5, Lcom/voxel/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_35
    .catchall {:try_start_38 .. :try_end_38} :catchall_6

    move/from16 v37, v13

    :try_start_39
    const-string v13, "profile"

    invoke-virtual {v6, v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2348
    iget v3, v5, Lcom/voxel/launcher3/ShortcutInfo;->isDisabled:I

    or-int v3, v3, v44

    iput v3, v5, Lcom/voxel/launcher3/ShortcutInfo;->isDisabled:I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_34
    .catchall {:try_start_39 .. :try_end_39} :catchall_6

    if-eqz v16, :cond_27

    move-object/from16 v3, v32

    .line 2349
    :try_start_3a
    invoke-static {v3, v1}, Lcom/voxel/launcher3/Utilities;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 2350
    iget v1, v5, Lcom/voxel/launcher3/ShortcutInfo;->isDisabled:I

    const/4 v4, 0x1

    or-int/2addr v1, v4

    iput v1, v5, Lcom/voxel/launcher3/ShortcutInfo;->isDisabled:I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_30
    .catchall {:try_start_3a .. :try_end_3a} :catchall_6

    move-object/from16 v1, v70

    const/4 v4, 0x0

    goto :goto_31

    :catch_30
    move-exception v0

    move-object v4, v0

    move/from16 v41, v2

    move v2, v10

    move/from16 v66, v12

    move-object v7, v15

    move/from16 v15, v36

    move/from16 v51, v67

    goto/16 :goto_2d

    :cond_27
    move-object/from16 v3, v32

    :cond_28
    move-object/from16 v1, v70

    const/4 v4, 0x0

    .line 2354
    :goto_31
    :try_start_3b
    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_33
    .catchall {:try_start_3b .. :try_end_3b} :catchall_6

    move-object/from16 v4, v64

    .line 2355
    :try_start_3c
    invoke-direct {v15, v4, v5, v1}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->checkItemPlacement(Ljava/util/HashMap;Lcom/voxel/launcher3/ItemInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v6

    if-nez v6, :cond_2a

    .line 2356
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 2357
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_32
    .catchall {:try_start_3c .. :try_end_3c} :catchall_6

    move-object/from16 v6, v71

    :try_start_3d
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v8, v29

    goto :goto_34

    :cond_29
    move-object/from16 v6, v71

    move/from16 v8, v29

    goto :goto_34

    :cond_2a
    move-object/from16 v6, v71

    packed-switch v11, :pswitch_data_2

    .line 2369
    sget-object v1, Lcom/voxel/launcher3/LauncherModel;->sBgFolders:Lcom/voxel/launcher3/util/LongArrayMap;

    move-wide/from16 v7, v42

    goto :goto_32

    .line 2365
    :pswitch_3
    sget-object v1, Lcom/voxel/launcher3/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 2370
    :goto_32
    invoke-static {v1, v7, v8}, Lcom/voxel/launcher3/LauncherModel;->access$1400(Lcom/voxel/launcher3/util/LongArrayMap;J)Lcom/voxel/launcher3/FolderInfo;

    move-result-object v1

    .line 2371
    invoke-virtual {v1, v5}, Lcom/voxel/launcher3/FolderInfo;->add(Lcom/voxel/launcher3/ShortcutInfo;)V

    .line 2374
    :goto_33
    sget-object v1, Lcom/voxel/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/voxel/launcher3/util/LongArrayMap;

    iget-wide v7, v5, Lcom/voxel/launcher3/ShortcutInfo;->id:J

    invoke-virtual {v1, v7, v8, v5}, Lcom/voxel/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 2378
    iget-object v1, v15, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    sget-object v7, Lcom/voxel/launcher3/LauncherModel;->sBgDbIconCache:Ljava/util/HashMap;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_31
    .catchall {:try_start_3d .. :try_end_3d} :catchall_6

    move/from16 v8, v29

    :try_start_3e
    invoke-virtual {v1, v7, v5, v9, v8}, Lcom/voxel/launcher3/LauncherModel;->queueIconToBeChecked(Ljava/util/HashMap;Lcom/voxel/launcher3/ShortcutInfo;Landroid/database/Cursor;I)Z

    :goto_34
    move/from16 v41, v2

    move-object/from16 v64, v4

    move/from16 v29, v8

    move v5, v10

    move/from16 v66, v12

    move-object v7, v15

    move/from16 v15, v36

    move-object/from16 v32, v45

    move/from16 v51, v67

    move-object/from16 v8, v69

    move-object/from16 v12, v72

    goto/16 :goto_50

    :catch_31
    move-exception v0

    goto :goto_35

    :catch_32
    move-exception v0

    move-object/from16 v6, v71

    :goto_35
    move/from16 v41, v2

    move-object/from16 v64, v4

    goto/16 :goto_5d

    :catch_33
    move-exception v0

    goto :goto_37

    :catch_34
    move-exception v0

    goto :goto_36

    :catch_35
    move-exception v0

    move/from16 v37, v13

    goto :goto_36

    :catch_36
    move-exception v0

    move-object/from16 v38, v6

    :goto_36
    move-object/from16 v3, v32

    :goto_37
    move-object/from16 v6, v71

    move-object v4, v0

    move/from16 v41, v2

    move v2, v10

    move/from16 v66, v12

    goto/16 :goto_46

    :catch_37
    move-exception v0

    move-object/from16 v38, v6

    move-object/from16 v3, v32

    move-object/from16 v6, v71

    goto/16 :goto_44

    :catch_38
    move-exception v0

    move-object/from16 v38, v6

    move-object/from16 v3, v32

    goto :goto_38

    :catch_39
    move-exception v0

    move-object/from16 v3, v32

    move/from16 v14, v38

    move-object/from16 v38, v6

    :goto_38
    move-object/from16 v6, v71

    move-object v4, v0

    goto/16 :goto_45

    :cond_2b
    move/from16 v8, v29

    move-object/from16 v3, v32

    move/from16 v14, v38

    move/from16 v2, v41

    move-object/from16 v9, v42

    move-object/from16 v4, v64

    move/from16 v12, v66

    move/from16 v10, v68

    move-object/from16 v38, v6

    move-object/from16 v6, v71

    .line 2380
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v5, "Unexpected null ShortcutInfo"

    invoke-direct {v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_3a
    move-exception v0

    move-object/from16 v3, v32

    move/from16 v14, v38

    move-object/from16 v9, v42

    move-object/from16 v38, v6

    goto :goto_39

    :catch_3b
    move-exception v0

    move-object/from16 v3, v32

    move/from16 v14, v38

    move-object/from16 v9, v42

    move-object/from16 v38, v43

    :goto_39
    move-object/from16 v6, v71

    move-object v4, v0

    move-object v7, v15

    move/from16 v15, v36

    move/from16 v51, v67

    move/from16 v2, v68

    goto/16 :goto_47

    :catchall_4
    move-exception v0

    move-object/from16 v9, v42

    goto/16 :goto_43

    :catch_3c
    move-exception v0

    move-object/from16 v3, v32

    move/from16 v14, v38

    move-object/from16 v9, v42

    move-object/from16 v38, v43

    move-object/from16 v6, v71

    move-object v4, v0

    move-object v7, v15

    move/from16 v15, v36

    move-object/from16 v1, v48

    :goto_3a
    move/from16 v51, v67

    move/from16 v2, v68

    move-object/from16 v8, v69

    goto/16 :goto_62

    :catch_3d
    move-exception v0

    move-object v9, v10

    move-object/from16 v72, v24

    move/from16 v14, v26

    move/from16 v62, v31

    move-object/from16 v3, v32

    move-object/from16 v65, v33

    move-object/from16 v24, v39

    move/from16 v63, v40

    move/from16 v33, v46

    move-object/from16 v28, v47

    move-object/from16 v39, v48

    move/from16 v22, v49

    move-object/from16 v40, v50

    move-object/from16 v25, v55

    goto/16 :goto_3d

    :catch_3e
    move-object/from16 v58, v5

    move-object v9, v10

    move/from16 v67, v11

    move-object/from16 v72, v24

    move/from16 v14, v26

    move/from16 v8, v29

    move/from16 v62, v31

    move-object/from16 v3, v32

    move-object/from16 v65, v33

    move-object/from16 v69, v34

    move-object/from16 v24, v39

    move/from16 v63, v40

    move/from16 v2, v41

    move-object/from16 v4, v42

    move/from16 v12, v43

    move/from16 v33, v46

    move-object/from16 v28, v47

    move-object/from16 v39, v48

    move/from16 v22, v49

    move-object/from16 v40, v50

    move/from16 v10, v52

    move-object/from16 v25, v55

    :goto_3b
    move/from16 v31, v6

    move-object v6, v7

    move-object/from16 v26, v15

    move-object v15, v1

    :goto_3c
    const-string v1, "Launcher.Model"

    .line 2261
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid uri: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v58

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    invoke-static {v1, v5, v7}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_3f
    .catchall {:try_start_3e .. :try_end_3e} :catchall_6

    move-object/from16 v64, v4

    move/from16 v29, v8

    move/from16 v66, v12

    goto/16 :goto_42

    :catch_3f
    move-exception v0

    move/from16 v41, v2

    move-object/from16 v64, v4

    goto/16 :goto_5c

    :catch_40
    move-exception v0

    move-object/from16 v25, v8

    move-object v9, v10

    move-object/from16 v72, v24

    move/from16 v14, v26

    move/from16 v62, v31

    move-object/from16 v3, v32

    move-object/from16 v65, v33

    move-object/from16 v24, v39

    move/from16 v63, v40

    move/from16 v33, v46

    move-object/from16 v28, v47

    move-object/from16 v39, v48

    move/from16 v22, v49

    move-object/from16 v40, v50

    :goto_3d
    move/from16 v31, v6

    move-object v6, v7

    move-object/from16 v26, v15

    move-object v4, v0

    move-object v7, v1

    move/from16 v51, v11

    goto :goto_3e

    :catch_41
    move-exception v0

    move-object/from16 v25, v8

    move-object v9, v10

    move-object/from16 v72, v24

    move/from16 v14, v26

    move/from16 v62, v31

    move-object/from16 v3, v32

    move-object/from16 v65, v33

    move-object/from16 v24, v39

    move/from16 v63, v40

    move-object/from16 v28, v47

    move-object/from16 v39, v48

    move/from16 v22, v49

    move-object/from16 v40, v50

    move/from16 v31, v6

    move-object v6, v7

    move/from16 v33, v11

    move-object/from16 v26, v15

    move-object v4, v0

    move-object v7, v1

    goto :goto_3e

    :catch_42
    move-exception v0

    move-object/from16 v25, v8

    move-object v9, v10

    move-object/from16 v72, v24

    move/from16 v14, v26

    move/from16 v62, v31

    move-object/from16 v3, v32

    move-object/from16 v65, v33

    move-object/from16 v24, v39

    move/from16 v63, v40

    move-object/from16 v28, v47

    move-object/from16 v39, v48

    move/from16 v22, v49

    move-object/from16 v40, v50

    move/from16 v31, v6

    move-object v6, v7

    move/from16 v33, v11

    move-object/from16 v26, v15

    move-object v4, v0

    move-object v7, v1

    move/from16 v54, v2

    :goto_3e
    move-object/from16 v8, v34

    move/from16 v15, v36

    move-object/from16 v64, v42

    move/from16 v66, v43

    move/from16 v2, v52

    goto/16 :goto_41

    :catch_43
    move-exception v0

    move-object v9, v10

    move-object/from16 v72, v24

    move/from16 v14, v26

    move/from16 v62, v31

    move-object/from16 v3, v32

    move-object/from16 v65, v33

    move-object/from16 v24, v39

    move/from16 v63, v40

    move-object/from16 v25, v46

    move-object/from16 v28, v47

    move-object/from16 v39, v48

    move/from16 v22, v49

    move-object/from16 v40, v50

    move/from16 v31, v6

    move-object v6, v7

    move/from16 v33, v11

    move-object/from16 v26, v15

    move-object v4, v0

    move-object v7, v1

    move/from16 v54, v2

    goto/16 :goto_40

    :catch_44
    move-exception v0

    move/from16 v63, v8

    move-object v9, v10

    move-object/from16 v72, v24

    move/from16 v14, v26

    move/from16 v62, v31

    move-object/from16 v3, v32

    move-object/from16 v65, v33

    move-object/from16 v24, v39

    move/from16 v54, v40

    move-object/from16 v25, v46

    move-object/from16 v28, v47

    move-object/from16 v39, v48

    move/from16 v22, v49

    move-object/from16 v40, v50

    move/from16 v31, v6

    move-object v6, v7

    move/from16 v33, v11

    move-object/from16 v26, v15

    goto :goto_3f

    :catchall_5
    move-exception v0

    move-object v9, v10

    move-object v7, v1

    goto/16 :goto_6a

    :catch_45
    move-exception v0

    move v14, v5

    move/from16 v63, v8

    move-object v9, v10

    move-object/from16 v26, v15

    move-object/from16 v72, v24

    move/from16 v62, v31

    move-object/from16 v3, v32

    move-object/from16 v65, v33

    move-object/from16 v24, v39

    move/from16 v54, v40

    move/from16 v33, v41

    move-object/from16 v25, v46

    move-object/from16 v28, v47

    move-object/from16 v39, v48

    move/from16 v22, v49

    move-object/from16 v40, v50

    move/from16 v31, v6

    move-object v6, v7

    :goto_3f
    move-object v4, v0

    move-object v7, v1

    move/from16 v41, v2

    :goto_40
    move v2, v13

    move-object/from16 v8, v34

    move/from16 v15, v36

    move-object/from16 v64, v42

    move/from16 v66, v43

    :goto_41
    move-object/from16 v1, v72

    goto/16 :goto_62

    :cond_2c
    move/from16 v67, v3

    move-object/from16 v28, v7

    move/from16 v63, v8

    move-object v9, v10

    move/from16 v22, v13

    move-object/from16 v72, v24

    move/from16 v8, v29

    move/from16 v62, v31

    move-object/from16 v3, v32

    move-object/from16 v65, v33

    move-object/from16 v69, v34

    move-object/from16 v24, v39

    move/from16 v54, v40

    move/from16 v33, v41

    move/from16 v12, v43

    move/from16 v10, v45

    move-object/from16 v39, v48

    move-object/from16 v40, v4

    move/from16 v31, v6

    move-object/from16 v45, v15

    move-object/from16 v6, v26

    move-object/from16 v4, v42

    move-object v15, v1

    move-object v1, v14

    move-object/from16 v26, v25

    move-object/from16 v25, v46

    move v14, v5

    move/from16 v5, v30

    .line 2426
    :try_start_3f
    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v7
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_5f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_9

    move-object/from16 v64, v4

    move/from16 v11, v54

    .line 2427
    :try_start_40
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_5e
    .catchall {:try_start_40 .. :try_end_40} :catchall_9

    move/from16 v29, v8

    move/from16 v13, v62

    .line 2428
    :try_start_41
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_5d
    .catchall {:try_start_41 .. :try_end_41} :catchall_9

    move/from16 v54, v11

    move/from16 v66, v12

    move/from16 v62, v13

    move/from16 v11, v63

    .line 2429
    :try_start_42
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_5c
    .catchall {:try_start_42 .. :try_end_42} :catchall_9

    move/from16 v63, v11

    .line 2430
    :try_start_43
    iget-object v11, v15, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v11}, Lcom/voxel/launcher3/LauncherModel;->access$1000(Lcom/voxel/launcher3/LauncherModel;)Lcom/voxel/launcher3/compat/UserManagerCompat;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Lcom/voxel/launcher3/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v4
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_5b
    .catchall {:try_start_43 .. :try_end_43} :catchall_9

    if-nez v4, :cond_2d

    .line 2432
    :try_start_44
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_46
    .catchall {:try_start_44 .. :try_end_44} :catchall_6

    :goto_42
    move-object/from16 v32, v3

    move v5, v14

    move-object v1, v15

    move/from16 v13, v22

    move-object/from16 v46, v25

    move-object/from16 v25, v26

    move-object/from16 v7, v28

    move/from16 v41, v33

    move-object/from16 v48, v39

    move-object/from16 v4, v40

    move-object/from16 v15, v45

    move/from16 v40, v54

    move/from16 v8, v63

    move-object/from16 v42, v64

    move-object/from16 v33, v65

    move/from16 v43, v66

    move/from16 v3, v67

    move-object/from16 v34, v69

    move-object/from16 v26, v6

    move/from16 v45, v10

    move-object/from16 v39, v24

    move/from16 v6, v31

    move/from16 v31, v62

    move-object/from16 v24, v72

    move-object v10, v9

    goto/16 :goto_5

    :catchall_6
    move-exception v0

    :goto_43
    move-object v1, v0

    move-object v7, v15

    goto/16 :goto_6b

    :catch_46
    move-exception v0

    :goto_44
    move-object v4, v0

    move/from16 v41, v2

    :goto_45
    move v2, v10

    :goto_46
    move-object v7, v15

    move/from16 v15, v36

    move/from16 v51, v67

    :goto_47
    move-object/from16 v8, v69

    goto/16 :goto_41

    .line 2437
    :cond_2d
    :try_start_45
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_5b
    .catchall {:try_start_45 .. :try_end_45} :catchall_9

    move-object/from16 v70, v1

    move/from16 v11, v67

    .line 2439
    :try_start_46
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_5a
    .catchall {:try_start_46 .. :try_end_46} :catchall_9

    and-int/lit8 v32, v1, 0x1

    if-nez v32, :cond_2e

    const/16 v32, 0x1

    goto :goto_48

    :cond_2e
    const/16 v32, 0x0

    :goto_48
    and-int/lit8 v34, v1, 0x2

    if-nez v34, :cond_2f

    const/16 v34, 0x1

    goto :goto_49

    :cond_2f
    const/16 v34, 0x0

    :goto_49
    if-nez v45, :cond_30

    move/from16 v51, v11

    .line 2447
    :try_start_47
    iget-object v11, v15, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 2448
    invoke-static {v11}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v11

    invoke-virtual {v11}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->getAllProvidersMap()Ljava/util/HashMap;

    move-result-object v11
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_47} :catch_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_6

    goto :goto_4a

    :catch_47
    move-exception v0

    move-object v4, v0

    move/from16 v41, v2

    move v2, v10

    move-object v7, v15

    move/from16 v15, v36

    goto :goto_47

    :cond_30
    move/from16 v51, v11

    move-object/from16 v11, v45

    .line 2450
    :goto_4a
    :try_start_48
    new-instance v15, Lcom/voxel/launcher3/util/ComponentKey;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_59
    .catchall {:try_start_48 .. :try_end_48} :catchall_8

    move/from16 v68, v10

    .line 2452
    :try_start_49
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    invoke-direct {v15, v10, v4}, Lcom/voxel/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    .line 2450
    invoke-virtual {v11, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/appwidget/AppWidgetProviderInfo;

    .line 2455
    invoke-static {v4}, Lcom/voxel/launcher3/LauncherModel;->isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v10
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_58
    .catchall {:try_start_49 .. :try_end_49} :catchall_8

    if-nez v16, :cond_31

    if-eqz v34, :cond_31

    if-nez v10, :cond_31

    .line 2457
    :try_start_4a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting widget that isn\'t installed anymore: id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " appWidgetId="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Launcher.Model"

    .line 2459
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "Launcher.Model"

    const/4 v5, 0x0

    .line 2460
    invoke-static {v4, v1, v5}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2461
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v41, v2

    move-object/from16 v32, v11

    move/from16 v15, v36

    move/from16 v5, v68

    move-object/from16 v8, v69

    move-object/from16 v12, v72

    move-object/from16 v7, p0

    goto/16 :goto_50

    :cond_31
    if-eqz v10, :cond_34

    .line 2464
    new-instance v5, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    iget-object v10, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v5, v7, v10}, Lcom/voxel/launcher3/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 2467
    invoke-static {v3, v4}, Lcom/voxel/launcher3/Launcher;->getMinSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v4

    const/4 v7, 0x0

    .line 2468
    aget v10, v4, v7

    iput v10, v5, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->minSpanX:I

    const/4 v7, 0x1

    .line 2469
    aget v4, v4, v7

    iput v4, v5, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->minSpanY:I

    if-nez v34, :cond_33

    if-eqz v32, :cond_32

    const/4 v4, 0x0

    goto :goto_4b

    :cond_32
    and-int/lit8 v4, v1, -0x3

    goto :goto_4b

    :cond_33
    move v4, v1

    .line 2484
    :goto_4b
    iput v4, v5, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->restoreStatus:I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_48
    .catchall {:try_start_4a .. :try_end_4a} :catchall_7

    move-object v4, v5

    move-object/from16 v10, v65

    goto :goto_4d

    :catchall_7
    move-exception v0

    move-object v1, v0

    goto/16 :goto_28

    :catch_48
    move-exception v0

    move-object v4, v0

    move/from16 v41, v2

    move-object/from16 v45, v11

    move/from16 v15, v36

    move/from16 v2, v68

    :goto_4c
    move-object/from16 v8, v69

    move-object/from16 v1, v72

    goto/16 :goto_2c

    :cond_34
    :try_start_4b
    const-string v4, "Launcher.Model"

    .line 2486
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Widget restore pending id="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " appWidgetId="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " status ="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2489
    new-instance v4, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    invoke-direct {v4, v7, v5}, Lcom/voxel/launcher3/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 2491
    iput v1, v4, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_35

    move-object/from16 v10, v65

    goto :goto_4d

    .line 2495
    :cond_35
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_58
    .catchall {:try_start_4b .. :try_end_4b} :catchall_8

    move-object/from16 v10, v65

    :try_start_4c
    invoke-virtual {v10, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_57
    .catchall {:try_start_4c .. :try_end_4c} :catchall_8

    if-eqz v7, :cond_3b

    .line 2497
    :try_start_4d
    iget v5, v4, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 2507
    :goto_4d
    iput-wide v12, v4, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->id:J

    .line 2508
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v5
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4d} :catch_55
    .catchall {:try_start_4d .. :try_end_4d} :catchall_8

    move-object/from16 v65, v10

    move-object v7, v11

    int-to-long v10, v5

    :try_start_4e
    iput-wide v10, v4, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->screenId:J

    .line 2509
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->cellX:I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_54
    .catchall {:try_start_4e .. :try_end_4e} :catchall_8

    move/from16 v10, v66

    .line 2510
    :try_start_4f
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->cellY:I
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_53
    .catchall {:try_start_4f .. :try_end_4f} :catchall_8

    move/from16 v11, v35

    .line 2511
    :try_start_50
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->spanX:I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_52
    .catchall {:try_start_50 .. :try_end_50} :catchall_8

    move/from16 v15, v36

    .line 2512
    :try_start_51
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->spanY:I
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_8

    move/from16 v41, v2

    move/from16 v5, v68

    .line 2514
    :try_start_52
    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_50
    .catchall {:try_start_52 .. :try_end_52} :catchall_8

    move-object/from16 v32, v7

    const/16 v7, -0x64

    if-eq v2, v7, :cond_36

    const/16 v7, -0x65

    if-eq v2, v7, :cond_36

    :try_start_53
    const-string v1, "Launcher.Model"

    const-string v2, "Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    .line 2517
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_49
    .catchall {:try_start_53 .. :try_end_53} :catchall_7

    move v2, v5

    move/from16 v66, v10

    move/from16 v35, v11

    move-object/from16 v8, v69

    move-object/from16 v1, v72

    move-object/from16 v7, p0

    goto/16 :goto_57

    :catch_49
    move-exception v0

    move-object v4, v0

    move v2, v5

    move/from16 v66, v10

    move/from16 v35, v11

    move-object/from16 v45, v32

    goto/16 :goto_4c

    .line 2522
    :cond_36
    :try_start_54
    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_4f
    .catchall {:try_start_54 .. :try_end_54} :catchall_8

    move/from16 v66, v10

    move/from16 v35, v11

    int-to-long v10, v2

    :try_start_55
    iput-wide v10, v4, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->container:J

    move-object/from16 v2, v70

    const/4 v7, 0x0

    .line 2524
    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_4e
    .catchall {:try_start_55 .. :try_end_55} :catchall_8

    move-object/from16 v10, v64

    move-object/from16 v7, p0

    .line 2525
    :try_start_56
    invoke-direct {v7, v10, v4, v2}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->checkItemPlacement(Ljava/util/HashMap;Lcom/voxel/launcher3/ItemInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v11
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_4d
    .catchall {:try_start_56 .. :try_end_56} :catchall_a

    if-nez v11, :cond_38

    .line 2527
    :try_start_57
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 2528
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_57} :catch_4a
    .catchall {:try_start_57 .. :try_end_57} :catchall_a

    move-object/from16 v64, v10

    move-object/from16 v8, v69

    move-object/from16 v12, v72

    goto :goto_50

    :cond_37
    move-object/from16 v64, v10

    move-object/from16 v8, v69

    move-object/from16 v12, v72

    goto :goto_50

    :catch_4a
    move-exception v0

    move-object v4, v0

    move v2, v5

    move-object/from16 v64, v10

    move-object/from16 v45, v32

    goto/16 :goto_47

    .line 2533
    :cond_38
    :try_start_58
    iget-object v2, v4, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    .line 2534
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_58} :catch_4d
    .catchall {:try_start_58 .. :try_end_58} :catchall_a

    if-eqz v8, :cond_3a

    :try_start_59
    iget v8, v4, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->restoreStatus:I
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_59} :catch_4a
    .catchall {:try_start_59 .. :try_end_59} :catchall_a

    if-eq v8, v1, :cond_39

    goto :goto_4e

    :cond_39
    move-object/from16 v8, v69

    move-object/from16 v12, v72

    goto :goto_4f

    .line 2536
    :cond_3a
    :goto_4e
    :try_start_5a
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "appWidgetProvider"

    .line 2537
    invoke-virtual {v1, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "restored"

    .line 2539
    iget v8, v4, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 2540
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 2539
    invoke-virtual {v1, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "_id= ?"

    const/4 v8, 0x1

    .line 2542
    new-array v11, v8, [Ljava/lang/String;

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v11, v12
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5a} :catch_4d
    .catchall {:try_start_5a .. :try_end_5a} :catchall_a

    move-object/from16 v8, v69

    move-object/from16 v12, v72

    .line 2543
    :try_start_5b
    invoke-virtual {v8, v12, v1, v2, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2545
    :goto_4f
    sget-object v1, Lcom/voxel/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/voxel/launcher3/util/LongArrayMap;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5b} :catch_4c
    .catchall {:try_start_5b .. :try_end_5b} :catchall_a

    move-object/from16 v64, v10

    :try_start_5c
    iget-wide v10, v4, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->id:J

    invoke-virtual {v1, v10, v11, v4}, Lcom/voxel/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 2546
    sget-object v1, Lcom/voxel/launcher3/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5c} :catch_4b
    .catchall {:try_start_5c .. :try_end_5c} :catchall_a

    :goto_50
    move v2, v5

    move-object v1, v12

    goto/16 :goto_63

    :catch_4b
    move-exception v0

    goto :goto_51

    :catch_4c
    move-exception v0

    move-object/from16 v64, v10

    :goto_51
    move-object v4, v0

    move v2, v5

    move-object v1, v12

    goto/16 :goto_5b

    :catch_4d
    move-exception v0

    move-object/from16 v64, v10

    move-object/from16 v8, v69

    goto :goto_54

    :catch_4e
    move-exception v0

    goto :goto_53

    :catch_4f
    move-exception v0

    goto :goto_52

    :catch_50
    move-exception v0

    move-object/from16 v32, v7

    :goto_52
    move/from16 v66, v10

    move/from16 v35, v11

    :goto_53
    move-object/from16 v8, v69

    move-object/from16 v7, p0

    :goto_54
    move-object v4, v0

    move v2, v5

    move-object/from16 v45, v32

    goto/16 :goto_41

    :catch_51
    move-exception v0

    move/from16 v41, v2

    move-object/from16 v32, v7

    move/from16 v66, v10

    move/from16 v35, v11

    goto :goto_56

    :catch_52
    move-exception v0

    move/from16 v41, v2

    move-object/from16 v32, v7

    move/from16 v66, v10

    move/from16 v35, v11

    goto :goto_55

    :catch_53
    move-exception v0

    move/from16 v41, v2

    move-object/from16 v32, v7

    move/from16 v66, v10

    goto :goto_55

    :catch_54
    move-exception v0

    move/from16 v41, v2

    move-object/from16 v32, v7

    goto :goto_55

    :catch_55
    move-exception v0

    move/from16 v41, v2

    move-object/from16 v65, v10

    move-object/from16 v32, v11

    :goto_55
    move/from16 v15, v36

    :goto_56
    move-object/from16 v8, v69

    move-object/from16 v7, p0

    move-object v4, v0

    move-object/from16 v45, v32

    move/from16 v2, v68

    goto/16 :goto_41

    :cond_3b
    move/from16 v41, v2

    move-object/from16 v65, v10

    move-object/from16 v32, v11

    move/from16 v15, v36

    move/from16 v2, v68

    move-object/from16 v8, v69

    move-object/from16 v1, v72

    move-object/from16 v7, p0

    :try_start_5d
    const-string v4, "Launcher.Model"

    .line 2500
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unrestored widget removed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x1

    invoke-static {v4, v5, v10}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2502
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_5d} :catch_56
    .catchall {:try_start_5d .. :try_end_5d} :catchall_a

    :goto_57
    move/from16 v45, v2

    move-object/from16 v34, v8

    move-object v10, v9

    move v5, v14

    move/from16 v36, v15

    move/from16 v13, v22

    move-object/from16 v46, v25

    move-object/from16 v25, v26

    move-object/from16 v15, v32

    move-object/from16 v48, v39

    move-object/from16 v4, v40

    move/from16 v2, v41

    move/from16 v40, v54

    move/from16 v8, v63

    move-object/from16 v42, v64

    move/from16 v43, v66

    move-object/from16 v32, v3

    move-object/from16 v26, v6

    move-object/from16 v39, v24

    move/from16 v6, v31

    move/from16 v41, v33

    move/from16 v3, v51

    move/from16 v31, v62

    move-object/from16 v33, v65

    move-object/from16 v24, v1

    move-object v1, v7

    move-object/from16 v7, v28

    goto/16 :goto_5

    :catch_56
    move-exception v0

    goto :goto_5a

    :catch_57
    move-exception v0

    move/from16 v41, v2

    move-object/from16 v65, v10

    goto :goto_58

    :catch_58
    move-exception v0

    move/from16 v41, v2

    :goto_58
    move-object/from16 v32, v11

    move/from16 v15, v36

    move/from16 v2, v68

    goto :goto_59

    :catchall_8
    move-exception v0

    move-object/from16 v7, p0

    goto/16 :goto_6a

    :catch_59
    move-exception v0

    move/from16 v41, v2

    move v2, v10

    move-object/from16 v32, v11

    move/from16 v15, v36

    :goto_59
    move-object/from16 v8, v69

    move-object/from16 v1, v72

    move-object/from16 v7, p0

    :goto_5a
    move-object v4, v0

    :goto_5b
    move-object/from16 v45, v32

    goto/16 :goto_62

    :catch_5a
    move-exception v0

    move/from16 v41, v2

    move v2, v10

    move/from16 v51, v11

    move-object v7, v15

    move/from16 v15, v36

    goto :goto_60

    :catch_5b
    move-exception v0

    move/from16 v41, v2

    move v2, v10

    goto :goto_5f

    :catch_5c
    move-exception v0

    move/from16 v41, v2

    move v2, v10

    move/from16 v63, v11

    goto :goto_5f

    :catch_5d
    move-exception v0

    move/from16 v41, v2

    move v2, v10

    move/from16 v54, v11

    move/from16 v66, v12

    move/from16 v62, v13

    goto :goto_5f

    :catch_5e
    move-exception v0

    move/from16 v41, v2

    move/from16 v29, v8

    move v2, v10

    move/from16 v54, v11

    goto :goto_5e

    :catchall_9
    move-exception v0

    move-object v7, v15

    goto/16 :goto_6a

    :catch_5f
    move-exception v0

    move/from16 v41, v2

    move-object/from16 v64, v4

    move/from16 v30, v5

    :goto_5c
    move/from16 v29, v8

    :goto_5d
    move v2, v10

    :goto_5e
    move/from16 v66, v12

    :goto_5f
    move-object v7, v15

    move/from16 v15, v36

    move/from16 v51, v67

    :goto_60
    move-object/from16 v8, v69

    move-object/from16 v1, v72

    goto :goto_61

    :catch_60
    move-exception v0

    move/from16 v51, v3

    move v14, v5

    move-object/from16 v28, v7

    move/from16 v63, v8

    move-object v9, v10

    move/from16 v22, v13

    move/from16 v62, v31

    move-object/from16 v3, v32

    move-object/from16 v65, v33

    move-object/from16 v8, v34

    move/from16 v54, v40

    move/from16 v33, v41

    move-object/from16 v64, v42

    move/from16 v66, v43

    move-object v7, v1

    move/from16 v41, v2

    move-object/from16 v40, v4

    move/from16 v31, v6

    move-object/from16 v1, v24

    move-object/from16 v6, v26

    move-object/from16 v24, v39

    move/from16 v2, v45

    move-object/from16 v39, v48

    move-object/from16 v45, v15

    move-object/from16 v26, v25

    move/from16 v15, v36

    move-object/from16 v25, v46

    :goto_61
    move-object v4, v0

    :goto_62
    :try_start_5e
    const-string v5, "Launcher.Model"

    const-string v10, "Desktop items loading interrupted"

    const/4 v11, 0x1

    .line 2551
    invoke-static {v5, v10, v4, v11}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_a

    move-object/from16 v32, v45

    :goto_63
    move/from16 v45, v2

    move-object/from16 v34, v8

    move-object v10, v9

    move v5, v14

    move/from16 v36, v15

    move/from16 v13, v22

    move-object/from16 v46, v25

    move-object/from16 v25, v26

    move-object/from16 v15, v32

    move-object/from16 v48, v39

    move-object/from16 v4, v40

    move/from16 v2, v41

    move/from16 v40, v54

    move/from16 v8, v63

    move-object/from16 v42, v64

    move/from16 v43, v66

    move-object/from16 v32, v3

    move-object/from16 v26, v6

    move-object/from16 v39, v24

    move/from16 v6, v31

    move/from16 v41, v33

    move/from16 v3, v51

    move/from16 v31, v62

    move-object/from16 v33, v65

    move-object/from16 v24, v1

    move-object v1, v7

    move-object/from16 v7, v28

    goto/16 :goto_5

    :catchall_a
    move-exception v0

    goto/16 :goto_6a

    :cond_3c
    move-object v7, v1

    move-object/from16 v40, v4

    move-object v9, v10

    move-object/from16 v1, v24

    move-object/from16 v6, v26

    move-object/from16 v3, v32

    move-object/from16 v8, v34

    move-object/from16 v26, v25

    if-eqz v9, :cond_3d

    .line 2556
    :try_start_5f
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2561
    :cond_3d
    iget-boolean v2, v7, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v2, :cond_3e

    .line 2562
    invoke-direct/range {p0 .. p0}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->clearSBgDataStructures()V

    .line 2563
    monitor-exit v19

    const/4 v1, 0x0

    return v1

    .line 2566
    :cond_3e
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_40

    .line 2567
    invoke-virtual {v8, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    .line 2570
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_64
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_d

    const/4 v9, 0x0

    .line 2576
    :try_start_60
    invoke-static {v5, v6, v9}, Lcom/voxel/launcher3/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v10
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_60} :catch_61
    .catchall {:try_start_60 .. :try_end_60} :catchall_d

    const/4 v9, 0x0

    :try_start_61
    invoke-virtual {v2, v10, v9, v9}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_61} :catch_62
    .catchall {:try_start_61 .. :try_end_61} :catchall_d

    goto :goto_64

    :catch_61
    const/4 v9, 0x0

    :catch_62
    :try_start_62
    const-string v10, "Launcher.Model"

    .line 2579
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not remove id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    :cond_3f
    const/4 v9, 0x0

    goto :goto_65

    :cond_40
    const/4 v9, 0x0

    .line 2586
    :goto_65
    invoke-interface/range {v40 .. v40}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_41
    :goto_66
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voxel/launcher3/shortcuts/ShortcutKey;

    .line 2587
    sget-object v5, Lcom/voxel/launcher3/LauncherModel;->sBgPinnedShortcutCounts:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/MutableInt;

    if-eqz v5, :cond_42

    .line 2588
    iget v5, v5, Landroid/util/MutableInt;->value:I

    if-nez v5, :cond_41

    .line 2590
    :cond_42
    iget-object v5, v7, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    iget-object v5, v5, Lcom/voxel/launcher3/LauncherModel;->mDeepShortcutManager:Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;

    invoke-virtual {v5, v4}, Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;->unpinShortcut(Lcom/voxel/launcher3/shortcuts/ShortcutKey;)V

    goto :goto_66

    .line 2595
    :cond_43
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_44

    .line 2596
    invoke-virtual {v8, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_d

    .line 2600
    :try_start_63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id"

    .line 2601
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " IN ("

    .line 2602
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    move-object/from16 v5, v26

    .line 2603
    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    .line 2604
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2605
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "restored"

    const/4 v6, 0x0

    .line 2606
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2607
    sget-object v5, Lcom/voxel/launcher3/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    .line 2608
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2607
    invoke-virtual {v1, v5, v4, v2, v9}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_63} :catch_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_d

    goto :goto_67

    :catch_63
    :try_start_64
    const-string v1, "Launcher.Model"

    const-string v2, "Could not update restored rows"

    .line 2610
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    :goto_67
    if-nez v17, :cond_45

    .line 2614
    sget-object v1, Lcom/voxel/launcher3/LauncherModel;->sPendingPackages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_45

    .line 2615
    new-instance v1, Lcom/voxel/launcher3/LauncherModel$AppsAvailabilityCheck;

    iget-object v2, v7, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-direct {v1, v2, v9}, Lcom/voxel/launcher3/LauncherModel$AppsAvailabilityCheck;-><init>(Lcom/voxel/launcher3/LauncherModel;Lcom/voxel/launcher3/LauncherModel$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "com.voxel.launcher3.SYSTEM_READY"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2617
    invoke-static {}, Lcom/voxel/launcher3/LauncherModel;->access$1600()Landroid/os/Handler;

    move-result-object v4

    .line 2615
    invoke-static {v3, v1, v2, v9, v4}, Lis/shortcut/compat/ReceiverCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2650
    :cond_45
    iget-object v1, v7, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/voxel/launcher3/LauncherModel;->access$1700(Landroid/content/Context;)Ljava/util/TreeMap;

    move-result-object v1

    .line 2651
    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_68
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 2652
    sget-object v5, Lcom/voxel/launcher3/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_68

    :cond_46
    const-string v1, "Launcher.Model"

    .line 2655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "11683562 -   sBgWorkspaceScreens: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    sget-object v5, Lcom/voxel/launcher3/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    .line 2656
    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    .line 2655
    invoke-static {v1, v2, v4}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2659
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/voxel/launcher3/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2660
    sget-object v2, Lcom/voxel/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/voxel/launcher3/util/LongArrayMap;

    invoke-virtual {v2}, Lcom/voxel/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_47
    :goto_69
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voxel/launcher3/ItemInfo;

    .line 2661
    iget-wide v5, v4, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    .line 2662
    iget-wide v8, v4, Lcom/voxel/launcher3/ItemInfo;->container:J

    const-wide/16 v10, -0x64

    cmp-long v4, v8, v10

    if-nez v4, :cond_47

    .line 2663
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_69

    .line 2668
    :cond_48
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_49

    const-string v2, "Launcher.Model"

    .line 2670
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "11683562 -   unusedScreens (to be removed): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    .line 2671
    invoke-static {v5, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 2670
    invoke-static {v2, v4, v5}, Lcom/voxel/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2673
    sget-object v2, Lcom/voxel/launcher3/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 2674
    iget-object v1, v7, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    sget-object v2, Lcom/voxel/launcher3/LauncherModel;->sBgWorkspaceScreens:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v2}, Lcom/voxel/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2701
    :cond_49
    monitor-exit v19

    const/4 v1, 0x0

    return v1

    :catchall_b
    move-exception v0

    move-object v7, v1

    move-object v9, v10

    :goto_6a
    move-object v1, v0

    :goto_6b
    if-eqz v9, :cond_4a

    .line 2556
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2558
    :cond_4a
    throw v1

    :catchall_c
    move-exception v0

    move-object v7, v1

    :goto_6c
    move-object v1, v0

    .line 2701
    monitor-exit v19
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_d

    throw v1

    :catchall_d
    move-exception v0

    goto :goto_6c

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x65
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x65
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private onlyBindAllApps()V
    .locals 3

    .line 3030
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/voxel/launcher3/LauncherModel;->access$800(Lcom/voxel/launcher3/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/LauncherModel$Callbacks;

    if-nez v0, :cond_0

    const-string v0, "Launcher.Model"

    const-string v1, "LoaderTask running with no launcher (onlyBindAllApps)"

    .line 3033
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3038
    :cond_0
    iget-object v1, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    iget-object v1, v1, Lcom/voxel/launcher3/LauncherModel;->mBgAllAppsList:Lcom/voxel/launcher3/AllAppsList;

    iget-object v1, v1, Lcom/voxel/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    .line 3039
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3040
    new-instance v2, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$V3K7zXaF9Pm11aKd9UAyOGy_T6w;

    invoke-direct {v2, p0, v0, v1}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$V3K7zXaF9Pm11aKd9UAyOGy_T6w;-><init>(Lcom/voxel/launcher3/LauncherModel$LoaderTask;Lcom/voxel/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    .line 3051
    sget-object v0, Lcom/voxel/launcher3/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 3053
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 3055
    :cond_2
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/voxel/launcher3/LauncherModel;->access$200(Lcom/voxel/launcher3/LauncherModel;)Lcom/voxel/launcher3/DeferredHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/voxel/launcher3/DeferredHandler;->post(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method private sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 2798
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    .line 2799
    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v0

    .line 2800
    sget-object v1, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object v0

    .line 2801
    iget v1, v0, Lcom/voxel/launcher3/CellParams;->numColumns:F

    float-to-int v1, v1

    .line 2802
    iget v0, v0, Lcom/voxel/launcher3/CellParams;->numRows:F

    float-to-int v0, v0

    .line 2804
    new-instance v2, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$UY4bVYzdT6Zvn-JoAzSR8TCm2cY;

    invoke-direct {v2, v1, v0}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$UY4bVYzdT6Zvn-JoAzSR8TCm2cY;-><init>(II)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private verifyApplications()V
    .locals 8

    .line 1861
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/voxel/launcher3/LauncherModel;->access$900(Lcom/voxel/launcher3/LauncherModel;)Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1865
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1866
    sget-object v2, Lcom/voxel/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1867
    :try_start_0
    iget-object v3, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    iget-object v3, v3, Lcom/voxel/launcher3/LauncherModel;->mBgAllAppsList:Lcom/voxel/launcher3/AllAppsList;

    iget-object v3, v3, Lcom/voxel/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voxel/launcher3/AppInfo;

    .line 1868
    iget-object v5, v4, Lcom/voxel/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v6, v4, Lcom/voxel/launcher3/AppInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-static {v5, v6}, Lcom/voxel/launcher3/LauncherModel;->getItemInfoForComponentName(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1869
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1871
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "Launcher.Model"

    .line 1873
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing Application on load: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1876
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1877
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1878
    iget-object v2, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-virtual {v2, v0, v1}, Lcom/voxel/launcher3/LauncherModel;->addAndBindAddedWorkspaceApps(Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 1876
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    return-void
.end method

.method private waitForIdle()V
    .locals 2

    .line 1680
    monitor-enter p0

    .line 1683
    :try_start_0
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/voxel/launcher3/LauncherModel;->access$200(Lcom/voxel/launcher3/LauncherModel;)Lcom/voxel/launcher3/DeferredHandler;

    move-result-object v0

    new-instance v1, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$-88xr5ejVBageGZ5vn0oaf1oHis;

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$-88xr5ejVBageGZ5vn0oaf1oHis;-><init>(Lcom/voxel/launcher3/LauncherModel$LoaderTask;)V

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/DeferredHandler;->postIdle(Ljava/lang/Runnable;)V

    .line 1693
    :catch_0
    :goto_0
    iget-boolean v0, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/voxel/launcher3/LauncherModel;->access$000(Lcom/voxel/launcher3/LauncherModel;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x3e8

    .line 1697
    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1707
    :cond_0
    :try_start_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    return-void
.end method


# virtual methods
.method public dumpState()V
    .locals 4

    .line 3060
    sget-object v0, Lcom/voxel/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Launcher.Model"

    .line 3061
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLoaderTask.mContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Launcher.Model"

    .line 3062
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLoaderTask.mIsLaunching="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->mIsLaunching:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Launcher.Model"

    .line 3063
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLoaderTask.mStopped="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Launcher.Model"

    .line 3064
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLoaderTask.mLoadAndBindStepFinished="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Launcher.Model"

    .line 3065
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mItems size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/voxel/launcher3/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3066
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isLaunching()Z
    .locals 1

    .line 1642
    iget-boolean v0, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->mIsLaunching:Z

    return v0
.end method

.method isLoadingWorkspace()Z
    .locals 1

    .line 1646
    iget-boolean v0, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->mIsLoadingAndBindingWorkspace:Z

    return v0
.end method

.method public run()V
    .locals 9

    .line 1749
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/voxel/launcher3/LauncherModel;->access$400(Lcom/voxel/launcher3/LauncherModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1750
    :try_start_0
    iget-object v1, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/voxel/launcher3/LauncherModel;->access$502(Lcom/voxel/launcher3/LauncherModel;Z)Z

    .line 1751
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 1759
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/voxel/launcher3/LauncherModel;->access$400(Lcom/voxel/launcher3/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1762
    :try_start_1
    iget-boolean v0, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->mIsLaunching:Z

    const/16 v3, 0xa

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1764
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 1766
    invoke-direct {p0}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->loadAndBindWorkspace()Z

    .line 1768
    iget-boolean v0, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1774
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/voxel/launcher3/LauncherModel;->access$400(Lcom/voxel/launcher3/LauncherModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1775
    :try_start_2
    iget-boolean v1, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v1, :cond_2

    .line 1777
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1779
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1780
    invoke-direct {p0}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->waitForIdle()V

    .line 1784
    invoke-direct {p0}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->loadAndBindAllApps()V

    .line 1787
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/voxel/launcher3/LauncherModel;->access$400(Lcom/voxel/launcher3/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1788
    :try_start_3
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1789
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1794
    :goto_1
    sget-object v0, Lcom/voxel/launcher3/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1795
    :try_start_4
    sget-object v1, Lcom/voxel/launcher3/LauncherModel;->sBgDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1796
    iget-object v5, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    iget-object v6, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    move-object v7, v3

    check-cast v7, Lcom/voxel/launcher3/ShortcutInfo;

    sget-object v8, Lcom/voxel/launcher3/LauncherModel;->sBgDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v5, v6, v7, v3}, Lcom/voxel/launcher3/LauncherModel;->updateSavedIcon(Landroid/content/Context;Lcom/voxel/launcher3/ShortcutInfo;[B)V

    goto :goto_2

    .line 1798
    :cond_3
    sget-object v1, Lcom/voxel/launcher3/LauncherModel;->sBgDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1799
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1801
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1805
    invoke-direct {p0}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->verifyApplications()V

    :cond_4
    const/4 v0, 0x0

    .line 1811
    iput-object v0, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 1813
    iget-object v1, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v1}, Lcom/voxel/launcher3/LauncherModel;->access$400(Lcom/voxel/launcher3/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1815
    :try_start_5
    iget-object v3, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v3}, Lcom/voxel/launcher3/LauncherModel;->access$600(Lcom/voxel/launcher3/LauncherModel;)Lcom/voxel/launcher3/LauncherModel$LoaderTask;

    move-result-object v3

    if-ne v3, p0, :cond_5

    .line 1816
    iget-object v3, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v3, v0}, Lcom/voxel/launcher3/LauncherModel;->access$602(Lcom/voxel/launcher3/LauncherModel;Lcom/voxel/launcher3/LauncherModel$LoaderTask;)Lcom/voxel/launcher3/LauncherModel$LoaderTask;

    .line 1818
    :cond_5
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v0, v4}, Lcom/voxel/launcher3/LauncherModel;->access$502(Lcom/voxel/launcher3/LauncherModel;Z)Z

    .line 1819
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v0, v2}, Lcom/voxel/launcher3/LauncherModel;->access$702(Lcom/voxel/launcher3/LauncherModel;Z)Z

    .line 1820
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 1799
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    :catchall_2
    move-exception v0

    .line 1789
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :catchall_3
    move-exception v1

    .line 1779
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v1

    :catchall_4
    move-exception v0

    .line 1764
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    :catchall_5
    move-exception v1

    .line 1751
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v1

    return-void
.end method

.method runBindSynchronousPage(I)V
    .locals 2

    const/16 v0, -0x3e9

    if-eq p1, v0, :cond_2

    .line 1716
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/voxel/launcher3/LauncherModel;->access$300(Lcom/voxel/launcher3/LauncherModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/voxel/launcher3/LauncherModel;->access$100(Lcom/voxel/launcher3/LauncherModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1721
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/voxel/launcher3/LauncherModel;->access$400(Lcom/voxel/launcher3/LauncherModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1722
    :try_start_0
    iget-object v1, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v1}, Lcom/voxel/launcher3/LauncherModel;->access$500(Lcom/voxel/launcher3/LauncherModel;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1727
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1736
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/voxel/launcher3/LauncherModel;->access$200(Lcom/voxel/launcher3/LauncherModel;)Lcom/voxel/launcher3/DeferredHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/DeferredHandler;->flush()V

    const/4 v0, 0x0

    .line 1740
    invoke-direct {p0, p1, v0}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->bindWorkspace(IZ)V

    .line 1743
    invoke-direct {p0}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->onlyBindAllApps()V

    return-void

    .line 1725
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "Error! Background loading is already running"

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 1727
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1719
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Expecting AllApps and Workspace to be loaded"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1713
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Should not call runBindSynchronousPage() without valid page index"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stopLocked()V
    .locals 1

    .line 1824
    monitor-enter p0

    const/4 v0, 0x1

    .line 1825
    :try_start_0
    iput-boolean v0, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    .line 1826
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1827
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method tryGetCallbacks(Lcom/voxel/launcher3/LauncherModel$Callbacks;)Lcom/voxel/launcher3/LauncherModel$Callbacks;
    .locals 3

    .line 1838
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/voxel/launcher3/LauncherModel;->access$400(Lcom/voxel/launcher3/LauncherModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1839
    :try_start_0
    iget-boolean v1, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1840
    monitor-exit v0

    return-object v2

    .line 1843
    :cond_0
    iget-object v1, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v1}, Lcom/voxel/launcher3/LauncherModel;->access$800(Lcom/voxel/launcher3/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1844
    monitor-exit v0

    return-object v2

    .line 1847
    :cond_1
    iget-object v1, p0, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/voxel/launcher3/LauncherModel;

    invoke-static {v1}, Lcom/voxel/launcher3/LauncherModel;->access$800(Lcom/voxel/launcher3/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/LauncherModel$Callbacks;

    if-eq v1, p1, :cond_2

    .line 1849
    monitor-exit v0

    return-object v2

    :cond_2
    if-nez v1, :cond_3

    const-string p1, "Launcher.Model"

    const-string v1, "no mCallbacks"

    .line 1852
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    monitor-exit v0

    return-object v2

    .line 1856
    :cond_3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 1857
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
