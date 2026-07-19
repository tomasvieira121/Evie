.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Folder$UoodmKmCO2mOsJN65KUh00F-5kM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/voxel/launcher3/Workspace$ItemOperator;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/ShortcutInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/ShortcutInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Folder$UoodmKmCO2mOsJN65KUh00F-5kM;->f$0:Lcom/voxel/launcher3/ShortcutInfo;

    return-void
.end method


# virtual methods
.method public final evaluate(Lcom/voxel/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Folder$UoodmKmCO2mOsJN65KUh00F-5kM;->f$0:Lcom/voxel/launcher3/ShortcutInfo;

    invoke-static {v0, p1, p2, p3}, Lcom/voxel/launcher3/Folder;->lambda$getViewForInfo$6(Lcom/voxel/launcher3/ShortcutInfo;Lcom/voxel/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
