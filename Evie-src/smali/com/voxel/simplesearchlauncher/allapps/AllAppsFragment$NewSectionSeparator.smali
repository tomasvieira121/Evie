.class public Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$NewSectionSeparator;
.super Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;
.source "AllAppsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NewSectionSeparator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)V
    .locals 0

    .line 855
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$NewSectionSeparator;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemId()Ljava/lang/String;
    .locals 1

    const-string v0, "__list_header__"

    return-object v0
.end method

.method public handleAction(Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData$ActionType;Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
