.class public final synthetic Lcom/voxel/simplesearchlauncher/widget/-$$Lambda$WidgetHostViewLoader$3u0p7lLklpQSJBozmo9sA9okku0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;

.field private final synthetic f$1:Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/-$$Lambda$WidgetHostViewLoader$3u0p7lLklpQSJBozmo9sA9okku0;->f$0:Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/widget/-$$Lambda$WidgetHostViewLoader$3u0p7lLklpQSJBozmo9sA9okku0;->f$1:Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/-$$Lambda$WidgetHostViewLoader$3u0p7lLklpQSJBozmo9sA9okku0;->f$0:Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/widget/-$$Lambda$WidgetHostViewLoader$3u0p7lLklpQSJBozmo9sA9okku0;->f$1:Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->lambda$preloadWidget$1(Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;)V

    return-void
.end method
