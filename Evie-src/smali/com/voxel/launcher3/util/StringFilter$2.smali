.class final Lcom/voxel/launcher3/util/StringFilter$2;
.super Lcom/voxel/launcher3/util/StringFilter;
.source "StringFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/util/StringFilter;->of(Ljava/util/Set;)Lcom/voxel/launcher3/util/StringFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$validEntries:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/voxel/launcher3/util/StringFilter$2;->val$validEntries:Ljava/util/Set;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/voxel/launcher3/util/StringFilter;-><init>(Lcom/voxel/launcher3/util/StringFilter$1;)V

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/String;)Z
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/voxel/launcher3/util/StringFilter$2;->val$validEntries:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
