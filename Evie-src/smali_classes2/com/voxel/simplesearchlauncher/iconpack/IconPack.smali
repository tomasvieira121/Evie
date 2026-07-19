.class public Lcom/voxel/simplesearchlauncher/iconpack/IconPack;
.super Ljava/lang/Object;
.source "IconPack.java"


# instance fields
.field icon:Landroid/graphics/drawable/Drawable;

.field label:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field versionCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->versionCode:I

    return v0
.end method

.method public isSystemDefault()Z
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
