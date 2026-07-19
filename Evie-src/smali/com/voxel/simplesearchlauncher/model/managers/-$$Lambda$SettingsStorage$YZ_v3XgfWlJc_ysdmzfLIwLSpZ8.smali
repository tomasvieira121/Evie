.class public final synthetic Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$SettingsStorage$YZ_v3XgfWlJc_ysdmzfLIwLSpZ8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$SettingsStorage$YZ_v3XgfWlJc_ysdmzfLIwLSpZ8;->f$0:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/-$$Lambda$SettingsStorage$YZ_v3XgfWlJc_ysdmzfLIwLSpZ8;->f$0:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    check-cast p1, Lcom/evie/common/data/Lce;

    invoke-static {v0, p1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->lambda$onUpgrade$0(Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;Lcom/evie/common/data/Lce;)V

    return-void
.end method
