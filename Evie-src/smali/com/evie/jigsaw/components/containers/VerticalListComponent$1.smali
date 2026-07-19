.class synthetic Lcom/evie/jigsaw/components/containers/VerticalListComponent$1;
.super Ljava/lang/Object;
.source "VerticalListComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/components/containers/VerticalListComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$evie$jigsaw$adapters$spacing$SpacingType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    invoke-static {}, Lcom/evie/jigsaw/adapters/spacing/SpacingType;->values()[Lcom/evie/jigsaw/adapters/spacing/SpacingType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/evie/jigsaw/components/containers/VerticalListComponent$1;->$SwitchMap$com$evie$jigsaw$adapters$spacing$SpacingType:[I

    :try_start_0
    sget-object v0, Lcom/evie/jigsaw/components/containers/VerticalListComponent$1;->$SwitchMap$com$evie$jigsaw$adapters$spacing$SpacingType:[I

    sget-object v1, Lcom/evie/jigsaw/adapters/spacing/SpacingType;->regular:Lcom/evie/jigsaw/adapters/spacing/SpacingType;

    invoke-virtual {v1}, Lcom/evie/jigsaw/adapters/spacing/SpacingType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
