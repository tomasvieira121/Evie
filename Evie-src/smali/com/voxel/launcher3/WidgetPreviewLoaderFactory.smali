.class public Lcom/voxel/launcher3/WidgetPreviewLoaderFactory;
.super Ljava/lang/Object;
.source "WidgetPreviewLoaderFactory.java"


# direct methods
.method public static createWidgetPreviewLoader(Landroid/content/Context;Lcom/voxel/launcher3/IconCache;)Lcom/voxel/launcher3/WidgetPreviewLoader;
    .locals 1

    .line 9
    new-instance v0, Lcom/voxel/launcher3/WidgetPreviewLoader;

    invoke-direct {v0, p0, p1}, Lcom/voxel/launcher3/WidgetPreviewLoader;-><init>(Landroid/content/Context;Lcom/voxel/launcher3/IconCache;)V

    return-object v0
.end method
