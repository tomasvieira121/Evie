.class public Lcom/voxel/launcher3/Stats;
.super Ljava/lang/Object;
.source "Stats.java"


# instance fields
.field mHistogram:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLaunchBroadcastPermission:Ljava/lang/String;

.field private final mLauncher:Lcom/voxel/launcher3/Launcher;

.field mLog:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>(Lcom/voxel/launcher3/Launcher;)V
    .locals 4

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/voxel/launcher3/Stats;->mLauncher:Lcom/voxel/launcher3/Launcher;

    .line 71
    invoke-virtual {p1}, Lcom/voxel/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1201e5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/Stats;->mLaunchBroadcastPermission:Ljava/lang/String;

    .line 73
    invoke-direct {p0}, Lcom/voxel/launcher3/Stats;->loadStats()V

    const/4 p1, 0x0

    .line 77
    :try_start_0
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/voxel/launcher3/Stats;->mLauncher:Lcom/voxel/launcher3/Launcher;

    const-string v2, "launches.log"

    const v3, 0x8000

    invoke-virtual {v1, v2, v3}, Lcom/voxel/launcher3/Launcher;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/voxel/launcher3/Stats;->mLog:Ljava/io/DataOutputStream;

    .line 78
    iget-object v0, p0, Lcom/voxel/launcher3/Stats;->mLog:Ljava/io/DataOutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 79
    iget-object v0, p0, Lcom/voxel/launcher3/Stats;->mLog:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Launcher3/Stats"

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to write to stats log: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iput-object p1, p0, Lcom/voxel/launcher3/Stats;->mLog:Ljava/io/DataOutputStream;

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Launcher3/Stats"

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to create stats log: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iput-object p1, p0, Lcom/voxel/launcher3/Stats;->mLog:Ljava/io/DataOutputStream;

    :goto_0
    return-void
.end method

.method private loadStats()V
    .locals 7

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/voxel/launcher3/Stats;->mIntents:Ljava/util/ArrayList;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/voxel/launcher3/Stats;->mHistogram:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 198
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    iget-object v2, p0, Lcom/voxel/launcher3/Stats;->mLauncher:Lcom/voxel/launcher3/Launcher;

    const-string v3, "stats.log"

    invoke-virtual {v2, v3}, Lcom/voxel/launcher3/Launcher;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 199
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 201
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 203
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 205
    iget-object v5, p0, Lcom/voxel/launcher3/Stats;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v3, p0, Lcom/voxel/launcher3/Stats;->mHistogram:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    :cond_0
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    nop

    goto :goto_3

    :catch_1
    nop

    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_2
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 220
    :catch_2
    :cond_1
    throw v0

    :catch_3
    move-object v1, v0

    :goto_3
    if-eqz v1, :cond_2

    goto :goto_1

    :catch_4
    move-object v1, v0

    :goto_4
    if-eqz v1, :cond_2

    goto :goto_1

    :catch_5
    :cond_2
    :goto_5
    return-void
.end method

.method private saveStats()V
    .locals 6

    const/4 v0, 0x0

    .line 168
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcom/voxel/launcher3/Stats;->mLauncher:Lcom/voxel/launcher3/Launcher;

    const-string v3, "stats.log.tmp"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/voxel/launcher3/Launcher;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    .line 169
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 170
    iget-object v2, p0, Lcom/voxel/launcher3/Stats;->mHistogram:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 171
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_0
    if-ge v4, v2, :cond_0

    .line 173
    iget-object v3, p0, Lcom/voxel/launcher3/Stats;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 174
    iget-object v3, p0, Lcom/voxel/launcher3/Stats;->mHistogram:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 178
    :try_start_2
    iget-object v1, p0, Lcom/voxel/launcher3/Stats;->mLauncher:Lcom/voxel/launcher3/Launcher;

    const-string v2, "stats.log.tmp"

    invoke-virtual {v1, v2}, Lcom/voxel/launcher3/Launcher;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/voxel/launcher3/Stats;->mLauncher:Lcom/voxel/launcher3/Launcher;

    const-string v3, "stats.log"

    .line 179
    invoke-virtual {v2, v3}, Lcom/voxel/launcher3/Launcher;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_5

    :catch_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_1
    :try_start_3
    const-string v2, "Launcher3/Stats"

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to write to stats data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    .line 187
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_3
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_3
    :try_start_5
    const-string v2, "Launcher3/Stats"

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to create stats data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_1

    goto :goto_2

    :catch_4
    :cond_1
    :goto_4
    return-void

    :catchall_1
    move-exception v0

    :goto_5
    if-eqz v1, :cond_2

    .line 187
    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 190
    :catch_5
    :cond_2
    throw v0

    return-void
