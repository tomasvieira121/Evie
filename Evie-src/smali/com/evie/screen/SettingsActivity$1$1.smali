.class Lcom/evie/screen/SettingsActivity$1$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/screen/SettingsActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/evie/screen/SettingsActivity$1;


# direct methods
.method constructor <init>(Lcom/evie/screen/SettingsActivity$1;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/evie/screen/SettingsActivity$1$1;->this$1:Lcom/evie/screen/SettingsActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 100
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/evie/screen/SettingsActivity;->getSha1Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "3e2bc6af999489603347e2fd99a14d65ffc927d0"

    .line 102
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 p4, 0x1

    const/16 v0, 0x8

    if-eqz p3, :cond_0

    .line 103
    iget-object p1, p0, Lcom/evie/screen/SettingsActivity$1$1;->this$1:Lcom/evie/screen/SettingsActivity$1;

    iget-object p1, p1, Lcom/evie/screen/SettingsActivity$1;->this$0:Lcom/evie/screen/SettingsActivity;

    iget-object p1, p1, Lcom/evie/screen/SettingsActivity;->mCommandText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 105
    iget-object p1, p0, Lcom/evie/screen/SettingsActivity$1$1;->this$1:Lcom/evie/screen/SettingsActivity$1;

    iget-object p1, p1, Lcom/evie/screen/SettingsActivity$1;->this$0:Lcom/evie/screen/SettingsActivity;

    invoke-static {p1}, Lcom/evie/screen/SettingsActivity;->access$100(Lcom/evie/screen/SettingsActivity;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "com.evie.screen.SettingsActivity.PREF_SUPER_HIDDEN_OPTIONS_VISIBLE"

    invoke-interface {p1, p2, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 106
    iget-object p1, p0, Lcom/evie/screen/SettingsActivity$1$1;->this$1:Lcom/evie/screen/SettingsActivity$1;

    iget-object p1, p1, Lcom/evie/screen/SettingsActivity$1;->this$0:Lcom/evie/screen/SettingsActivity;

    invoke-static {p1}, Lcom/evie/screen/SettingsActivity;->access$200(Lcom/evie/screen/SettingsActivity;)V

    .line 107
    iget-object p1, p0, Lcom/evie/screen/SettingsActivity$1$1;->this$1:Lcom/evie/screen/SettingsActivity$1;

    iget-object p1, p1, Lcom/evie/screen/SettingsActivity$1;->this$0:Lcom/evie/screen/SettingsActivity;

    invoke-static {p1}, Lcom/evie/screen/SettingsActivity;->access$300(Lcom/evie/screen/SettingsActivity;)V

    goto :goto_0

    :cond_0
    const-string p3, "91256afc6ee43ebe72a2d1db1f08a3b6b2e0688b"

    .line 108
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 109
    iget-object p1, p0, Lcom/evie/screen/SettingsActivity$1$1;->this$1:Lcom/evie/screen/SettingsActivity$1;

    iget-object p1, p1, Lcom/evie/screen/SettingsActivity$1;->this$0:Lcom/evie/screen/SettingsActivity;

    iget-object p1, p1, Lcom/evie/screen/SettingsActivity;->mCommandText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 111
    iget-object p1, p0, Lcom/evie/screen/SettingsActivity$1$1;->this$1:Lcom/evie/screen/SettingsActivity$1;

    iget-object p1, p1, Lcom/evie/screen/SettingsActivity$1;->this$0:Lcom/evie/screen/SettingsActivity;

    invoke-static {p1}, Lcom/evie/screen/SettingsActivity;->access$100(Lcom/evie/screen/SettingsActivity;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "com.evie.screen.SettingsActivity.PREF_HIDDEN_OPTIONS_VISIBLE"

    invoke-interface {p1, p2, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 112
    iget-object p1, p0, Lcom/evie/screen/SettingsActivity$1$1;->this$1:Lcom/evie/screen/SettingsActivity$1;

    iget-object p1, p1, Lcom/evie/screen/SettingsActivity$1;->this$0:Lcom/evie/screen/SettingsActivity;

    invoke-static {p1}, Lcom/evie/screen/SettingsActivity;->access$200(Lcom/evie/screen/SettingsActivity;)V

    goto :goto_0

    .line 114
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 115
    iget-object p1, p0, Lcom/evie/screen/SettingsActivity$1$1;->this$1:Lcom/evie/screen/SettingsActivity$1;

    iget-object p1, p1, Lcom/evie/screen/SettingsActivity$1;->this$0:Lcom/evie/screen/SettingsActivity;

    iget-object p1, p1, Lcom/evie/screen/SettingsActivity;->mCommandText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method
