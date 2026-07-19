.class synthetic Lcom/aol/mobile/sdk/controls/view/ContentControlsView$6;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/controls/view/ContentControlsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/aol/mobile/sdk/controls/b$a$a;->values()[Lcom/aol/mobile/sdk/controls/b$a$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$6;->a:[I

    :try_start_0
    sget-object v0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$6;->a:[I

    sget-object v1, Lcom/aol/mobile/sdk/controls/b$a$a;->b:Lcom/aol/mobile/sdk/controls/b$a$a;

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/controls/b$a$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$6;->a:[I

    sget-object v1, Lcom/aol/mobile/sdk/controls/b$a$a;->a:Lcom/aol/mobile/sdk/controls/b$a$a;

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/controls/b$a$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$6;->a:[I

    sget-object v1, Lcom/aol/mobile/sdk/controls/b$a$a;->d:Lcom/aol/mobile/sdk/controls/b$a$a;

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/controls/b$a$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
