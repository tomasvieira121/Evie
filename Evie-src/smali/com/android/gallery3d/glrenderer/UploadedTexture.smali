.class public abstract Lcom/android/gallery3d/glrenderer/UploadedTexture;
.super Lcom/android/gallery3d/glrenderer/BasicTexture;
.source "UploadedTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/glrenderer/UploadedTexture$BorderKey;
    }
.end annotation


# static fields
.field private static sBorderKey:Lcom/android/gallery3d/glrenderer/UploadedTexture$BorderKey;

.field private static sBorderLines:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/gallery3d/glrenderer/UploadedTexture$BorderKey;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sUploadedCount:I


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field private mBorder:I

.field private mContentValid:Z

.field private mIsUploading:Z

.field private mOpaque:Z

.field private mThrottled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    .line 50
    new-instance v0, Lcom/android/gallery3d/glrenderer/UploadedTexture$BorderKey;

    invoke-direct {v0}, Lcom/android/gallery3d/glrenderer/UploadedTexture$BorderKey;-><init>()V

    sput-object v0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->sBorderKey:Lcom/android/gallery3d/glrenderer/UploadedTexture$BorderKey;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, v0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;-><init>(Z)V

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, v1, v0, v0}, Lcom/android/gallery3d/glrenderer/BasicTexture;-><init>(Lcom/android/gallery3d/glrenderer/GLCanvas;II)V

    const/4 v1, 0x1

    .line 54
    iput-boolean v1, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mContentValid:Z

    .line 57
    iput-boolean v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mIsUploading:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mOpaque:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mThrottled:Z

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->setBorder(Z)V

    .line 74
    iput v1, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    :cond_0
    return-void
.end method

