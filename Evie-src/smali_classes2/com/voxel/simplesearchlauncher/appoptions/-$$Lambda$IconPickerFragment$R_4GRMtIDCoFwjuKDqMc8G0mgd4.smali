.class public final synthetic Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$IconPickerFragment$R_4GRMtIDCoFwjuKDqMc8G0mgd4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$IconPickerFragment$R_4GRMtIDCoFwjuKDqMc8G0mgd4;->f$0:Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$IconPickerFragment$R_4GRMtIDCoFwjuKDqMc8G0mgd4;->f$0:Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->lambda$setupIconAdapter$5(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
