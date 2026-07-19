.class public final synthetic Lcom/voxel/simplesearchlauncher/search/-$$Lambda$SearchUiHelper$i26z_Gkt5ONzOEOP7HfM6T95GvY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/search/-$$Lambda$SearchUiHelper$i26z_Gkt5ONzOEOP7HfM6T95GvY;->f$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/-$$Lambda$SearchUiHelper$i26z_Gkt5ONzOEOP7HfM6T95GvY;->f$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->lambda$showSetLauncherSearchPromptIfNeeded$4(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)V

    return-void
.end method
