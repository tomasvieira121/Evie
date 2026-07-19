.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Launcher$njqBCaBNIeD1LVn-zUNPErn514k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/view/SpringySearchView$KeyboardRulesHandler;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$njqBCaBNIeD1LVn-zUNPErn514k;->f$0:Lcom/voxel/launcher3/Launcher;

    return-void
.end method


# virtual methods
.method public final canDisplayKeyboard()Z
    .locals 1

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$njqBCaBNIeD1LVn-zUNPErn514k;->f$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->lambda$setupViews$13(Lcom/voxel/launcher3/Launcher;)Z

    move-result v0

    return v0
.end method
