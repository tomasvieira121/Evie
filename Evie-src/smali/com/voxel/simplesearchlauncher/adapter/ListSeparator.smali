.class public Lcom/voxel/simplesearchlauncher/adapter/ListSeparator;
.super Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;
.source "ListSeparator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemId()Ljava/lang/String;
    .locals 1

    const-string v0, "__list_separator__"

    return-object v0
.end method

.method public handleAction(Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData$ActionType;Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
