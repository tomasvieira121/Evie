.class public Lcom/evie/common/services/links/LinkRequest;
.super Ljava/lang/Object;
.source "LinkRequest.java"


# static fields
.field private static final NO_CALLBACK:Lcom/evie/common/services/links/LinkCallback;


# instance fields
.field private analyticsData:Lcom/evie/common/services/analytics/models/AnalyticsData;

.field private app:Ljava/lang/String;

.field private callback:Lcom/evie/common/services/links/LinkCallback;

.field private final links:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/evie/common/services/links/LinkRequest$1;

    invoke-direct {v0}, Lcom/evie/common/services/links/LinkRequest$1;-><init>()V

    sput-object v0, Lcom/evie/common/services/links/LinkRequest;->NO_CALLBACK:Lcom/evie/common/services/links/LinkCallback;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/evie/common/services/links/LinkRequest;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/evie/common/services/links/LinkRequest;->NO_CALLBACK:Lcom/evie/common/services/links/LinkCallback;

    iput-object v0, p0, Lcom/evie/common/services/links/LinkRequest;->callback:Lcom/evie/common/services/links/LinkCallback;

    .line 21
    iput-object p1, p0, Lcom/evie/common/services/links/LinkRequest;->links:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public analyticsData()Lcom/evie/common/services/analytics/models/AnalyticsData;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/evie/common/services/links/LinkRequest;->analyticsData:Lcom/evie/common/services/analytics/models/AnalyticsData;

    return-object v0
.end method

.method public analyticsData(Lcom/evie/common/services/analytics/models/AnalyticsData;)Lcom/evie/common/services/links/LinkRequest;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/evie/common/services/links/LinkRequest;->analyticsData:Lcom/evie/common/services/analytics/models/AnalyticsData;

    return-object p0
.end method

.method public app(Ljava/lang/String;)Lcom/evie/common/services/links/LinkRequest;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/evie/common/services/links/LinkRequest;->app:Ljava/lang/String;

    return-object p0
.end method

.method public app()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/evie/common/services/links/LinkRequest;->app:Ljava/lang/String;

    return-object v0
.end method

.method public callback()Lcom/evie/common/services/links/LinkCallback;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/evie/common/services/links/LinkRequest;->callback:Lcom/evie/common/services/links/LinkCallback;

    return-object v0
.end method

.method public callback(Lcom/evie/common/services/links/LinkCallback;)Lcom/evie/common/services/links/LinkRequest;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/evie/common/services/links/LinkRequest;->callback:Lcom/evie/common/services/links/LinkCallback;

    return-object p0
.end method

.method public links()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/evie/common/services/links/LinkRequest;->links:Ljava/util/List;

    return-object v0
.end method
