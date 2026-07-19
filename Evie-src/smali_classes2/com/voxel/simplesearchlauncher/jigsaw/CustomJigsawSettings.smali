.class public final Lcom/voxel/simplesearchlauncher/jigsaw/CustomJigsawSettings;
.super Ljava/lang/Object;
.source "CustomJigsawSettings.java"


# direct methods
.method public static apply(Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0}, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->ads(Z)Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;

    move-result-object p0

    const/4 v0, 0x1

    .line 17
    invoke-virtual {p0, v0}, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->shortcuts(Z)Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;

    move-result-object p0

    const v0, 0x7f080162

    .line 18
    invoke-virtual {p0, v0}, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->errorImage(I)Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;

    return-void
.end method
