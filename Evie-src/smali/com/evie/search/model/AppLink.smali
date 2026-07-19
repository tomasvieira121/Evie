.class public Lcom/evie/search/model/AppLink;
.super Ljava/lang/Object;
.source "AppLink.java"


# instance fields
.field private appName:Ljava/lang/String;

.field private appPackage:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private subtext:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/search/model/AppLink;->appName:Ljava/lang/String;

    iput-object p2, p0, Lcom/evie/search/model/AppLink;->appPackage:Ljava/lang/String;

    iput-object p3, p0, Lcom/evie/search/model/AppLink;->link:Ljava/lang/String;

    iput-object p4, p0, Lcom/evie/search/model/AppLink;->label:Ljava/lang/String;

    iput-object p5, p0, Lcom/evie/search/model/AppLink;->subtext:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/evie/search/model/AppLink;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppPackage()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/evie/search/model/AppLink;->appPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/evie/search/model/AppLink;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/evie/search/model/AppLink;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtext()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/evie/search/model/AppLink;->subtext:Ljava/lang/String;

    return-object v0
.end method
