package com.voxel.simplesearchlauncher.api;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import androidx.core.content.ContextCompat;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationServices;
import io.reactivex.Observable;
import io.reactivex.subjects.BehaviorSubject;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class LocationHandler implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener, LocationListener {
    private static final String TAG = "LocationHandler";
    private static LocationHandler instance;
    private final Context context;
    private int mConnectionFailures;
    private GoogleApiClient mGoogleApi;
    private Location mLastLocation;
    private boolean mReceivingUpdates;
    private BehaviorSubject<Location> mLocationSubject = BehaviorSubject.create();
    private Handler mHandler = new Handler();
    private Map<Object, Integer> mLocationClients = new HashMap();
    private LocationRequest mLocationRequest = new LocationRequest();

    public static synchronized void init(Context context) {
        if (instance != null) {
            return;
        }
        if (context == null) {
            throw new IllegalArgumentException("Context must be provided.");
        }
        instance = new LocationHandler(context);
    }

    @Deprecated
    public static synchronized LocationHandler getInstance() {
        if (instance == null) {
            throw new IllegalStateException("Instance must be initialized before trying to use.");
        }
        return instance;
    }

    private LocationHandler(Context context) {
        this.context = context;
        this.mGoogleApi = new GoogleApiClient.Builder(context).addApi(LocationServices.API).addConnectionCallbacks(this).addOnConnectionFailedListener(this).build();
        this.mLocationRequest.setPriority(104);
    }

    public void acquireLocation(Object obj) {
        acquireLocation(obj, 1800000);
    }

    public void acquireLocation(Object obj, int i) {
        this.mLocationClients.put(obj, Integer.valueOf(i));
        requestUpdates();
    }

    public void releaseLocation(Object obj) {
        this.mLocationClients.remove(obj);
        if (this.mLocationClients.size() == 0) {
            stopUpdates();
        }
    }

    public Location getCurrentLocation() {
        updateCurrentLocation();
        return this.mLastLocation;
    }

    public synchronized void updateCurrentLocation() {
        if (hasLocationPermission()) {
            connectToGms();
            if (this.mGoogleApi.isConnected()) {
                Location lastLocation = LocationServices.FusedLocationApi.getLastLocation(this.mGoogleApi);
                if (lastLocation != null) {
                    onLocationChanged(lastLocation);
                }
            }
        }
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    protected synchronized void requestUpdates() {
        if (hasLocationPermission()) {
            connectToGms();
            if (this.mGoogleApi.isConnected()) {
                if (this.mReceivingUpdates) {
                    return;
                }
                int iIntValue = 1800000;
                for (Integer num : this.mLocationClients.values()) {
                    if (num != null && num.intValue() < iIntValue) {
                        iIntValue = num.intValue();
                    }
                }
                updateCurrentLocation();
                Log.i(TAG, "Requesting Location Updates");
                this.mLocationRequest.setInterval(iIntValue);
                this.mLocationRequest.setFastestInterval(Math.min(iIntValue, 60000));
                LocationServices.FusedLocationApi.requestLocationUpdates(this.mGoogleApi, this.mLocationRequest, this);
                this.mReceivingUpdates = true;
            }
        }
    }

    protected synchronized void stopUpdates() {
        if (this.mReceivingUpdates) {
            if (this.mGoogleApi.isConnected()) {
                Log.i(TAG, "Stopping Location Updates");
                LocationServices.FusedLocationApi.removeLocationUpdates(this.mGoogleApi, this);
                this.mReceivingUpdates = false;
            }
        }
    }

    private boolean hasLocationPermission() {
        return ContextCompat.checkSelfPermission(this.context, "android.permission.ACCESS_FINE_LOCATION") == 0 || ContextCompat.checkSelfPermission(this.context, "android.permission.ACCESS_COARSE_LOCATION") == 0;
    }

    public double getDistanceFromHere(double d, double d2) {
        if (d == 0.0d && d2 == 0.0d) {
            return -1.0d;
        }
        updateCurrentLocation();
        Location location = this.mLastLocation;
        if (location == null) {
            return -1.0d;
        }
        return calculateDistance(location.getLatitude(), this.mLastLocation.getLongitude(), d, d2);
    }

    public static double calculateDistance(double d, double d2, double d3, double d4) {
        double radians = Math.toRadians(d - d3);
        double d5 = radians / 2.0d;
        double radians2 = Math.toRadians(d2 - d4) / 2.0d;
        double dSin = (Math.sin(d5) * Math.sin(d5)) + (Math.cos(Math.toRadians(d3)) * Math.cos(Math.toRadians(d)) * Math.sin(radians2) * Math.sin(radians2));
        return Math.atan2(Math.sqrt(dSin), Math.sqrt(1.0d - dSin)) * 2.0d * 6371000.0d;
    }

    public static String convertToMilesString(double d) {
        return new DecimalFormat("#.#").format(d / 1609.34d);
    }

    protected synchronized void connectToGms() {
        if (!this.mGoogleApi.isConnected() && !this.mGoogleApi.isConnecting()) {
            this.mConnectionFailures = 0;
            this.mGoogleApi.connect();
        }
    }

    protected void handleReconnect() {
        if (this.mConnectionFailures > 10) {
            return;
        }
        this.mHandler.postDelayed(new Runnable() { // from class: com.voxel.simplesearchlauncher.api.LocationHandler.1
            @Override // java.lang.Runnable
            public void run() {
                LocationHandler.this.connectToGms();
            }
        }, 10000L);
    }

    @Override // com.google.android.gms.location.LocationListener
    public void onLocationChanged(Location location) {
        this.mLastLocation = location;
        this.mLocationSubject.onNext(this.mLastLocation);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public void onConnected(Bundle bundle) {
        this.mReceivingUpdates = false;
        this.mConnectionFailures = 0;
        requestUpdates();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public void onConnectionSuspended(int i) {
        handleReconnect();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
    public void onConnectionFailed(ConnectionResult connectionResult) {
        handleReconnect();
    }

    public Observable<Location> observeLocation() {
        return this.mLocationSubject;
    }
}
