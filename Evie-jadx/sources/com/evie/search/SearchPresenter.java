package com.evie.search;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Handler;
import com.evie.common.SearchSettings;
import com.evie.common.dragndrop.DragSink;
import com.evie.common.services.analytics.BaseAnalyticsService;
import com.evie.models.frequentlyused.FrequentlyUsedModel;
import com.evie.models.frequentlyused.data.FrequentlyUsedApp;
import com.evie.search.dagger.DaggerSearchComponent;
import com.evie.search.dagger.SearchComponent;
import com.evie.search.dagger.SearchModule;
import com.evie.search.local.ContactManager;
import com.evie.search.local.LocalAppsManager;
import com.evie.search.local.LocalSearchManager;
import com.evie.search.local.LocalSearchSubitem;
import com.evie.search.model.ActionData;
import com.evie.search.model.AppLink;
import com.evie.search.model.FrequentlyUsedItem;
import com.evie.search.model.LocalSearchItem;
import com.evie.search.model.RecentItem;
import com.evie.search.model.RemoteSearchItem;
import com.evie.search.model.SearchPresenterData;
import com.evie.search.model.WebSearchItem;
import com.evie.search.recyclerview.presenter.BaseItemPresenter;
import com.evie.search.recyclerview.presenter.DelimiterPresenter;
import com.evie.search.recyclerview.presenter.FrequentlyUsedItemPresenter;
import com.evie.search.recyclerview.presenter.HeaderPresenter;
import com.evie.search.recyclerview.presenter.LocalItemPresenter;
import com.evie.search.recyclerview.presenter.LocalSubitemPresenter;
import com.evie.search.recyclerview.presenter.MessagePresenter;
import com.evie.search.recyclerview.presenter.RecentItemPresenter;
import com.evie.search.recyclerview.presenter.RemoteItemPresenter;
import com.evie.search.recyclerview.presenter.RemoteSubitemPresenter;
import com.evie.search.recyclerview.presenter.WebItemPresenter;
import com.evie.search.recyclerview.viewholder.CustomViewHolderFactory;
import com.evie.search.remote.RemoteSearchManager;
import com.evie.search.web.WebSearchManager;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import com.voxel.simplesearchlauncher.api.LocationHandler;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Function;
import io.reactivex.observers.DisposableObserver;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public class SearchPresenter {
    private SearchAdapter mAdapter;
    private AppAvailabilityProvider mAppAvailabilityProvider;
    private ContactManager mContactManager;
    private Context mContext;
    private FrequentlyUsedModel mFrequentlyUsed;
    private final int mFrequentlyUsedHeight;
    private final String mFrequentsHeader;
    private final int mItemHeight;
    private LocalAppsManager mLocalAppsManager;
    private final String mLocalHeader;
    private List<LocalSearchItem> mLocalItems;
    private int mLocalItemsShowing;
    private LocalSearchManager mLocalSearchManager;
    private Disposable mRecentDisposable;
    private List<BaseItemPresenter> mRecentPresenters;
    private final String mRecentsHeader;
    private final String mRemoteHeader;
    private RemoteSearchManager mRemoteSearchManager;
    private SearchListExpandListener mSearchListExpandListener;
    private SearchQueryChangeListener mSearchQueryChangeListener;
    private SearchSettings mSearchSettings;
    SearchShortcutHandler mSearchShortcutHandler;
    private SearchStateChangeListener mSearchStateChangeListener;
    private SharedPreferences.OnSharedPreferenceChangeListener mSharedPreferencesListener;
    private final int mUnavailableHeight;
    private WebSearchManager mWebSearchManager;
    private final SearchComponent searchComponent;
    private int mListExpandCounter = 0;
    private int mAvailableHeight = 0;
    private String mCurrentQuery = "";
    private Disposable mCurrentDisposable = null;
    private boolean mRemoteAllowed = false;
    private boolean mWebSearchAllowed = false;
    private BaseItemPresenter mCustomPresenter = null;
    private Runnable mCustomRunnable = null;
    private final List<BaseItemPresenter> mLocalPresenters = new ArrayList();
    private final List<BaseItemPresenter> mRemotePresenters = new ArrayList();
    private final List<BaseItemPresenter> mCustomPresenters = new ArrayList();
    private final List<BaseItemPresenter> mWebPresenters = new ArrayList();

    public interface SearchListExpandListener {
        void onSearchListExpand();
    }

    public interface SearchQueryChangeListener {
        void onSearchQueryChange(String str);
    }

    public enum SearchState {
        IN_PROGRESS,
        IDLE,
        RECENT_CLICKED,
        COMPLETED
    }

    public interface SearchStateChangeListener {
        void onSearchStateChange(SearchState searchState);
    }

    public void logSearchItemDragged(AnalyticsHandler.EventProp eventProp) {
    }

    public void inject(FrequentlyUsedItemPresenter frequentlyUsedItemPresenter) {
        this.searchComponent.inject(frequentlyUsedItemPresenter);
    }

    public void inject(LocalItemPresenter localItemPresenter) {
        this.searchComponent.inject(localItemPresenter);
    }

    public void inject(LocalSubitemPresenter localSubitemPresenter) {
        this.searchComponent.inject(localSubitemPresenter);
    }

    public void inject(RecentItemPresenter recentItemPresenter) {
        this.searchComponent.inject(recentItemPresenter);
    }

    public void inject(RemoteItemPresenter remoteItemPresenter) {
        this.searchComponent.inject(remoteItemPresenter);
    }

    public void inject(RemoteSubitemPresenter remoteSubitemPresenter) {
        this.searchComponent.inject(remoteSubitemPresenter);
    }

    public void inject(WebItemPresenter webItemPresenter) {
        this.searchComponent.inject(webItemPresenter);
    }

    public SearchPresenter(Context context, FrequentlyUsedModel frequentlyUsedModel, AppAvailabilityProvider appAvailabilityProvider, String str) {
        Context applicationContext = context.getApplicationContext();
        this.mSearchSettings = SearchSettings.getInstance(applicationContext);
        this.mAdapter = new SearchAdapter();
        this.mFrequentlyUsed = frequentlyUsedModel;
        this.mAppAvailabilityProvider = appAvailabilityProvider;
        if (this.mAppAvailabilityProvider == null) {
            this.mAppAvailabilityProvider = new AppAvailabilityProvider.DefaultProvider();
        }
        this.searchComponent = DaggerSearchComponent.builder().searchModule(new SearchModule(applicationContext, new BaseAnalyticsService(), this.mAdapter)).build();
        this.searchComponent.inject(this);
        LocationHandler.init(applicationContext);
        this.mContext = applicationContext;
        this.mSharedPreferencesListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.evie.search.-$$Lambda$SearchPresenter$fkUNgwFswgpz5_SYBlqwPQFpP-I
            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
            public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str2) {
                SearchPresenter.lambda$new$0(this.f$0, sharedPreferences, str2);
            }
        };
        applicationContext.getSharedPreferences("com.evie.search", 0).registerOnSharedPreferenceChangeListener(this.mSharedPreferencesListener);
        Resources resources = this.mContext.getResources();
        this.mFrequentsHeader = resources.getString(R.string.search_frequently_used_header);
        this.mRecentsHeader = resources.getString(R.string.search_recent_results_header);
        this.mLocalHeader = resources.getString(R.string.search_local_results_header);
        this.mRemoteHeader = resources.getString(R.string.search_remote_results_header);
        this.mFrequentlyUsedHeight = resources.getDimensionPixelSize(R.dimen.search_header_top_spacing) + resources.getDimensionPixelSize(R.dimen.search_header_text_size) + resources.getDimensionPixelSize(R.dimen.frequently_used_item_height) + resources.getDimensionPixelSize(R.dimen.search_delimiter_small_height);
        this.mUnavailableHeight = resources.getDimensionPixelSize(R.dimen.search_header_top_spacing) + resources.getDimensionPixelSize(R.dimen.search_header_text_size) + resources.getDimensionPixelSize(R.dimen.keyboard_estimate_height);
        this.mItemHeight = resources.getDimensionPixelSize(R.dimen.search_item_height);
        this.mLocalSearchManager = LocalSearchManager.getInstance(applicationContext, true);
        this.mRemoteSearchManager = new RemoteSearchManager(str);
        this.mWebSearchManager = new WebSearchManager();
        this.mLocalAppsManager = LocalAppsManager.getInstance(applicationContext);
        this.mContactManager = ContactManager.getInstance(applicationContext);
        setupRecentObservable(this.mSearchSettings.getIncludeFrequentlyUsed());
    }

    public static /* synthetic */ void lambda$new$0(SearchPresenter searchPresenter, SharedPreferences sharedPreferences, String str) {
        if (str.equals("include_frequently_used")) {
            searchPresenter.setAvailableHeight(searchPresenter.mAvailableHeight);
            searchPresenter.setupRecentObservable(sharedPreferences.getBoolean(str, true));
        }
    }

    public SearchAdapter getAdapter() {
        return this.mAdapter;
    }

    public boolean clickFirstResult() {
        return this.mAdapter.clickFirstResult();
    }

    public void setAvailableHeight(int i) {
        this.mAvailableHeight = i;
        if (this.mSearchSettings.getIncludeFrequentlyUsed()) {
            i -= this.mFrequentlyUsedHeight;
        }
        this.mLocalSearchManager.setMaxRecents(Math.max((i - this.mUnavailableHeight) / this.mItemHeight, 3));
    }

    public void expandLocalResults() {
        int size = this.mLocalItems.size();
        int i = this.mLocalItemsShowing;
        if (size > i + 4) {
            for (int i2 = 0; i2 < 4; i2++) {
                int size2 = this.mLocalPresenters.size() - 1;
                LocalSearchItem localSearchItem = this.mLocalItems.get(this.mLocalItemsShowing + i2);
                if (!isHiddenFromSearch(localSearchItem)) {
                    LocalItemPresenter localItemPresenter = new LocalItemPresenter(this, this.mContext, localSearchItem);
                    this.mLocalPresenters.add(size2, localItemPresenter);
                    this.mAdapter.insertPresenter(size2, localItemPresenter);
                }
            }
            this.mLocalItemsShowing += 4;
        } else {
            while (i < this.mLocalItems.size()) {
                int size3 = this.mLocalPresenters.size() - 1;
                LocalSearchItem localSearchItem2 = this.mLocalItems.get(i);
                if (!isHiddenFromSearch(localSearchItem2)) {
                    LocalItemPresenter localItemPresenter2 = new LocalItemPresenter(this, this.mContext, localSearchItem2);
                    this.mLocalPresenters.add(size3, localItemPresenter2);
                    this.mAdapter.insertPresenter(size3, localItemPresenter2);
                }
                i++;
            }
            this.mLocalItemsShowing = this.mLocalItems.size();
            this.mAdapter.changePresenter(this.mLocalPresenters.size() - 1, new DelimiterPresenter(this, this.mContext, false));
        }
        new Handler().postDelayed(new Runnable() { // from class: com.evie.search.-$$Lambda$SearchPresenter$wsGdhB-W7goufaa1Esp6yph-14I
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.mAdapter.notifyDataSetChanged();
            }
        }, 500L);
        SearchListExpandListener searchListExpandListener = this.mSearchListExpandListener;
        if (searchListExpandListener != null) {
            searchListExpandListener.onSearchListExpand();
        }
    }

    public void refreshFrequents() {
        FrequentlyUsedModel frequentlyUsedModel = this.mFrequentlyUsed;
        if (frequentlyUsedModel != null) {
            frequentlyUsedModel.refresh();
        }
    }

    public void clearPresenters() {
        this.mLocalPresenters.clear();
        this.mRemotePresenters.clear();
        this.mCustomPresenters.clear();
        this.mWebPresenters.clear();
        this.mAdapter.clearPresenters();
    }

    public void setWebSearchAllowed(boolean z) {
        this.mWebSearchAllowed = z;
    }

    public void setDragSink(DragSink dragSink) {
        this.mSearchShortcutHandler.setDragSink(dragSink);
    }

    public void clearDragSink() {
        this.mSearchShortcutHandler.clearDragSink();
    }

    public void setCustomPresenter(BaseItemPresenter baseItemPresenter, CustomViewHolderFactory customViewHolderFactory, Runnable runnable) {
        if (baseItemPresenter == null) {
            return;
        }
        this.mCustomPresenter = baseItemPresenter;
        this.mCustomRunnable = runnable;
        this.mAdapter.setCustomViewHolderFactory(customViewHolderFactory);
    }

    public void removeCustomPresenter() {
        Runnable runnable = this.mCustomRunnable;
        if (runnable != null) {
            runnable.run();
            this.mCustomRunnable = null;
        }
        if (this.mCustomPresenter != null) {
            int size = this.mLocalPresenters.size() + this.mRemotePresenters.size();
            for (int i = 0; i < this.mCustomPresenters.size(); i++) {
                this.mAdapter.removePresenter(size);
            }
            this.mCustomPresenters.clear();
            this.mCustomPresenter = null;
        }
        this.mAdapter.setCustomViewHolderFactory(null);
    }

    public void search(String str) {
        if (str == null) {
            str = "";
        }
        if (str.equals(this.mCurrentQuery)) {
            return;
        }
        this.mCurrentQuery = str;
        this.mListExpandCounter = 0;
        Disposable disposable = this.mCurrentDisposable;
        if (disposable != null && !disposable.isDisposed()) {
            this.mCurrentDisposable.dispose();
        }
        if (str.trim().isEmpty()) {
            this.mAdapter.setPresenters(this.mRecentPresenters);
            this.mLocalPresenters.clear();
            this.mRemotePresenters.clear();
            this.mCustomPresenters.clear();
            this.mWebPresenters.clear();
            SearchStateChangeListener searchStateChangeListener = this.mSearchStateChangeListener;
            if (searchStateChangeListener != null) {
                searchStateChangeListener.onSearchStateChange(SearchState.IDLE);
                return;
            }
            return;
        }
        this.mCurrentDisposable = (Disposable) getSearchObservable(str).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.computation()).subscribeWith(getSearchObserver(str));
    }

    private Observable<SearchPresenterData> getSearchObservable(final String str) {
        Observable observableSubscribeOn = Observable.fromCallable(new Callable() { // from class: com.evie.search.-$$Lambda$SearchPresenter$xN3IZbuvzz0lQ5SI8ShlIXTOrM0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return SearchPresenter.lambda$getSearchObservable$2(this.f$0, str);
            }
        }).onErrorReturnItem(new SearchPresenterData(new ArrayList(), SearchPresenterData.DataType.LOCAL)).subscribeOn(Schedulers.m548io());
        Observable observableEmpty = Observable.empty();
        if (this.mRemoteAllowed) {
            observableEmpty = this.mRemoteSearchManager.search(str).map(new Function() { // from class: com.evie.search.-$$Lambda$SearchPresenter$WvKlGsbCdckvRUgN2iawwW86BdI
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    return SearchPresenter.lambda$getSearchObservable$3(this.f$0, (List) obj);
                }
            }).timeout(5L, TimeUnit.SECONDS).onErrorReturnItem(new SearchPresenterData(new ArrayList(), SearchPresenterData.DataType.REMOTE));
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new WebItemPresenter(this, this.mContext, new WebSearchItem(true, str)));
        SearchPresenterData searchPresenterData = new SearchPresenterData(arrayList, SearchPresenterData.DataType.WEB);
        Observable observableJust = Observable.just(searchPresenterData);
        if (this.mWebSearchAllowed) {
            observableJust = this.mWebSearchManager.search(str).map(new Function() { // from class: com.evie.search.-$$Lambda$SearchPresenter$vH5fZz8dlTTPvOMnx86p6WqMoIA
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    return SearchPresenter.lambda$getSearchObservable$4(this.f$0, (List) obj);
                }
            }).timeout(5L, TimeUnit.SECONDS).startWith(searchPresenterData).onErrorReturnItem(searchPresenterData);
        }
        return Observable.concatEager(Observable.just(observableSubscribeOn, observableEmpty, observableJust)).mergeWith(Observable.just(new SearchPresenterData(null, SearchPresenterData.DataType.CLEAR)).delay(200L, TimeUnit.MILLISECONDS));
    }

    public static /* synthetic */ SearchPresenterData lambda$getSearchObservable$2(SearchPresenter searchPresenter, String str) throws Exception {
        searchPresenter.mLocalItems = searchPresenter.mLocalSearchManager.search(str);
        LinkedList linkedList = new LinkedList();
        searchPresenter.mLocalItemsShowing = Math.min(searchPresenter.mLocalItems.size(), 3);
        if (!searchPresenter.mLocalItems.isEmpty()) {
            float rank = searchPresenter.mLocalItems.get(0).getRank() * 0.65f;
            for (int i = 1; i < searchPresenter.mLocalItemsShowing; i++) {
                if (searchPresenter.mLocalItems.get(i).getRank() < rank) {
                    searchPresenter.mLocalItemsShowing = i;
                    break;
                }
            }
            boolean z = searchPresenter.mLocalItemsShowing < searchPresenter.mLocalItems.size();
            for (int i2 = 0; i2 < searchPresenter.mLocalItemsShowing; i2++) {
                LocalSearchItem localSearchItem = searchPresenter.mLocalItems.get(i2);
                if (!searchPresenter.isHiddenFromSearch(localSearchItem)) {
                    linkedList.add(new LocalItemPresenter(searchPresenter, searchPresenter.mContext, localSearchItem));
                    linkedList.addAll(searchPresenter.generateLocalSubitems(localSearchItem));
                }
            }
            if (linkedList.size() > 0) {
                linkedList.add(0, new HeaderPresenter(searchPresenter.mContext, searchPresenter.mLocalHeader));
                linkedList.add(new DelimiterPresenter(searchPresenter, searchPresenter.mContext, z));
            }
        }
        return new SearchPresenterData(linkedList, SearchPresenterData.DataType.LOCAL);
    }

    public static /* synthetic */ SearchPresenterData lambda$getSearchObservable$3(SearchPresenter searchPresenter, List list) throws Exception {
        ArrayList arrayList = new ArrayList();
        if (!list.isEmpty()) {
            arrayList.add(new HeaderPresenter(searchPresenter.mContext, searchPresenter.mRemoteHeader));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                RemoteSearchItem remoteSearchItem = (RemoteSearchItem) it.next();
                arrayList.add(new RemoteItemPresenter(searchPresenter, searchPresenter.mContext, remoteSearchItem));
                if (remoteSearchItem.getSubitems() != null) {
                    for (RemoteSearchItem remoteSearchItem2 : remoteSearchItem.getSubitems()) {
                        remoteSearchItem2.setParent(remoteSearchItem);
                        arrayList.add(new RemoteSubitemPresenter(searchPresenter, searchPresenter.mContext, remoteSearchItem2));
                    }
                }
            }
            arrayList.add(new DelimiterPresenter(searchPresenter, searchPresenter.mContext, false));
        }
        return new SearchPresenterData(arrayList, SearchPresenterData.DataType.REMOTE);
    }

    public static /* synthetic */ SearchPresenterData lambda$getSearchObservable$4(SearchPresenter searchPresenter, List list) throws Exception {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new WebItemPresenter(searchPresenter, searchPresenter.mContext, (WebSearchItem) it.next()));
        }
        return new SearchPresenterData(arrayList, SearchPresenterData.DataType.WEB);
    }

    private List<BaseItemPresenter> generateLocalSubitems(LocalSearchItem localSearchItem) {
        ArrayList arrayList = new ArrayList();
        if (localSearchItem.getType().equals("CONTACT") && this.mContactManager.contactRecentlyUsed(localSearchItem)) {
            for (ActionData actionData : this.mContactManager.getContactData(Uri.parse(localSearchItem.getLink()).getSchemeSpecificPart()).getActions()) {
                switch (actionData.getActionType()) {
                    case "CALL":
                    case "TEXT":
                        arrayList.add(new LocalSubitemPresenter(this, this.mContext, generateSubitem(localSearchItem, actionData)));
                        break;
                }
            }
        }
        return arrayList;
    }

    private LocalSearchSubitem generateSubitem(LocalSearchItem localSearchItem, ActionData actionData) {
        AppLink next;
        String string;
        String str;
        String string2 = this.mContext.getSharedPreferences("action_default_items_pref", 0).getString(Uri.parse(localSearchItem.getLink()).getSchemeSpecificPart() + actionData.getActionType(), null);
        if (string2 == null) {
            next = null;
            break;
        }
        Iterator<AppLink> it = actionData.getLinks().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!string2.equals(next.getLink()));
        if (next == null) {
            next = actionData.getLinks().get(0);
        }
        switch (actionData.getActionType()) {
            case "CALL":
                String string3 = this.mContext.getResources().getString(R.string.contact_action_call_type, next.getSubtext());
                string = this.mContext.getResources().getString(R.string.contact_action_call_type, localSearchItem.getLabel());
                str = string3;
                break;
            case "TEXT":
                String string4 = this.mContext.getResources().getString(R.string.contact_action_text_type, next.getSubtext());
                string = this.mContext.getResources().getString(R.string.contact_action_text_type, localSearchItem.getLabel());
                str = string4;
                break;
            default:
                str = null;
                string = null;
                break;
        }
        return new LocalSearchSubitem(localSearchItem, next.getLink(), actionData.getIconUrl(), str, string);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isHiddenFromSearch(LocalSearchItem localSearchItem) {
        ComponentName componentName = localSearchItem.getComponentName();
        if (componentName == null) {
            return false;
        }
        return this.mAppAvailabilityProvider.isHiddenFromSearch(componentName.getPackageName(), componentName.getClassName());
    }

    public void dispose() {
        Disposable disposable = this.mCurrentDisposable;
        if (disposable != null) {
            disposable.dispose();
            this.mCurrentDisposable = null;
        }
        Disposable disposable2 = this.mRecentDisposable;
        if (disposable2 != null) {
            disposable2.dispose();
            this.mRecentDisposable = null;
        }
    }

    private enum SearchObserverState {
        STARTED(0),
        LOCAL_COMPLETE(1),
        REMOTE_COMPLETE(2),
        WEB_COMPLETE(3);

        private final int value;

        SearchObserverState(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    private DisposableObserver<SearchPresenterData> getSearchObserver(final String str) {
        return new DisposableObserver<SearchPresenterData>() { // from class: com.evie.search.SearchPresenter.1
            HashSet<String> packages;
            String searchQuery;
            SearchObserverState state;

            @Override // io.reactivex.observers.DisposableObserver
            protected void onStart() {
                if (SearchPresenter.this.mSearchStateChangeListener != null) {
                    SearchPresenter.this.mSearchStateChangeListener.onSearchStateChange(SearchState.IN_PROGRESS);
                }
                this.searchQuery = str;
                this.state = SearchObserverState.STARTED;
                this.packages = new HashSet<>();
            }

            @Override // io.reactivex.Observer
            public void onNext(SearchPresenterData searchPresenterData) {
                String appPackage;
                if (this.searchQuery.equals(SearchPresenter.this.mCurrentQuery)) {
                    List<BaseItemPresenter> data = searchPresenterData.getData();
                    switch (C04543.$SwitchMap$com$evie$search$model$SearchPresenterData$DataType[searchPresenterData.getDataType().ordinal()]) {
                        case 1:
                            synchronized (SearchPresenter.this.mLocalPresenters) {
                                ArrayList arrayList = new ArrayList(SearchPresenter.this.mLocalPresenters);
                                SearchPresenter.this.mLocalPresenters.clear();
                                for (int i = 0; i < data.size(); i++) {
                                    BaseItemPresenter baseItemPresenter = data.get(i);
                                    if (baseItemPresenter instanceof LocalItemPresenter) {
                                        String appPackage2 = ((LocalItemPresenter) baseItemPresenter).getAppPackage();
                                        if (appPackage2 != null) {
                                            this.packages.add(appPackage2);
                                        }
                                        int iIndexOf = arrayList.indexOf(baseItemPresenter);
                                        if (iIndexOf != -1) {
                                            baseItemPresenter = (BaseItemPresenter) arrayList.get(iIndexOf);
                                        }
                                    }
                                    SearchPresenter.this.mLocalPresenters.add(baseItemPresenter);
                                }
                                updatePresenters();
                                this.state = SearchObserverState.LOCAL_COMPLETE;
                                break;
                            }
                            return;
                        case 2:
                            int i2 = 0;
                            while (i2 < data.size()) {
                                BaseItemPresenter baseItemPresenter2 = data.get(i2);
                                if ((baseItemPresenter2 instanceof RemoteItemPresenter) && (appPackage = ((RemoteItemPresenter) baseItemPresenter2).getAppPackage()) != null) {
                                    if (!this.packages.contains(appPackage)) {
                                        LocalSearchItem searchItemByPackage = SearchPresenter.this.mLocalAppsManager.getSearchItemByPackage(appPackage);
                                        if (SearchPresenter.this.isHiddenFromSearch(searchItemByPackage)) {
                                            searchItemByPackage = null;
                                        }
                                        if (searchItemByPackage != null) {
                                            int i3 = i2 - 1;
                                            data.remove(i2);
                                            synchronized (SearchPresenter.this.mLocalPresenters) {
                                                if (SearchPresenter.this.mLocalPresenters.isEmpty()) {
                                                    SearchPresenter.this.mLocalPresenters.add(new HeaderPresenter(SearchPresenter.this.mContext, SearchPresenter.this.mLocalHeader));
                                                    SearchPresenter.this.mLocalPresenters.add(new DelimiterPresenter(SearchPresenter.this, SearchPresenter.this.mContext, false));
                                                }
                                                SearchPresenter.this.mLocalPresenters.add(SearchPresenter.this.mLocalPresenters.size() - 1, new LocalItemPresenter(SearchPresenter.this, SearchPresenter.this.mContext, searchItemByPackage));
                                            }
                                            i2 = i3;
                                        } else {
                                            continue;
                                        }
                                    } else {
                                        data.remove(i2);
                                        i2--;
                                    }
                                }
                                i2++;
                            }
                            if (data.size() == 2) {
                                data.clear();
                            }
                            synchronized (SearchPresenter.this.mRemotePresenters) {
                                SearchPresenter.this.mRemotePresenters.clear();
                                SearchPresenter.this.mRemotePresenters.addAll(data);
                                updatePresenters();
                                this.state = SearchObserverState.REMOTE_COMPLETE;
                                break;
                            }
                            return;
                        case 3:
                            if (SearchPresenter.this.mCustomPresenter != null && SearchPresenter.this.mCustomPresenters.isEmpty()) {
                                SearchPresenter.this.mCustomPresenters.add(SearchPresenter.this.mCustomPresenter);
                                List list = SearchPresenter.this.mCustomPresenters;
                                SearchPresenter searchPresenter = SearchPresenter.this;
                                list.add(new DelimiterPresenter(searchPresenter, searchPresenter.mContext, false));
                            }
                            synchronized (SearchPresenter.this.mWebPresenters) {
                                SearchPresenter.this.mWebPresenters.clear();
                                SearchPresenter.this.mWebPresenters.addAll(data);
                                updatePresenters();
                                this.state = SearchObserverState.WEB_COMPLETE;
                                break;
                            }
                            return;
                        case 4:
                            synchronized (SearchPresenter.this.mLocalPresenters) {
                                if (this.state.getValue() < SearchObserverState.LOCAL_COMPLETE.getValue()) {
                                    SearchPresenter.this.mLocalPresenters.clear();
                                }
                                break;
                            }
                            synchronized (SearchPresenter.this.mRemotePresenters) {
                                if (this.state.getValue() < SearchObserverState.REMOTE_COMPLETE.getValue()) {
                                    SearchPresenter.this.mRemotePresenters.clear();
                                    SearchPresenter.this.mCustomPresenters.clear();
                                }
                                break;
                            }
                            synchronized (SearchPresenter.this.mWebPresenters) {
                                if (this.state.getValue() < SearchObserverState.WEB_COMPLETE.getValue()) {
                                    SearchPresenter.this.mWebPresenters.clear();
                                }
                                break;
                            }
                            updatePresenters();
                            return;
                        default:
                            return;
                    }
                }
            }

            @Override // io.reactivex.Observer
            public void onError(Throwable th) {
                Timber.m553e(th.getMessage(), new Object[0]);
            }

            @Override // io.reactivex.Observer
            public void onComplete() {
                if (SearchPresenter.this.mSearchStateChangeListener != null) {
                    SearchPresenter.this.mSearchStateChangeListener.onSearchStateChange(SearchState.IDLE);
                }
            }

            private void updatePresenters() {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(SearchPresenter.this.mLocalPresenters);
                arrayList.addAll(SearchPresenter.this.mRemotePresenters);
                arrayList.addAll(SearchPresenter.this.mCustomPresenters);
                arrayList.addAll(SearchPresenter.this.mWebPresenters);
                SearchPresenter.this.mAdapter.setPresenters(arrayList);
            }
        };
    }

    /* JADX INFO: renamed from: com.evie.search.SearchPresenter$3 */
    static /* synthetic */ class C04543 {
        static final /* synthetic */ int[] $SwitchMap$com$evie$search$model$SearchPresenterData$DataType = new int[SearchPresenterData.DataType.values().length];

        static {
            try {
                $SwitchMap$com$evie$search$model$SearchPresenterData$DataType[SearchPresenterData.DataType.LOCAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$evie$search$model$SearchPresenterData$DataType[SearchPresenterData.DataType.REMOTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$evie$search$model$SearchPresenterData$DataType[SearchPresenterData.DataType.WEB.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$evie$search$model$SearchPresenterData$DataType[SearchPresenterData.DataType.CLEAR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private void setupRecentObservable(boolean z) {
        FrequentlyUsedModel frequentlyUsedModel;
        Disposable disposable = this.mRecentDisposable;
        if (disposable != null) {
            disposable.dispose();
        }
        Observable observableSubscribeOn = this.mLocalSearchManager.getRecentSubject().map(new Function() { // from class: com.evie.search.-$$Lambda$SearchPresenter$py1I5ycEvUsC4hnT4pLPF_T3znU
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return SearchPresenter.lambda$setupRecentObservable$5(this.f$0, (List) obj);
            }
        }).onErrorReturnItem(new ArrayList()).subscribeOn(Schedulers.computation());
        if (z && (frequentlyUsedModel = this.mFrequentlyUsed) != null) {
            observableSubscribeOn = Observable.combineLatest(frequentlyUsedModel.getFrequentlyUsedApps().map(new Function() { // from class: com.evie.search.-$$Lambda$SearchPresenter$r6iRohv0hGoaGuzH_FtbQquHx2c
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    return SearchPresenter.lambda$setupRecentObservable$6(this.f$0, (List) obj);
                }
            }).onErrorReturnItem(new ArrayList()).subscribeOn(Schedulers.computation()), observableSubscribeOn, new BiFunction() { // from class: com.evie.search.-$$Lambda$SearchPresenter$rjemiD6vaXtBXDVPGTrU58QYpgA
                @Override // io.reactivex.functions.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return SearchPresenter.lambda$setupRecentObservable$7((List) obj, (List) obj2);
                }
            });
        }
        observableSubscribeOn.observeOn(AndroidSchedulers.mainThread()).subscribe(new Observer<List<BaseItemPresenter>>() { // from class: com.evie.search.SearchPresenter.2
            @Override // io.reactivex.Observer
            public void onComplete() {
            }

            @Override // io.reactivex.Observer
            public void onSubscribe(Disposable disposable2) {
                SearchPresenter.this.mRecentDisposable = disposable2;
            }

            @Override // io.reactivex.Observer
            public void onNext(List<BaseItemPresenter> list) {
                SearchPresenter.this.mRecentPresenters = list;
                if (SearchPresenter.this.mCurrentQuery.trim().isEmpty()) {
                    SearchPresenter.this.mAdapter.setPresenters(list);
                }
            }

            @Override // io.reactivex.Observer
            public void onError(Throwable th) {
                Timber.m553e(th.getMessage(), new Object[0]);
            }
        });
    }

    public static /* synthetic */ List lambda$setupRecentObservable$5(SearchPresenter searchPresenter, List list) throws Exception {
        String string;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new HeaderPresenter(searchPresenter.mContext, searchPresenter.mRecentsHeader));
        if (list.isEmpty()) {
            Resources resources = searchPresenter.mContext.getResources();
            String string2 = resources.getString(R.string.search_no_recents_title);
            if (searchPresenter.mContext.checkCallingOrSelfPermission("android.permission.READ_CONTACTS") == 0) {
                string = resources.getString(R.string.search_no_recents_message);
            } else {
                string = resources.getString(R.string.search_no_recents_no_contacts);
            }
            arrayList.add(new MessagePresenter(searchPresenter.mContext, string2, string));
            return arrayList;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            RecentItem recentItem = (RecentItem) it.next();
            ComponentName localComponentName = recentItem.getLocalComponentName();
            if (localComponentName == null || !searchPresenter.mAppAvailabilityProvider.isHiddenFromBrowse(localComponentName.getPackageName(), localComponentName.getClassName())) {
                arrayList.add(new RecentItemPresenter(searchPresenter, searchPresenter.mContext, recentItem));
            }
        }
        return arrayList;
    }

    public static /* synthetic */ List lambda$setupRecentObservable$6(SearchPresenter searchPresenter, List list) throws Exception {
        Intent launchIntentForPackage;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < list.size() && arrayList2.size() < 5; i++) {
            FrequentlyUsedApp frequentlyUsedApp = (FrequentlyUsedApp) list.get(i);
            if (!searchPresenter.mAppAvailabilityProvider.isHiddenFromBrowse(frequentlyUsedApp.packageName, frequentlyUsedApp.className)) {
                try {
                    searchPresenter.mContext.getPackageManager().getApplicationInfo(frequentlyUsedApp.getPackageName(), 0);
                    if (frequentlyUsedApp.getClassName().equals("ANY")) {
                        launchIntentForPackage = searchPresenter.mContext.getPackageManager().getLaunchIntentForPackage(frequentlyUsedApp.getPackageName());
                    } else {
                        Intent intent = new Intent("android.intent.action.MAIN");
                        intent.setComponent(frequentlyUsedApp.toComponentName());
                        launchIntentForPackage = intent;
                    }
                    launchIntentForPackage.addCategory("android.intent.category.LAUNCHER");
                    launchIntentForPackage.setFlags(268435456);
                    arrayList2.add(new FrequentlyUsedItem(launchIntentForPackage));
                } catch (PackageManager.NameNotFoundException | Exception unused) {
                }
            }
        }
        if (arrayList2.size() > 0) {
            arrayList.add(new HeaderPresenter(searchPresenter.mContext, searchPresenter.mFrequentsHeader));
            arrayList.add(new FrequentlyUsedItemPresenter(searchPresenter, searchPresenter.mContext, arrayList2));
            arrayList.add(new DelimiterPresenter(searchPresenter, searchPresenter.mContext, false));
        }
        return arrayList;
    }

    static /* synthetic */ List lambda$setupRecentObservable$7(List list, List list2) throws Exception {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(list);
        arrayList.addAll(list2);
        return arrayList;
    }

    public void setSearchStateChangeListener(SearchStateChangeListener searchStateChangeListener) {
        this.mSearchStateChangeListener = searchStateChangeListener;
    }

    public void setSearchListExpandListener(SearchListExpandListener searchListExpandListener) {
        this.mSearchListExpandListener = searchListExpandListener;
    }

    public void setSearchQueryChangeListener(SearchQueryChangeListener searchQueryChangeListener) {
        this.mSearchQueryChangeListener = searchQueryChangeListener;
    }

    public void changeSearchQuery(String str) {
        this.mSearchQueryChangeListener.onSearchQueryChange(str);
    }

    public void logSearchItemClicked(AnalyticsHandler.EventProp eventProp) {
        AnalyticsHandler.getInstance().logEvent("ev_item_tap_main_list", eventProp.add("search_input", this.mCurrentQuery).add("search_input_length", this.mCurrentQuery.length()));
        SearchStateChangeListener searchStateChangeListener = this.mSearchStateChangeListener;
        if (searchStateChangeListener != null) {
            searchStateChangeListener.onSearchStateChange(SearchState.COMPLETED);
        }
    }

    public void logRecentItemClicked(AnalyticsHandler.EventProp eventProp) {
        AnalyticsHandler.getInstance().logEvent("ev_item_tap_recent_list", eventProp);
        SearchStateChangeListener searchStateChangeListener = this.mSearchStateChangeListener;
        if (searchStateChangeListener != null) {
            searchStateChangeListener.onSearchStateChange(SearchState.RECENT_CLICKED);
        }
    }

    public void logFrequentlyUsedItemClicked(AnalyticsHandler.EventProp eventProp) {
        AnalyticsHandler.getInstance().logEvent("ev_item_tap_main_list", eventProp);
        SearchStateChangeListener searchStateChangeListener = this.mSearchStateChangeListener;
        if (searchStateChangeListener != null) {
            searchStateChangeListener.onSearchStateChange(SearchState.RECENT_CLICKED);
        }
    }
}
