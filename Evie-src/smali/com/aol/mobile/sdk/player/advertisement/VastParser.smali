.class public Lcom/aol/mobile/sdk/player/advertisement/VastParser;
.super Ljava/lang/Object;
.source "VastParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addTracker(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 148
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static getNestingValue(IZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v3, 0x0

    .line 42
    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 43
    new-instance v2, Ljava/io/StringReader;

    move-object/from16 v4, p0

    invoke-direct {v2, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 46
    :try_start_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    const-string v4, "VAST"

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 47
    invoke-interface {v1, v5, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    move-object v8, v6

    move-object v9, v8

    move-object v11, v9

    move-object v15, v11

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v16, 0x0

    .line 48
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v4, :cond_1a

    .line 50
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    move/from16 v5, v16

    move-object/from16 v16, v11

    const/4 v11, 0x2

    goto/16 :goto_4

    :cond_0
    const-string v4, "Ad"

    .line 54
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 55
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    const/4 v4, 0x0

    .line 56
    :goto_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 57
    invoke-interface {v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sequence"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    .line 142
    invoke-virtual {v2}, Ljava/io/StringReader;->close()V

    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_1
    :try_start_1
    invoke-interface {v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 61
    invoke-interface {v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v15

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    const/4 v5, 0x2

    goto :goto_0

    .line 65
    :cond_4
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    move-object/from16 v16, v11

    goto/16 :goto_c

    :cond_5
    const/4 v5, 0x3

    .line 69
    :cond_6
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v17, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v5, "TrackingEvents"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v17, 0x0

    goto :goto_2

    :sswitch_1
    const-string v5, "Wrapper"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x4

    const/16 v17, 0x4

    goto :goto_2

    :sswitch_2
    const-string v5, "Linear"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v17, 0x2

    goto :goto_2

    :sswitch_3
    const-string v5, "VideoClicks"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v17, 0x1

    goto :goto_2

    :sswitch_4
    const-string v5, "InLine"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v17, 0x3

    :cond_7
    :goto_2
    packed-switch v17, :pswitch_data_0

    move/from16 v5, v16

    .line 87
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    move-object/from16 v16, v11

    const/4 v11, 0x2

    goto :goto_3

    .line 83
    :pswitch_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    move/from16 v5, v16

    invoke-static {v4, v5}, Lcom/aol/mobile/sdk/player/advertisement/VastParser;->getNestingValue(IZ)Z

    move-result v16

    const/4 v4, 0x1

    const/4 v5, 0x2

    goto/16 :goto_0

    :pswitch_1
    move/from16 v5, v16

    .line 80
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    invoke-static {v4, v12}, Lcom/aol/mobile/sdk/player/advertisement/VastParser;->getNestingValue(IZ)Z

    move-result v12

    move/from16 v16, v5

    const/4 v4, 0x1

    const/4 v5, 0x2

    goto/16 :goto_0

    :pswitch_2
    move/from16 v5, v16

    .line 77
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    invoke-static {v4, v10}, Lcom/aol/mobile/sdk/player/advertisement/VastParser;->getNestingValue(IZ)Z

    move-result v10

    move/from16 v16, v5

    const/4 v4, 0x1

    const/4 v5, 0x2

    goto/16 :goto_0

    :pswitch_3
    move/from16 v5, v16

    .line 74
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    invoke-static {v4, v3}, Lcom/aol/mobile/sdk/player/advertisement/VastParser;->getNestingValue(IZ)Z

    move-result v3

    move/from16 v16, v5

    const/4 v4, 0x1

    const/4 v5, 0x2

    goto/16 :goto_0

    :pswitch_4
    move/from16 v5, v16

    .line 71
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    invoke-static {v4, v7}, Lcom/aol/mobile/sdk/player/advertisement/VastParser;->getNestingValue(IZ)Z

    move-result v7

    move/from16 v16, v5

    const/4 v4, 0x1

    const/4 v5, 0x2

    goto/16 :goto_0

    :goto_3
    if-eq v4, v11, :cond_8

    :goto_4
    move-object/from16 v11, v16

    const/4 v4, 0x1

    move/from16 v16, v5

    const/4 v5, 0x2

    goto/16 :goto_0

    :cond_8
    if-nez v12, :cond_a

    if-eqz v5, :cond_9

    goto :goto_5

    :cond_9
    move/from16 v17, v3

    goto/16 :goto_8

    :cond_a
    :goto_5
    const-string v4, "Impression"

    .line 92
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "Error"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 93
    :cond_b
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/aol/mobile/sdk/player/advertisement/VastParser;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6, v0}, Lcom/aol/mobile/sdk/player/advertisement/VastParser;->addTracker(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_c
    if-eqz v10, :cond_11

    if-eqz v3, :cond_d

    const-string v4, "ClickTracking"

    .line 96
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 97
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/aol/mobile/sdk/player/advertisement/VastParser;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6, v0}, Lcom/aol/mobile/sdk/player/advertisement/VastParser;->addTracker(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_d
    if-eqz v7, :cond_10

    const-string v4, "Tracking"

    .line 99
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x0

    .line 101
    :goto_6
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v11

    if-ge v4, v11, :cond_f

    .line 102
    invoke-interface {v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v11

    move/from16 v17, v3

    const-string v3, "event"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 103
    invoke-interface {v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_e
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v17

    goto :goto_6

    :cond_f
    move/from16 v17, v3

    const/4 v3, 0x0

    .line 107
    :goto_7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 108
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/aol/mobile/sdk/player/advertisement/VastParser;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3, v0}, Lcom/aol/mobile/sdk/player/advertisement/VastParser;->addTracker(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_8

    :cond_10
    move/from16 v17, v3

    goto :goto_8

    :cond_11
    move/from16 v17, v3

    :cond_12
    :goto_8
    if-eqz v12, :cond_17

    if-eqz v10, :cond_17

    const-string v3, "MediaFile"

    .line 114
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    if-nez v8, :cond_15

    const-string v3, "type"

    const/4 v4, 0x0

    .line 115
    invoke-interface {v1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v11, "scalable"

    .line 116
    invoke-interface {v1, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move/from16 v18, v7

    const-string v7, "maintainAspectRatio"

    .line 117
    invoke-interface {v1, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 118
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 119
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 121
    :cond_13
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 122
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    :cond_14
    const-string v4, "video/mp4"

    .line 124
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 125
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aol/mobile/sdk/player/advertisement/VastParser;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_9

    :cond_15
    move/from16 v18, v7

    :cond_16
    :goto_9
    const-string v3, "ClickThrough"

    .line 128
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    if-nez v9, :cond_18

    .line 129
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aol/mobile/sdk/player/advertisement/VastParser;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    goto :goto_a

    :cond_17
    move/from16 v18, v7

    :cond_18
    :goto_a
    if-eqz v5, :cond_19

    const-string v3, "VASTAdTagURI"

    .line 132
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 133
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aol/mobile/sdk/player/advertisement/VastParser;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    goto :goto_b

    :cond_19
    move-object/from16 v11, v16

    :goto_b
    move/from16 v16, v5

    move/from16 v3, v17

    move/from16 v7, v18

    const/4 v4, 0x1

    const/4 v5, 0x2

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v16, v11

    .line 136
    :goto_c
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 137
    new-instance v1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;

    new-instance v10, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;

    invoke-direct {v10, v0}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;-><init>(Ljava/util/HashMap;)V

    move-object v7, v1

    move v11, v13

    move v12, v14

    move-object v13, v15

    invoke-direct/range {v7 .. v13}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;ZZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    invoke-virtual {v2}, Ljava/io/StringReader;->close()V

    return-object v1

    .line 138
    :cond_1b
    :try_start_2
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 139
    new-instance v1, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;

    new-instance v12, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;

    invoke-direct {v12, v0}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;-><init>(Ljava/util/HashMap;)V

    move-object v10, v1

    move-object/from16 v11, v16

    invoke-direct/range {v10 .. v15}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;-><init>(Ljava/lang/String;Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd$Pixels;ZZLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    invoke-virtual {v2}, Ljava/io/StringReader;->close()V

    return-object v1

    :cond_1c
    invoke-virtual {v2}, Ljava/io/StringReader;->close()V

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/StringReader;->close()V

    throw v0

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d3bfd27 -> :sswitch_4
        -0x7a2ef3da -> :sswitch_3
        -0x785484bb -> :sswitch_2
        -0x3dade38d -> :sswitch_1
        0x247392d0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
