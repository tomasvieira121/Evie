.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$McLEzzcuDpNLGPEbi7yalJwL7eo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/widget/Advanceable;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Advanceable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$McLEzzcuDpNLGPEbi7yalJwL7eo;->f$0:Landroid/widget/Advanceable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$McLEzzcuDpNLGPEbi7yalJwL7eo;->f$0:Landroid/widget/Advanceable;

    invoke-interface {v0}, Landroid/widget/Advanceable;->advance()V

    return-void
.end method
