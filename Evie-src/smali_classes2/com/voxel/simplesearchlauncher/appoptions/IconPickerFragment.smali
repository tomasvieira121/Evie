.class public Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;
.super Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;
.source "IconPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;,
        Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$BitmapWorkerTask;
    }
.end annotation


# instance fields
.field private mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field private mIconPack:Lcom/voxel/simplesearchlauncher/iconpack/IconPack;

.field private mIconPackFilter:Lcom/evie/common/iconpack/IconPackFilter;

.field private mIconPickerAdapter:Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;

.field mLoadingIndicator:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mQuerySubject:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mRecyclerView:Lcom/voxel/recyclerview/widget/SpringRecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSearchBar:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSearchEditText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTitleBar:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;-><init>()V

    .line 67
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mQuerySubject:Lio/reactivex/subjects/BehaviorSubject;

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;)Lio/reactivex/subjects/BehaviorSubject;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mQuerySubject:Lio/reactivex/subjects/BehaviorSubject;

    return-object p0
.end method

.method static synthetic access$100(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;)Lcom/evie/common/iconpack/IconPackFilter;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mIconPackFilter:Lcom/evie/common/iconpack/IconPackFilter;

    return-object p0
.end method

.method public static synthetic lambda$hideSearchBar$8(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;)V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mSearchBar:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$null$3(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;)V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mLoadingIndicator:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic lambda$onViewCreated$0(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public static synthetic lambda$onViewCreated$1(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 116
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->hideSearchBar()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onViewCreated$2(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mIconPackFilter:Lcom/evie/common/iconpack/IconPackFilter;

    invoke-virtual {v0}, Lcom/evie/common/iconpack/IconPackFilter;->verifyDrawableList()V

    return-void
.end method

.method public static synthetic lambda$onViewCreated$4(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mLoadingIndicator:Landroid/view/View;

    .line 162
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 163
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$IconPickerFragment$EKaChV65193Wpf64dPpAJs8UpHA;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$IconPickerFragment$EKaChV65193Wpf64dPpAJs8UpHA;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;)V

    .line 165
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 167
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->setupIconAdapter()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$setupIconAdapter$5(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mIconPackFilter:Lcom/evie/common/iconpack/IconPackFilter;

    invoke-virtual {v0}, Lcom/evie/common/iconpack/IconPackFilter;->getDrawableList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/appoptions/IconSearchHelper;->queryList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$setupIconAdapter$6(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mIconPickerAdapter:Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;

    invoke-static {v0, p1}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;->access$302(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;Ljava/util/List;)Ljava/util/List;

    .line 186
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mIconPickerAdapter:Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public static synthetic lambda$showSearchBar$7(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;)V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mTitleBar:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static newInstance(Lcom/voxel/simplesearchlauncher/iconpack/IconPack;Lcom/evie/common/iconpack/IconPackFilter;)Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;
    .locals 1

    .line 70
    new-instance v0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;-><init>()V

    .line 71
    iput-object p0, v0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mIconPack:Lcom/voxel/simplesearchlauncher/iconpack/IconPack;

    .line 72
    iput-object p1, v0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mIconPackFilter:Lcom/evie/common/iconpack/IconPackFilter;

    return-object v0
.end method

.method private setupIconAdapter()V
    .locals 5

    .line 176
    new-instance v0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mIconPackFilter:Lcom/evie/common/iconpack/IconPackFilter;

    invoke-virtual {v1}, Lcom/evie/common/iconpack/IconPackFilter;->getDrawableList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mIconPickerAdapter:Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;

    .line 177
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mRecyclerView:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mIconPickerAdapter:Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;

    invoke-virtual {v0, v1}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->setAdapter(Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;)V

    .line 179
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mQuerySubject:Lio/reactivex/subjects/BehaviorSubject;

    .line 180
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/subjects/BehaviorSubject;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xc8

    .line 181
    invoke-virtual {v1, v3, v4, v2}, Lio/reactivex/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$IconPickerFragment$R_4GRMtIDCoFwjuKDqMc8G0mgd4;

    invoke-direct {v2, p0}, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$IconPickerFragment$R_4GRMtIDCoFwjuKDqMc8G0mgd4;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;)V

    .line 182
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    .line 183
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$IconPickerFragment$rUjeY5agD8zghaBtcATPyISsIQ0;

    invoke-direct {v2, p0}, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$IconPickerFragment$rUjeY5agD8zghaBtcATPyISsIQ0;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;)V

    .line 184
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 179
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method public canSaveInstanceState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public focusFragment(Z)V
    .locals 0

    return-void
.end method

.method public hideSearchBar()V
    .locals 3

    .line 247
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 249
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 250
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 252
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mTitleBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mTitleBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 254
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mTitleBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 255
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 256
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 258
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mSearchBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 259
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mSearchBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 260
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$IconPickerFragment$h7juJPIe9_Vn0O3KuYzaYgM9vVQ;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$IconPickerFragment$h7juJPIe9_Vn0O3KuYzaYgM9vVQ;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;)V

    .line 261
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 81
    :cond_0
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 83
    invoke-super {p0, p1}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d005d

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    const/4 v0, 0x0

    .line 423
    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 425
    :cond_0
    invoke-super {p0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->onDestroy()V

    return-void
.end method

.method public onPopLauncherStackedAppearance(Landroidx/fragment/app/FragmentActivity;Z)V
    .locals 0

    return-void
.end method

.method public onPushLauncherStackedAppearance(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment$OnFragmentInteractionListener;)V
    .locals 0

    return-void
.end method

.method public onSearchButtonClick()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 225
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->showSearchBar()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 95
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 96
    sget-object p2, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$IconPickerFragment$xPhg3e3nroTKVg5JBZJOLC5wJj0;->INSTANCE:Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$IconPickerFragment$xPhg3e3nroTKVg5JBZJOLC5wJj0;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x0

    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    const v0, 0x7f0a0184

    .line 102
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0158

    .line 103
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a02aa

    .line 104
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a02ab

    .line 105
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 107
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mIconPack:Lcom/voxel/simplesearchlauncher/iconpack/IconPack;

    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mIconPack:Lcom/voxel/simplesearchlauncher/iconpack/IconPack;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/iconpack/IconPack;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mIconPackFilter:Lcom/evie/common/iconpack/IconPackFilter;

    invoke-virtual {v2}, Lcom/evie/common/iconpack/IconPackFilter;->getDrawableList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f1200e5

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mSearchBar:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 112
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mSearchEditText:Landroid/widget/EditText;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 113
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mSearchEditText:Landroid/widget/EditText;

    const p2, -0x777778

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 114
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mSearchEditText:Landroid/widget/EditText;

    const p2, 0x7f120202

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(I)V

    .line 115
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mSearchEditText:Landroid/widget/EditText;

    new-instance p2, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$IconPickerFragment$7yXZ_yysD8ptmObvGPWNDfI4kQw;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$IconPickerFragment$7yXZ_yysD8ptmObvGPWNDfI4kQw;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 120
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mSearchEditText:Landroid/widget/EditText;

    new-instance p2, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$1;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$1;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 137
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mRecyclerView:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    new-instance p2, Lcom/voxel/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/voxel/launcher3/DeviceProfile;->numBaseColumns:F

    float-to-int v1, v1

    invoke-direct {p2, v0, v1}, Lcom/voxel/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, p2}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->setLayoutManager(Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 138
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mRecyclerView:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    new-instance p2, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$2;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$2;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;)V

    invoke-virtual {p1, p2}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->setOnScrollListener(Lcom/voxel/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 149
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mIconPackFilter:Lcom/evie/common/iconpack/IconPackFilter;

    invoke-virtual {p1}, Lcom/evie/common/iconpack/IconPackFilter;->isDrawableListVerified()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 151
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mLoadingIndicator:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 152
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 153
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->setupIconAdapter()V

    goto :goto_0

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    new-instance p2, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$IconPickerFragment$AxOVVVfvLyvM2JQdcJYcFKRV5T4;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$IconPickerFragment$AxOVVVfvLyvM2JQdcJYcFKRV5T4;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;)V

    .line 157
    invoke-static {p2}, Lio/reactivex/Completable;->fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/Completable;

    move-result-object p2

    .line 158
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p2

    .line 159
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p2

    new-instance v0, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$IconPickerFragment$uyhvlPOwBCnHTNogks1umvx6bcw;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$IconPickerFragment$uyhvlPOwBCnHTNogks1umvx6bcw;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;)V

    .line 160
    invoke-virtual {p2, v0}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object p2

    .line 156
    invoke-virtual {p1, p2}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public requiresFullScreen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public runExitAnimation()V
    .locals 0

    .line 199
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->notifyFragmentWillRequestClose()V

    .line 200
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->notifyFragmentRequestClose()V

    return-void
.end method

.method public showSearchBar()V
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 231
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 232
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 233
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mSearchEditText:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 234
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mSearchBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mSearchBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 236
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mSearchBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 237
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 238
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 240
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mTitleBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 241
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mTitleBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 242
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$IconPickerFragment$nGilOJ-QTjAE1tA-MPwpSs5xDDA;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$IconPickerFragment$nGilOJ-QTjAE1tA-MPwpSs5xDDA;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;)V

    .line 243
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public unfocusFragment(Z)V
    .locals 0

    return-void
.end method
