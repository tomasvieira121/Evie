.class Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$1;
.super Landroid/os/AsyncTask;
.source "ChangeIconFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$LoadIconPackResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;Landroid/content/Context;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onPostExecute$0(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$1;)V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->access$400(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$LoadIconPackResult;
    .locals 10

    .line 124
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->mIconPackManager:Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->getAllIconPacks()Ljava/util/List;

    move-result-object p1

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 131
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->access$000(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voxel/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 132
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 133
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 137
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 139
    :try_start_0
    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;

    invoke-static {v5}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->access$000(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/voxel/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 140
    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$1;->val$context:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/voxel/launcher3/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 141
    :try_start_1
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_0

    :catch_1
    move-exception v5

    move-object v4, v0

    .line 143
    :goto_0
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 146
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;

    .line 147
    iget-object v6, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;

    invoke-virtual {v6}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_3

    .line 152
    :cond_1
    invoke-virtual {v5}, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->isSystemDefault()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    .line 156
    :cond_2
    new-instance v6, Lcom/evie/common/iconpack/IconPackFilter;

    iget-object v7, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$1;->val$context:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->getVersionCode()I

    move-result v9

    invoke-direct {v6, v7, v8, v9}, Lcom/evie/common/iconpack/IconPackFilter;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 158
    invoke-virtual {v6}, Lcom/evie/common/iconpack/IconPackFilter;->getDrawableList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_3

    .line 159
    new-instance v7, Landroidx/core/util/Pair;

    invoke-direct {v7, v5, v6}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_3
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 164
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$1;->val$context:Landroid/content/Context;

    .line 166
    invoke-static {v8}, Lcom/voxel/launcher3/Utilities;->getIconSize(Landroid/content/Context;)I

    move-result v8

    .line 162
    invoke-virtual {v6, v5, v7, v4, v8}, Lcom/evie/common/iconpack/IconPackFilter;->getIconForPackage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eq v4, v5, :cond_4

    if-eqz v5, :cond_4

    .line 169
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_4
    invoke-virtual {v6}, Lcom/evie/common/iconpack/IconPackFilter;->releaseMemory()V

    goto :goto_2

    .line 175
    :cond_5
    :goto_3
    new-instance p1, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$LoadIconPackResult;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;

    invoke-direct {p1, v2, v0}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$LoadIconPackResult;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$1;)V

    .line 176
    iput-object v1, p1, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$LoadIconPackResult;->mIconPackFilters:Ljava/util/List;

    .line 177
    iput-object v3, p1, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$LoadIconPackResult;->mSuggestedIcons:Ljava/util/List;

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 120
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$1;->doInBackground([Ljava/lang/Void;)Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$LoadIconPackResult;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$LoadIconPackResult;)V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;

    new-instance v1, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;

    invoke-direct {v1, v0, p1}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$LoadIconPackResult;)V

    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->access$202(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;)Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;

    .line 189
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->access$300(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;)Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->access$200(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;)Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->setAdapter(Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;)V

    .line 190
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->access$400(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$ChangeIconFragment$1$9n4K7cgCa11st_oxeGbZrVr9Lto;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$ChangeIconFragment$1$9n4K7cgCa11st_oxeGbZrVr9Lto;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$1;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 191
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->access$500(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->access$500(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 193
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->access$500(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 120
    check-cast p1, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$LoadIconPackResult;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$1;->onPostExecute(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$LoadIconPackResult;)V

    return-void
.end method
