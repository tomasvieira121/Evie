.class public abstract Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;
.super Ljava/lang/Object;
.source "PlatformBitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory$BitmapCreationObserver;
    }
.end annotation


# static fields
.field private static sBitmapCreationObserver:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory$BitmapCreationObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addBitmapReference(Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 790
    sget-object v0, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->sBitmapCreationObserver:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory$BitmapCreationObserver;

    if-eqz v0, :cond_0

    .line 791
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory$BitmapCreationObserver;->onBitmapCreated(Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public createBitmap(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmap(IILandroid/graphics/Bitmap$Config;Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    return-object p1
.end method

.method public createBitmap(IILandroid/graphics/Bitmap$Config;Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;
    .locals 0
    .param p4    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Bitmap$Config;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 79
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmapInternal(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p2, p4}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->addBitmapReference(Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    return-object p1
.end method

.method public abstract createBitmapInternal(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public setCreationListener(Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory$BitmapCreationObserver;)V
    .locals 1

    .line 782
    sget-object v0, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->sBitmapCreationObserver:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory$BitmapCreationObserver;

    if-nez v0, :cond_0

    .line 783
    sput-object p1, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->sBitmapCreationObserver:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory$BitmapCreationObserver;

    :cond_0
    return-void
.end method
