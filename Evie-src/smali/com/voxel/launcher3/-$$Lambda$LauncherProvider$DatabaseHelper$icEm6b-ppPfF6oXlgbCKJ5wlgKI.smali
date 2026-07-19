.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$LauncherProvider$DatabaseHelper$icEm6b-ppPfF6oXlgbCKJ5wlgKI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/voxel/launcher3/LauncherProvider$ContentValuesCallback;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherProvider$DatabaseHelper$icEm6b-ppPfF6oXlgbCKJ5wlgKI;->f$0:Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;

    return-void
.end method


# virtual methods
.method public final onRow(Landroid/content/ContentValues;)V
    .locals 1

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherProvider$DatabaseHelper$icEm6b-ppPfF6oXlgbCKJ5wlgKI;->f$0:Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;

    invoke-static {v0, p1}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->lambda$onCreate$0(Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;Landroid/content/ContentValues;)V

    return-void
.end method
