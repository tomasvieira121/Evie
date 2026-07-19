.class public Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;
.super Landroidx/fragment/app/Fragment;
.source "SelectAppFragment.java"


# instance fields
.field private mAllAppsAdapter:Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;

.field mAllAppsRecyclerView:Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mDisposables:Lio/reactivex/disposables/CompositeDisposable;

.field mLocalAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field private mQuerySubject:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, ""

    .line 59
    invoke-static {v0}, Lio/reactivex/subjects/BehaviorSubject;->createDefault(Ljava/lang/Object;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;->mQuerySubject:Lio/reactivex/subjects/BehaviorSubject;

    .line 61
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/gestures/-$$Lambda$SelectAppFragment$U_tnNOdHVN6bLrL5Jc0opupYXt4;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/settings/gestures/-$$Lambda$SelectAppFragment$U_tnNOdHVN6bLrL5Jc0opupYXt4;-><init>(Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;)Lio/reactivex/subjects/BehaviorSubject;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;->mQuerySubject:Lio/reactivex/subjects/BehaviorSubject;

    return-object p0
.end method

.method private filterApps(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;",
            ">;"
        }
    .end annotation

    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 131
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\s+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 134
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 136
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 137
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 143
    array-length v2, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 144
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 145
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public static synthetic lambda$new$0(Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a0039

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;

    .line 64
    instance-of v0, p1, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    if-eqz v0, :cond_0

    .line 65
    check-cast p1, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    .line 66
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getActivityName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10200000

    .line 70
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;->getTargetRequestCode()I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2, v0}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onCreate$1(Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;->mLocalAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->getAllLocalLaunchApps()Ljava/util/List;

    move-result-object v0

    .line 98
    new-instance v1, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment$1;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment$1;-><init>(Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static synthetic lambda$onCreate$2(Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;Landroid/util/Pair;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 114
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;->filterApps(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$onCreate$3(Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;->mAllAppsAdapter:Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;->setResultListItems(Ljava/util/List;)Z

    .line 118
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;->mAllAppsAdapter:Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic lambda$onCreateOptionsMenu$4(Landroid/view/View;Z)V
    .locals 1

    .line 200
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "focus "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 79
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 80
    invoke-static {p0}, Ldagger/android/support/AndroidSupportInjection;->inject(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 85
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;->mQuerySubject:Lio/reactivex/subjects/BehaviorSubject;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 87
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    const/4 p1, 0x1

    .line 88
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;->setHasOptionsMenu(Z)V

    .line 90
    new-instance v0, Lcom/voxel/simplesearchlauncher/allapps/AlphabeticalAppsSectionsHelper;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/voxel/simplesearchlauncher/allapps/AlphabeticalAppsSectionsHelper;-><init>(Landroid/content/Context;)V

    .line 91
    new-instance v1, Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;-><init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/allapps/AlphabeticalAppsSectionsHelper;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    iput-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;->mAllAppsAdapter:Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;

    .line 92
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;->mAllAppsAdapter:Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;->setLightMode(Z)V

    .line 95
    new-instance p1, Lcom/voxel/simplesearchlauncher/settings/gestures/-$$Lambda$SelectAppFragment$p1jkYG1F1a0D7paM0NQ27vDxG6U;

    invoke-direct {p1, p0}, Lcom/voxel/simplesearchlauncher/settings/gestures/-$$Lambda$SelectAppFragment$p1jkYG1F1a0D7paM0NQ27vDxG6U;-><init>(Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;)V

    invoke-static {p1}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 112
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;->mQuerySubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v3, v4, v2}, Lio/reactivex/subjects/BehaviorSubject;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v1

    sget-object v2, Lcom/voxel/simplesearchlauncher/settings/gestures/-$$Lambda$XaRnOwX-mvpiK6Ub0Hr3BfLinn0;->INSTANCE:Lcom/voxel/simplesearchlauncher/settings/gestures/-$$Lambda$XaRnOwX-mvpiK6Ub0Hr3BfLinn0;

    invoke-static {v1, p1, v2}, Lio/reactivex/Observable;->combineLatest(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object p1

    .line 113
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/voxel/simplesearchlauncher/settings/gestures/-$$Lambda$SelectAppFragment$T_nJkKcDt-cAqv3q7NtCiG1vXRE;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/settings/gestures/-$$Lambda$SelectAppFragment$T_nJkKcDt-cAqv3q7NtCiG1vXRE;-><init>(Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;)V

    .line 114
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 115
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/voxel/simplesearchlauncher/settings/gestures/-$$Lambda$SelectAppFragment$ZZ8RGbuPD1qDp3ZTFU1Y9blsOuU;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/settings/gestures/-$$Lambda$SelectAppFragment$ZZ8RGbuPD1qDp3ZTFU1Y9blsOuU;-><init>(Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;)V

    .line 116
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 112
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0e0001

    .line 177
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0a0231

    .line 179
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 181
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "search"

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/SearchManager;

    if-eqz p1, :cond_0

    .line 185
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SearchView;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 188
    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment$2;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment$2;-><init>(Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 200
    sget-object p2, Lcom/voxel/simplesearchlauncher/settings/gestures/-$$Lambda$SelectAppFragment$S1T_eXmF0E7tJHBO2JZhPdfQ3ug;->INSTANCE:Lcom/voxel/simplesearchlauncher/settings/gestures/-$$Lambda$SelectAppFragment$S1T_eXmF0E7tJHBO2JZhPdfQ3ug;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d00b0

    const/4 v0, 0x0

    .line 164
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 157
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 158
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 0

    .line 211
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyOptionsMenu()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 216
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .line 206
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 169
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 171
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;->mAllAppsRecyclerView:Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 172
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;->mAllAppsRecyclerView:Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;->mAllAppsAdapter:Lcom/voxel/simplesearchlauncher/allapps/AllAppsListAdapter;

    invoke-virtual {p1, p2}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
