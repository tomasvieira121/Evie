.class Lcom/evie/search/local/LocalSearchUtil;
.super Ljava/lang/Object;
.source "LocalSearchUtil.java"


# direct methods
.method static addKeywordWithDeletions(Ljava/util/Set;Ljava/lang/String;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .line 88
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v0

    :goto_0
    if-ge v0, p2, :cond_2

    .line 94
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method static addKeywords(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/evie/search/model/SearchKeywordItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 66
    invoke-static {p1}, Lcom/evie/search/local/LocalSearchUtil;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 71
    :cond_0
    new-instance v0, Lcom/evie/search/model/SearchKeywordItem;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/evie/search/model/SearchKeywordItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-static {p1}, Lcom/evie/search/local/LocalSearchUtil;->tokenizeString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 73
    array-length p2, p1

    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    .line 74
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    .line 75
    new-instance v2, Lcom/evie/search/model/SearchKeywordItem;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/evie/search/model/SearchKeywordItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static distance(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 18

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 117
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x7b

    const/16 v6, 0x20

    const/16 v7, 0x60

    if-ge v3, v4, :cond_2

    move-object/from16 v4, p0

    .line 118
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_0

    .line 120
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    if-le v8, v7, :cond_1

    if-ge v8, v5, :cond_1

    add-int/lit8 v8, v8, -0x60

    .line 122
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v4, p0

    const/4 v3, 0x0

    .line 126
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_5

    move-object/from16 v8, p1

    .line 127
    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v6, :cond_3

    .line 129
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    if-le v9, v7, :cond_4

    if-ge v9, v5, :cond_4

    add-int/lit8 v9, v9, -0x60

    .line 131
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const/16 v3, 0x1b

    .line 135
    new-array v3, v3, [I

    .line 136
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    filled-new-array {v5, v6}, [I

    move-result-object v5

    const-class v6, I

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    .line 138
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v6, v7

    .line 140
    aget-object v7, v5, v2

    aput v6, v7, v2

    const/4 v7, 0x0

    .line 142
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-gt v7, v8, :cond_6

    add-int/lit8 v8, v7, 0x1

    .line 143
    aget-object v10, v5, v8

    aput v6, v10, v2

    .line 144
    aget-object v10, v5, v8

    aput v7, v10, v9

    move v7, v8

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    .line 147
    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-gt v7, v8, :cond_7

    .line 148
    aget-object v8, v5, v2

    add-int/lit8 v10, v7, 0x1

    aput v6, v8, v10

    .line 149
    aget-object v8, v5, v9

    aput v7, v8, v10

    move v7, v10

    goto :goto_5

    :cond_7
    const/4 v6, 0x1

    .line 152
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-gt v6, v7, :cond_a

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 154
    :goto_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-gt v7, v10, :cond_9

    add-int/lit8 v10, v7, -0x1

    .line 155
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget v11, v3, v11

    add-int/lit8 v12, v6, -0x1

    .line 158
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    move v12, v7

    goto :goto_8

    :cond_8
    move v12, v8

    :goto_8
    xor-int/lit8 v10, v10, 0x1

    .line 164
    aget-object v13, v5, v6

    aget v13, v13, v7

    add-int/2addr v13, v10

    add-int/lit8 v10, v6, 0x1

    .line 165
    aget-object v14, v5, v10

    aget v14, v14, v7

    add-int/2addr v14, v9

    .line 166
    aget-object v15, v5, v6

    add-int/lit8 v16, v7, 0x1

    aget v15, v15, v16

    add-int/2addr v15, v9

    .line 167
    aget-object v17, v5, v11

    aget v17, v17, v8

    sub-int v11, v6, v11

    sub-int/2addr v11, v9

    add-int v17, v17, v11

    add-int/lit8 v17, v17, 0x1

    sub-int/2addr v7, v8

    sub-int/2addr v7, v9

    add-int v7, v17, v7

    .line 168
    aget-object v8, v5, v10

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v15, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v10, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    aput v7, v8, v16

    move v8, v12

    move/from16 v7, v16

    goto :goto_7

    :cond_9
    add-int/lit8 v7, v6, -0x1

    .line 170
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v6, v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 173
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v9

    aget-object v2, v5, v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v9

    aget v2, v2, v3

    if-eqz p2, :cond_c

    .line 174
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-gt v3, v6, :cond_c

    .line 175
    invoke-static/range {p0 .. p0}, Lcom/evie/search/local/LocalSearchUtil;->maxDistance(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_b

    .line 176
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_9

    .line 177
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    const/4 v6, 0x4

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 178
    :goto_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v6, v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_a
    if-gt v4, v1, :cond_c

    .line 180
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v9

    aget-object v3, v5, v3

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_a

    :cond_c
    return v2
.end method

.method static insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/evie/search/model/LocalSearchItem;F)V
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 275
    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getKeywords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 281
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "link"

    .line 282
    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getLink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "label"

    .line 283
    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "note"

    .line 284
    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getNote()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "type"

    .line 285
    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "usage"

    .line 286
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 288
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string p2, "item"

    const/4 v2, 0x0

    .line 290
    invoke-virtual {p0, p2, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 292
    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getKeywords()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/evie/search/model/SearchKeywordItem;

    .line 293
    invoke-virtual {p2}, Lcom/evie/search/model/SearchKeywordItem;->getKeyword()Ljava/lang/String;

    move-result-object v1

    .line 295
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const/4 v6, 0x6

    .line 297
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v7, 0x1

    :goto_0
    if-gt v7, v6, :cond_2

    .line 299
    invoke-virtual {v1, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 300
    invoke-static {v8}, Lcom/evie/search/local/LocalSearchUtil;->maxDistance(Ljava/lang/String;)I

    move-result v9

    .line 301
    invoke-static {v5, v8, v9, v0}, Lcom/evie/search/local/LocalSearchUtil;->addKeywordWithDeletions(Ljava/util/Set;Ljava/lang/String;IZ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 305
    :cond_2
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 306
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "search_keyword"

    .line 307
    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "match_keyword"

    .line 308
    invoke-virtual {v7, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "keyword_type"

    .line 309
    invoke-virtual {p2}, Lcom/evie/search/model/SearchKeywordItem;->getKeywordType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "item_id"

    .line 310
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "search"

    .line 311
    invoke-virtual {p0, v6, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1

    .line 315
    :cond_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 316
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :cond_4
    :goto_2
    const-string p0, "Insert called with invalid LocalLocalSearchItem."

    .line 276
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static keywordMatches(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .line 246
    invoke-static {p4}, Lcom/evie/search/local/LocalSearchUtil;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 248
    invoke-virtual {p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p4

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v2, "search"

    const-string v1, "match_keyword"

    .line 253
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "item_id=? AND keyword_type=?"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    .line 257
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v5, p2

    const/4 p1, 0x1

    aput-object p3, v5, p1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1"

    move-object v1, p0

    .line 253
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 260
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "match_keyword"

    .line 261
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-nez p4, :cond_2

    const/4 p2, 0x1

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 265
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return p2

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 267
    :cond_4
    throw p0
.end method

.method static maxDistance(Ljava/lang/String;)I
    .locals 1

    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x4

    if-ge p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method static normalizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    .line 52
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    sget-object v0, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    const-string v1, ""

    .line 54
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\'"

    const-string v1, ""

    .line 55
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static tokenizeString(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "\\s+|(?<!\\p{Upper})(?=\\p{Upper})"

    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 41
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 42
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static updateRank(Lcom/evie/search/model/LocalSearchItem;FF)V
    .locals 2

    .line 235
    invoke-virtual {p0}, Lcom/evie/search/model/LocalSearchItem;->getRank()F

    move-result v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float p1, p1, v1

    div-float/2addr p1, p2

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/evie/search/model/LocalSearchItem;->setRank(F)V

    return-void
.end method

.method static updateRank(Lcom/evie/search/model/LocalSearchItem;Ljava/lang/String;I)V
    .locals 8

    if-nez p0, :cond_0

    return-void

    .line 202
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p2

    int-to-float p2, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 205
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 206
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 207
    invoke-virtual {p0}, Lcom/evie/search/model/LocalSearchItem;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/evie/search/local/LocalSearchUtil;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-char v6, v2, v5

    .line 208
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 212
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v3, p1

    :goto_1
    if-ge v4, v3, :cond_3

    aget-char v5, p1, v4

    .line 213
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v2, v6

    .line 216
    :cond_2
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 218
    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v2, p1

    const p1, 0x3f19999a    # 0.6f

    mul-float p2, p2, p1

    const p1, 0x3e4ccccd    # 0.2f

    mul-float v2, v2, p1

    add-float/2addr p2, v2

    .line 223
    invoke-virtual {p0}, Lcom/evie/search/model/LocalSearchItem;->getRank()F

    move-result p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_4

    .line 224
    invoke-virtual {p0, p2}, Lcom/evie/search/model/LocalSearchItem;->setRank(F)V

    :cond_4
    return-void
.end method
