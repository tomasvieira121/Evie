.class Lcom/evie/screen/SettingsActivity$5;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/screen/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/screen/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/evie/screen/SettingsActivity;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/evie/screen/SettingsActivity$5;->this$0:Lcom/evie/screen/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 355
    iget-object p1, p0, Lcom/evie/screen/SettingsActivity$5;->this$0:Lcom/evie/screen/SettingsActivity;

    invoke-static {p1}, Lcom/evie/screen/SettingsActivity;->access$100(Lcom/evie/screen/SettingsActivity;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "com.evie.screen.SettingsActivity.PREF_DEBUG_TILES_REFRESH_TIME_LIMIT"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 357
    iget-object v0, p0, Lcom/evie/screen/SettingsActivity$5;->this$0:Lcom/evie/screen/SettingsActivity;

    invoke-static {v0}, Lcom/evie/screen/SettingsActivity;->access$100(Lcom/evie/screen/SettingsActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "com.evie.screen.SettingsActivity.PREF_DEBUG_TILES_REFRESH_TIME_LIMIT"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p1, :cond_0

    const-string p1, "ENABLING debug timer for tiles section refresh and restarting AppFlash..."

    goto :goto_0

    :cond_0
    const-string p1, "DISABLING debug timer for tiles section refresh restarting AppFlash..."

    .line 365
    :goto_0
    iget-object v0, p0, Lcom/evie/screen/SettingsActivity$5;->this$0:Lcom/evie/screen/SettingsActivity;

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
