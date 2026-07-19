.class public Lcom/evie/common/iconpack/shader/IconPackShader;
.super Ljava/lang/Object;
.source "IconPackShader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IconPackShader"


# instance fields
.field private bufferRegister:Lcom/evie/common/iconpack/shader/ShaderRegister;

.field private iconRegister:Lcom/evie/common/iconpack/shader/ShaderRegister;

.field private final mContext:Landroid/content/Context;

.field private mDisabled:Z

.field private mLoaded:Z

.field private final mPackageName:Ljava/lang/String;

.field private mShaderInstructions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/common/iconpack/shader/ShaderInstruction;",
            ">;"
        }
    .end annotation
.end field

.field private final mVersionCode:I

.field private outputRegister:Lcom/evie/common/iconpack/shader/ShaderRegister;

.field private pixels:[I

.field private usesBuffer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/evie/common/iconpack/shader/IconPackShader;->mLoaded:Z

    .line 41
    iput-boolean v0, p0, Lcom/evie/common/iconpack/shader/IconPackShader;->mDisabled:Z

    .line 51
    iput-object p1, p0, Lcom/evie/common/iconpack/shader/IconPackShader;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/evie/common/iconpack/shader/IconPackShader;->mPackageName:Ljava/lang/String;

    .line 53
    iput p3, p0, Lcom/evie/common/iconpack/shader/IconPackShader;->mVersionCode:I

    .line 55
    invoke-virtual {p0}, Lcom/evie/common/iconpack/shader/IconPackShader;->load()V

    return-void
.end method

.method private static parseInstruction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/evie/common/iconpack/shader/ShaderInstruction;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-eqz v0, :cond_10

    .line 180
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_10

    if-eqz v1, :cond_10

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_10

    if-eqz v2, :cond_10

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v4, 0x0

    .line 192
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    const/16 v7, 0x41

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-eq v1, v7, :cond_5

    const/16 v7, 0x44

    if-eq v1, v7, :cond_4

    const/16 v7, 0x4d

    if-eq v1, v7, :cond_3

    const/16 v7, 0x53

    if-eq v1, v7, :cond_2

    const/16 v7, 0x57

    if-eq v1, v7, :cond_1

    return-object v3

    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    :cond_2
    const/4 v13, 0x4

    goto :goto_0

    :cond_3
    const/4 v13, 0x1

    goto :goto_0

    :cond_4
    const/4 v13, 0x2

    goto :goto_0

    :cond_5
    const/4 v13, 0x3

    .line 220
    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    .line 221
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    const/16 v7, 0x4f

    const/16 v10, 0x42

    if-eq v1, v10, :cond_7

    if-eq v1, v7, :cond_6

    return-object v3

    :cond_6
    const/4 v11, 0x2

    goto :goto_1

    :cond_7
    const/4 v11, 0x1

    :goto_1
    const/16 v1, 0x47

    const/16 v12, 0x52

    if-eq v0, v1, :cond_9

    if-eq v0, v12, :cond_8

    packed-switch v0, :pswitch_data_0

    return-object v3

    :pswitch_0
    const/4 v0, 0x3

    goto :goto_2

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_8
    const/4 v0, 0x1

    goto :goto_2

    :cond_9
    const/4 v0, 0x2

    .line 260
    :goto_2
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v17, v1

    const/16 v16, 0x1

    goto :goto_3

    :catch_0
    const/4 v1, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_3
    const/4 v1, -0x1

    if-nez v16, :cond_f

    .line 268
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v5, :cond_a

    return-object v3

    .line 271
    :cond_a
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    .line 272
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    if-eq v1, v10, :cond_d

    const/16 v10, 0x49

    if-eq v1, v10, :cond_c

    if-eq v1, v7, :cond_b

    return-object v3

    :cond_b
    const/4 v1, 0x2

    goto :goto_4

    :cond_c
    const/4 v1, 0x0

    goto :goto_4

    :cond_d
    const/4 v1, 0x1

    :goto_4
    if-eq v2, v12, :cond_e

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    return-object v3

    :pswitch_2
    move v14, v1

    const/4 v15, 0x4

    goto :goto_5

    :pswitch_3
    const/4 v5, 0x5

    move v14, v1

    const/4 v15, 0x5

    goto :goto_5

    :pswitch_4
    move v14, v1

    const/4 v15, 0x2

    goto :goto_5

    :pswitch_5
    move v14, v1

    const/4 v15, 0x3

    goto :goto_5

    :pswitch_6
    move v14, v1

    const/4 v15, 0x0

    goto :goto_5

    :cond_e
    move v14, v1

    const/4 v15, 0x1

    goto :goto_5

    :cond_f
    const/4 v14, -0x1

    const/4 v15, -0x1

    .line 322
    :goto_5
    new-instance v1, Lcom/evie/common/iconpack/shader/ShaderInstruction;

    move-object v10, v1

    move v12, v0

    invoke-direct/range {v10 .. v17}, Lcom/evie/common/iconpack/shader/ShaderInstruction;-><init>(IIIIIZF)V

    return-object v1

    :cond_10
    :goto_6
    return-object v3

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x47
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public load()V
    .locals 7

    .line 120
    iget-boolean v0, p0, Lcom/evie/common/iconpack/shader/IconPackShader;->mDisabled:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/evie/common/iconpack/shader/IconPackShader;->mLoaded:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/evie/common/iconpack/shader/IconPackShader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 127
    :try_start_0
    iget-object v2, p0, Lcom/evie/common/iconpack/shader/IconPackShader;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "shader"

    const-string v3, "xml"

    .line 128
    iget-object v4, p0, Lcom/evie/common/iconpack/shader/IconPackShader;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    .line 130
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v2, v0

    goto :goto_1

    .line 134
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "shader.xml"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 136
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 137
    invoke-virtual {v2, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 138
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    const-string v4, "utf-8"

    .line 139
    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v3

    .line 141
    :goto_0
    :try_start_3
    sget-object v4, Lcom/evie/common/iconpack/shader/IconPackShader;->TAG:Ljava/lang/String;

    const-string v5, "No shader.xml file"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_4

    .line 147
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    :goto_2
    if-eq v4, v1, :cond_4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 150
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "exec"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    .line 151
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    const-string v4, "t"

    .line 152
    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "m"

    invoke-interface {v2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "v"

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/evie/common/iconpack/shader/IconPackShader;->parseInstruction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/evie/common/iconpack/shader/ShaderInstruction;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 153
    invoke-virtual {v4}, Lcom/evie/common/iconpack/shader/ShaderInstruction;->verify()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 154
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget v5, v4, Lcom/evie/common/iconpack/shader/ShaderInstruction;->inputRegister:I

    if-eq v5, v1, :cond_2

    iget v4, v4, Lcom/evie/common/iconpack/shader/ShaderInstruction;->targetRegister:I

    if-ne v4, v1, :cond_3

    .line 157
    :cond_2
    iput-boolean v1, p0, Lcom/evie/common/iconpack/shader/IconPackShader;->usesBuffer:Z

    .line 161
    :cond_3
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_2

    .line 165
    :cond_4
    iput-object v0, p0, Lcom/evie/common/iconpack/shader/IconPackShader;->mShaderInstructions:Ljava/util/List;

    .line 166
    iput-boolean v1, p0, Lcom/evie/common/iconpack/shader/IconPackShader;->mLoaded:Z
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 174
    sget-object v2, Lcom/evie/common/iconpack/shader/IconPackShader;->TAG:Ljava/lang/String;

    const-string v3, "IOException during loading of shader.xml"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    iput-boolean v1, p0, Lcom/evie/common/iconpack/shader/IconPackShader;->mDisabled:Z

    goto :goto_3

    :catch_3
    move-exception v0

    .line 171
    sget-object v2, Lcom/evie/common/iconpack/shader/IconPackShader;->TAG:Ljava/lang/String;

    const-string v3, "Cannot parse shader.xml"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    iput-boolean v1, p0, Lcom/evie/common/iconpack/shader/IconPackShader;->mDisabled:Z

    goto :goto_3

    :catch_4
    move-exception v0

    .line 168
    sget-object v2, Lcom/evie/common/iconpack/shader/IconPackShader;->TAG:Ljava/lang/String;

    const-string v3, "Cannot load shader"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    iput-boolean v1, p0, Lcom/evie/common/iconpack/shader/IconPackShader;->mDisabled:Z

    :goto_3
    return-void

    :cond_5
    :goto_4
    return-void
.end method

.method public processBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 16

    move-object/from16 v0, p0

    const/4 v9, 0x0

    if-nez p1, :cond_0

    return-object v9

    .line 329
    :cond_0
    iget-boolean v1, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->mDisabled:Z

    if-nez v1, :cond_12

    iget-object v1, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->mShaderInstructions:Ljava/util/List;

    if-eqz v1, :cond_12

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_7

    .line 332
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 333
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    mul-int v12, v10, v11

    .line 337
    iget-object v1, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->pixels:[I

    if-eqz v1, :cond_2

    array-length v1, v1

    if-ge v1, v12, :cond_3

    .line 338
    :cond_2
    new-array v1, v12, [I

    iput-object v1, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->pixels:[I

    .line 341
    :cond_3
    iget-object v1, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->iconRegister:Lcom/evie/common/iconpack/shader/ShaderRegister;

    if-nez v1, :cond_4

    .line 342
    new-instance v1, Lcom/evie/common/iconpack/shader/ShaderRegister;

    invoke-direct {v1}, Lcom/evie/common/iconpack/shader/ShaderRegister;-><init>()V

    iput-object v1, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->iconRegister:Lcom/evie/common/iconpack/shader/ShaderRegister;

    .line 344
    :cond_4
    iget-object v1, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->iconRegister:Lcom/evie/common/iconpack/shader/ShaderRegister;

    invoke-virtual {v1, v12}, Lcom/evie/common/iconpack/shader/ShaderRegister;->setSize(I)V

    .line 346
    iget-object v1, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->outputRegister:Lcom/evie/common/iconpack/shader/ShaderRegister;

    if-nez v1, :cond_5

    .line 347
    new-instance v1, Lcom/evie/common/iconpack/shader/ShaderRegister;

    invoke-direct {v1}, Lcom/evie/common/iconpack/shader/ShaderRegister;-><init>()V

    iput-object v1, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->outputRegister:Lcom/evie/common/iconpack/shader/ShaderRegister;

    .line 349
    :cond_5
    iget-object v1, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->outputRegister:Lcom/evie/common/iconpack/shader/ShaderRegister;

    invoke-virtual {v1, v12}, Lcom/evie/common/iconpack/shader/ShaderRegister;->setSize(I)V

    .line 351
    iget-boolean v1, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->usesBuffer:Z

    if-eqz v1, :cond_7

    .line 352
    iget-object v1, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->bufferRegister:Lcom/evie/common/iconpack/shader/ShaderRegister;

    if-nez v1, :cond_6

    .line 353
    new-instance v1, Lcom/evie/common/iconpack/shader/ShaderRegister;

    invoke-direct {v1}, Lcom/evie/common/iconpack/shader/ShaderRegister;-><init>()V

    iput-object v1, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->bufferRegister:Lcom/evie/common/iconpack/shader/ShaderRegister;

    .line 355
    :cond_6
    iget-object v1, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->bufferRegister:Lcom/evie/common/iconpack/shader/ShaderRegister;

    invoke-virtual {v1, v12}, Lcom/evie/common/iconpack/shader/ShaderRegister;->setSize(I)V

    .line 358
    :cond_7
    iget-object v2, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->pixels:[I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move v4, v10

    move v7, v10

    move v8, v11

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 360
    iget-object v1, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->iconRegister:Lcom/evie/common/iconpack/shader/ShaderRegister;

    iget-object v2, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->pixels:[I

    invoke-virtual {v1, v2, v12}, Lcom/evie/common/iconpack/shader/ShaderRegister;->setPixels([II)V

    .line 363
    iget-object v1, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->pixels:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 365
    iget-object v1, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->outputRegister:Lcom/evie/common/iconpack/shader/ShaderRegister;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v12}, Lcom/evie/common/iconpack/shader/ShaderRegister;->writeValue(IFI)V

    .line 366
    iget-object v1, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->outputRegister:Lcom/evie/common/iconpack/shader/ShaderRegister;

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v3, v12}, Lcom/evie/common/iconpack/shader/ShaderRegister;->writeValue(IFI)V

    .line 367
    iget-object v1, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->outputRegister:Lcom/evie/common/iconpack/shader/ShaderRegister;

    const/4 v5, 0x3

    invoke-virtual {v1, v5, v3, v12}, Lcom/evie/common/iconpack/shader/ShaderRegister;->writeValue(IFI)V

    .line 368
    iget-object v1, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->outputRegister:Lcom/evie/common/iconpack/shader/ShaderRegister;

    const/4 v6, 0x2

    invoke-virtual {v1, v6, v3, v12}, Lcom/evie/common/iconpack/shader/ShaderRegister;->writeValue(IFI)V

    .line 370
    iget-object v1, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->bufferRegister:Lcom/evie/common/iconpack/shader/ShaderRegister;

    if-eqz v1, :cond_8

    .line 371
    invoke-virtual {v1, v2, v3, v12}, Lcom/evie/common/iconpack/shader/ShaderRegister;->writeValue(IFI)V

    .line 372
    iget-object v1, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->bufferRegister:Lcom/evie/common/iconpack/shader/ShaderRegister;

    invoke-virtual {v1, v4, v3, v12}, Lcom/evie/common/iconpack/shader/ShaderRegister;->writeValue(IFI)V

    .line 373
    iget-object v1, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->bufferRegister:Lcom/evie/common/iconpack/shader/ShaderRegister;

    invoke-virtual {v1, v5, v3, v12}, Lcom/evie/common/iconpack/shader/ShaderRegister;->writeValue(IFI)V

    .line 374
    iget-object v1, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->bufferRegister:Lcom/evie/common/iconpack/shader/ShaderRegister;

    invoke-virtual {v1, v6, v3, v12}, Lcom/evie/common/iconpack/shader/ShaderRegister;->writeValue(IFI)V

    .line 377
    :cond_8
    iget-object v1, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->mShaderInstructions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evie/common/iconpack/shader/ShaderInstruction;

    .line 384
    iget-boolean v8, v3, Lcom/evie/common/iconpack/shader/ShaderInstruction;->hasValue:Z

    .line 385
    iget v13, v3, Lcom/evie/common/iconpack/shader/ShaderInstruction;->value:F

    .line 387
    iget v14, v3, Lcom/evie/common/iconpack/shader/ShaderInstruction;->targetRegister:I

    packed-switch v14, :pswitch_data_0

    .line 397
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal target register: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/evie/common/iconpack/shader/ShaderInstruction;->targetRegister:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 393
    :pswitch_0
    iget-object v14, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->outputRegister:Lcom/evie/common/iconpack/shader/ShaderRegister;

    goto :goto_1

    .line 389
    :pswitch_1
    iget-object v14, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->bufferRegister:Lcom/evie/common/iconpack/shader/ShaderRegister;

    .line 401
    :goto_1
    iget v15, v3, Lcom/evie/common/iconpack/shader/ShaderInstruction;->targetChannel:I

    .line 403
    iget-boolean v7, v3, Lcom/evie/common/iconpack/shader/ShaderInstruction;->hasValue:Z

    if-nez v7, :cond_9

    .line 405
    iget v7, v3, Lcom/evie/common/iconpack/shader/ShaderInstruction;->inputRegister:I

    packed-switch v7, :pswitch_data_1

    .line 419
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal target register: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/evie/common/iconpack/shader/ShaderInstruction;->targetRegister:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 415
    :pswitch_2
    iget-object v7, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->outputRegister:Lcom/evie/common/iconpack/shader/ShaderRegister;

    goto :goto_2

    .line 411
    :pswitch_3
    iget-object v7, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->bufferRegister:Lcom/evie/common/iconpack/shader/ShaderRegister;

    goto :goto_2

    .line 407
    :pswitch_4
    iget-object v7, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->iconRegister:Lcom/evie/common/iconpack/shader/ShaderRegister;

    .line 423
    :goto_2
    iget v9, v3, Lcom/evie/common/iconpack/shader/ShaderInstruction;->inputChannel:I

    packed-switch v9, :pswitch_data_2

    const/4 v9, -0x1

    goto :goto_3

    .line 434
    :pswitch_5
    invoke-virtual {v7}, Lcom/evie/common/iconpack/shader/ShaderRegister;->getBrightness()F

    move-result v13

    const/4 v8, 0x1

    const/4 v9, -0x1

    goto :goto_3

    .line 429
    :pswitch_6
    iget v9, v3, Lcom/evie/common/iconpack/shader/ShaderInstruction;->inputChannel:I

    goto :goto_3

    :cond_9
    const/4 v7, 0x0

    const/4 v9, -0x1

    .line 441
    :goto_3
    iget v5, v3, Lcom/evie/common/iconpack/shader/ShaderInstruction;->mode:I

    packed-switch v5, :pswitch_data_3

    .line 483
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid mode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/evie/common/iconpack/shader/ShaderInstruction;->mode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_7
    if-eqz v8, :cond_a

    .line 460
    invoke-virtual {v14, v15, v13, v12}, Lcom/evie/common/iconpack/shader/ShaderRegister;->subtractValue(IFI)V

    goto :goto_4

    .line 462
    :cond_a
    invoke-virtual {v7, v9}, Lcom/evie/common/iconpack/shader/ShaderRegister;->getChannel(I)[F

    move-result-object v3

    invoke-virtual {v14, v15, v3, v12}, Lcom/evie/common/iconpack/shader/ShaderRegister;->subtractChannel(I[FI)V

    goto :goto_4

    :pswitch_8
    if-eqz v8, :cond_b

    .line 452
    invoke-virtual {v14, v15, v13, v12}, Lcom/evie/common/iconpack/shader/ShaderRegister;->addValue(IFI)V

    goto :goto_4

    .line 454
    :cond_b
    invoke-virtual {v7, v9}, Lcom/evie/common/iconpack/shader/ShaderRegister;->getChannel(I)[F

    move-result-object v3

    invoke-virtual {v14, v15, v3, v12}, Lcom/evie/common/iconpack/shader/ShaderRegister;->addChannel(I[FI)V

    goto :goto_4

    :pswitch_9
    if-eqz v8, :cond_c

    .line 476
    invoke-virtual {v14, v15, v13, v12}, Lcom/evie/common/iconpack/shader/ShaderRegister;->divideValue(IFI)V

    goto :goto_4

    .line 478
    :cond_c
    invoke-virtual {v7, v9}, Lcom/evie/common/iconpack/shader/ShaderRegister;->getChannel(I)[F

    move-result-object v3

    invoke-virtual {v14, v15, v3, v12}, Lcom/evie/common/iconpack/shader/ShaderRegister;->divideChannel(I[FI)V

    goto :goto_4

    :pswitch_a
    if-eqz v8, :cond_d

    .line 468
    invoke-virtual {v14, v15, v13, v12}, Lcom/evie/common/iconpack/shader/ShaderRegister;->multiplyValue(IFI)V

    goto :goto_4

    .line 470
    :cond_d
    invoke-virtual {v7, v9}, Lcom/evie/common/iconpack/shader/ShaderRegister;->getChannel(I)[F

    move-result-object v3

    invoke-virtual {v14, v15, v3, v12}, Lcom/evie/common/iconpack/shader/ShaderRegister;->multiplyChannel(I[FI)V

    goto :goto_4

    :pswitch_b
    if-eqz v8, :cond_e

    .line 444
    invoke-virtual {v14, v15, v13, v12}, Lcom/evie/common/iconpack/shader/ShaderRegister;->writeValue(IFI)V

    goto :goto_4

    .line 446
    :cond_e
    invoke-virtual {v7, v9}, Lcom/evie/common/iconpack/shader/ShaderRegister;->getChannel(I)[F

    move-result-object v3

    invoke-virtual {v14, v15, v3, v12}, Lcom/evie/common/iconpack/shader/ShaderRegister;->writeChannel(I[FI)V

    :goto_4
    const/4 v5, 0x3

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 488
    :cond_f
    iget-object v1, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->outputRegister:Lcom/evie/common/iconpack/shader/ShaderRegister;

    invoke-virtual {v1, v2}, Lcom/evie/common/iconpack/shader/ShaderRegister;->getChannel(I)[F

    move-result-object v1

    .line 489
    iget-object v3, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->outputRegister:Lcom/evie/common/iconpack/shader/ShaderRegister;

    invoke-virtual {v3, v4}, Lcom/evie/common/iconpack/shader/ShaderRegister;->getChannel(I)[F

    move-result-object v3

    .line 490
    iget-object v4, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->outputRegister:Lcom/evie/common/iconpack/shader/ShaderRegister;

    invoke-virtual {v4, v6}, Lcom/evie/common/iconpack/shader/ShaderRegister;->getChannel(I)[F

    move-result-object v4

    .line 491
    iget-object v5, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->outputRegister:Lcom/evie/common/iconpack/shader/ShaderRegister;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/evie/common/iconpack/shader/ShaderRegister;->getChannel(I)[F

    move-result-object v5

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v12, :cond_10

    .line 493
    aget v7, v1, v6

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 494
    aget v8, v3, v6

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 495
    aget v9, v4, v6

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 496
    aget v13, v5, v6

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    const/16 v14, 0xff

    .line 498
    invoke-static {v7, v14}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 499
    invoke-static {v8, v14}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 500
    invoke-static {v9, v14}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 501
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 504
    iget-object v14, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->pixels:[I

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v7, v8

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v7, v9

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v7, v13

    aput v7, v14, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 509
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-nez v1, :cond_11

    .line 510
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_6

    .line 512
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    .line 514
    :goto_6
    iget-object v3, v0, Lcom/evie/common/iconpack/shader/IconPackShader;->pixels:[I

    invoke-static {v3, v10, v11, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 515
    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    return-object v1

    :cond_12
    :goto_7
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public releaseRegisters()V
    .locals 1

    const/4 v0, 0x0

    .line 521
    iput-object v0, p0, Lcom/evie/common/iconpack/shader/IconPackShader;->iconRegister:Lcom/evie/common/iconpack/shader/ShaderRegister;

    .line 522
    iput-object v0, p0, Lcom/evie/common/iconpack/shader/IconPackShader;->bufferRegister:Lcom/evie/common/iconpack/shader/ShaderRegister;

    .line 523
    iput-object v0, p0, Lcom/evie/common/iconpack/shader/IconPackShader;->outputRegister:Lcom/evie/common/iconpack/shader/ShaderRegister;

    .line 524
    iput-object v0, p0, Lcom/evie/common/iconpack/shader/IconPackShader;->pixels:[I

    return-void
.end method
