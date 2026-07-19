.class public Lcom/evie/search/model/AppData;
.super Ljava/lang/Object;
.source "AppData.java"


# instance fields
.field private appActivity:Ljava/lang/String;

.field private appPackage:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/search/model/AppData;->appPackage:Ljava/lang/String;

    iput-object p2, p0, Lcom/evie/search/model/AppData;->appActivity:Ljava/lang/String;

    iput-object p3, p0, Lcom/evie/search/model/AppData;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppActivity()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/evie/search/model/AppData;->appActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getAppPackage()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/evie/search/model/AppData;->appPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/evie/search/model/AppData;->name:Ljava/lang/String;

    return-object v0
.end method
