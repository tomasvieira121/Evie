.class public Lcom/voxel/launcher3/shortcuts/DeepShortcutParser;
.super Ljava/lang/Object;
.source "DeepShortcutParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeepShortcutParser"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createShortcutFromManifest(Landroid/content/res/Resources;ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IIIIIZ)Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;
    .locals 1

    .line 237
    new-instance p1, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;

    invoke-direct {p1}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;-><init>()V

    .line 238
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p1, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;->mUserHandle:Lcom/voxel/launcher3/compat/UserHandleCompat;

    .line 239
    iput-object p2, p1, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;->mId:Ljava/lang/String;

    .line 240
    iput-object p3, p1, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;->mPackage:Ljava/lang/String;

    .line 241
    iput-object p4, p1, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;->mActivity:Landroid/content/ComponentName;

    .line 242
    iput p8, p1, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;->mRank:I

    .line 243
    iput-boolean p10, p1, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;->mEnabled:Z

    if-eqz p5, :cond_0

    .line 246
    invoke-virtual {p0, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;->mShortLabel:Ljava/lang/CharSequence;

    :cond_0
    if-eqz p6, :cond_1

    .line 249
    invoke-virtual {p0, p6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;->mLongLabel:Ljava/lang/CharSequence;

    :cond_1
    if-eqz p7, :cond_2

    .line 252
    invoke-virtual {p0, p7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;->mDisabledMessage:Ljava/lang/CharSequence;

    .line 254
    :cond_2
    iput p9, p1, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;->mIconResId:I

    return-object p1
.end method

.method private static parseShortcutAttributes(Landroid/content/res/Resources;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/ComponentName;II)Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;
    .locals 11

    move-object v0, p1

    move-object v4, p3

    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "shortcutId"

    .line 202
    invoke-interface {p1, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v3, "enabled"

    const/4 v5, 0x1

    .line 203
    invoke-interface {p1, v1, v3, v5}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v3, "icon"

    const/4 v5, 0x0

    .line 204
    invoke-interface {p1, v1, v3, v5}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v3, "shortcutShortLabel"

    .line 205
    invoke-interface {p1, v1, v3, v5}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v3, "shortcutLongLabel"

    .line 206
    invoke-interface {p1, v1, v3, v5}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v3, "shortcutDisabledMessage"

    .line 207
    invoke-interface {p1, v1, v3, v5}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 209
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 210
    sget-object v0, Lcom/voxel/launcher3/shortcuts/DeepShortcutParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android:shortcutId must be provided. activity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    if-nez v6, :cond_1

    .line 214
    sget-object v0, Lcom/voxel/launcher3/shortcuts/DeepShortcutParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android:shortcutShortLabel must be provided. activity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    move-object v0, p0

    move v1, p4

    move-object v3, p2

    move-object v4, p3

    move v5, v6

    move v6, v7

    move v7, v8

    move/from16 v8, p5

    .line 218
    invoke-static/range {v0 .. v10}, Lcom/voxel/launcher3/shortcuts/DeepShortcutParser;->createShortcutFromManifest(Landroid/content/res/Resources;ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IIIIIZ)Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;

    move-result-object v0

    return-object v0
.end method

.method public static parseShortcutsFile(Landroid/content/res/Resources;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/lang/String;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez v1, :cond_1

    .line 65
    :try_start_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 192
    instance-of v2, v1, Landroid/content/res/XmlResourceParser;

    if-eqz v2, :cond_0

    .line 193
    check-cast v1, Landroid/content/res/XmlResourceParser;

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    return-object v0

    .line 68
    :cond_1
    :try_start_1
    new-instance v9, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v10, p2

    invoke-direct {v9, v10, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v11

    .line 82
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 85
    :goto_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v7, 0x1

    if-eq v3, v7, :cond_14

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 86
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-lez v5, :cond_14

    .line 87
    :cond_2
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 88
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x2

    if-ne v3, v4, :cond_8

    if-ne v5, v13, :cond_8

    const-string v14, "shortcut"

    .line 91
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    if-nez v15, :cond_3

    const/4 v13, 0x0

    move-object/from16 v3, p0

    move/from16 v17, v8

    goto/16 :goto_4

    .line 99
    :cond_3
    invoke-virtual {v15}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 100
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 101
    sget-object v3, Lcom/voxel/launcher3/shortcuts/DeepShortcutParser;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Shortcut "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has no intent. Skipping it."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 106
    :cond_4
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 107
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const/4 v3, 0x4

    if-lt v8, v3, :cond_7

    .line 111
    sget-object v3, Lcom/voxel/launcher3/shortcuts/DeepShortcutParser;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "More than 4 shortcuts found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Skipping the rest."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_6

    .line 192
    instance-of v0, v1, Landroid/content/res/XmlResourceParser;

    if-eqz v0, :cond_6

    .line 193
    move-object v0, v1

    check-cast v0, Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6
    return-object v2

    .line 117
    :cond_7
    :try_start_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v7

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    const v4, 0x1000c000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    :try_start_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v7

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    iput-object v3, v15, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;->mIntent:Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    :try_start_4
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 132
    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v16, v16, 0x1

    const/4 v15, 0x0

    goto/16 :goto_0

    .line 127
    :catch_0
    sget-object v3, Lcom/voxel/launcher3/shortcuts/DeepShortcutParser;->TAG:Ljava/lang/String;

    const-string v4, "Shortcut\'s extras contain un-persistable values. Skipping it."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_8
    if-eq v3, v13, :cond_9

    const/4 v13, 0x0

    move-object/from16 v3, p0

    move/from16 v17, v8

    goto/16 :goto_4

    :cond_9
    if-ne v5, v7, :cond_a

    const-string v3, "shortcuts"

    .line 143
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v13, 0x0

    move-object/from16 v3, p0

    move/from16 v17, v8

    goto/16 :goto_4

    :cond_a
    if-ne v5, v13, :cond_e

    const-string v3, "shortcut"

    .line 146
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v13, 0x0

    move-object/from16 v3, p0

    move-object v4, v11

    move-object/from16 v5, p2

    move-object v6, v9

    const/4 v14, 0x1

    move v7, v13

    move/from16 v17, v8

    move/from16 v8, v16

    .line 147
    invoke-static/range {v3 .. v8}, Lcom/voxel/launcher3/shortcuts/DeepShortcutParser;->parseShortcutAttributes(Landroid/content/res/Resources;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/ComponentName;II)Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;

    move-result-object v3

    if-nez v3, :cond_b

    const/4 v13, 0x0

    move-object/from16 v3, p0

    goto/16 :goto_4

    .line 154
    :cond_b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v14

    :goto_2
    if-ltz v4, :cond_d

    .line 155
    invoke-virtual {v3}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;

    invoke-virtual {v6}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 156
    sget-object v3, Lcom/voxel/launcher3/shortcuts/DeepShortcutParser;->TAG:Ljava/lang/String;

    const-string v4, "Duplicate shortcut ID detected. Skipping it."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    move-object/from16 v3, p0

    goto/16 :goto_4

    :cond_c
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_d
    move-object v15, v3

    move/from16 v8, v17

    goto/16 :goto_0

    :cond_e
    move/from16 v17, v8

    const/4 v14, 0x1

    if-ne v5, v4, :cond_12

    const-string v3, "intent"

    .line 164
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    if-eqz v15, :cond_11

    .line 166
    invoke-virtual {v15}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompatV16;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_f

    move-object/from16 v3, p0

    goto :goto_3

    :cond_f
    move-object/from16 v3, p0

    .line 171
    invoke-static {v3, v1, v11}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v4

    .line 173
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 174
    sget-object v4, Lcom/voxel/launcher3/shortcuts/DeepShortcutParser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Shortcut intent action must be provided. activity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v8, v17

    const/4 v15, 0x0

    goto/16 :goto_0

    .line 178
    :cond_10
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    goto :goto_4

    :cond_11
    move-object/from16 v3, p0

    .line 167
    :goto_3
    sget-object v4, Lcom/voxel/launcher3/shortcuts/DeepShortcutParser;->TAG:Ljava/lang/String;

    const-string v5, "Ignoring excessive intent tag."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    goto :goto_4

    :cond_12
    move-object/from16 v3, p0

    if-ne v5, v4, :cond_13

    const-string v4, "categories"

    .line 181
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 v13, 0x0

    goto :goto_4

    .line 185
    :cond_13
    sget-object v4, Lcom/voxel/launcher3/shortcuts/DeepShortcutParser;->TAG:Ljava/lang/String;

    const-string v7, "Invalid tag \'%s\' found at depth %d"

    new-array v8, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v6, v8, v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v14

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_4
    move/from16 v8, v17

    goto/16 :goto_0

    :cond_14
    if-eqz v1, :cond_15

    .line 192
    instance-of v0, v1, Landroid/content/res/XmlResourceParser;

    if-eqz v0, :cond_15

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    .line 190
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_15

    .line 192
    instance-of v0, v1, Landroid/content/res/XmlResourceParser;

    if-eqz v0, :cond_15

    goto :goto_5

    :catch_2
    move-exception v0

    .line 188
    :try_start_6
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_15

    .line 192
    instance-of v0, v1, Landroid/content/res/XmlResourceParser;

    if-eqz v0, :cond_15

    .line 193
    :goto_5
    move-object v0, v1

    check-cast v0, Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_15
    return-object v2

    :goto_6
    if-eqz v1, :cond_16

    .line 192
    instance-of v2, v1, Landroid/content/res/XmlResourceParser;

    if-eqz v2, :cond_16

    .line 193
    check-cast v1, Landroid/content/res/XmlResourceParser;

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 195
    :cond_16
    throw v0

    return-void
.end method
