.class public Lcom/voxel/launcher3/compat/AlphabeticIndexCompat;
.super Ljava/lang/Object;
.source "AlphabeticIndexCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexVN;,
        Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexV16;,
        Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$BaseIndex;
    }
.end annotation


# instance fields
.field private final mBaseIndex:Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$BaseIndex;

.field private final mDefaultMiscLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    :try_start_0
    sget-boolean v1, Lcom/voxel/launcher3/Utilities;->ATLEAST_N:Z

    if-eqz v1, :cond_0

    .line 24
    new-instance v1, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexVN;

    invoke-direct {v1, p1}, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexVN;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AlphabeticIndexCompat"

    const-string v3, "Unable to load the system index"

    .line 27
    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    .line 31
    :try_start_1
    new-instance v2, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexV16;

    invoke-direct {v2, p1}, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexV16;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "AlphabeticIndexCompat"

    const-string v4, "Unable to load the system index"

    .line 33
    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 37
    new-instance v1, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$BaseIndex;

    invoke-direct {v1, v0}, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$BaseIndex;-><init>(Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$1;)V

    :cond_2
    iput-object v1, p0, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat;->mBaseIndex:Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$BaseIndex;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 40
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "\u4ed6"

    .line 42
    iput-object p1, p0, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat;->mDefaultMiscLabel:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string p1, "\u2219"

    .line 46
    iput-object p1, p0, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat;->mDefaultMiscLabel:Ljava/lang/String;

    :goto_2
    return-void
.end method


# virtual methods
.method public computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .line 54
    invoke-static {p1}, Lcom/voxel/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 55
    iget-object v0, p0, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat;->mBaseIndex:Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$BaseIndex;

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$BaseIndex;->getBucketIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$BaseIndex;->getBucketLabel(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/voxel/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    .line 58
    invoke-static {p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "#"

    return-object p1

    .line 63
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 65
    iget-object p1, p0, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat;->mDefaultMiscLabel:Ljava/lang/String;

    return-object p1

    :cond_1
    const-string p1, "\u2219"

    return-object p1

    :cond_2
    return-object v0
.end method
