.class public Lcom/voxel/simplesearchlauncher/utils/AudioServiceActivityLeak;
.super Landroid/content/ContextWrapper;
.source "AudioServiceActivityLeak.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static preventLeakOf(Landroid/content/Context;)Landroid/content/ContextWrapper;
    .locals 1

    .line 18
    new-instance v0, Lcom/voxel/simplesearchlauncher/utils/AudioServiceActivityLeak;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/utils/AudioServiceActivityLeak;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "audio"

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/utils/AudioServiceActivityLeak;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 26
    :cond_0
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
