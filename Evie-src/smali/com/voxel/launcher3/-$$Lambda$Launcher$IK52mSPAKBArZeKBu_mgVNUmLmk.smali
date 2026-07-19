.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Launcher$IK52mSPAKBArZeKBu_mgVNUmLmk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Launcher;

.field private final synthetic f$1:I

.field private final synthetic f$2:Landroid/appwidget/AppWidgetHostView;

.field private final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Launcher;ILandroid/appwidget/AppWidgetHostView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$IK52mSPAKBArZeKBu_mgVNUmLmk;->f$0:Lcom/voxel/launcher3/Launcher;

    iput p2, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$IK52mSPAKBArZeKBu_mgVNUmLmk;->f$1:I

    iput-object p3, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$IK52mSPAKBArZeKBu_mgVNUmLmk;->f$2:Landroid/appwidget/AppWidgetHostView;

    iput p4, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$IK52mSPAKBArZeKBu_mgVNUmLmk;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$IK52mSPAKBArZeKBu_mgVNUmLmk;->f$0:Lcom/voxel/launcher3/Launcher;

    iget v1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$IK52mSPAKBArZeKBu_mgVNUmLmk;->f$1:I

    iget-object v2, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$IK52mSPAKBArZeKBu_mgVNUmLmk;->f$2:Landroid/appwidget/AppWidgetHostView;

    iget v3, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$IK52mSPAKBArZeKBu_mgVNUmLmk;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lcom/voxel/launcher3/Launcher;->lambda$completeTwoStageWidgetDrop$3(Lcom/voxel/launcher3/Launcher;ILandroid/appwidget/AppWidgetHostView;I)V

    return-void
.end method
