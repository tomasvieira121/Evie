package com.evie.sidescreen.weather;

import android.content.Intent;
import android.location.Location;
import android.util.Pair;
import android.view.View;
import com.evie.common.data.Lce;
import com.evie.models.weather.WeatherData;
import com.evie.models.weather.WeatherModel;
import com.evie.sidescreen.ActivationModel;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.ConnectivityModel;
import com.evie.sidescreen.R;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.lifecycle.LifecycleCallbacks;
import com.evie.sidescreen.lifecycle.LifecycleEvent;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import com.voxel.simplesearchlauncher.api.LocationHandler;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import io.reactivex.schedulers.Schedulers;
import io.reactivex.subjects.BehaviorSubject;
import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class WeatherPresenter extends ItemPresenter<WeatherViewHolder> {
    private final ActivationModel mActivationModel;
    private final ActivityStarter mActivityStarter;
    private final AnalyticsHandler mAnalyticsHandler;
    private final AnalyticsModel mAnalyticsModel;
    private final ConnectivityModel mConnectivityModel;
    private final Observable<Boolean> mConvertToCelsiusSetting;
    private Disposable mCurrentRefreshDisposable;
    private final BehaviorSubject<Lce<WeatherData>> mCurrentWeatherData = BehaviorSubject.create();
    private final LifecycleCallbacks mLifecycleCallbacks;
    private final LocationHandler mLocationHandler;
    private final WeatherModel mWeatherModel;

    public WeatherPresenter(LocationHandler locationHandler, WeatherModel weatherModel, Observable<Boolean> observable, LifecycleCallbacks lifecycleCallbacks, ConnectivityModel connectivityModel, ActivationModel activationModel, ActivityStarter activityStarter, AnalyticsHandler analyticsHandler, AnalyticsModel analyticsModel) {
        this.mLocationHandler = locationHandler;
        this.mWeatherModel = weatherModel;
        this.mConvertToCelsiusSetting = observable;
        this.mLifecycleCallbacks = lifecycleCallbacks;
        this.mConnectivityModel = connectivityModel;
        this.mActivationModel = activationModel;
        this.mActivityStarter = activityStarter;
        this.mAnalyticsHandler = analyticsHandler;
        this.mAnalyticsModel = analyticsModel;
    }

    public void onClickWeather(View view, Object obj) {
        HashMap map = new HashMap();
        map.put("item_type", "weather");
        map.put("screen_type", "side_screen");
        this.mAnalyticsModel.trackEvent("ev_ss_tap", map);
        WeatherData weatherData = (WeatherData) obj;
        String packageId = weatherData.getPackageId();
        String forecastUrl = weatherData.getForecastUrl();
        boolean z = false;
        if (packageId != null) {
            Intent intentStartPackageId = this.mActivityStarter.startPackageId(null, packageId, false);
            z = intentStartPackageId != null;
            if (intentStartPackageId != null) {
                this.mAnalyticsHandler.logEvent("ev_app_launch", AnalyticsHandler.generateAppLaunchProperties(view.getContext(), intentStartPackageId.getComponent(), "weather"));
            }
        }
        if (z || forecastUrl == null) {
            return;
        }
        this.mActivityStarter.startUrl(null, forecastUrl, null, null);
        this.mAnalyticsHandler.startScreenView("web", "weather", null, forecastUrl, null);
    }

    public void onClickDate(View view) {
        HashMap map = new HashMap();
        map.put("item_type", "date");
        map.put("screen_type", "side_screen");
        this.mAnalyticsModel.trackEvent("ev_ss_tap", map);
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return WeatherViewHolder.f376ID;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public WeatherViewHolder createViewHolderInstance(View view) {
        return new WeatherViewHolder(view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onBindViewHolder(WeatherViewHolder weatherViewHolder) {
        weatherViewHolder.showLoading();
        showDate(weatherViewHolder);
        refreshWeather();
        this.mDisposables.add(this.mLifecycleCallbacks.getObservableForEvent(LifecycleEvent.RESUME).subscribe(new Consumer() { // from class: com.evie.sidescreen.weather.-$$Lambda$WeatherPresenter$pWGrSIIlLAl3l55gBfh1NgaqYc8
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                WeatherPresenter weatherPresenter = this.f$0;
                weatherPresenter.showDate((WeatherViewHolder) weatherPresenter.mViewHolder);
            }
        }, new $$Lambda$WeatherPresenter$I66o6rKondcNp5YdPGE5p6OGDo(this)));
        this.mDisposables.add(Observable.combineLatest(this.mCurrentWeatherData, this.mConvertToCelsiusSetting, new BiFunction() { // from class: com.evie.sidescreen.weather.-$$Lambda$FEsMgw8lubj3ieCqnEPudolVVxs
            @Override // io.reactivex.functions.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return new Pair((Lce) obj, (Boolean) obj2);
            }
        }).subscribeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.evie.sidescreen.weather.-$$Lambda$WeatherPresenter$BN0xNXhy8iok2j1aAejfUANwe8w
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                WeatherPresenter.lambda$onBindViewHolder$1(this.f$0, (Pair) obj);
            }
        }));
    }

    public static /* synthetic */ void lambda$onBindViewHolder$1(WeatherPresenter weatherPresenter, Pair pair) throws Exception {
        Lce lce = (Lce) pair.first;
        boolean zBooleanValue = ((Boolean) pair.second).booleanValue();
        if (lce.isLoading()) {
            ((WeatherViewHolder) weatherPresenter.mViewHolder).showLoading();
            return;
        }
        if (lce.isError() || lce.getData() == null) {
            ((WeatherViewHolder) weatherPresenter.mViewHolder).showState(WeatherViewHolder.State.ERROR);
            return;
        }
        WeatherData weatherData = (WeatherData) lce.getData();
        ((WeatherViewHolder) weatherPresenter.mViewHolder).setWeatherCondition(Condition.getConditionForKey(weatherData.getCondition()).resourceId);
        ((WeatherViewHolder) weatherPresenter.mViewHolder).setTemperature(weatherData.getTemperature(), zBooleanValue);
        ((WeatherViewHolder) weatherPresenter.mViewHolder).setLocation(weatherData.getLocation());
        ((WeatherViewHolder) weatherPresenter.mViewHolder).showState(WeatherViewHolder.State.WEATHER);
        ((WeatherViewHolder) weatherPresenter.mViewHolder).itemView.setTag(weatherData);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showDate(WeatherViewHolder weatherViewHolder) {
        weatherViewHolder.setDate(DateFormat.getDateInstance().format(new Date()));
    }

    private void refreshWeather() {
        Disposable disposable = this.mCurrentRefreshDisposable;
        if (disposable != null) {
            disposable.dispose();
        }
        final Observable<U> observableCast = this.mLifecycleCallbacks.getObservableForEvent(LifecycleEvent.SHOW).cast(Object.class);
        final Observable<U> observableCast2 = this.mLifecycleCallbacks.getObservableForEvent(LifecycleEvent.RESUME).cast(Object.class);
        final Observable<U> observableCast3 = this.mConnectivityModel.getObservable().cast(Object.class);
        Observable observableObserveOn = this.mActivationModel.getActivationObservable().flatMap(new Function() { // from class: com.evie.sidescreen.weather.-$$Lambda$WeatherPresenter$fLGWy8xiVFSRHXqSvmdnj-RUQOY
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return Observable.merge(observableCast, observableCast2, observableCast3).startWith(new Object());
            }
        }).filter(new Predicate() { // from class: com.evie.sidescreen.weather.-$$Lambda$WeatherPresenter$axZITgd2mHi-kiz5Y2vu9RceQiQ
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return WeatherPresenter.lambda$refreshWeather$3(this.f$0, obj);
            }
        }).throttleFirst(5L, TimeUnit.MINUTES).observeOn(Schedulers.m548io()).flatMap(new Function() { // from class: com.evie.sidescreen.weather.-$$Lambda$WeatherPresenter$aAanWZcODkxs5gKw4P3z0c6jaSw
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.mLocationHandler.observeLocation().firstOrError().toObservable();
            }
        }).observeOn(Schedulers.m548io()).flatMap(new Function() { // from class: com.evie.sidescreen.weather.-$$Lambda$WeatherPresenter$WL0jdNjCTnjeZAo2jbICAmF1NtM
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Location location = (Location) obj;
                return this.f$0.mWeatherModel.getWeather(location.getLatitude(), location.getLongitude());
            }
        }).observeOn(AndroidSchedulers.mainThread());
        final BehaviorSubject<Lce<WeatherData>> behaviorSubject = this.mCurrentWeatherData;
        behaviorSubject.getClass();
        this.mCurrentRefreshDisposable = observableObserveOn.subscribe(new Consumer() { // from class: com.evie.sidescreen.weather.-$$Lambda$NToEPWYhQEd3LPjOjpnoVtfzdtM
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                behaviorSubject.onNext((Lce) obj);
            }
        }, new $$Lambda$WeatherPresenter$I66o6rKondcNp5YdPGE5p6OGDo(this));
    }

    public static /* synthetic */ boolean lambda$refreshWeather$3(WeatherPresenter weatherPresenter, Object obj) throws Exception {
        return weatherPresenter.mLifecycleCallbacks.isShowing() && weatherPresenter.mLifecycleCallbacks.isResumed() && weatherPresenter.mConnectivityModel.isConnected();
    }

    public void onClickRetryWeather() {
        refreshWeather();
    }

    enum Condition {
        DAY_CLEAR("day_clear", R.drawable.weather_icon_condition_day_clear),
        DAY_CLOUDY("day_cloudy", R.drawable.weather_icon_condition_day_cloudy),
        DAY_CLOUDY_WIND("day_cloudy_wind", R.drawable.weather_icon_condition_day_cloudy_wind),
        DAY_RAIN("day_rain", R.drawable.weather_icon_condition_day_rain),
        DAY_SNOW("day_snow", R.drawable.weather_icon_condition_day_snow),
        DAY_WIND("day_wind", R.drawable.weather_icon_condition_day_rain),
        NIGHT_CLEAR("night_clear", R.drawable.weather_icon_condition_night_clear),
        NIGHT_CLOUDY("night_cloudy", R.drawable.weather_icon_condition_day_cloudy),
        NIGHT_CLOUDY_WIND("night_cloudy_wind", R.drawable.weather_icon_condition_night_cloudy_wind),
        NIGHT_RAIN("night_rain", R.drawable.weather_icon_condition_night_rain),
        NIGHT_SNOW("night_snow", R.drawable.weather_icon_condition_night_snow),
        NIGHT_WIND("night_wind", R.drawable.weather_icon_condition_day_wind);

        private static final Map<String, Condition> sConditionMap = new HashMap();
        String key;
        int resourceId;

        static {
            for (Condition condition : values()) {
                sConditionMap.put(condition.key, condition);
            }
        }

        Condition(String str, int i) {
            this.key = str;
            this.resourceId = i;
        }

        public static Condition getConditionForKey(String str) {
            return sConditionMap.get(str);
        }
    }
}
