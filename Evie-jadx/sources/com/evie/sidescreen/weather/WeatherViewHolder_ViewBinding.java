package com.evie.sidescreen.weather;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class WeatherViewHolder_ViewBinding implements Unbinder {
    private WeatherViewHolder target;
    private View view7f0b009c;
    private View view7f0b0181;
    private View view7f0b020a;

    public WeatherViewHolder_ViewBinding(final WeatherViewHolder weatherViewHolder, View view) {
        this.target = weatherViewHolder;
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.date_text, "field 'mDateText' and method 'onClickDate'");
        weatherViewHolder.mDateText = (TextView) Utils.castView(viewFindRequiredView, R.id.date_text, "field 'mDateText'", TextView.class);
        this.view7f0b009c = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.weather.WeatherViewHolder_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                weatherViewHolder.onClickDate(view2);
            }
        });
        View viewFindRequiredView2 = Utils.findRequiredView(view, R.id.weather_state, "field 'mWeatherStateView' and method 'onClickWeather'");
        weatherViewHolder.mWeatherStateView = (ViewGroup) Utils.castView(viewFindRequiredView2, R.id.weather_state, "field 'mWeatherStateView'", ViewGroup.class);
        this.view7f0b020a = viewFindRequiredView2;
        viewFindRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.weather.WeatherViewHolder_ViewBinding.2
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                weatherViewHolder.onClickWeather(view2);
            }
        });
        weatherViewHolder.mTempText = (TextView) Utils.findRequiredViewAsType(view, R.id.temperature_text, "field 'mTempText'", TextView.class);
        weatherViewHolder.mWeatherIcon = (ImageView) Utils.findRequiredViewAsType(view, R.id.weather_icon, "field 'mWeatherIcon'", ImageView.class);
        weatherViewHolder.mLocationText = (TextView) Utils.findRequiredViewAsType(view, R.id.location_text, "field 'mLocationText'", TextView.class);
        View viewFindRequiredView3 = Utils.findRequiredView(view, R.id.retry_state, "field 'mRetryView' and method 'onClickRetry'");
        weatherViewHolder.mRetryView = (ViewGroup) Utils.castView(viewFindRequiredView3, R.id.retry_state, "field 'mRetryView'", ViewGroup.class);
        this.view7f0b0181 = viewFindRequiredView3;
        viewFindRequiredView3.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.sidescreen.weather.WeatherViewHolder_ViewBinding.3
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                weatherViewHolder.onClickRetry();
            }
        });
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        WeatherViewHolder weatherViewHolder = this.target;
        if (weatherViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        weatherViewHolder.mDateText = null;
        weatherViewHolder.mWeatherStateView = null;
        weatherViewHolder.mTempText = null;
        weatherViewHolder.mWeatherIcon = null;
        weatherViewHolder.mLocationText = null;
        weatherViewHolder.mRetryView = null;
        this.view7f0b009c.setOnClickListener(null);
        this.view7f0b009c = null;
        this.view7f0b020a.setOnClickListener(null);
        this.view7f0b020a = null;
        this.view7f0b0181.setOnClickListener(null);
        this.view7f0b0181 = null;
    }
}
