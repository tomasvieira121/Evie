.class final enum Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;
.super Ljava/lang/Enum;
.source "UrlDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linkedin/urls/detection/UrlDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CharacterMatch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

.field public static final enum CharacterMatchStart:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

.field public static final enum CharacterMatchStop:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

.field public static final enum CharacterNotMatched:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 43
    new-instance v0, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    const-string v1, "CharacterNotMatched"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->CharacterNotMatched:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    .line 47
    new-instance v0, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    const-string v1, "CharacterMatchStop"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->CharacterMatchStop:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    .line 51
    new-instance v0, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    const-string v1, "CharacterMatchStart"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->CharacterMatchStart:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    const/4 v0, 0x3

    .line 39
    new-array v0, v0, [Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    sget-object v1, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->CharacterNotMatched:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    aput-object v1, v0, v2

    sget-object v1, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->CharacterMatchStop:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    aput-object v1, v0, v3

    sget-object v1, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->CharacterMatchStart:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    aput-object v1, v0, v4

    sput-object v0, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->$VALUES:[Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;
    .locals 1

    .line 39
    const-class v0, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    return-object p0
.end method

.method public static values()[Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;
    .locals 1

    .line 39
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->$VALUES:[Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    invoke-virtual {v0}, [Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    return-object v0
.end method
