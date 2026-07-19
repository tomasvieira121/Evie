.class Lcom/android/photos/views/TiledImageRenderer$TileQueue;
.super Ljava/lang/Object;
.source "TiledImageRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/photos/views/TiledImageRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TileQueue"
.end annotation


# instance fields
.field private mHead:Lcom/android/photos/views/TiledImageRenderer$Tile;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private contains(Lcom/android/photos/views/TiledImageRenderer$Tile;)Z
    .locals 1

    .line 778
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->mHead:Lcom/android/photos/views/TiledImageRenderer$Tile;

    :goto_0
    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 783
    :cond_0
    iget-object v0, v0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mNext:Lcom/android/photos/views/TiledImageRenderer$Tile;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public clean()V
    .locals 1

    const/4 v0, 0x0

    .line 789
    iput-object v0, p0, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->mHead:Lcom/android/photos/views/TiledImageRenderer$Tile;

    return-void
.end method

.method public pop()Lcom/android/photos/views/TiledImageRenderer$Tile;
    .locals 2

    .line 759
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->mHead:Lcom/android/photos/views/TiledImageRenderer$Tile;

    if-eqz v0, :cond_0

    .line 761
    iget-object v1, v0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mNext:Lcom/android/photos/views/TiledImageRenderer$Tile;

    iput-object v1, p0, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->mHead:Lcom/android/photos/views/TiledImageRenderer$Tile;

    :cond_0
    return-object v0
.end method

.method public push(Lcom/android/photos/views/TiledImageRenderer$Tile;)Z
    .locals 2

    .line 767
    invoke-direct {p0, p1}, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->contains(Lcom/android/photos/views/TiledImageRenderer$Tile;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "TiledImageRenderer"

    const-string v0, "Attempting to add a tile already in the queue!"

    .line 768
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->mHead:Lcom/android/photos/views/TiledImageRenderer$Tile;

    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 772
    :cond_1
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->mHead:Lcom/android/photos/views/TiledImageRenderer$Tile;

    iput-object v0, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mNext:Lcom/android/photos/views/TiledImageRenderer$Tile;

    .line 773
    iput-object p1, p0, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->mHead:Lcom/android/photos/views/TiledImageRenderer$Tile;

    return v1
.end method
