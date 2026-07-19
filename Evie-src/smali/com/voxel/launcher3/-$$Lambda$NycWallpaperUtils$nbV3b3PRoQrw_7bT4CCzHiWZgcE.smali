.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$NycWallpaperUtils$nbV3b3PRoQrw_7bT4CCzHiWZgcE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Landroid/os/AsyncTask;


# direct methods
.method public synthetic constructor <init>(Landroid/os/AsyncTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$NycWallpaperUtils$nbV3b3PRoQrw_7bT4CCzHiWZgcE;->f$0:Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$NycWallpaperUtils$nbV3b3PRoQrw_7bT4CCzHiWZgcE;->f$0:Landroid/os/AsyncTask;

    invoke-static {v0, p1, p2}, Lcom/voxel/launcher3/NycWallpaperUtils;->lambda$executeCropTaskAfterPrompt$0(Landroid/os/AsyncTask;Landroid/content/DialogInterface;I)V

    return-void
.end method
