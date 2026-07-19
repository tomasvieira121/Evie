.class Lcom/evie/screen/SettingsActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SettingsActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/screen/SettingsActivity_ViewBinding;-><init>(Lcom/evie/screen/SettingsActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/screen/SettingsActivity_ViewBinding;

.field final synthetic val$target:Lcom/evie/screen/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/evie/screen/SettingsActivity_ViewBinding;Lcom/evie/screen/SettingsActivity;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/evie/screen/SettingsActivity_ViewBinding$1;->this$0:Lcom/evie/screen/SettingsActivity_ViewBinding;

    iput-object p2, p0, Lcom/evie/screen/SettingsActivity_ViewBinding$1;->val$target:Lcom/evie/screen/SettingsActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/evie/screen/SettingsActivity_ViewBinding$1;->val$target:Lcom/evie/screen/SettingsActivity;

    invoke-virtual {p1}, Lcom/evie/screen/SettingsActivity;->onAutoplayClick()V

    return-void
.end method
