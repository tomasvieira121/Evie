.class Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter;
.super Ljava/lang/Object;
.source "RichTextView.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/views/RichTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RichTextImageGetter"
.end annotation


# instance fields
.field private final mImagePipeline:Lcom/facebook/imagepipeline/core/ImagePipeline;

.field private final mPlaceholderColor:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/evie/jigsaw/views/RichTextView;


# direct methods
.method private constructor <init>(Lcom/evie/jigsaw/views/RichTextView;)V
    .locals 2

    .line 189
    iput-object p1, p0, Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter;->this$0:Lcom/evie/jigsaw/views/RichTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter;->mImagePipeline:Lcom/facebook/imagepipeline/core/ImagePipeline;

    .line 196
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v0, p0, Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter;->this$0:Lcom/evie/jigsaw/views/RichTextView;

    .line 197
    invoke-virtual {v0}, Lcom/evie/jigsaw/views/RichTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/evie/jigsaw/R$color;->placeholder:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter;->mPlaceholderColor:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/evie/jigsaw/views/RichTextView;Lcom/evie/jigsaw/views/RichTextView$1;)V
    .locals 0

    .line 189
    invoke-direct {p0, p1}, Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter;-><init>(Lcom/evie/jigsaw/views/RichTextView;)V

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 201
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter;->this$0:Lcom/evie/jigsaw/views/RichTextView;

    invoke-virtual {v0}, Lcom/evie/jigsaw/views/RichTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 207
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v2, v2

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v2, v0

    const v0, 0x3f8ccccd    # 1.1f

    mul-float v2, v2, v0

    .line 210
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 212
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v3, "local"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 216
    iget-object v0, p0, Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter;->this$0:Lcom/evie/jigsaw/views/RichTextView;

    invoke-virtual {v0}, Lcom/evie/jigsaw/views/RichTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 219
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/2addr v0, v1

    int-to-float v0, v0

    div-float v0, v2, v0

    float-to-int v0, v0

    float-to-int v1, v2

    .line 221
    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object p1

    .line 225
    :cond_1
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->newBuilderWithSource(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->build()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 226
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter;->this$0:Lcom/evie/jigsaw/views/RichTextView;

    invoke-virtual {v5}, Lcom/evie/jigsaw/views/RichTextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 229
    iget-object v5, p0, Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter;->this$0:Lcom/evie/jigsaw/views/RichTextView;

    invoke-static {v5}, Lcom/evie/jigsaw/views/RichTextView;->access$200(Lcom/evie/jigsaw/views/RichTextView;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    const/4 v5, 0x1

    if-eqz p1, :cond_2

    .line 230
    iget-object p1, p0, Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter;->mImagePipeline:Lcom/facebook/imagepipeline/core/ImagePipeline;

    .line 231
    invoke-virtual {p1, v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->prefetchToBitmapCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    new-instance v0, Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter$1;

    invoke-direct {v0, p0}, Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter$1;-><init>(Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 232
    invoke-interface {p1, v0, v1}, Lcom/facebook/datasource/DataSource;->subscribe(Lcom/facebook/datasource/DataSubscriber;Ljava/util/concurrent/Executor;)V

    goto :goto_1

    .line 257
    :cond_2
    iget-object p1, p0, Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter;->mImagePipeline:Lcom/facebook/imagepipeline/core/ImagePipeline;

    .line 258
    invoke-virtual {p1, v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->fetchImageFromBitmapCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    .line 261
    :try_start_0
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/CloseableReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_3

    .line 275
    :try_start_1
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->clone()Lcom/facebook/common/references/CloseableReference;

    move-result-object v1

    .line 276
    iget-object v5, p0, Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter;->this$0:Lcom/evie/jigsaw/views/RichTextView;

    invoke-static {v5}, Lcom/evie/jigsaw/views/RichTextView;->access$500(Lcom/evie/jigsaw/views/RichTextView;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-virtual {v1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/image/CloseableBitmap;

    .line 280
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/image/CloseableBitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/image/CloseableBitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v5, v5, v2

    .line 282
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/image/CloseableBitmap;->getUnderlyingBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 283
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    float-to-int v5, v5

    float-to-int v6, v2

    invoke-virtual {v1, v3, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    :try_start_2
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    const/4 v5, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 287
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 296
    :cond_3
    :goto_0
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->close()Z

    :goto_1
    if-eqz v5, :cond_4

    const/high16 p1, 0x3f800000    # 1.0f

    div-float p1, v2, p1

    .line 305
    iget-object v0, p0, Lcom/evie/jigsaw/views/RichTextView$RichTextImageGetter;->mPlaceholderColor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    float-to-int p1, p1

    float-to-int v1, v2

    .line 307
    invoke-virtual {v0, v3, v3, p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 310
    :cond_4
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :catchall_1
    move-exception v0

    .line 296
    invoke-interface {p1}, Lcom/facebook/datasource/DataSource;->close()Z

    .line 297
    throw v0
.end method
