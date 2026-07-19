.class public Lcom/android/gallery3d/glrenderer/GLES20Canvas;
.super Ljava/lang/Object;
.source "GLES20Canvas.java"

# interfaces
.implements Lcom/android/gallery3d/glrenderer/GLCanvas;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;,
        Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;,
        Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;
    }
.end annotation


# static fields
.field private static final BOUNDS_COORDINATES:[F

.field private static final BOX_COORDINATES:[F

.field private static final TAG:Ljava/lang/String; = "GLES20Canvas"

.field private static final mGLId:Lcom/android/gallery3d/glrenderer/GLId;


# instance fields
.field private mAlphas:[F

.field private mBoxCoordinates:I

.field private mCountDrawLine:I

.field private mCountDrawMesh:I

.field private mCountFillRect:I

.field private mCountTextureRect:I

.field private mCurrentAlphaIndex:I

.field private mCurrentMatrixIndex:I

.field private final mDeleteBuffers:Lcom/android/gallery3d/glrenderer/IntArray;

.field mDrawParameters:[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

.field private mDrawProgram:I

.field private mFrameBuffer:[I

.field private mHeight:I

.field private mMatrices:[F

.field mMeshParameters:[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

.field private mMeshProgram:I

.field mOesTextureParameters:[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

.field private mOesTextureProgram:I

.field private mProjectionMatrix:[F

.field private mSaveFlags:Lcom/android/gallery3d/glrenderer/IntArray;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mTargetTextures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/gallery3d/glrenderer/RawTexture;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempColor:[F

.field private final mTempIntArray:[I

.field private final mTempMatrix:[F

.field private final mTempSourceRect:Landroid/graphics/RectF;

.field private final mTempTargetRect:Landroid/graphics/RectF;

.field private final mTempTextureMatrix:[F

.field mTextureParameters:[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

.field private mTextureProgram:I

.field private final mUnboundTextures:Lcom/android/gallery3d/glrenderer/IntArray;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    .line 49
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->BOX_COORDINATES:[F

    const/16 v0, 0x8

    .line 62
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->BOUNDS_COORDINATES:[F

    .line 265
    new-instance v0, Lcom/android/gallery3d/glrenderer/GLES20IdImpl;

    invoke-direct {v0}, Lcom/android/gallery3d/glrenderer/GLES20IdImpl;-><init>()V

    sput-object v0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mGLId:Lcom/android/gallery3d/glrenderer/GLId;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 10

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    .line 137
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    const/16 v0, 0x8

    .line 138
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    .line 139
    new-instance v0, Lcom/android/gallery3d/glrenderer/IntArray;

    invoke-direct {v0}, Lcom/android/gallery3d/glrenderer/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mSaveFlags:Lcom/android/gallery3d/glrenderer/IntArray;

    const/4 v0, 0x0

    .line 141
    iput v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    .line 142
    iput v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    const/16 v1, 0x10

    .line 149
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mProjectionMatrix:[F

    const/4 v2, 0x3

    .line 214
    new-array v3, v2, [Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    new-instance v4, Lcom/android/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;

    const-string v5, "aPosition"

    invoke-direct {v4, v5}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v0

    new-instance v4, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string v5, "uMatrix"

    invoke-direct {v4, v5}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    aput-object v4, v3, v5

    new-instance v4, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string v6, "uColor"

    invoke-direct {v4, v6}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x2

    aput-object v4, v3, v6

    iput-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mDrawParameters:[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    const/4 v3, 0x5

    .line 219
    new-array v4, v3, [Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    new-instance v7, Lcom/android/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;

    const-string v8, "aPosition"

    invoke-direct {v7, v8}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v7, v4, v0

    new-instance v7, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string v8, "uMatrix"

    invoke-direct {v7, v8}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v7, v4, v5

    new-instance v7, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string v8, "uTextureMatrix"

    invoke-direct {v7, v8}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v7, v4, v6

    new-instance v7, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string v8, "uTextureSampler"

    invoke-direct {v7, v8}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v7, v4, v2

    new-instance v7, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string v8, "uAlpha"

    invoke-direct {v7, v8}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x4

    aput-object v7, v4, v8

    iput-object v4, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTextureParameters:[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    .line 226
    new-array v4, v3, [Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    new-instance v7, Lcom/android/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;

    const-string v9, "aPosition"

    invoke-direct {v7, v9}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v7, v4, v0

    new-instance v7, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string v9, "uMatrix"

    invoke-direct {v7, v9}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v7, v4, v5

    new-instance v7, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string v9, "uTextureMatrix"

    invoke-direct {v7, v9}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v7, v4, v6

    new-instance v7, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string v9, "uTextureSampler"

    invoke-direct {v7, v9}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v7, v4, v2

    new-instance v7, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string v9, "uAlpha"

    invoke-direct {v7, v9}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v7, v4, v8

    iput-object v4, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mOesTextureParameters:[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    .line 233
    new-array v3, v3, [Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    new-instance v4, Lcom/android/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;

    const-string v7, "aPosition"

    invoke-direct {v4, v7}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v0

    new-instance v4, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string v7, "uMatrix"

    invoke-direct {v4, v7}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/android/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;

    const-string v7, "aTextureCoordinate"

    invoke-direct {v4, v7}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string v6, "uTextureSampler"

    invoke-direct {v4, v6}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v2

    new-instance v2, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string v4, "uAlpha"

    invoke-direct {v2, v4}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v2, v3, v8

    iput-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMeshParameters:[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    .line 241
    new-instance v2, Lcom/android/gallery3d/glrenderer/IntArray;

    invoke-direct {v2}, Lcom/android/gallery3d/glrenderer/IntArray;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mUnboundTextures:Lcom/android/gallery3d/glrenderer/IntArray;

    .line 242
    new-instance v2, Lcom/android/gallery3d/glrenderer/IntArray;

    invoke-direct {v2}, Lcom/android/gallery3d/glrenderer/IntArray;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mDeleteBuffers:Lcom/android/gallery3d/glrenderer/IntArray;

    .line 245
    iput v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCountDrawMesh:I

    .line 246
    iput v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCountTextureRect:I

    .line 247
    iput v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCountFillRect:I

    .line 248
    iput v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCountDrawLine:I

    .line 252
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mFrameBuffer:[I

    .line 255
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    const/16 v2, 0x20

    .line 258
    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    .line 259
    new-array v2, v8, [F

    iput-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempColor:[F

    .line 260
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    .line 261
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    .line 262
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempTextureMatrix:[F

    .line 263
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempIntArray:[I

    .line 268
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempTextureMatrix:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 269
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 270
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 271
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    sget-object v0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->BOX_COORDINATES:[F

    invoke-static {v0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 274
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->uploadBuffer(Ljava/nio/FloatBuffer;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mBoxCoordinates:I

    const-string v0, "uniform mat4 uMatrix;\nattribute vec2 aPosition;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n}\n"

    const v1, 0x8b31

    .line 276
    invoke-static {v1, v0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v0

    const-string v2, "uniform mat4 uMatrix;\nuniform mat4 uTextureMatrix;\nattribute vec2 aPosition;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n  vTextureCoord = (uTextureMatrix * pos).xy;\n}\n"

    .line 277
    invoke-static {v1, v2}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v2

    const-string v3, "uniform mat4 uMatrix;\nattribute vec2 aPosition;\nattribute vec2 aTextureCoordinate;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n  vTextureCoord = aTextureCoordinate;\n}\n"

    .line 278
    invoke-static {v1, v3}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v1

    const-string v3, "precision mediump float;\nuniform vec4 uColor;\nvoid main() {\n  gl_FragColor = uColor;\n}\n"

    const v4, 0x8b30

    .line 279
    invoke-static {v4, v3}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v3

    const-string v6, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform sampler2D uTextureSampler;\nvoid main() {\n  gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n  gl_FragColor *= uAlpha;\n}\n"

    .line 280
    invoke-static {v4, v6}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v6

    const-string v7, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform samplerExternalOES uTextureSampler;\nvoid main() {\n  gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n  gl_FragColor *= uAlpha;\n}\n"

    .line 281
    invoke-static {v4, v7}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v4

    .line 284
    iget-object v7, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mDrawParameters:[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    invoke-direct {p0, v0, v3, v7}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->assembleProgram(II[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mDrawProgram:I

    .line 285
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTextureParameters:[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    invoke-direct {p0, v2, v6, v0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->assembleProgram(II[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTextureProgram:I

    .line 287
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mOesTextureParameters:[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    invoke-direct {p0, v2, v4, v0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->assembleProgram(II[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mOesTextureProgram:I

    .line 289
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMeshParameters:[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    invoke-direct {p0, v1, v6, v0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->assembleProgram(II[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMeshProgram:I

    const/16 v0, 0x303

    .line 290
    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 291
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return-void
.end method

.method private assembleProgram(II[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)I
    .locals 2

    .line 304
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    .line 305
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    if-eqz v0, :cond_2

    .line 309
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 310
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 311
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 312
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 313
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 314
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 315
    iget-object p1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempIntArray:[I

    const p2, 0x8b82

    const/4 v1, 0x0

    .line 316
    invoke-static {v0, p2, p1, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 317
    aget p1, p1, v1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    .line 318
    sget-object p1, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->TAG:Ljava/lang/String;

    const-string p2, "Could not link program: "

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    sget-object p1, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, 0x0

    .line 323
    :cond_0
    :goto_0
    array-length p1, p3

    if-ge v1, p1, :cond_1

    .line 324
    aget-object p1, p3, v1

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->loadHandle(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    .line 307
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot create GL program: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    return-void
.end method

.method public static checkError()V
    .locals 5

    .line 963
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 965
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 966
    sget-object v2, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GL error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private static convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/android/gallery3d/glrenderer/BasicTexture;)V
    .locals 5

    .line 642
    invoke-virtual {p2}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v0

    .line 643
    invoke-virtual {p2}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v1

    .line 644
    invoke-virtual {p2}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTextureWidth()I

    move-result v2

    .line 645
    invoke-virtual {p2}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTextureHeight()I

    move-result p2

    .line 647
    iget v3, p0, Landroid/graphics/RectF;->left:F

    int-to-float v2, v2

    div-float/2addr v3, v2

    iput v3, p0, Landroid/graphics/RectF;->left:F

    .line 648
    iget v3, p0, Landroid/graphics/RectF;->right:F

    div-float/2addr v3, v2

    iput v3, p0, Landroid/graphics/RectF;->right:F

    .line 649
    iget v3, p0, Landroid/graphics/RectF;->top:F

    int-to-float p2, p2

    div-float/2addr v3, p2

    iput v3, p0, Landroid/graphics/RectF;->top:F

    .line 650
    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v3, p2

    iput v3, p0, Landroid/graphics/RectF;->bottom:F

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 654
    iget v2, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_0

    .line 655
    iget v2, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Landroid/graphics/RectF;->left:F

    sub-float v4, v0, v4

    mul-float v3, v3, v4

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 656
    iput v0, p0, Landroid/graphics/RectF;->right:F

    :cond_0
    int-to-float v0, v1

    div-float/2addr v0, p2

    .line 659
    iget p2, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float p2, p2, v0

    if-lez p2, :cond_1

    .line 660
    iget p2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v2

    mul-float v1, v1, v2

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr p2, v1

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 661
    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method private static copyTextureCoordinates(Lcom/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;)V
    .locals 4

    .line 593
    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v0

    .line 594
    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v1

    .line 595
    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/BasicTexture;->hasBorder()Z

    move-result p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    int-to-float p0, v2

    int-to-float v2, v3

    int-to-float v0, v0

    int-to-float v1, v1

    .line 601
    invoke-virtual {p1, p0, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private static createBuffer([F)Ljava/nio/FloatBuffer;
    .locals 3

    .line 296
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    .line 297
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 299
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method private draw([Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;IIFFFF)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    .line 554
    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->setMatrix([Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;FFFF)V

    const/4 p4, 0x0

    .line 555
    aget-object p1, p1, p4

    iget p1, p1, Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    .line 556
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 557
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 558
    invoke-static {p2, p4, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 559
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 560
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 561
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return-void
.end method

.method private drawTextureRect(Lcom/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 0

    .line 627
    invoke-direct {p0, p2}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->setTextureMatrix(Landroid/graphics/RectF;)V

    .line 628
    iget-object p2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempTextureMatrix:[F

    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->drawTextureRect(Lcom/android/gallery3d/glrenderer/BasicTexture;[FLandroid/graphics/RectF;)V

    return-void
.end method

.method private drawTextureRect(Lcom/android/gallery3d/glrenderer/BasicTexture;[FLandroid/graphics/RectF;)V
    .locals 9

    .line 666
    invoke-direct {p0, p1}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->prepareTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;)[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    move-result-object v1

    const/4 v0, 0x0

    .line 667
    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->setPosition([Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;I)V

    const/4 v2, 0x2

    .line 668
    aget-object v3, v1, v2

    iget v3, v3, Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    const/4 v8, 0x1

    invoke-static {v3, v8, v0, p2, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 669
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 670
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->isFlippedVertically()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 671
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->save(I)V

    .line 672
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->translate(FF)V

    const/high16 p2, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 673
    invoke-virtual {p0, v2, p2, v2}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->scale(FFF)V

    .line 674
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    neg-float p2, p2

    invoke-virtual {p0, v0, p2}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->translate(FF)V

    :cond_0
    const/4 v2, 0x5

    const/4 v3, 0x4

    .line 676
    iget v4, p3, Landroid/graphics/RectF;->left:F

    iget v5, p3, Landroid/graphics/RectF;->top:F

    .line 677
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v7

    move-object v0, p0

    .line 676
    invoke-direct/range {v0 .. v7}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->draw([Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;IIFFFF)V

    .line 678
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->isFlippedVertically()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 679
    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->restore()V

    .line 681
    :cond_1
    iget p1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCountTextureRect:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCountTextureRect:I

    return-void
.end method

.method private enableBlending(Z)V
    .locals 1

    const/16 v0, 0xbe2

    if-eqz p1, :cond_0

    .line 534
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 535
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    goto :goto_0

    .line 537
    :cond_0
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 538
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    :goto_0
    return-void
.end method

.method private getTargetTexture()Lcom/android/gallery3d/glrenderer/RawTexture;
    .locals 2

    .line 847
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/glrenderer/RawTexture;

    return-object v0
.end method

.method private static loadShader(ILjava/lang/String;)I
    .locals 0

    .line 332
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    .line 335
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 336
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 337
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 338
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return p0
.end method

.method private prepareTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;I[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)V
    .locals 2

    .line 699
    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->deleteRecycledResources()V

    .line 700
    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 701
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 702
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->isOpaque()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->getAlpha()F

    move-result p2

    const v1, 0x3f733333    # 0.95f

    cmpg-float p2, p2, v1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    invoke-direct {p0, p2}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->enableBlending(Z)V

    const p2, 0x84c0

    .line 703
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 704
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 705
    invoke-virtual {p1, p0}, Lcom/android/gallery3d/glrenderer/BasicTexture;->onBind(Lcom/android/gallery3d/glrenderer/GLCanvas;)Z

    .line 706
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result p1

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 707
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    const/4 p1, 0x3

    .line 708
    aget-object p1, p3, p1

    iget p1, p1, Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 709
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    const/4 p1, 0x4

    .line 710
    aget-object p1, p3, p1

    iget p1, p1, Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->getAlpha()F

    move-result p2

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 711
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return-void
.end method

.method private prepareTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;)[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;
    .locals 2

    .line 687
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    const/16 v1, 0xde1

    if-ne v0, v1, :cond_0

    .line 688
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTextureParameters:[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    .line 689
    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTextureProgram:I

    goto :goto_0

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mOesTextureParameters:[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    .line 692
    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mOesTextureProgram:I

    .line 694
    :goto_0
    invoke-direct {p0, p1, v1, v0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->prepareTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;I[Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)V

    return-object v0
.end method

.method private setMatrix([Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;FFFF)V
    .locals 7

    .line 565
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v3, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    const/4 v1, 0x0

    const/4 v6, 0x0

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 566
    iget-object p2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    const/4 p3, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, p3, p4, p5, v0}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 567
    iget-object v5, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mProjectionMatrix:[F

    const/16 v2, 0x10

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v5

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/4 p2, 0x1

    .line 568
    aget-object p1, p1, p2

    iget p1, p1, Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    iget-object p4, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    const/16 p5, 0x10

    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 569
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return-void
.end method

.method private setPosition([Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;I)V
    .locals 8

    .line 543
    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mBoxCoordinates:I

    const v1, 0x8892

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 544
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    const/4 v0, 0x0

    .line 545
    aget-object p1, p1, v0

    iget v2, p1, Lcom/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    mul-int/lit8 v7, p2, 0x8

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 547
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 548
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 549
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return-void
.end method

.method private setTextureMatrix(Landroid/graphics/RectF;)V
    .locals 3

    .line 632
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempTextureMatrix:[F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 633
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempTextureMatrix:[F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 634
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempTextureMatrix:[F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    const/16 v2, 0xc

    aput v1, v0, v2

    .line 635
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempTextureMatrix:[F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    const/16 v1, 0xd

    aput p1, v0, v1

    return-void
.end method

.method private uploadBuffer(Ljava/nio/Buffer;I)I
    .locals 4

    .line 951
    sget-object v0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mGLId:Lcom/android/gallery3d/glrenderer/GLId;

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempIntArray:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1, v2}, Lcom/android/gallery3d/glrenderer/GLId;->glGenBuffers(I[II)V

    .line 952
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 953
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempIntArray:[I

    aget v0, v0, v2

    const v1, 0x8892

    .line 954
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 955
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 956
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    mul-int v2, v2, p2

    const p2, 0x88e4

    invoke-static {v1, v2, p1, p2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 958
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return v0
.end method


# virtual methods
.method public clearBuffer()V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 361
    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 362
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    const/16 v0, 0x4000

    .line 363
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 364
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return-void
.end method

.method public deleteRecycledResources()V
    .locals 7

    .line 804
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mUnboundTextures:Lcom/android/gallery3d/glrenderer/IntArray;

    monitor-enter v0

    .line 805
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mUnboundTextures:Lcom/android/gallery3d/glrenderer/IntArray;

    .line 806
    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mUnboundTextures:Lcom/android/gallery3d/glrenderer/IntArray;

    invoke-virtual {v2}, Lcom/android/gallery3d/glrenderer/IntArray;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-lez v2, :cond_0

    .line 807
    sget-object v2, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mGLId:Lcom/android/gallery3d/glrenderer/GLId;

    invoke-virtual {v1}, Lcom/android/gallery3d/glrenderer/IntArray;->size()I

    move-result v5

    invoke-virtual {v1}, Lcom/android/gallery3d/glrenderer/IntArray;->getInternalArray()[I

    move-result-object v6

    invoke-interface {v2, v4, v5, v6, v3}, Lcom/android/gallery3d/glrenderer/GLId;->glDeleteTextures(Ljavax/microedition/khronos/opengles/GL11;I[II)V

    .line 808
    invoke-virtual {v1}, Lcom/android/gallery3d/glrenderer/IntArray;->clear()V

    .line 811
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mDeleteBuffers:Lcom/android/gallery3d/glrenderer/IntArray;

    .line 812
    invoke-virtual {v1}, Lcom/android/gallery3d/glrenderer/IntArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 813
    sget-object v2, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mGLId:Lcom/android/gallery3d/glrenderer/GLId;

    invoke-virtual {v1}, Lcom/android/gallery3d/glrenderer/IntArray;->size()I

    move-result v5

    invoke-virtual {v1}, Lcom/android/gallery3d/glrenderer/IntArray;->getInternalArray()[I

    move-result-object v6

    invoke-interface {v2, v4, v5, v6, v3}, Lcom/android/gallery3d/glrenderer/GLId;->glDeleteBuffers(Ljavax/microedition/khronos/opengles/GL11;I[II)V

    .line 814
    invoke-virtual {v1}, Lcom/android/gallery3d/glrenderer/IntArray;->clear()V

    .line 816
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public drawTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;IIII)V
    .locals 3

    if-lez p4, :cond_1

    if-gtz p5, :cond_0

    goto :goto_0

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    invoke-static {p1, v0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->copyTextureCoordinates(Lcom/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;)V

    .line 585
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    int-to-float v1, p2

    int-to-float v2, p3

    add-int/2addr p2, p4

    int-to-float p2, p2

    add-int/2addr p3, p5

    int-to-float p3, p3

    invoke-virtual {v0, v1, v2, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 586
    iget-object p2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-static {p2, p3, p1}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/android/gallery3d/glrenderer/BasicTexture;)V

    .line 587
    iget-object p2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->drawTextureRect(Lcom/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public drawTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 2

    .line 606
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 610
    iget-object p2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p2, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 612
    iget-object p2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-static {p2, p3, p1}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/android/gallery3d/glrenderer/BasicTexture;)V

    .line 613
    iget-object p2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->drawTextureRect(Lcom/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public getAlpha()F
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public getGLId()Lcom/android/gallery3d/glrenderer/GLId;
    .locals 1

    .line 1006
    sget-object v0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mGLId:Lcom/android/gallery3d/glrenderer/GLId;

    return-object v0
.end method

.method public initializeTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 925
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    .line 926
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result p1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 927
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    const/4 p1, 0x0

    .line 928
    invoke-static {v0, p1, p2, p1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    return-void
.end method

.method public initializeTextureSize(Lcom/android/gallery3d/glrenderer/BasicTexture;II)V
    .locals 9

    .line 915
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    .line 916
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 917
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 918
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTextureWidth()I

    move-result v3

    .line 919
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTextureHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move v2, p2

    move v6, p2

    move v7, p3

    .line 920
    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public restore()V
    .locals 4

    .line 465
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mSaveFlags:Lcom/android/gallery3d/glrenderer/IntArray;

    invoke-virtual {v0}, Lcom/android/gallery3d/glrenderer/IntArray;->removeLast()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 468
    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    :cond_1
    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_3

    .line 472
    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    add-int/lit8 v0, v0, -0x10

    iput v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    :cond_3
    return-void
.end method

.method public rotate(FFFF)V
    .locals 7

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    const/4 v2, 0x0

    move-object v1, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 419
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 420
    iget-object p1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    .line 421
    iget p2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    const/16 v2, 0x10

    const/4 v6, 0x0

    move-object v3, p1

    move v4, p2

    move-object v5, v0

    .line 422
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/16 p3, 0x10

    .line 423
    invoke-static {v0, p3, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public save(I)V
    .locals 7

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x2

    if-eqz v0, :cond_2

    .line 444
    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->getAlpha()F

    move-result v0

    .line 445
    iget v4, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    .line 446
    iget-object v4, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    array-length v5, v4

    iget v6, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    if-gt v5, v6, :cond_1

    .line 447
    array-length v5, v4

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    .line 449
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    iget v5, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    aput v0, v4, v5

    :cond_2
    and-int/lit8 v0, p1, 0x2

    if-ne v0, v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_5

    .line 453
    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    add-int/lit8 v1, v0, 0x10

    .line 454
    iput v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    .line 455
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    array-length v2, v1

    iget v4, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    if-gt v2, v4, :cond_4

    .line 456
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    .line 458
    :cond_4
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    const/16 v3, 0x10

    invoke-static {v1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 460
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mSaveFlags:Lcom/android/gallery3d/glrenderer/IntArray;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/glrenderer/IntArray;->add(I)V

    return-void
.end method

.method public scale(FFF)V
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method public setSize(II)V
    .locals 10

    .line 345
    iput p1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mWidth:I

    .line 346
    iput p2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mHeight:I

    .line 347
    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mWidth:I

    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mHeight:I

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 348
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 349
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 350
    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mProjectionMatrix:[F

    int-to-float v5, p1

    int-to-float v0, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move v7, v0

    invoke-static/range {v2 .. v9}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 351
    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->getTargetTexture()Lcom/android/gallery3d/glrenderer/RawTexture;

    move-result-object v1

    if-nez v1, :cond_0

    .line 352
    iput p1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mScreenWidth:I

    .line 353
    iput p2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mScreenHeight:I

    .line 354
    iget-object p1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget p2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 355
    iget-object p1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget p2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, p2, v1, v0, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_0
    return-void
.end method

.method public setTextureParameters(Lcom/android/gallery3d/glrenderer/BasicTexture;)V
    .locals 2

    .line 904
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    .line 905
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result p1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 906
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    const p1, 0x812f

    const/16 v1, 0x2802

    .line 907
    invoke-static {v0, v1, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    .line 908
    invoke-static {v0, v1, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const p1, 0x46180400    # 9729.0f

    const/16 v1, 0x2801

    .line 909
    invoke-static {v0, v1, p1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2800

    .line 910
    invoke-static {v0, v1, p1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    return-void
.end method

.method public texSubImage2D(Lcom/android/gallery3d/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V
    .locals 7

    .line 934
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    .line 935
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result p1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 936
    invoke-static {}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    const/4 v1, 0x0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 937
    invoke-static/range {v0 .. v6}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    return-void
.end method

.method public translate(FF)V
    .locals 6

    .line 400
    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    .line 401
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    add-int/lit8 v2, v0, 0xc

    .line 402
    aget v3, v1, v2

    add-int/lit8 v4, v0, 0x0

    aget v4, v1, v4

    mul-float v4, v4, p1

    add-int/lit8 v5, v0, 0x4

    aget v5, v1, v5

    mul-float v5, v5, p2

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v0, 0xd

    .line 403
    aget v3, v1, v2

    add-int/lit8 v4, v0, 0x1

    aget v4, v1, v4

    mul-float v4, v4, p1

    add-int/lit8 v5, v0, 0x5

    aget v5, v1, v5

    mul-float v5, v5, p2

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v0, 0xe

    .line 404
    aget v3, v1, v2

    add-int/lit8 v4, v0, 0x2

    aget v4, v1, v4

    mul-float v4, v4, p1

    add-int/lit8 v5, v0, 0x6

    aget v5, v1, v5

    mul-float v5, v5, p2

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v0, 0xf

    .line 405
    aget v3, v1, v2

    add-int/lit8 v4, v0, 0x3

    aget v4, v1, v4

    mul-float v4, v4, p1

    add-int/lit8 v0, v0, 0x7

    aget p1, v1, v0

    mul-float p1, p1, p2

    add-float/2addr v4, p1

    add-float/2addr v3, v4

    aput v3, v1, v2

    return-void
.end method

.method public unloadTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;)Z
    .locals 3

    .line 786
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mUnboundTextures:Lcom/android/gallery3d/glrenderer/IntArray;

    monitor-enter v1

    .line 789
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->mUnboundTextures:Lcom/android/gallery3d/glrenderer/IntArray;

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/glrenderer/IntArray;->add(I)V

    .line 790
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return v0
.end method

.method public uploadBuffer(Ljava/nio/FloatBuffer;)I
    .locals 1

    const/4 v0, 0x4

    .line 942
    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->uploadBuffer(Ljava/nio/Buffer;I)I

    move-result p1

    return p1
.end method
