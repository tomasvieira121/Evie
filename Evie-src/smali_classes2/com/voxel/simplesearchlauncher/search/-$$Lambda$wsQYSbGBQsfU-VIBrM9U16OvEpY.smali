.class public final synthetic Lcom/voxel/simplesearchlauncher/search/-$$Lambda$wsQYSbGBQsfU-VIBrM9U16OvEpY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/view/SpringySearchView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/search/-$$Lambda$wsQYSbGBQsfU-VIBrM9U16OvEpY;->f$0:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/-$$Lambda$wsQYSbGBQsfU-VIBrM9U16OvEpY;->f$0:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->hideSearchProgressSpinner()V

    return-void
.end method