.method private freeBitmap()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 150
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->onFreeBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .line 137
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->onGetBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 139
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 140
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 141
    iget v2, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mWidth:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 142
    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->setSize(II)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private static getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .locals 2

    .line 122
    sget-object v0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->sBorderKey:Lcom/android/gallery3d/glrenderer/UploadedTexture$BorderKey;

    .line 123
    iput-boolean p0, v0, Lcom/android/gallery3d/glrenderer/UploadedTexture$BorderKey;->vertical:Z

    .line 124
    iput-object p1, v0, Lcom/android/gallery3d/glrenderer/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;

    .line 125
    iput p2, v0, Lcom/android/gallery3d/glrenderer/UploadedTexture$BorderKey;->length:I

    .line 126
    sget-object v1, Lcom/android/gallery3d/glrenderer/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    .line 129
    invoke-static {v1, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    move-object v1, p0

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {p2, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    move-object v1, p0

    .line 131
    :goto_0
    sget-object p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/gallery3d/glrenderer/UploadedTexture$BorderKey;->clone()Lcom/android/gallery3d/glrenderer/UploadedTexture$BorderKey;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method private uploadToCanvas(Lcom/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    .line 214
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 217
    :try_start_0
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 218
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 219
    iget v1, v8, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    .line 220
    iget v1, v8, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->getTextureWidth()I

    move-result v11

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->getTextureHeight()I

    move-result v12

    const/4 v14, 0x1

    if-gt v9, v11, :cond_0

    if-gt v10, v12, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 224
    :goto_0
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 227
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/glrenderer/GLCanvas;->getGLId()Lcom/android/gallery3d/glrenderer/GLId;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/glrenderer/GLId;->generateTexture()I

    move-result v1

    iput v1, v8, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mId:I

    .line 228
    invoke-interface {v0, v8}, Lcom/android/gallery3d/glrenderer/GLCanvas;->setTextureParameters(Lcom/android/gallery3d/glrenderer/BasicTexture;)V

    if-ne v9, v11, :cond_1

    if-ne v10, v12, :cond_1

    .line 231
    invoke-interface {v0, v8, v5}, Lcom/android/gallery3d/glrenderer/GLCanvas;->initializeTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 233
    :cond_1
    invoke-static {v5}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v15

    .line 234
    invoke-static {v5}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v7

    .line 235
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    .line 237
    invoke-interface {v0, v8, v15, v7}, Lcom/android/gallery3d/glrenderer/GLCanvas;->initializeTextureSize(Lcom/android/gallery3d/glrenderer/BasicTexture;II)V

    .line 238
    iget v3, v8, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    iget v4, v8, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move-object v13, v6

    move v6, v15

    move/from16 v16, v7

    invoke-interface/range {v1 .. v7}, Lcom/android/gallery3d/glrenderer/GLCanvas;->texSubImage2D(Lcom/android/gallery3d/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V

    .line 240
    iget v1, v8, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    if-lez v1, :cond_2

    .line 242
    invoke-static {v14, v13, v12}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move v6, v15

    move/from16 v7, v16

    .line 243
    invoke-interface/range {v1 .. v7}, Lcom/android/gallery3d/glrenderer/GLCanvas;->texSubImage2D(Lcom/android/gallery3d/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V

    const/4 v1, 0x0

    .line 246
    invoke-static {v1, v13, v11}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move v6, v15

    move/from16 v7, v16

    .line 247
    invoke-interface/range {v1 .. v7}, Lcom/android/gallery3d/glrenderer/GLCanvas;->texSubImage2D(Lcom/android/gallery3d/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V

    .line 251
    :cond_2
    iget v1, v8, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    add-int/2addr v1, v9

    if-ge v1, v11, :cond_3

    .line 252
    invoke-static {v14, v13, v12}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 253
    iget v1, v8, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    add-int v3, v1, v9

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move v6, v15

    move/from16 v7, v16

    invoke-interface/range {v1 .. v7}, Lcom/android/gallery3d/glrenderer/GLCanvas;->texSubImage2D(Lcom/android/gallery3d/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V

    .line 257
    :cond_3
    iget v1, v8, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    add-int/2addr v1, v10

    if-ge v1, v12, :cond_4

    const/4 v1, 0x0

    .line 258
    invoke-static {v1, v13, v11}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v3, 0x0

    .line 259
    iget v1, v8, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    add-int v4, v1, v10

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move v6, v15

    move/from16 v7, v16

    invoke-interface/range {v1 .. v7}, Lcom/android/gallery3d/glrenderer/GLCanvas;->texSubImage2D(Lcom/android/gallery3d/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :cond_4
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->freeBitmap()V

    .line 266
    invoke-virtual/range {p0 .. p1}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->setAssociatedCanvas(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    .line 267
    iput v14, v8, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mState:I

    .line 268
    iput-boolean v14, v8, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mContentValid:Z

    return-void

    :catchall_0
    move-exception v0

    .line 263
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->freeBitmap()V

    .line 264
    throw v0

    :cond_5
    const/4 v0, -0x1

    .line 270
    iput v0, v8, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mState:I

    .line 271
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Texture load fail, no bitmap"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getHeight()I
    .locals 2

    .line 162
    iget v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 163
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mHeight:I

    return v0
.end method

.method protected getTarget()I
    .locals 1

    const/16 v0, 0xde1

    return v0
.end method

.method public getWidth()I
    .locals 2

    .line 156
    iget v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 157
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mWidth:I

    return v0
.end method

.method protected invalidateContent()V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->freeBitmap()V

    :cond_0
    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mContentValid:Z

    const/4 v0, -0x1

    .line 173
    iput v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mWidth:I

    .line 174
    iput v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mHeight:I

    return-void
.end method

.method public isContentValid()Z
    .locals 1

    .line 181
    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mContentValid:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .line 292
    iget-boolean v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mOpaque:Z

    return v0
.end method

.method protected onBind(Lcom/android/gallery3d/glrenderer/GLCanvas;)Z
    .locals 0

    .line 277
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->updateContent(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    .line 278
    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->isContentValid()Z

    move-result p1

    return p1
.end method

.method protected abstract onFreeBitmap(Landroid/graphics/Bitmap;)V
.end method

.method protected abstract onGetBitmap()Landroid/graphics/Bitmap;
.end method

.method public recycle()V
    .locals 1

    .line 297
    invoke-super {p0}, Lcom/android/gallery3d/glrenderer/BasicTexture;->recycle()V

    .line 298
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->freeBitmap()V

    :cond_0
    return-void
.end method

.method public updateContent(Lcom/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 9

    .line 189
    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->isLoaded()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 190
    iget-boolean v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mThrottled:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->sUploadedCount:I

    add-int/2addr v0, v1

    sput v0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->sUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    return-void

    .line 193
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->uploadToCanvas(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    goto :goto_0

    .line 194
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mContentValid:Z

    if-nez v0, :cond_2

    .line 195
    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 196
    invoke-static {v6}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v7

    .line 197
    invoke-static {v6}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v8

    .line 198
    iget v5, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    move-object v2, p1

    move-object v3, p0

    move v4, v5

    invoke-interface/range {v2 .. v8}, Lcom/android/gallery3d/glrenderer/GLCanvas;->texSubImage2D(Lcom/android/gallery3d/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V

    .line 199
    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->freeBitmap()V

    .line 200
    iput-boolean v1, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mContentValid:Z

    :cond_2
    :goto_0
    return-void
.end method
