.class public final enum Lcom/linkedin/urls/detection/UrlDetectorOptions;
.super Ljava/lang/Enum;
.source "UrlDetectorOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linkedin/urls/detection/UrlDetectorOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linkedin/urls/detection/UrlDetectorOptions;

.field public static final enum ALLOW_SINGLE_LEVEL_DOMAIN:Lcom/linkedin/urls/detection/UrlDetectorOptions;

.field public static final enum BRACKET_MATCH:Lcom/linkedin/urls/detection/UrlDetectorOptions;

.field public static final enum Default:Lcom/linkedin/urls/detection/UrlDetectorOptions;

.field public static final enum HTML:Lcom/linkedin/urls/detection/UrlDetectorOptions;

.field public static final enum JAVASCRIPT:Lcom/linkedin/urls/detection/UrlDetectorOptions;

.field public static final enum JSON:Lcom/linkedin/urls/detection/UrlDetectorOptions;

.field public static final enum QUOTE_MATCH:Lcom/linkedin/urls/detection/UrlDetectorOptions;

.field public static final enum SINGLE_QUOTE_MATCH:Lcom/linkedin/urls/detection/UrlDetectorOptions;

.field public static final enum XML:Lcom/linkedin/urls/detection/UrlDetectorOptions;


# instance fields
.field private _value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 19
    new-instance v0, Lcom/linkedin/urls/detection/UrlDetectorOptions;

    const-string v1, "Default"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/linkedin/urls/detection/UrlDetectorOptions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/linkedin/urls/detection/UrlDetectorOptions;->Default:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    .line 26
    new-instance v0, Lcom/linkedin/urls/detection/UrlDetectorOptions;

    const-string v1, "QUOTE_MATCH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/linkedin/urls/detection/UrlDetectorOptions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/linkedin/urls/detection/UrlDetectorOptions;->QUOTE_MATCH:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    .line 31
    new-instance v0, Lcom/linkedin/urls/detection/UrlDetectorOptions;

    const-string v1, "SINGLE_QUOTE_MATCH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/linkedin/urls/detection/UrlDetectorOptions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/linkedin/urls/detection/UrlDetectorOptions;->SINGLE_QUOTE_MATCH:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    .line 37
    new-instance v0, Lcom/linkedin/urls/detection/UrlDetectorOptions;

    const-string v1, "BRACKET_MATCH"

    const/4 v5, 0x3

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/linkedin/urls/detection/UrlDetectorOptions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/linkedin/urls/detection/UrlDetectorOptions;->BRACKET_MATCH:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    .line 42
    new-instance v0, Lcom/linkedin/urls/detection/UrlDetectorOptions;

    const-string v1, "JSON"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lcom/linkedin/urls/detection/UrlDetectorOptions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/linkedin/urls/detection/UrlDetectorOptions;->JSON:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    .line 47
    new-instance v0, Lcom/linkedin/urls/detection/UrlDetectorOptions;

    const-string v1, "JAVASCRIPT"

    const/4 v8, 0x7

    invoke-direct {v0, v1, v7, v8}, Lcom/linkedin/urls/detection/UrlDetectorOptions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/linkedin/urls/detection/UrlDetectorOptions;->JAVASCRIPT:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    .line 53
    new-instance v0, Lcom/linkedin/urls/detection/UrlDetectorOptions;

    const-string v1, "XML"

    const/16 v9, 0x9

    const/4 v10, 0x6

    invoke-direct {v0, v1, v10, v9}, Lcom/linkedin/urls/detection/UrlDetectorOptions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/linkedin/urls/detection/UrlDetectorOptions;->XML:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    .line 58
    new-instance v0, Lcom/linkedin/urls/detection/UrlDetectorOptions;

    const-string v1, "HTML"

    const/16 v11, 0x1b

    invoke-direct {v0, v1, v8, v11}, Lcom/linkedin/urls/detection/UrlDetectorOptions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/linkedin/urls/detection/UrlDetectorOptions;->HTML:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    .line 63
    new-instance v0, Lcom/linkedin/urls/detection/UrlDetectorOptions;

    const-string v1, "ALLOW_SINGLE_LEVEL_DOMAIN"

    const/16 v11, 0x8

    const/16 v12, 0x20

    invoke-direct {v0, v1, v11, v12}, Lcom/linkedin/urls/detection/UrlDetectorOptions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/linkedin/urls/detection/UrlDetectorOptions;->ALLOW_SINGLE_LEVEL_DOMAIN:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    .line 15
    new-array v0, v9, [Lcom/linkedin/urls/detection/UrlDetectorOptions;

    sget-object v1, Lcom/linkedin/urls/detection/UrlDetectorOptions;->Default:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    aput-object v1, v0, v2

    sget-object v1, Lcom/linkedin/urls/detection/UrlDetectorOptions;->QUOTE_MATCH:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    aput-object v1, v0, v3

    sget-object v1, Lcom/linkedin/urls/detection/UrlDetectorOptions;->SINGLE_QUOTE_MATCH:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    aput-object v1, v0, v4

    sget-object v1, Lcom/linkedin/urls/detection/UrlDetectorOptions;->BRACKET_MATCH:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    aput-object v1, v0, v5

    sget-object v1, Lcom/linkedin/urls/detection/UrlDetectorOptions;->JSON:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    aput-object v1, v0, v6

    sget-object v1, Lcom/linkedin/urls/detection/UrlDetectorOptions;->JAVASCRIPT:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    aput-object v1, v0, v7

    sget-object v1, Lcom/linkedin/urls/detection/UrlDetectorOptions;->XML:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    aput-object v1, v0, v10

    sget-object v1, Lcom/linkedin/urls/detection/UrlDetectorOptions;->HTML:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    aput-object v1, v0, v8

    sget-object v1, Lcom/linkedin/urls/detection/UrlDetectorOptions;->ALLOW_SINGLE_LEVEL_DOMAIN:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    aput-object v1, v0, v11

    sput-object v0, Lcom/linkedin/urls/detection/UrlDetectorOptions;->$VALUES:[Lcom/linkedin/urls/detection/UrlDetectorOptions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput p3, p0, Lcom/linkedin/urls/detection/UrlDetectorOptions;->_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linkedin/urls/detection/UrlDetectorOptions;
    .locals 1

    .line 15
    const-class v0, Lcom/linkedin/urls/detection/UrlDetectorOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linkedin/urls/detection/UrlDetectorOptions;

    return-object p0
.end method

.method public static values()[Lcom/linkedin/urls/detection/UrlDetectorOptions;
    .locals 1

    .line 15
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetectorOptions;->$VALUES:[Lcom/linkedin/urls/detection/UrlDetectorOptions;

    invoke-virtual {v0}, [Lcom/linkedin/urls/detection/UrlDetectorOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linkedin/urls/detection/UrlDetectorOptions;

    return-object v0
.end method


# virtual methods
.method public hasFlag(Lcom/linkedin/urls/detection/UrlDetectorOptions;)Z
    .locals 1

    .line 84
    iget v0, p0, Lcom/linkedin/urls/detection/UrlDetectorOptions;->_value:I

    iget p1, p1, Lcom/linkedin/urls/detection/UrlDetectorOptions;->_value:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
