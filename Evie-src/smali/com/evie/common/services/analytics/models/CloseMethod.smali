.class public final enum Lcom/evie/common/services/analytics/models/CloseMethod;
.super Ljava/lang/Enum;
.source "CloseMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/evie/common/services/analytics/models/CloseMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/evie/common/services/analytics/models/CloseMethod;

.field public static final enum EMPTY_SPACE_TOUCH:Lcom/evie/common/services/analytics/models/CloseMethod;

.field public static final enum HARDWARE_TOUCH:Lcom/evie/common/services/analytics/models/CloseMethod;

.field public static final enum VIEW_TOUCH:Lcom/evie/common/services/analytics/models/CloseMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 9
    new-instance v0, Lcom/evie/common/services/analytics/models/CloseMethod;

    const-string v1, "VIEW_TOUCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/evie/common/services/analytics/models/CloseMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/common/services/analytics/models/CloseMethod;->VIEW_TOUCH:Lcom/evie/common/services/analytics/models/CloseMethod;

    .line 11
    new-instance v0, Lcom/evie/common/services/analytics/models/CloseMethod;

    const-string v1, "HARDWARE_TOUCH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/evie/common/services/analytics/models/CloseMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/common/services/analytics/models/CloseMethod;->HARDWARE_TOUCH:Lcom/evie/common/services/analytics/models/CloseMethod;

    .line 13
    new-instance v0, Lcom/evie/common/services/analytics/models/CloseMethod;

    const-string v1, "EMPTY_SPACE_TOUCH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/evie/common/services/analytics/models/CloseMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/common/services/analytics/models/CloseMethod;->EMPTY_SPACE_TOUCH:Lcom/evie/common/services/analytics/models/CloseMethod;

    const/4 v0, 0x3

    .line 7
    new-array v0, v0, [Lcom/evie/common/services/analytics/models/CloseMethod;

    sget-object v1, Lcom/evie/common/services/analytics/models/CloseMethod;->VIEW_TOUCH:Lcom/evie/common/services/analytics/models/CloseMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/evie/common/services/analytics/models/CloseMethod;->HARDWARE_TOUCH:Lcom/evie/common/services/analytics/models/CloseMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/evie/common/services/analytics/models/CloseMethod;->EMPTY_SPACE_TOUCH:Lcom/evie/common/services/analytics/models/CloseMethod;

    aput-object v1, v0, v4

    sput-object v0, Lcom/evie/common/services/analytics/models/CloseMethod;->$VALUES:[Lcom/evie/common/services/analytics/models/CloseMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evie/common/services/analytics/models/CloseMethod;
    .locals 1

    .line 7
    const-class v0, Lcom/evie/common/services/analytics/models/CloseMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/evie/common/services/analytics/models/CloseMethod;

    return-object p0
.end method

.method public static values()[Lcom/evie/common/services/analytics/models/CloseMethod;
    .locals 1

    .line 7
    sget-object v0, Lcom/evie/common/services/analytics/models/CloseMethod;->$VALUES:[Lcom/evie/common/services/analytics/models/CloseMethod;

    invoke-virtual {v0}, [Lcom/evie/common/services/analytics/models/CloseMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evie/common/services/analytics/models/CloseMethod;

    return-object v0
.end method
