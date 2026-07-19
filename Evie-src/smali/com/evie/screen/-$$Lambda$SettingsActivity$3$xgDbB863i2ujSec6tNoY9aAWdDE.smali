.class public final synthetic Lcom/evie/screen/-$$Lambda$SettingsActivity$3$xgDbB863i2ujSec6tNoY9aAWdDE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/evie/screen/SettingsActivity$3;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/screen/SettingsActivity$3;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/screen/-$$Lambda$SettingsActivity$3$xgDbB863i2ujSec6tNoY9aAWdDE;->f$0:Lcom/evie/screen/SettingsActivity$3;

    iput-object p2, p0, Lcom/evie/screen/-$$Lambda$SettingsActivity$3$xgDbB863i2ujSec6tNoY9aAWdDE;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/evie/screen/-$$Lambda$SettingsActivity$3$xgDbB863i2ujSec6tNoY9aAWdDE;->f$0:Lcom/evie/screen/SettingsActivity$3;

    iget-object v1, p0, Lcom/evie/screen/-$$Lambda$SettingsActivity$3$xgDbB863i2ujSec6tNoY9aAWdDE;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/evie/common/data/Lce;

    invoke-static {v0, v1, p1}, Lcom/evie/screen/SettingsActivity$3;->lambda$null$1(Lcom/evie/screen/SettingsActivity$3;Ljava/lang/String;Lcom/evie/common/data/Lce;)V

    return-void
.end method
