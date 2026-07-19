.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Workspace$yQT6_4m2v72zDFLqIPEiZILn-bk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Workspace;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Ljava/lang/Runnable;

.field private final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Workspace;ZLjava/lang/Runnable;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$yQT6_4m2v72zDFLqIPEiZILn-bk;->f$0:Lcom/voxel/launcher3/Workspace;

    iput-boolean p2, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$yQT6_4m2v72zDFLqIPEiZILn-bk;->f$1:Z

    iput-object p3, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$yQT6_4m2v72zDFLqIPEiZILn-bk;->f$2:Ljava/lang/Runnable;

    iput-boolean p4, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$yQT6_4m2v72zDFLqIPEiZILn-bk;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$yQT6_4m2v72zDFLqIPEiZILn-bk;->f$0:Lcom/voxel/launcher3/Workspace;

    iget-boolean v1, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$yQT6_4m2v72zDFLqIPEiZILn-bk;->f$1:Z

    iget-object v2, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$yQT6_4m2v72zDFLqIPEiZILn-bk;->f$2:Ljava/lang/Runnable;

    iget-boolean v3, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$yQT6_4m2v72zDFLqIPEiZILn-bk;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lcom/voxel/launcher3/Workspace;->lambda$removeExtraEmptyScreenDelayed$0(Lcom/voxel/launcher3/Workspace;ZLjava/lang/Runnable;Z)V

    return-void
.end method
