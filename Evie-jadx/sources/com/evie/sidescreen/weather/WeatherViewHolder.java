package com.evie.sidescreen.weather;

import android.animation.LayoutTransition;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import com.evie.sidescreen.R;
import com.evie.sidescreen.mvp.MvpViewHolder;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class WeatherViewHolder extends MvpViewHolder<WeatherPresenter> {

    /* JADX INFO: renamed from: ID */
    public static final int f376ID = R.layout.ss_weather_item;

    @BindView
    TextView mDateText;

    @BindView
    TextView mLocationText;
    private final Resources mResources;

    @BindView
    ViewGroup mRetryView;
    private Map<State, List<View>> mStateViewsMap;

    @BindView
    TextView mTempText;

    @BindView
    ImageView mWeatherIcon;

    @BindView
    ViewGroup mWeatherStateView;

    public enum State {
        WEATHER,
        ERROR
    }

    public WeatherViewHolder(View view) {
        super(view);
        this.mStateViewsMap = new HashMap();
        this.mResources = view.getResources();
        LayoutTransition layoutTransition = new LayoutTransition();
        layoutTransition.disableTransitionType(2);
        layoutTransition.disableTransitionType(3);
        layoutTransition.disableTransitionType(4);
        ((ViewGroup) view).setLayoutTransition(layoutTransition);
        this.mStateViewsMap.put(State.WEATHER, Arrays.asList(this.mWeatherStateView, this.mLocationText));
        this.mStateViewsMap.put(State.ERROR, Arrays.asList(this.mRetryView));
    }

    @OnClick
    public void onClickRetry() {
        ((WeatherPresenter) this.mPresenter).onClickRetryWeather();
    }

    @OnClick
    public void onClickWeather(View view) {
        ((WeatherPresenter) this.mPresenter).onClickWeather(view, this.itemView.getTag());
    }

    @OnClick
    public void onClickDate(View view) {
        ((WeatherPresenter) this.mPresenter).onClickDate(view);
    }

    public void setTemperature(int i, boolean z) {
        if (!z) {
            this.mTempText.setText(this.mResources.getString(R.string.ss_temp, Integer.valueOf(i)));
        } else {
            this.mTempText.setText(this.mResources.getString(R.string.ss_temp_celsius, Float.valueOf((i - 32) * 0.5555556f)));
        }
    }

    public void setWeatherCondition(int i) {
        this.mWeatherIcon.setImageResource(i);
        this.mWeatherIcon.setVisibility(0);
    }

    public void setDate(String str) {
        this.mDateText.setText(str);
    }

    public void setLocation(String str) {
        this.mLocationText.setText(str);
        if (TextUtils.isEmpty(str)) {
            hideView(this.mLocationText);
        } else {
            showView(this.mLocationText);
        }
    }

    private void showView(View view) {
        view.setVisibility(0);
        view.animate().withEndAction(null).cancel();
        view.animate().alpha(1.0f).withLayer();
    }

    private void hideView(final View view) {
        view.animate().withEndAction(null).cancel();
        view.animate().alpha(0.0f).withEndAction(new Runnable() { // from class: com.evie.sidescreen.weather.-$$Lambda$WeatherViewHolder$YYXXMoRYwKv_z_SgS0VFWqWb8iU
            @Override // java.lang.Runnable
            public final void run() {
                view.setVisibility(8);
            }
        }).withLayer();
    }

    public void showLoading() {
        Iterator<List<View>> it = this.mStateViewsMap.values().iterator();
        while (it.hasNext()) {
            Iterator<View> it2 = it.next().iterator();
            while (it2.hasNext()) {
                hideView(it2.next());
            }
        }
    }

    public void hideWeatherView() {
        this.itemView.setVisibility(4);
    }

    public void showWeatherView() {
        this.itemView.setVisibility(0);
    }

    public void showState(State state) {
        for (State state2 : this.mStateViewsMap.keySet()) {
            for (View view : this.mStateViewsMap.get(state2)) {
                if (state2.equals(state)) {
                    showView(view);
                } else {
                    hideView(view);
                }
            }
        }
    }
}
