.class public final Lcom/aol/mobile/sdk/renderer/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uTextureMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\n\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTextureMatrix * aTextureCoord).xy;\n}\n"

    const v1, 0x8b31

    invoke-direct {p0, v1, v0}, Lcom/aol/mobile/sdk/renderer/g;->a(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/aol/mobile/sdk/renderer/g;->b:I

    const-string v0, "#extension GL_OES_EGL_image_external : require\n\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\n\nvoid main() {\n    vec4 color = texture2D(sTexture, vTextureCoord);\n    gl_FragColor = color;\n}\n"

    const v1, 0x8b30

    invoke-direct {p0, v1, v0}, Lcom/aol/mobile/sdk/renderer/g;->a(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/aol/mobile/sdk/renderer/g;->c:I

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    iput v0, p0, Lcom/aol/mobile/sdk/renderer/g;->a:I

    iget v0, p0, Lcom/aol/mobile/sdk/renderer/g;->a:I

    iget v1, p0, Lcom/aol/mobile/sdk/renderer/g;->b:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    iget v0, p0, Lcom/aol/mobile/sdk/renderer/g;->a:I

    iget v1, p0, Lcom/aol/mobile/sdk/renderer/g;->c:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    iget v0, p0, Lcom/aol/mobile/sdk/renderer/g;->a:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    iget v0, p0, Lcom/aol/mobile/sdk/renderer/g;->a:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p0, Lcom/aol/mobile/sdk/renderer/g;->a:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/aol/mobile/sdk/renderer/g;->d:I

    iget v0, p0, Lcom/aol/mobile/sdk/renderer/g;->a:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/aol/mobile/sdk/renderer/g;->e:I

    iget v0, p0, Lcom/aol/mobile/sdk/renderer/g;->a:I

    const-string v1, "uTextureMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/aol/mobile/sdk/renderer/g;->f:I

    iget v0, p0, Lcom/aol/mobile/sdk/renderer/g;->a:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/aol/mobile/sdk/renderer/g;->g:I

    return-void
.end method

.method private a(ILjava/lang/String;)I
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    return p1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/aol/mobile/sdk/renderer/g;->d:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/aol/mobile/sdk/renderer/g;->e:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/aol/mobile/sdk/renderer/g;->f:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/aol/mobile/sdk/renderer/g;->g:I

    return v0
.end method

.method public e()V
    .locals 2

    iget v0, p0, Lcom/aol/mobile/sdk/renderer/g;->a:I

    iget v1, p0, Lcom/aol/mobile/sdk/renderer/g;->b:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glDetachShader(II)V

    iget v0, p0, Lcom/aol/mobile/sdk/renderer/g;->a:I

    iget v1, p0, Lcom/aol/mobile/sdk/renderer/g;->c:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glDetachShader(II)V

    iget v0, p0, Lcom/aol/mobile/sdk/renderer/g;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    iget v0, p0, Lcom/aol/mobile/sdk/renderer/g;->c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    iget v0, p0, Lcom/aol/mobile/sdk/renderer/g;->a:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    return-void
.end method
