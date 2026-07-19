.class Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;
.super Ljava/lang/Object;
.source "SearchUiHelper.java"

# interfaces
.implements Lcom/evie/search/SearchPresenter$SearchStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;-><init>(Landroid/app/Activity;Lcom/voxel/simplesearchlauncher/view/SpringySearchView;Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;Lcom/evie/models/frequentlyused/FrequentlyUsedModel;Lcom/evie/search/AppAvailabilityProvider;Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$ScaleState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private volatile currentState:Lcom/evie/search/SearchPresenter$SearchState;

.field private showSearchProgressRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;->this$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance p1, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3$1;

    invoke-direct {p1, p0}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3$1;-><init>(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;->showSearchProgressRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$300(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;)Lcom/evie/search/SearchPresenter$SearchState;
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;->currentState:Lcom/evie/search/SearchPresenter$SearchState;

    return-object p0
.end method


# virtual methods
.method public onSearchStateChange(Lcom/evie/search/SearchPresenter$SearchState;)V
    .locals 5

    .line 198
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;->currentState:Lcom/evie/search/SearchPresenter$SearchState;

    .line 199
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;->this$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->access$400(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;->showSearchProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 201
    sget-object p1, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$5;->$SwitchMap$com$evie$search$SearchPresenter$SearchState:[I

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;->currentState:Lcom/evie/search/SearchPresenter$SearchState;

    invoke-virtual {v0}, Lcom/evie/search/SearchPresenter$SearchState;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 217
    :pswitch_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;->this$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->access$500(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "input_method"

    .line 218
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 219
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;->this$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->access$200(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 220
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;->this$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->access$200(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->clearFocus()V

    .line 222
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;->this$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->access$600(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 224
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;->this$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->access$600(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "launcher.has_completed_search"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;->this$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->access$600(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "launcher.has_completed_search"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;->this$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->access$600(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "launcher.num_completed_searches"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :cond_1
    const-string v2, "launcher.num_completed_searches"

    .line 234
    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 235
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 211
    :pswitch_1
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;->this$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->access$500(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "input_method"

    .line 212
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 213
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;->this$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->access$200(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 207
    :pswitch_2
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;->this$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->access$400(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;->showSearchProgressRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 203
    :pswitch_3
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;->this$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->access$400(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$3;->this$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->access$200(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/voxel/simplesearchlauncher/search/-$$Lambda$wsQYSbGBQsfU-VIBrM9U16OvEpY;

    invoke-direct {v1, v0}, Lcom/voxel/simplesearchlauncher/search/-$$Lambda$wsQYSbGBQsfU-VIBrM9U16OvEpY;-><init>(Lcom/voxel/simplesearchlauncher/view/SpringySearchView;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
