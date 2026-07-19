.class Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$2;
.super Ljava/lang/Object;
.source "SearchUiHelper.java"

# interfaces
.implements Lcom/facebook/rebound/SpringListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;-><init>(Landroid/app/Activity;Lcom/voxel/simplesearchlauncher/view/SpringySearchView;Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;Lcom/evie/models/frequentlyused/FrequentlyUsedModel;Lcom/evie/search/AppAvailabilityProvider;Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$ScaleState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsFirstUpdate:Z

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$2;->this$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 152
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$2;->mIsFirstUpdate:Z

    return-void
.end method


# virtual methods
.method public onSpringActivate(Lcom/facebook/rebound/Spring;)V
    .locals 0

    return-void
.end method

.method public onSpringAtRest(Lcom/facebook/rebound/Spring;)V
    .locals 0

    const/4 p1, 0x1

    .line 166
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$2;->mIsFirstUpdate:Z

    .line 168
    invoke-static {}, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->getInstance()Lcom/voxel/simplesearchlauncher/utils/Choreographer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->animationEnded()V

    return-void
.end method

.method public onSpringEndStateChange(Lcom/facebook/rebound/Spring;)V
    .locals 0

    return-void
.end method

.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 0

    .line 156
    iget-boolean p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$2;->mIsFirstUpdate:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 157
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$2;->mIsFirstUpdate:Z

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$2;->this$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->updateMainLayerScale()V

    return-void
.end method
