.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Launcher$8Fq9BnDbfIA-zasvKcJ3-zptmng;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Launcher;

.field private final synthetic f$1:Lcom/voxel/launcher3/util/LongArrayMap;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Launcher;Lcom/voxel/launcher3/util/LongArrayMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$8Fq9BnDbfIA-zasvKcJ3-zptmng;->f$0:Lcom/voxel/launcher3/Launcher;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$8Fq9BnDbfIA-zasvKcJ3-zptmng;->f$1:Lcom/voxel/launcher3/util/LongArrayMap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$8Fq9BnDbfIA-zasvKcJ3-zptmng;->f$0:Lcom/voxel/launcher3/Launcher;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$8Fq9BnDbfIA-zasvKcJ3-zptmng;->f$1:Lcom/voxel/launcher3/util/LongArrayMap;

    invoke-static {v0, v1}, Lcom/voxel/launcher3/Launcher;->lambda$bindFolders$37(Lcom/voxel/launcher3/Launcher;Lcom/voxel/launcher3/util/LongArrayMap;)V

    return-void
.end method
