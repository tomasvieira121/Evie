.class public final enum Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;
.super Ljava/lang/Enum;
.source "DomainNameReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linkedin/urls/detection/DomainNameReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReaderNextState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

.field public static final enum InvalidDomainName:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

.field public static final enum ReadFragment:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

.field public static final enum ReadPath:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

.field public static final enum ReadPort:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

.field public static final enum ReadQueryString:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

.field public static final enum ReadUserPass:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

.field public static final enum ValidDomainName:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 85
    new-instance v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    const-string v1, "InvalidDomainName"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->InvalidDomainName:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    .line 89
    new-instance v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    const-string v1, "ValidDomainName"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ValidDomainName:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    .line 93
    new-instance v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    const-string v1, "ReadFragment"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ReadFragment:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    .line 97
    new-instance v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    const-string v1, "ReadPath"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ReadPath:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    .line 101
    new-instance v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    const-string v1, "ReadPort"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ReadPort:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    .line 105
    new-instance v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    const-string v1, "ReadQueryString"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ReadQueryString:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    .line 109
    new-instance v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    const-string v1, "ReadUserPass"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ReadUserPass:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    const/4 v0, 0x7

    .line 81
    new-array v0, v0, [Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    sget-object v1, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->InvalidDomainName:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ValidDomainName:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ReadFragment:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ReadPath:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ReadPort:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ReadQueryString:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ReadUserPass:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    aput-object v1, v0, v8

    sput-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->$VALUES:[Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;
    .locals 1

    .line 81
    const-class v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    return-object p0
.end method

.method public static values()[Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;
    .locals 1

    .line 81
    sget-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->$VALUES:[Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    invoke-virtual {v0}, [Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    return-object v0
.end method
