.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Launcher$JL9YE_-t4w1nwULsQukRbUYlwcs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Launcher;

.field private final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Launcher;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$JL9YE_-t4w1nwULsQukRbUYlwcs;->f$0:Lcom/voxel/launcher3/Launcher;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$JL9YE_-t4w1nwULsQukRbUYlwcs;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$JL9YE_-t4w1nwULsQukRbUYlwcs;->f$0:Lcom/voxel/launcher3/Launcher;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$JL9YE_-t4w1nwULsQukRbUYlwcs;->f$1:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Lcom/voxel/launcher3/Launcher;->lambda$onClickAppShortcut$26(Lcom/voxel/launcher3/Launcher;Landroid/view/View;Landroid/content/DialogInterface;I)V

    return-void
.end method
