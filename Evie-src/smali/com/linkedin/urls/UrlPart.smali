.class public final enum Lcom/linkedin/urls/UrlPart;
.super Ljava/lang/Enum;
.source "UrlPart.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linkedin/urls/UrlPart;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linkedin/urls/UrlPart;

.field public static final enum FRAGMENT:Lcom/linkedin/urls/UrlPart;

.field public static final enum HOST:Lcom/linkedin/urls/UrlPart;

.field public static final enum PATH:Lcom/linkedin/urls/UrlPart;

.field public static final enum PORT:Lcom/linkedin/urls/UrlPart;

.field public static final enum QUERY:Lcom/linkedin/urls/UrlPart;

.field public static final enum SCHEME:Lcom/linkedin/urls/UrlPart;

.field public static final enum USERNAME_PASSWORD:Lcom/linkedin/urls/UrlPart;


# instance fields
.field private _nextPart:Lcom/linkedin/urls/UrlPart;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 13
    new-instance v0, Lcom/linkedin/urls/UrlPart;

    const-string v1, "FRAGMENT"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/linkedin/urls/UrlPart;-><init>(Ljava/lang/String;ILcom/linkedin/urls/UrlPart;)V

    sput-object v0, Lcom/linkedin/urls/UrlPart;->FRAGMENT:Lcom/linkedin/urls/UrlPart;

    .line 14
    new-instance v0, Lcom/linkedin/urls/UrlPart;

    const-string v1, "QUERY"

    sget-object v3, Lcom/linkedin/urls/UrlPart;->FRAGMENT:Lcom/linkedin/urls/UrlPart;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v3}, Lcom/linkedin/urls/UrlPart;-><init>(Ljava/lang/String;ILcom/linkedin/urls/UrlPart;)V

    sput-object v0, Lcom/linkedin/urls/UrlPart;->QUERY:Lcom/linkedin/urls/UrlPart;

    .line 15
    new-instance v0, Lcom/linkedin/urls/UrlPart;

    const-string v1, "PATH"

    sget-object v3, Lcom/linkedin/urls/UrlPart;->QUERY:Lcom/linkedin/urls/UrlPart;

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v3}, Lcom/linkedin/urls/UrlPart;-><init>(Ljava/lang/String;ILcom/linkedin/urls/UrlPart;)V

    sput-object v0, Lcom/linkedin/urls/UrlPart;->PATH:Lcom/linkedin/urls/UrlPart;

    .line 16
    new-instance v0, Lcom/linkedin/urls/UrlPart;

    const-string v1, "PORT"

    sget-object v3, Lcom/linkedin/urls/UrlPart;->PATH:Lcom/linkedin/urls/UrlPart;

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v3}, Lcom/linkedin/urls/UrlPart;-><init>(Ljava/lang/String;ILcom/linkedin/urls/UrlPart;)V

    sput-object v0, Lcom/linkedin/urls/UrlPart;->PORT:Lcom/linkedin/urls/UrlPart;

    .line 17
    new-instance v0, Lcom/linkedin/urls/UrlPart;

    const-string v1, "HOST"

    sget-object v3, Lcom/linkedin/urls/UrlPart;->PORT:Lcom/linkedin/urls/UrlPart;

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v3}, Lcom/linkedin/urls/UrlPart;-><init>(Ljava/lang/String;ILcom/linkedin/urls/UrlPart;)V

    sput-object v0, Lcom/linkedin/urls/UrlPart;->HOST:Lcom/linkedin/urls/UrlPart;

    .line 18
    new-instance v0, Lcom/linkedin/urls/UrlPart;

    const-string v1, "USERNAME_PASSWORD"

    sget-object v3, Lcom/linkedin/urls/UrlPart;->HOST:Lcom/linkedin/urls/UrlPart;

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v3}, Lcom/linkedin/urls/UrlPart;-><init>(Ljava/lang/String;ILcom/linkedin/urls/UrlPart;)V

    sput-object v0, Lcom/linkedin/urls/UrlPart;->USERNAME_PASSWORD:Lcom/linkedin/urls/UrlPart;

    .line 19
    new-instance v0, Lcom/linkedin/urls/UrlPart;

    const-string v1, "SCHEME"

    sget-object v3, Lcom/linkedin/urls/UrlPart;->USERNAME_PASSWORD:Lcom/linkedin/urls/UrlPart;

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v3}, Lcom/linkedin/urls/UrlPart;-><init>(Ljava/lang/String;ILcom/linkedin/urls/UrlPart;)V

    sput-object v0, Lcom/linkedin/urls/UrlPart;->SCHEME:Lcom/linkedin/urls/UrlPart;

    const/4 v0, 0x7

    .line 12
    new-array v0, v0, [Lcom/linkedin/urls/UrlPart;

    sget-object v1, Lcom/linkedin/urls/UrlPart;->FRAGMENT:Lcom/linkedin/urls/UrlPart;

    aput-object v1, v0, v2

    sget-object v1, Lcom/linkedin/urls/UrlPart;->QUERY:Lcom/linkedin/urls/UrlPart;

    aput-object v1, v0, v4

    sget-object v1, Lcom/linkedin/urls/UrlPart;->PATH:Lcom/linkedin/urls/UrlPart;

    aput-object v1, v0, v5

    sget-object v1, Lcom/linkedin/urls/UrlPart;->PORT:Lcom/linkedin/urls/UrlPart;

    aput-object v1, v0, v6

    sget-object v1, Lcom/linkedin/urls/UrlPart;->HOST:Lcom/linkedin/urls/UrlPart;

    aput-object v1, v0, v7

    sget-object v1, Lcom/linkedin/urls/UrlPart;->USERNAME_PASSWORD:Lcom/linkedin/urls/UrlPart;

    aput-object v1, v0, v8

    sget-object v1, Lcom/linkedin/urls/UrlPart;->SCHEME:Lcom/linkedin/urls/UrlPart;

    aput-object v1, v0, v9

    sput-object v0, Lcom/linkedin/urls/UrlPart;->$VALUES:[Lcom/linkedin/urls/UrlPart;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/linkedin/urls/UrlPart;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linkedin/urls/UrlPart;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput-object p3, p0, Lcom/linkedin/urls/UrlPart;->_nextPart:Lcom/linkedin/urls/UrlPart;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linkedin/urls/UrlPart;
    .locals 1

    .line 12
    const-class v0, Lcom/linkedin/urls/UrlPart;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linkedin/urls/UrlPart;

    return-object p0
.end method

.method public static values()[Lcom/linkedin/urls/UrlPart;
    .locals 1

    .line 12
    sget-object v0, Lcom/linkedin/urls/UrlPart;->$VALUES:[Lcom/linkedin/urls/UrlPart;

    invoke-virtual {v0}, [Lcom/linkedin/urls/UrlPart;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linkedin/urls/UrlPart;

    return-object v0
.end method


# virtual methods
.method public getNextPart()Lcom/linkedin/urls/UrlPart;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/linkedin/urls/UrlPart;->_nextPart:Lcom/linkedin/urls/UrlPart;

    return-object v0
.end method
