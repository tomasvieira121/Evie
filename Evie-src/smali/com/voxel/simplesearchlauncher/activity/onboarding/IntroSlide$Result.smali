.class Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$Result;
.super Ljava/lang/Object;
.source "IntroSlide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Result"
.end annotation


# instance fields
.field public defaultItemInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public importerInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$Result;->this$0:Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$1;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide$Result;-><init>(Lcom/voxel/simplesearchlauncher/activity/onboarding/IntroSlide;)V

    return-void
.end method
