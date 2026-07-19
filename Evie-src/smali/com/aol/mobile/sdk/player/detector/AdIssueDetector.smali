.class public final Lcom/aol/mobile/sdk/player/detector/AdIssueDetector;
.super Ljava/lang/Object;
.source "AdIssueDetector.java"


# instance fields
.field private errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public detect(Lcom/aol/mobile/sdk/player/model/ErrorState;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 15
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/detector/AdIssueDetector;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/detector/AdIssueDetector;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    return v0
.end method