.end method


# virtual methods
.method public incrementLaunch(Ljava/lang/String;)V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/voxel/launcher3/Stats;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    if-gez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/voxel/launcher3/Stats;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object p1, p0, Lcom/voxel/launcher3/Stats;->mHistogram:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/Stats;->mHistogram:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public recordLaunch(Landroid/content/Intent;Lcom/voxel/launcher3/ShortcutInfo;)V
    .locals 6

    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 121
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    .line 123
    invoke-virtual {v0, p1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.voxel.launcher3.action.LAUNCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "intent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string v2, "container"

    .line 127
    iget-wide v3, p2, Lcom/voxel/launcher3/ShortcutInfo;->container:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "screen"

    iget-wide v4, p2, Lcom/voxel/launcher3/ShortcutInfo;->screenId:J

    .line 128
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "cellX"

    iget v4, p2, Lcom/voxel/launcher3/ShortcutInfo;->cellX:I

    .line 129
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "cellY"

    iget v4, p2, Lcom/voxel/launcher3/ShortcutInfo;->cellY:I

    .line 130
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    :cond_0
    iget-object v2, p0, Lcom/voxel/launcher3/Stats;->mLauncher:Lcom/voxel/launcher3/Launcher;

    iget-object v3, p0, Lcom/voxel/launcher3/Stats;->mLaunchBroadcastPermission:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/voxel/launcher3/Launcher;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/Stats;->incrementLaunch(Ljava/lang/String;)V

    .line 137
    invoke-direct {p0}, Lcom/voxel/launcher3/Stats;->saveStats()V

    .line 140
    iget-object v1, p0, Lcom/voxel/launcher3/Stats;->mLog:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_2

    const/16 v2, 0x1000

    .line 142
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 143
    iget-object v1, p0, Lcom/voxel/launcher3/Stats;->mLog:Ljava/io/DataOutputStream;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    if-nez p2, :cond_1

    .line 145
    iget-object p2, p0, Lcom/voxel/launcher3/Stats;->mLog:Ljava/io/DataOutputStream;

    invoke-virtual {p2, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 146
    iget-object p2, p0, Lcom/voxel/launcher3/Stats;->mLog:Ljava/io/DataOutputStream;

    invoke-virtual {p2, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 147
    iget-object p2, p0, Lcom/voxel/launcher3/Stats;->mLog:Ljava/io/DataOutputStream;

    invoke-virtual {p2, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 148
    iget-object p2, p0, Lcom/voxel/launcher3/Stats;->mLog:Ljava/io/DataOutputStream;

    invoke-virtual {p2, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_0

    .line 150
    :cond_1
    iget-object p1, p0, Lcom/voxel/launcher3/Stats;->mLog:Ljava/io/DataOutputStream;

    iget-wide v1, p2, Lcom/voxel/launcher3/ShortcutInfo;->container:J

    long-to-int v1, v1

    int-to-short v1, v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 151
    iget-object p1, p0, Lcom/voxel/launcher3/Stats;->mLog:Ljava/io/DataOutputStream;

    iget-wide v1, p2, Lcom/voxel/launcher3/ShortcutInfo;->screenId:J

    long-to-int v1, v1

    int-to-short v1, v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 152
    iget-object p1, p0, Lcom/voxel/launcher3/Stats;->mLog:Ljava/io/DataOutputStream;

    iget v1, p2, Lcom/voxel/launcher3/ShortcutInfo;->cellX:I

    int-to-short v1, v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 153
    iget-object p1, p0, Lcom/voxel/launcher3/Stats;->mLog:Ljava/io/DataOutputStream;

    iget p2, p2, Lcom/voxel/launcher3/ShortcutInfo;->cellY:I

    int-to-short p2, p2

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 155
    :goto_0
    iget-object p1, p0, Lcom/voxel/launcher3/Stats;->mLog:Ljava/io/DataOutputStream;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 157
    iget-object p1, p0, Lcom/voxel/launcher3/Stats;->mLog:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 160
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method
