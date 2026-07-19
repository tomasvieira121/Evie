.class public Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;
.super Ljava/lang/Object;
.source "JigsawSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/JigsawSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JigsawSettingsBuilder"
.end annotation


# instance fields
.field private actionPreferenceStore:Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;

.field private ads:Z

.field private analyticsService:Lcom/evie/common/services/analytics/AnalyticsService;

.field private apiDebug:Z

.field private apiUrl:Ljava/lang/String;

.field private application:Landroid/app/Application;

.field private errorImage:I

.field private imageResolver:Lcom/evie/jigsaw/services/images/ImageResolver;

.field private layoutServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/jigsaw/services/layout/LayoutService;",
            ">;"
        }
    .end annotation
.end field

.field private news:Z

.field private pack4ge:Ljava/lang/String;

.field private shortcuts:Z

.field private streamingEnabled:Z

.field private version:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPreferenceStore(Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;)Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->actionPreferenceStore:Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;

    return-object p0
.end method

.method public ads(Z)Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->ads:Z

    return-object p0
.end method

.method public analyticsService(Lcom/evie/common/services/analytics/AnalyticsService;)Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->analyticsService:Lcom/evie/common/services/analytics/AnalyticsService;

    return-object p0
.end method

.method public apiUrl(Ljava/lang/String;)Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->apiUrl:Ljava/lang/String;

    return-object p0
.end method

.method public application(Landroid/app/Application;)Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->application:Landroid/app/Application;

    return-object p0
.end method

.method public build()Lcom/evie/jigsaw/JigsawSettings;
    .locals 17

    move-object/from16 v0, p0

    .line 21
    new-instance v16, Lcom/evie/jigsaw/JigsawSettings;

    iget-object v2, v0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->application:Landroid/app/Application;

    iget-boolean v3, v0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->ads:Z

    iget-boolean v4, v0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->news:Z

    iget-object v5, v0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->apiUrl:Ljava/lang/String;

    iget-boolean v6, v0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->apiDebug:Z

    iget-object v7, v0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->actionPreferenceStore:Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;

    iget-object v8, v0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->imageResolver:Lcom/evie/jigsaw/services/images/ImageResolver;

    iget-object v9, v0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->analyticsService:Lcom/evie/common/services/analytics/AnalyticsService;

    iget-object v10, v0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->layoutServices:Ljava/util/List;

    iget-object v11, v0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->pack4ge:Ljava/lang/String;

    iget v12, v0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->version:I

    iget-boolean v13, v0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->shortcuts:Z

    iget v14, v0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->errorImage:I

    iget-boolean v15, v0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->streamingEnabled:Z

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lcom/evie/jigsaw/JigsawSettings;-><init>(Landroid/app/Application;ZZLjava/lang/String;ZLcom/evie/jigsaw/services/actions/ActionPreferenceStore;Lcom/evie/jigsaw/services/images/ImageResolver;Lcom/evie/common/services/analytics/AnalyticsService;Ljava/util/List;Ljava/lang/String;IZIZ)V

    return-object v16
.end method

.method public errorImage(I)Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;
    .locals 0

    .line 21
    iput p1, p0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->errorImage:I

    return-object p0
.end method

.method public imageResolver(Lcom/evie/jigsaw/services/images/ImageResolver;)Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->imageResolver:Lcom/evie/jigsaw/services/images/ImageResolver;

    return-object p0
.end method

.method public layoutServices(Ljava/util/List;)Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/evie/jigsaw/services/layout/LayoutService;",
            ">;)",
            "Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->layoutServices:Ljava/util/List;

    return-object p0
.end method

.method public pack4ge(Ljava/lang/String;)Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->pack4ge:Ljava/lang/String;

    return-object p0
.end method

.method public shortcuts(Z)Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->shortcuts:Z

    return-object p0
.end method

.method public streamingEnabled(Z)Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->streamingEnabled:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JigsawSettings.JigsawSettingsBuilder(application="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->application:Landroid/app/Application;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ads="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->ads:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", news="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->news:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", apiUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->apiUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", apiDebug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->apiDebug:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", actionPreferenceStore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->actionPreferenceStore:Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageResolver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->imageResolver:Lcom/evie/jigsaw/services/images/ImageResolver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", analyticsService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->analyticsService:Lcom/evie/common/services/analytics/AnalyticsService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", layoutServices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->layoutServices:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pack4ge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->pack4ge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", shortcuts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->shortcuts:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", errorImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->errorImage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", streamingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->streamingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public version(I)Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;
    .locals 0

    .line 21
    iput p1, p0, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->version:I

    return-object p0
.end method
