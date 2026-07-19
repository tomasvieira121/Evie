.class Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexVN;
.super Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$BaseIndex;
.source "AlphabeticIndexCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/compat/AlphabeticIndexCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlphabeticIndexVN"
.end annotation


# instance fields
.field private mAlphabeticIndex:Ljava/lang/Object;

.field private mGetBucketIndexMethod:Ljava/lang/reflect/Method;

.field private mGetBucketMethod:Ljava/lang/reflect/Method;

.field private mGetLabelMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 170
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$BaseIndex;-><init>(Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$1;)V

    .line 172
    const-class v0, Landroid/content/res/Configuration;

    const-string v1, "getLocales"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    .line 172
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 174
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "size"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 175
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "get"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v0, :cond_0

    .line 176
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    goto :goto_0

    :cond_0
    new-array v3, v4, [Ljava/lang/Object;

    .line 177
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    :goto_0
    const-string v5, "android.icu.text.AlphabeticIndex"

    .line 179
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 180
    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/util/Locale;

    aput-object v7, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v3, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mAlphabeticIndex:Ljava/lang/Object;

    const-string v3, "addLabels"

    .line 182
    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, [Ljava/util/Locale;

    aput-object v7, v6, v2

    invoke-virtual {v5, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x1

    :goto_1
    if-ge v5, v0, :cond_1

    .line 184
    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v1, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Locale;

    .line 185
    iget-object v7, p0, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mAlphabeticIndex:Ljava/lang/Object;

    new-array v8, v4, [Ljava/lang/Object;

    new-array v9, v4, [Ljava/util/Locale;

    aput-object v6, v9, v2

    aput-object v9, v8, v2

    invoke-virtual {v3, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 187
    :cond_1
    iget-object p1, p0, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mAlphabeticIndex:Ljava/lang/Object;

    new-array v0, v4, [Ljava/lang/Object;

    new-array v1, v4, [Ljava/util/Locale;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v5, v1, v2

    aput-object v1, v0, v2

    invoke-virtual {v3, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object p1, p0, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mAlphabeticIndex:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "buildImmutableIndex"

    new-array v1, v2, [Ljava/lang/Class;

    .line 190
    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mAlphabeticIndex:Ljava/lang/Object;

    new-array v1, v2, [Ljava/lang/Object;

    .line 191
    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mAlphabeticIndex:Ljava/lang/Object;

    .line 193
    iget-object p1, p0, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mAlphabeticIndex:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "getBucketIndex"

    new-array v1, v4, [Ljava/lang/Class;

    const-class v3, Ljava/lang/CharSequence;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mGetBucketIndexMethod:Ljava/lang/reflect/Method;

    .line 195
    iget-object p1, p0, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mAlphabeticIndex:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "getBucket"

    new-array v1, v4, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mGetBucketMethod:Ljava/lang/reflect/Method;

    .line 196
    iget-object p1, p0, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mGetBucketMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "getLabel"

    new-array v1, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mGetLabelMethod:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method protected getBucketIndex(Ljava/lang/String;)I
    .locals 4

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mGetBucketIndexMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mAlphabeticIndex:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 208
    invoke-super {p0, p1}, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$BaseIndex;->getBucketIndex(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected getBucketLabel(I)Ljava/lang/String;
    .locals 6

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mGetLabelMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mGetBucketMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mAlphabeticIndex:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 217
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    .line 216
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 221
    invoke-super {p0, p1}, Lcom/voxel/launcher3/compat/AlphabeticIndexCompat$BaseIndex;->getBucketLabel(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
