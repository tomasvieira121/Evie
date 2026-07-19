.class Lcom/voxel/launcher3/Launcher$CloseSystemDialogsIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseSystemDialogsIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/Launcher;


# direct methods
.method private constructor <init>(Lcom/voxel/launcher3/Launcher;)V
    .locals 0

    .line 6450
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher$CloseSystemDialogsIntentReceiver;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/launcher3/Launcher;Lcom/voxel/launcher3/Launcher$1;)V
    .locals 0

    .line 6450
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/Launcher$CloseSystemDialogsIntentReceiver;-><init>(Lcom/voxel/launcher3/Launcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 6453
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$CloseSystemDialogsIntentReceiver;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/voxel/launcher3/Launcher;->closeSystemDialogs()V

    return-void
.end method
