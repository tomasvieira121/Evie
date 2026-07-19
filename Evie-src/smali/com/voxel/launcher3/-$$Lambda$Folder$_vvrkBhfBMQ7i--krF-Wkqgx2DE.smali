.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Folder$_vvrkBhfBMQ7i--krF-Wkqgx2DE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Folder;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Folder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Folder$_vvrkBhfBMQ7i--krF-Wkqgx2DE;->f$0:Lcom/voxel/launcher3/Folder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Folder$_vvrkBhfBMQ7i--krF-Wkqgx2DE;->f$0:Lcom/voxel/launcher3/Folder;

    invoke-static {v0}, Lcom/voxel/launcher3/Folder;->lambda$replaceFolderWithFinalItem$5(Lcom/voxel/launcher3/Folder;)V

    return-void
.end method
