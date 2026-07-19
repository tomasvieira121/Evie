.class public Lcom/voxel/simplesearchlauncher/allapps/AlphabeticalAppsSectionsHelper;
.super Ljava/lang/Object;
.source "AlphabeticalAppsSectionsHelper.java"


# instance fields
.field private mCachedSectionNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexer:Lcom/voxel/launcher3/compat/AlphabeticIndexCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AlphabeticalAppsSectionsHelper;->mCachedSectionNames:Ljava/util/HashMap;

    .line 19
    new-instance v0, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat;

    invoke-direct {v0, p1}, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AlphabeticalAppsSectionsHelper;->mIndexer:Lcom/voxel/launcher3/compat/AlphabeticIndexCompat;

    return-void
.end method


# virtual methods
.method public getSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AlphabeticalAppsSectionsHelper;->mCachedSectionNames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AlphabeticalAppsSectionsHelper;->mIndexer:Lcom/voxel/launcher3/compat/AlphabeticIndexCompat;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat;->computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/allapps/AlphabeticalAppsSectionsHelper;->mCachedSectionNames:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
