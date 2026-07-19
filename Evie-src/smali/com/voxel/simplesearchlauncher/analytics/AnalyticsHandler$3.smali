.class Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$3;
.super Landroid/os/AsyncTask;
.source "AnalyticsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getUploadLogsAsyncTask()Landroid/os/AsyncTask;
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
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)V
    .locals 0

    .line 683
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$3;->this$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 683
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs declared-synchronized doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 19

    move-object/from16 v1, p0

    monitor-enter p0

    .line 689
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$3;->this$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->access$000(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0xdbba00

    const/4 v8, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    .line 691
    :goto_1
    iget-object v0, v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$3;->this$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->access$100(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/api/network/HttpRequestUtil;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$3;->this$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->access$200(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;

    move-result-object v0

    const/16 v5, 0x32

    invoke-virtual {v0, v5, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;->getLogs(IZ)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_10

    .line 692
    iget-object v0, v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$3;->this$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->access$300(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0x1f4

    if-lt v4, v0, :cond_1

    goto/16 :goto_9

    .line 696
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Uploading analytics... "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v0, v6}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 698
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 700
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 702
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, 0x0

    .line 703
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 704
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogInfo;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    :try_start_1
    new-instance v13, Lorg/json/JSONObject;

    iget-object v14, v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogInfo;->data:Ljava/lang/String;

    invoke-direct {v13, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 707
    sget-object v14, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$4;->$SwitchMap$com$voxel$simplesearchlauncher$analytics$AnalyticsDatabaseHelper$LogType:[I

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogInfo;->type:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;->ordinal()I

    move-result v0

    aget v0, v14, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    if-eqz v3, :cond_3

    if-nez v12, :cond_2

    .line 716
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    move-object v12, v0

    .line 719
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v14, "properties"

    .line 720
    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "age"

    const-string v7, "time"

    .line 721
    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v16
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v18, v3

    sub-long v2, v9, v16

    :try_start_2
    invoke-virtual {v0, v15, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "pkg"

    const-string v3, "launch_package_name"

    .line 722
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "cls"

    const-string v3, "launch_class_name"

    .line 723
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "src"

    const-string v3, "launch_source"

    .line 724
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 726
    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_5

    :cond_3
    move/from16 v18, v3

    .line 728
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :goto_3
    :pswitch_1
    move/from16 v18, v3

    goto :goto_5

    :pswitch_2
    move/from16 v18, v3

    .line 709
    invoke-virtual {v6, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move/from16 v18, v3

    .line 733
    :goto_4
    :try_start_3
    invoke-static {}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error generating analytics JSON object."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    move/from16 v3, v18

    goto/16 :goto_2

    :cond_4
    move/from16 v18, v3

    if-eqz v12, :cond_5

    .line 738
    iget-object v0, v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$3;->this$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    const-string v2, "ev_app_launch_summary"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->access$500(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "content_json"

    .line 739
    invoke-virtual {v0, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 740
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 743
    :cond_5
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_9

    .line 749
    :cond_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v2, "events"

    .line 751
    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "upload_time"

    .line 752
    invoke-virtual {v0, v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 758
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 759
    iget-object v3, v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$3;->this$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-static {v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->access$100(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)Landroid/content/Context;

    move-result-object v3

    const-string v6, "com.voxel.launcher3.prefs"

    invoke-virtual {v3, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v6, "com.voxel.simplesearchlauncher.dagger.module.JigsawModule.PREF_ENABLE_CONTENT_STAGING"

    .line 760
    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "https://api-staging.evie.com/"

    goto :goto_6

    :cond_7
    const-string v3, "https://events.evie.com/events"

    .line 763
    :goto_6
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    .line 762
    invoke-static {v3, v0, v2, v6}, Lcom/voxel/simplesearchlauncher/api/network/HttpRequestUtil;->sendPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_a

    const-string v0, "Analytics uploaded"

    .line 767
    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 768
    iget-object v0, v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$3;->this$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->access$602(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;J)J

    if-eqz v18, :cond_8

    .line 770
    iget-object v0, v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$3;->this$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->access$002(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;J)J

    .line 772
    :cond_8
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogInfo;

    .line 773
    iget-object v3, v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$3;->this$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-static {v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->access$200(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;

    move-result-object v3

    iget v2, v2, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogInfo;->id:I

    invoke-virtual {v3, v2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;->deleteLog(I)I

    goto :goto_7

    .line 777
    :cond_9
    iget-object v0, v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$3;->this$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    const/16 v2, 0x3e8

    invoke-static {v0, v2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->access$702(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;I)I

    .line 778
    iget-object v0, v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$3;->this$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-static {v0, v8}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->access$802(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;I)I

    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v18

    goto/16 :goto_1

    .line 780
    :cond_a
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogInfo;

    .line 781
    iget v3, v2, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogInfo;->numFailures:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_b

    .line 782
    iget-object v3, v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$3;->this$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-static {v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->access$200(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;

    move-result-object v3

    iget v2, v2, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogInfo;->id:I

    invoke-virtual {v3, v2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;->deleteLog(I)I

    const/4 v5, 0x1

    goto :goto_8

    .line 784
    :cond_b
    iget v3, v2, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogInfo;->numFailures:I

    const/4 v5, 0x1

    add-int/2addr v3, v5

    iput v3, v2, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogInfo;->numFailures:I

    .line 785
    iget-object v3, v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$3;->this$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-static {v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->access$200(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;->updateLog(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogInfo;)V

    goto :goto_8

    .line 790
    :cond_c
    iget-object v0, v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$3;->this$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    iget-object v2, v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$3;->this$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->access$700(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    const v3, 0xdbba00

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->access$702(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;I)I

    .line 793
    iget-object v0, v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$3;->this$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->access$700(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)I

    move-result v0

    if-ne v0, v3, :cond_d

    iget-object v0, v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$3;->this$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->access$800(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_e

    .line 794
    :cond_d
    iget-object v0, v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$3;->this$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->access$1000(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$3;->this$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->access$900(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v4, v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$3;->this$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-static {v4}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->access$700(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 797
    :cond_e
    iget-object v0, v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$3;->this$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->access$700(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)I

    move-result v0

    if-ne v0, v3, :cond_f

    .line 798
    iget-object v0, v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$3;->this$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->access$808(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)I
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 801
    :cond_f
    monitor-exit p0

    const/4 v2, 0x0

    return-object v2

    :catch_2
    move-exception v0

    const/4 v5, 0x1

    .line 754
    :try_start_6
    invoke-static {}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error generating analytics JSON payload."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move/from16 v3, v18

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v0

    .line 814
    :try_start_7
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_9

    .line 809
    :catch_4
    :try_start_8
    iget-object v0, v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$3;->this$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->access$200(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;

    move-result-object v0

    iget-object v2, v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$3;->this$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->access$100(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;->recreateDB(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_9

    :catch_5
    move-exception v0

    .line 811
    :try_start_9
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 817
    :cond_10
    :goto_9
    monitor-exit p0

    const/4 v2, 0x0

    return-object v2

    :goto_a
    monitor-exit p0

    throw v0

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 683
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 822
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$3;->this$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    monitor-enter p1

    .line 823
    :try_start_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$3;->this$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->access$1102(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 824
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
