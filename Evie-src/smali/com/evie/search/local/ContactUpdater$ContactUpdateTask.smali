.class Lcom/evie/search/local/ContactUpdater$ContactUpdateTask;
.super Landroid/os/AsyncTask;
.source "ContactUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/search/local/ContactUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactUpdateTask"
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
.field final synthetic this$0:Lcom/evie/search/local/ContactUpdater;


# direct methods
.method private constructor <init>(Lcom/evie/search/local/ContactUpdater;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/evie/search/local/ContactUpdater$ContactUpdateTask;->this$0:Lcom/evie/search/local/ContactUpdater;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/evie/search/local/ContactUpdater;Lcom/evie/search/local/ContactUpdater$1;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/evie/search/local/ContactUpdater$ContactUpdateTask;-><init>(Lcom/evie/search/local/ContactUpdater;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 58
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/evie/search/local/ContactUpdater$ContactUpdateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 24

    move-object/from16 v1, p0

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    .line 71
    :try_start_0
    iget-object v5, v1, Lcom/evie/search/local/ContactUpdater$ContactUpdateTask;->this$0:Lcom/evie/search/local/ContactUpdater;

    invoke-static {v5}, Lcom/evie/search/local/ContactUpdater;->access$200(Lcom/evie/search/local/ContactUpdater;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "item"

    const-string v5, "_id"

    const-string v8, "link"

    filled-new-array {v5, v8}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "type=?"

    const-string v5, "CONTACT"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x1

    if-eqz v5, :cond_9

    .line 78
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/evie/search/local/ContactUpdater$ContactUpdateTask;->isCancelled()Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_1

    if-eqz v5, :cond_0

    .line 149
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v4

    :cond_1
    :try_start_2
    const-string v9, "_id"

    .line 83
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-string v11, "link"

    .line 84
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 85
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v12

    .line 88
    iget-object v13, v1, Lcom/evie/search/local/ContactUpdater$ContactUpdateTask;->this$0:Lcom/evie/search/local/ContactUpdater;

    invoke-static {v13}, Lcom/evie/search/local/ContactUpdater;->access$300(Lcom/evie/search/local/ContactUpdater;)Lcom/evie/search/local/ContactManager;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/evie/search/local/ContactManager;->getContactLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_2

    .line 92
    iget-object v9, v1, Lcom/evie/search/local/ContactUpdater$ContactUpdateTask;->this$0:Lcom/evie/search/local/ContactUpdater;

    invoke-static {v9, v11, v8}, Lcom/evie/search/local/ContactUpdater;->access$400(Lcom/evie/search/local/ContactUpdater;Ljava/lang/String;Z)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 101
    iget-object v14, v1, Lcom/evie/search/local/ContactUpdater$ContactUpdateTask;->this$0:Lcom/evie/search/local/ContactUpdater;

    invoke-static {v14}, Lcom/evie/search/local/ContactUpdater;->access$200(Lcom/evie/search/local/ContactUpdater;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    const-string v16, "item"

    const/16 v17, 0x0

    const-string v18, "link=?"

    new-array v14, v8, [Ljava/lang/String;

    aput-object v13, v14, v6

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v23, "1"

    move-object/from16 v19, v14

    invoke-virtual/range {v15 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 109
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 110
    iget-object v9, v1, Lcom/evie/search/local/ContactUpdater$ContactUpdateTask;->this$0:Lcom/evie/search/local/ContactUpdater;

    invoke-static {v9, v11, v8}, Lcom/evie/search/local/ContactUpdater;->access$400(Lcom/evie/search/local/ContactUpdater;Ljava/lang/String;Z)V

    add-int/lit8 v7, v7, 0x1

    .line 112
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 116
    :cond_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_4
    iget-object v14, v1, Lcom/evie/search/local/ContactUpdater$ContactUpdateTask;->this$0:Lcom/evie/search/local/ContactUpdater;

    invoke-static {v14, v11, v13}, Lcom/evie/search/local/ContactUpdater;->access$500(Lcom/evie/search/local/ContactUpdater;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_5
    iget-object v13, v1, Lcom/evie/search/local/ContactUpdater$ContactUpdateTask;->this$0:Lcom/evie/search/local/ContactUpdater;

    invoke-static {v13}, Lcom/evie/search/local/ContactUpdater;->access$300(Lcom/evie/search/local/ContactUpdater;)Lcom/evie/search/local/ContactManager;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/evie/search/local/ContactManager;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 125
    iget-object v14, v1, Lcom/evie/search/local/ContactUpdater$ContactUpdateTask;->this$0:Lcom/evie/search/local/ContactUpdater;

    invoke-static {v14}, Lcom/evie/search/local/ContactUpdater;->access$200(Lcom/evie/search/local/ContactUpdater;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    const-string v15, "name"

    invoke-static {v14, v9, v10, v15, v13}, Lcom/evie/search/local/LocalSearchUtil;->keywordMatches(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_7

    if-eqz v13, :cond_6

    .line 127
    iget-object v8, v1, Lcom/evie/search/local/ContactUpdater$ContactUpdateTask;->this$0:Lcom/evie/search/local/ContactUpdater;

    invoke-static {v8, v11, v13}, Lcom/evie/search/local/ContactUpdater;->access$600(Lcom/evie/search/local/ContactUpdater;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v8, v1, Lcom/evie/search/local/ContactUpdater$ContactUpdateTask;->this$0:Lcom/evie/search/local/ContactUpdater;

    invoke-static {v8, v11, v6}, Lcom/evie/search/local/ContactUpdater;->access$400(Lcom/evie/search/local/ContactUpdater;Ljava/lang/String;Z)V

    goto :goto_1

    .line 130
    :cond_6
    iget-object v9, v1, Lcom/evie/search/local/ContactUpdater$ContactUpdateTask;->this$0:Lcom/evie/search/local/ContactUpdater;

    invoke-static {v9, v11, v8}, Lcom/evie/search/local/ContactUpdater;->access$400(Lcom/evie/search/local/ContactUpdater;Ljava/lang/String;Z)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_7
    const-string v8, "/"

    .line 137
    invoke-virtual {v12, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 138
    array-length v12, v8

    const/4 v13, 0x7

    if-ne v12, v13, :cond_8

    iget-object v12, v1, Lcom/evie/search/local/ContactUpdater$ContactUpdateTask;->this$0:Lcom/evie/search/local/ContactUpdater;

    invoke-static {v12}, Lcom/evie/search/local/ContactUpdater;->access$200(Lcom/evie/search/local/ContactUpdater;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const-string v13, "nickname"

    iget-object v14, v1, Lcom/evie/search/local/ContactUpdater$ContactUpdateTask;->this$0:Lcom/evie/search/local/ContactUpdater;

    invoke-static {v14}, Lcom/evie/search/local/ContactUpdater;->access$300(Lcom/evie/search/local/ContactUpdater;)Lcom/evie/search/local/ContactManager;

    move-result-object v14

    const/4 v15, 0x5

    aget-object v8, v8, v15

    invoke-virtual {v14, v8}, Lcom/evie/search/local/ContactManager;->getNickname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v9, v10, v13, v8}, Lcom/evie/search/local/LocalSearchUtil;->keywordMatches(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 139
    iget-object v8, v1, Lcom/evie/search/local/ContactUpdater$ContactUpdateTask;->this$0:Lcom/evie/search/local/ContactUpdater;

    invoke-static {v8, v11, v6}, Lcom/evie/search/local/ContactUpdater;->access$400(Lcom/evie/search/local/ContactUpdater;Ljava/lang/String;Z)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 145
    :cond_8
    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_9
    if-eqz v5, :cond_a

    .line 149
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 155
    :cond_a
    :try_start_3
    iget-object v9, v1, Lcom/evie/search/local/ContactUpdater$ContactUpdateTask;->this$0:Lcom/evie/search/local/ContactUpdater;

    invoke-static {v9}, Lcom/evie/search/local/ContactUpdater;->access$300(Lcom/evie/search/local/ContactUpdater;)Lcom/evie/search/local/ContactManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/evie/search/local/ContactManager;->getAllContactsCursor()Landroid/database/Cursor;

    move-result-object v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    :cond_b
    :goto_2
    if-eqz v5, :cond_f

    .line 156
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/evie/search/local/ContactUpdater$ContactUpdateTask;->isCancelled()Z

    move-result v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v11, :cond_d

    if-eqz v5, :cond_c

    .line 171
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_c
    return-object v4

    :cond_d
    add-int/lit8 v10, v10, 0x1

    .line 162
    :try_start_4
    iget-object v11, v1, Lcom/evie/search/local/ContactUpdater$ContactUpdateTask;->this$0:Lcom/evie/search/local/ContactUpdater;

    invoke-static {v11}, Lcom/evie/search/local/ContactUpdater;->access$300(Lcom/evie/search/local/ContactUpdater;)Lcom/evie/search/local/ContactManager;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/evie/search/local/ContactManager;->getLinkFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    const-string v11, "last_time_contacted"

    .line 163
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-lez v15, :cond_e

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-wide v15, 0x757b12c00L

    sub-long/2addr v13, v15

    cmp-long v15, v13, v11

    if-lez v15, :cond_e

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_e
    const/4 v11, 0x0

    .line 165
    :goto_3
    iget-object v12, v1, Lcom/evie/search/local/ContactUpdater$ContactUpdateTask;->this$0:Lcom/evie/search/local/ContactUpdater;

    invoke-static {v12}, Lcom/evie/search/local/ContactUpdater;->access$200(Lcom/evie/search/local/ContactUpdater;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    iget-object v13, v1, Lcom/evie/search/local/ContactUpdater$ContactUpdateTask;->this$0:Lcom/evie/search/local/ContactUpdater;

    invoke-static {v13}, Lcom/evie/search/local/ContactUpdater;->access$300(Lcom/evie/search/local/ContactUpdater;)Lcom/evie/search/local/ContactManager;

    move-result-object v13

    invoke-virtual {v13, v5}, Lcom/evie/search/local/ContactManager;->buildContactFromCursor(Landroid/database/Cursor;)Lcom/evie/search/model/LocalSearchItem;

    move-result-object v13

    invoke-static {v12, v13, v11}, Lcom/evie/search/local/LocalSearchUtil;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/evie/search/model/LocalSearchItem;F)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_f
    if-eqz v5, :cond_10

    .line 171
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_10
    const-string v0, "Found %d contacts. Deleted: %d, Inserted: %d. Time: %d ms"

    const/4 v5, 0x4

    .line 175
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v0, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    :catchall_1
    move-exception v0

    if-eqz v5, :cond_11

    .line 171
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 173
    :cond_11
    throw v0

    :catchall_2
    move-exception v0

    move-object v5, v4

    :goto_4
    if-eqz v5, :cond_12

    .line 149
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 151
    :cond_12
    throw v0

    return-void
.end method
