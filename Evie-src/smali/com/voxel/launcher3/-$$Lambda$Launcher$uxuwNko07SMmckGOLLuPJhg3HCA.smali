.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Launcher$uxuwNko07SMmckGOLLuPJhg3HCA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Launcher;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:Lcom/voxel/launcher3/CellLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Launcher;IILcom/voxel/launcher3/CellLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$uxuwNko07SMmckGOLLuPJhg3HCA;->f$0:Lcom/voxel/launcher3/Launcher;

    iput p2, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$uxuwNko07SMmckGOLLuPJhg3HCA;->f$1:I

    iput p3, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$uxuwNko07SMmckGOLLuPJhg3HCA;->f$2:I

    iput-object p4, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$uxuwNko07SMmckGOLLuPJhg3HCA;->f$3:Lcom/voxel/launcher3/CellLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$uxuwNko07SMmckGOLLuPJhg3HCA;->f$0:Lcom/voxel/launcher3/Launcher;

    iget v1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$uxuwNko07SMmckGOLLuPJhg3HCA;->f$1:I

    iget v2, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$uxuwNko07SMmckGOLLuPJhg3HCA;->f$2:I

    iget-object v3, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$uxuwNko07SMmckGOLLuPJhg3HCA;->f$3:Lcom/voxel/launcher3/CellLayout;

    invoke-static {v0, v1, v2, v3}, Lcom/voxel/launcher3/Launcher;->lambda$onActivityResult$2(Lcom/voxel/launcher3/Launcher;IILcom/voxel/launcher3/CellLayout;)V

    return-void
.end method
