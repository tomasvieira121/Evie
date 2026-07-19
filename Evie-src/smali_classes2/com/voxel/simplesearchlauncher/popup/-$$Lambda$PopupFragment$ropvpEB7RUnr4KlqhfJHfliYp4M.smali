.class public final synthetic Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupFragment$ropvpEB7RUnr4KlqhfJHfliYp4M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/LauncherAppWidgetInfo;

.field private final synthetic f$1:Lcom/voxel/launcher3/LauncherAppWidgetHost;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/LauncherAppWidgetInfo;Lcom/voxel/launcher3/LauncherAppWidgetHost;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupFragment$ropvpEB7RUnr4KlqhfJHfliYp4M;->f$0:Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupFragment$ropvpEB7RUnr4KlqhfJHfliYp4M;->f$1:Lcom/voxel/launcher3/LauncherAppWidgetHost;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupFragment$ropvpEB7RUnr4KlqhfJHfliYp4M;->f$0:Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupFragment$ropvpEB7RUnr4KlqhfJHfliYp4M;->f$1:Lcom/voxel/launcher3/LauncherAppWidgetHost;

    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment;->lambda$deleteItem$4(Lcom/voxel/launcher3/LauncherAppWidgetInfo;Lcom/voxel/launcher3/LauncherAppWidgetHost;)V

    return-void
.end method
