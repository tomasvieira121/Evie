.class Lcom/linkedin/urls/detection/UrlDetector$1;
.super Ljava/lang/Object;
.source "UrlDetector.java"

# interfaces
.implements Lcom/linkedin/urls/detection/DomainNameReader$CharacterHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkedin/urls/detection/UrlDetector;->readDomainName(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkedin/urls/detection/UrlDetector;


# direct methods
.method constructor <init>(Lcom/linkedin/urls/detection/UrlDetector;)V
    .locals 0

    .line 542
    iput-object p1, p0, Lcom/linkedin/urls/detection/UrlDetector$1;->this$0:Lcom/linkedin/urls/detection/UrlDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCharacter(C)V
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector$1;->this$0:Lcom/linkedin/urls/detection/UrlDetector;

    invoke-static {v0, p1}, Lcom/linkedin/urls/detection/UrlDetector;->access$000(Lcom/linkedin/urls/detection/UrlDetector;C)Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    return-void
.end method
