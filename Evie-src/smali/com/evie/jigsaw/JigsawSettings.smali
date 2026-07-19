.class public Lcom/evie/jigsaw/JigsawSettings;
.super Ljava/lang/Object;
.source "JigsawSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;
    }
.end annotation


# instance fields
.field private final actionPreferenceStore:Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;

.field private final ads:Z

.field private final analyticsService:Lcom/evie/common/services/analytics/AnalyticsService;

.field private final apiDebug:Z

.field private final apiUrl:Ljava/lang/String;

.field private final application:Landroid/app/Application;

.field private final errorImage:I

.field private final imageResolver:Lcom/evie/jigsaw/services/images/ImageResolver;

.field private final layoutServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/jigsaw/services/layout/LayoutService;",
            ">;"
        }
    .end annotation
.end field

.field private final news:Z

.field private final pack4ge:Ljava/lang/String;

.field private final shortcuts:Z

.field private final streamingEnabled:Z

.field private final version:I


# direct methods
.method constructor <init>(Landroid/app/Application;ZZLjava/lang/String;ZLcom/evie/jigsaw/services/actions/ActionPreferenceStore;Lcom/evie/jigsaw/services/images/ImageResolver;Lcom/evie/common/services/analytics/AnalyticsService;Ljava/util/List;Ljava/lang/String;IZIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "ZZ",
            "Ljava/lang/String;",
            "Z",
            "Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;",
            "Lcom/evie/jigsaw/services/images/ImageResolver;",
            "Lcom/evie/common/services/analytics/AnalyticsService;",
            "Ljava/util/List<",
            "Lcom/evie/jigsaw/services/layout/LayoutService;",
            ">;",
            "Ljava/lang/String;",
            "IZIZ)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/jigsaw/JigsawSettings;->application:Landroid/app/Application;

    iput-boolean p2, p0, Lcom/evie/jigsaw/JigsawSettings;->ads:Z

    iput-boolean p3, p0, Lcom/evie/jigsaw/JigsawSettings;->news:Z

    iput-object p4, p0, Lcom/evie/jigsaw/JigsawSettings;->apiUrl:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/evie/jigsaw/JigsawSettings;->apiDebug:Z

    iput-object p6, p0, Lcom/evie/jigsaw/JigsawSettings;->actionPreferenceStore:Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;

    iput-object p7, p0, Lcom/evie/jigsaw/JigsawSettings;->imageResolver:Lcom/evie/jigsaw/services/images/ImageResolver;

    iput-object p8, p0, Lcom/evie/jigsaw/JigsawSettings;->analyticsService:Lcom/evie/common/services/analytics/AnalyticsService;

    iput-object p9, p0, Lcom/evie/jigsaw/JigsawSettings;->layoutServices:Ljava/util/List;

    iput-object p10, p0, Lcom/evie/jigsaw/JigsawSettings;->pack4ge:Ljava/lang/String;

    iput p11, p0, Lcom/evie/jigsaw/JigsawSettings;->version:I

    iput-boolean p12, p0, Lcom/evie/jigsaw/JigsawSettings;->shortcuts:Z

    iput p13, p0, Lcom/evie/jigsaw/JigsawSettings;->errorImage:I

    iput-boolean p14, p0, Lcom/evie/jigsaw/JigsawSettings;->streamingEnabled:Z

    return-void
.end method

.method public static builder()Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;
    .locals 1

    .line 21
    new-instance v0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;

    invoke-direct {v0}, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public actionPreferenceStore()Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/evie/jigsaw/JigsawSettings;->actionPreferenceStore:Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;

    return-object v0
.end method

.method public analyticsService()Lcom/evie/common/services/analytics/AnalyticsService;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/evie/jigsaw/JigsawSettings;->analyticsService:Lcom/evie/common/services/analytics/AnalyticsService;

    return-object v0
.end method

.method public application()Landroid/app/Application;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/evie/jigsaw/JigsawSettings;->application:Landroid/app/Application;

    return-object v0
.end method

.method public errorImage()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/evie/jigsaw/JigsawSettings;->errorImage:I

    return v0
.end method

.method public imageResolver()Lcom/evie/jigsaw/services/images/ImageResolver;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/evie/jigsaw/JigsawSettings;->imageResolver:Lcom/evie/jigsaw/services/images/ImageResolver;

    return-object v0
.end method

.method public layoutServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evie/jigsaw/services/layout/LayoutService;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/evie/jigsaw/JigsawSettings;->layoutServices:Ljava/util/List;

    return-object v0
.end method

.method public shortcuts()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/evie/jigsaw/JigsawSettings;->shortcuts:Z

    return v0
.end method

.method public streamingEnabled()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/evie/jigsaw/JigsawSettings;->streamingEnabled:Z

    return v0
.end method
