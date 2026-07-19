.class public final enum Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONNECTION:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;

.field public static final enum CONTENT:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;

.field private static final synthetic a:[Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;

    const-string v1, "CONNECTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;->CONNECTION:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;

    new-instance v0, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;

    const-string v1, "CONTENT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;->CONTENT:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;

    sget-object v1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;->CONNECTION:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;->CONTENT:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;

    aput-object v1, v0, v3

    sput-object v0, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;->a:[Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;
    .locals 1

    const-class v0, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;

    return-object p0
.end method

.method public static values()[Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;
    .locals 1

    sget-object v0, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;->a:[Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;

    invoke-virtual {v0}, [Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks$Error;

    return-object v0
.end method
