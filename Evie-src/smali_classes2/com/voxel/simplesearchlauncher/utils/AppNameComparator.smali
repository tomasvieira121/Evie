.class public Lcom/voxel/simplesearchlauncher/utils/AppNameComparator;
.super Ljava/lang/Object;
.source "AppNameComparator.java"


# instance fields
.field private final mAppInfoComparator:Lcom/voxel/simplesearchlauncher/utils/AbstractUserComparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/voxel/simplesearchlauncher/utils/AbstractUserComparator<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCollator:Ljava/text/Collator;

.field private final mSectionNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/AppNameComparator;->mCollator:Ljava/text/Collator;

    .line 39
    new-instance v0, Lcom/voxel/simplesearchlauncher/utils/AppNameComparator$1;

    invoke-direct {v0, p0, p1}, Lcom/voxel/simplesearchlauncher/utils/AppNameComparator$1;-><init>(Lcom/voxel/simplesearchlauncher/utils/AppNameComparator;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/AppNameComparator;->mAppInfoComparator:Lcom/voxel/simplesearchlauncher/utils/AbstractUserComparator;

    .line 59
    new-instance p1, Lcom/voxel/simplesearchlauncher/utils/-$$Lambda$AppNameComparator$he1tXuEk96e3fATsEVUX2PvGFMA;

    invoke-direct {p1, p0}, Lcom/voxel/simplesearchlauncher/utils/-$$Lambda$AppNameComparator$he1tXuEk96e3fATsEVUX2PvGFMA;-><init>(Lcom/voxel/simplesearchlauncher/utils/AppNameComparator;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/utils/AppNameComparator;->mSectionNameComparator:Ljava/util/Comparator;

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/voxel/simplesearchlauncher/utils/AppNameComparator;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/utils/AppNameComparator;->compareTitles(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method


# virtual methods
.method compareTitles(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 83
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 84
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 85
    invoke-virtual {p2, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-eqz v0, :cond_2

    if-nez v2, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    if-nez v0, :cond_3

    if-eqz v2, :cond_3

    return v1

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/AppNameComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getAppInfoComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/AppNameComparator;->mAppInfoComparator:Lcom/voxel/simplesearchlauncher/utils/AbstractUserComparator;

    return-object v0
.end method
