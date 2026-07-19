.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Folder$d4bl1_ecylp3Aqm18syuNo1cAes;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/voxel/launcher3/ExtendedEditText$OnBackKeyListener;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Folder;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Folder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Folder$d4bl1_ecylp3Aqm18syuNo1cAes;->f$0:Lcom/voxel/launcher3/Folder;

    return-void
.end method


# virtual methods
.method public final onBackKey()Z
    .locals 1

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Folder$d4bl1_ecylp3Aqm18syuNo1cAes;->f$0:Lcom/voxel/launcher3/Folder;

    invoke-static {v0}, Lcom/voxel/launcher3/Folder;->lambda$onFinishInflate$1(Lcom/voxel/launcher3/Folder;)Z

    move-result v0

    return v0
.end method
