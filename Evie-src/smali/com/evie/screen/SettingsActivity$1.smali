.class Lcom/evie/screen/SettingsActivity$1;
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

    .line 84
    iput-object p1, p0, Lcom/evie/screen/SettingsActivity$1;->this$0:Lcom/evie/screen/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 87
    iget-object p1, p0, Lcom/evie/screen/SettingsActivity$1;->this$0:Lcom/evie/screen/SettingsActivity;

    invoke-static {p1}, Lcom/evie/screen/SettingsActivity;->access$008(Lcom/evie/screen/SettingsActivity;)I

    .line 89
    iget-object p1, p0, Lcom/evie/screen/SettingsActivity$1;->this$0:Lcom/evie/screen/SettingsActivity;

    invoke-static {p1}, Lcom/evie/screen/SettingsActivity;->access$000(Lcom/evie/screen/SettingsActivity;)I

    move-result p1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    .line 90
    iget-object p1, p0, Lcom/evie/screen/SettingsActivity$1;->this$0:Lcom/evie/screen/SettingsActivity;

    iget-object p1, p1, Lcom/evie/screen/SettingsActivity;->mCommandText:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 92
    iget-object p1, p0, Lcom/evie/screen/SettingsActivity$1;->this$0:Lcom/evie/screen/SettingsActivity;

    iget-object p1, p1, Lcom/evie/screen/SettingsActivity;->mCommandText:Landroid/widget/EditText;

    new-instance v0, Lcom/evie/screen/SettingsActivity$1$1;

    invoke-direct {v0, p0}, Lcom/evie/screen/SettingsActivity$1$1;-><init>(Lcom/evie/screen/SettingsActivity$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method
