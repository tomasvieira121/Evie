.class public Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;
.super Ljava/lang/Object;
.source "VrmSource.java"


# annotations
.annotation runtime Lcom/aol/mobile/sdk/annotations/PrivateApi;
.end annotation


# instance fields
.field private adEngineType:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private ruleCompanyId:Ljava/lang/String;

.field private ruleId:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private vendor:Ljava/lang/String;

.field private xml:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 31
    iput-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->vendor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdEngineType()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->adEngineType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleCompanyId()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->ruleCompanyId:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleId()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->ruleId:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->vendor:Ljava/lang/String;

    return-object v0
.end method

.method public getXml()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->xml:Ljava/lang/String;

    return-object v0
.end method

.method setAdEngineType(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->adEngineType:Ljava/lang/String;

    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->name:Ljava/lang/String;

    return-void
.end method

.method setRuleCompanyId(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->ruleCompanyId:Ljava/lang/String;

    return-void
.end method

.method setRuleId(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->ruleId:Ljava/lang/String;

    return-void
.end method

.method setUrl(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->url:Ljava/lang/String;

    return-void
.end method

.method setVendor(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->vendor:Ljava/lang/String;

    return-void
.end method

.method setXml(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;->xml:Ljava/lang/String;

    return-void
.end method
