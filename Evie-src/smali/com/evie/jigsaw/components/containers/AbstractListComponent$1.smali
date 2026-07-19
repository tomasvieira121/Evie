.class synthetic Lcom/evie/jigsaw/components/containers/AbstractListComponent$1;
.super Ljava/lang/Object;
.source "AbstractListComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/components/containers/AbstractListComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$evie$jigsaw$adapters$scrolling$ScrollingType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    invoke-static {}, Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;->values()[Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/evie/jigsaw/components/containers/AbstractListComponent$1;->$SwitchMap$com$evie$jigsaw$adapters$scrolling$ScrollingType:[I

    :try_start_0
    sget-object v0, Lcom/evie/jigsaw/components/containers/AbstractListComponent$1;->$SwitchMap$com$evie$jigsaw$adapters$scrolling$ScrollingType:[I

    sget-object v1, Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;->none:Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;

    invoke-virtual {v1}, Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/evie/jigsaw/components/containers/AbstractListComponent$1;->$SwitchMap$com$evie$jigsaw$adapters$scrolling$ScrollingType:[I

    sget-object v1, Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;->regular:Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;

    invoke-virtual {v1}, Lcom/evie/jigsaw/adapters/scrolling/ScrollingType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
