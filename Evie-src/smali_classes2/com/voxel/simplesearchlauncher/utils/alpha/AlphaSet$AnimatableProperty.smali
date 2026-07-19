.class public Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$AnimatableProperty;
.super Ljava/lang/Object;
.source "AlphaSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimatableProperty"
.end annotation


# instance fields
.field mAlphaSet:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

.field mKey:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;Ljava/lang/Object;)V
    .locals 0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$AnimatableProperty;->mAlphaSet:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    .line 204
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$AnimatableProperty;->mKey:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public setAlpha(F)V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$AnimatableProperty;->mAlphaSet:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$AnimatableProperty;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->putValue(Ljava/lang/Object;F)V

    return-void
.end method
