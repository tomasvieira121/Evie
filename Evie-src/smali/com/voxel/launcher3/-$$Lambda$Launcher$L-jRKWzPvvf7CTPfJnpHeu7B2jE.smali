.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Launcher$L-jRKWzPvvf7CTPfJnpHeu7B2jE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$L-jRKWzPvvf7CTPfJnpHeu7B2jE;->f$0:Lcom/voxel/launcher3/Launcher;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$L-jRKWzPvvf7CTPfJnpHeu7B2jE;->f$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->lambda$onActivityResult$1(Lcom/voxel/launcher3/Launcher;)V

    return-void
.end method
