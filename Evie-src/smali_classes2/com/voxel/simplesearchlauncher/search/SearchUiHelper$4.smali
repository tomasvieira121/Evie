.class Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$4;
.super Ljava/lang/Object;
.source "SearchUiHelper.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->getQueryTextListener()Landroidx/appcompat/widget/SearchView$OnQueryTextListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$4;->this$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$4;->this$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->access$200(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->getEndValueIfAvailable()Ljava/lang/Float;

    move-result-object v0

    .line 285
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return v2

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$4;->this$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->updateSearchInput(Ljava/lang/String;)Z

    return v2
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3

    .line 253
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$4;->this$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->access$000(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$4;->this$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->access$000(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 257
    :cond_0
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getSearchDoneButtonBehavior()I

    move-result p1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    .line 262
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$4;->this$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->access$500(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "input_method"

    .line 263
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 264
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$4;->this$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->access$200(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 265
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$4;->this$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->access$200(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->clearFocus()V

    goto :goto_0

    .line 269
    :cond_1
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$4;->this$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->access$100(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)Lcom/evie/search/SearchPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/evie/search/SearchPresenter;->clickFirstResult()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 270
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$4;->this$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->access$500(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "input_method"

    .line 271
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 272
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$4;->this$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->access$200(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 273
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper$4;->this$0:Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;->access$200(Lcom/voxel/simplesearchlauncher/search/SearchUiHelper;)Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->clearFocus()V

    :cond_2
    :goto_0
    return v0

    :cond_3
    :goto_1
    return v0
.end method
