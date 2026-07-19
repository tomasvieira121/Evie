.class public Lcom/voxel/launcher3/NycWallpaperUtils;
.super Ljava/lang/Object;
.source "NycWallpaperUtils.java"


# direct methods
.method public static clear(Landroid/content/Context;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    .line 64
    sget-boolean v0, Lcom/voxel/launcher3/Utilities;->ATLEAST_N:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->clear(I)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->clear()V

    :goto_0
    return-void
.end method

.method public static executeCropTaskAfterPrompt(Landroid/content/Context;Landroid/os/AsyncTask;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Integer;",
            "**>;",
            "Landroid/content/DialogInterface$OnCancelListener;",
            ")V"
        }
    .end annotation

    .line 29
    sget-boolean v0, Lcom/voxel/launcher3/Utilities;->ATLEAST_N:Z

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f1202ce

    .line 31
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f030003

    new-instance v1, Lcom/voxel/launcher3/-$$Lambda$NycWallpaperUtils$nbV3b3PRoQrw_7bT4CCzHiWZgcE;

    invoke-direct {v1, p1}, Lcom/voxel/launcher3/-$$Lambda$NycWallpaperUtils$nbV3b3PRoQrw_7bT4CCzHiWZgcE;-><init>(Landroid/os/AsyncTask;)V

    .line 32
    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 44
    invoke-virtual {p0, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 45
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 47
    new-array p2, p0, [Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, v0

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method static synthetic lambda$executeCropTaskAfterPrompt$0(Landroid/os/AsyncTask;Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    if-ne p2, p1, :cond_1

    const/4 p2, 0x2

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    .line 42
    :goto_0
    new-array p1, p1, [Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static setStream(Landroid/content/Context;Ljava/io/InputStream;Landroid/graphics/Rect;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    .line 54
    sget-boolean v0, Lcom/voxel/launcher3/Utilities;->ATLEAST_N:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    :goto_0
    return-void
.end method
