.class synthetic Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper$2;
.super Ljava/lang/Object;
.source "ArticlePopupMenuHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$evie$sidescreen$personalize$FollowState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 178
    invoke-static {}, Lcom/evie/sidescreen/personalize/FollowState;->values()[Lcom/evie/sidescreen/personalize/FollowState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper$2;->$SwitchMap$com$evie$sidescreen$personalize$FollowState:[I

    :try_start_0
    sget-object v0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper$2;->$SwitchMap$com$evie$sidescreen$personalize$FollowState:[I

    sget-object v1, Lcom/evie/sidescreen/personalize/FollowState;->FOLLOWING:Lcom/evie/sidescreen/personalize/FollowState;

    invoke-virtual {v1}, Lcom/evie/sidescreen/personalize/FollowState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper$2;->$SwitchMap$com$evie$sidescreen$personalize$FollowState:[I

    sget-object v1, Lcom/evie/sidescreen/personalize/FollowState;->BLOCKED:Lcom/evie/sidescreen/personalize/FollowState;

    invoke-virtual {v1}, Lcom/evie/sidescreen/personalize/FollowState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/evie/sidescreen/tiles/articles/ArticlePopupMenuHelper$2;->$SwitchMap$com$evie$sidescreen$personalize$FollowState:[I

    sget-object v1, Lcom/evie/sidescreen/personalize/FollowState;->FOLLOW:Lcom/evie/sidescreen/personalize/FollowState;

    invoke-virtual {v1}, Lcom/evie/sidescreen/personalize/FollowState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
