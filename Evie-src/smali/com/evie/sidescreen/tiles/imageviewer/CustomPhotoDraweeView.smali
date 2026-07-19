.class public Lcom/evie/sidescreen/tiles/imageviewer/CustomPhotoDraweeView;
.super Lme/relex/photodraweeview/PhotoDraweeView;
.source "CustomPhotoDraweeView.java"


# instance fields
.field private mImageInfoHeight:I

.field private mImageInfoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lme/relex/photodraweeview/PhotoDraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getImageInfoHeight()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/CustomPhotoDraweeView;->mImageInfoHeight:I

    return v0
.end method

.method public getImageInfoWidth()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/CustomPhotoDraweeView;->mImageInfoWidth:I

    return v0
.end method

.method public update(II)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/CustomPhotoDraweeView;->mImageInfoWidth:I

    .line 42
    iput p2, p0, Lcom/evie/sidescreen/tiles/imageviewer/CustomPhotoDraweeView;->mImageInfoHeight:I

    .line 43
    invoke-super {p0, p1, p2}, Lme/relex/photodraweeview/PhotoDraweeView;->update(II)V

    return-void
.end method
