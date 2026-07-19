.class Lcom/voxel/launcher3/Launcher$PendingAddArguments;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingAddArguments"
.end annotation


# instance fields
.field appWidgetId:I

.field cellX:I

.field cellY:I

.field container:J

.field intent:Landroid/content/Intent;

.field requestCode:I

.field screenId:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/launcher3/Launcher$1;)V
    .locals 0

    .line 659
    invoke-direct {p0}, Lcom/voxel/launcher3/Launcher$PendingAddArguments;-><init>()V

    return-void
.end method
