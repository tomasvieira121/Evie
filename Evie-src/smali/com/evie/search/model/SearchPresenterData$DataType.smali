.class public final enum Lcom/evie/search/model/SearchPresenterData$DataType;
.super Ljava/lang/Enum;
.source "SearchPresenterData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/search/model/SearchPresenterData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/evie/search/model/SearchPresenterData$DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/evie/search/model/SearchPresenterData$DataType;

.field public static final enum CLEAR:Lcom/evie/search/model/SearchPresenterData$DataType;

.field public static final enum LOCAL:Lcom/evie/search/model/SearchPresenterData$DataType;

.field public static final enum REMOTE:Lcom/evie/search/model/SearchPresenterData$DataType;

.field public static final enum WEB:Lcom/evie/search/model/SearchPresenterData$DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 12
    new-instance v0, Lcom/evie/search/model/SearchPresenterData$DataType;

    const-string v1, "LOCAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/evie/search/model/SearchPresenterData$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/search/model/SearchPresenterData$DataType;->LOCAL:Lcom/evie/search/model/SearchPresenterData$DataType;

    .line 13
    new-instance v0, Lcom/evie/search/model/SearchPresenterData$DataType;

    const-string v1, "REMOTE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/evie/search/model/SearchPresenterData$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/search/model/SearchPresenterData$DataType;->REMOTE:Lcom/evie/search/model/SearchPresenterData$DataType;

    .line 14
    new-instance v0, Lcom/evie/search/model/SearchPresenterData$DataType;

    const-string v1, "WEB"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/evie/search/model/SearchPresenterData$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/search/model/SearchPresenterData$DataType;->WEB:Lcom/evie/search/model/SearchPresenterData$DataType;

    .line 15
    new-instance v0, Lcom/evie/search/model/SearchPresenterData$DataType;

    const-string v1, "CLEAR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/evie/search/model/SearchPresenterData$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evie/search/model/SearchPresenterData$DataType;->CLEAR:Lcom/evie/search/model/SearchPresenterData$DataType;

    const/4 v0, 0x4

    .line 11
    new-array v0, v0, [Lcom/evie/search/model/SearchPresenterData$DataType;

    sget-object v1, Lcom/evie/search/model/SearchPresenterData$DataType;->LOCAL:Lcom/evie/search/model/SearchPresenterData$DataType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/evie/search/model/SearchPresenterData$DataType;->REMOTE:Lcom/evie/search/model/SearchPresenterData$DataType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/evie/search/model/SearchPresenterData$DataType;->WEB:Lcom/evie/search/model/SearchPresenterData$DataType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/evie/search/model/SearchPresenterData$DataType;->CLEAR:Lcom/evie/search/model/SearchPresenterData$DataType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/evie/search/model/SearchPresenterData$DataType;->$VALUES:[Lcom/evie/search/model/SearchPresenterData$DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evie/search/model/SearchPresenterData$DataType;
    .locals 1

    .line 11
    const-class v0, Lcom/evie/search/model/SearchPresenterData$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/evie/search/model/SearchPresenterData$DataType;

    return-object p0
.end method

.method public static values()[Lcom/evie/search/model/SearchPresenterData$DataType;
    .locals 1

    .line 11
    sget-object v0, Lcom/evie/search/model/SearchPresenterData$DataType;->$VALUES:[Lcom/evie/search/model/SearchPresenterData$DataType;

    invoke-virtual {v0}, [Lcom/evie/search/model/SearchPresenterData$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evie/search/model/SearchPresenterData$DataType;

    return-object v0
.end method
