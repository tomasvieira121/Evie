.class Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor$1;
.super Landroid/database/ContentObserver;
.source "GmailExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;->registerObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;Landroid/os/Handler;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor$1;->this$0:Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, p1, v0}, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor$1;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 151
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor$1;->this$0:Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;->notifyListener()V

    return-void
.end method
