.class abstract Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView$AllAppsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AllAppsRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AllAppsAdapter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getRowCount()I
.end method

.method abstract getRowHeight(I)I
.end method

.method abstract getRowIndex(I)I
.end method

.method abstract getSectionTitle(I)Ljava/lang/String;
.end method
