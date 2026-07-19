package com.aol.mobile.sdk.renderer;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.view.WindowManager;

/* JADX INFO: renamed from: com.aol.mobile.sdk.renderer.m */
/* JADX INFO: loaded from: classes.dex */
public final class C0318m {

    /* JADX INFO: renamed from: a */
    private final a f281a;

    /* JADX INFO: renamed from: b */
    private final SensorManager f282b;

    /* JADX INFO: renamed from: c */
    private final WindowManager f283c;

    /* JADX INFO: renamed from: d */
    private final Sensor f284d;

    /* JADX INFO: renamed from: e */
    private final SensorEventListener f285e = new SensorEventListener() { // from class: com.aol.mobile.sdk.renderer.m.1

        /* JADX INFO: renamed from: b */
        private final float[] f287b = new float[9];

        /* JADX INFO: renamed from: c */
        private final float[] f288c = new float[3];

        /* JADX INFO: renamed from: d */
        private float[] f289d;

        /* JADX INFO: renamed from: a */
        private boolean m309a(float[] fArr, float[] fArr2) {
            return Math.abs(fArr[0] - fArr2[0]) > 1.0E-11f || Math.abs(fArr[1] - fArr2[1]) > 1.0E-11f || Math.abs(fArr[2] - fArr2[2]) > 1.0E-11f;
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            if (sensorEvent.accuracy != 0 && sensorEvent.sensor.getType() == 11) {
                float[] fArr = new float[9];
                SensorManager.getRotationMatrixFromVector(fArr, sensorEvent.values);
                switch (C0318m.this.f283c.getDefaultDisplay().getRotation()) {
                    case 1:
                        SensorManager.remapCoordinateSystem(fArr, 1, 130, this.f287b);
                        break;
                    case 2:
                        SensorManager.remapCoordinateSystem(fArr, 130, 1, this.f287b);
                        break;
                    case 3:
                        SensorManager.remapCoordinateSystem(fArr, 1, 2, this.f287b);
                        break;
                    default:
                        SensorManager.remapCoordinateSystem(fArr, 2, 1, this.f287b);
                        break;
                }
                SensorManager.getOrientation(this.f287b, this.f288c);
                float[] fArr2 = this.f289d;
                if (fArr2 == null || !m309a(fArr2, this.f288c)) {
                    this.f289d = new float[3];
                } else {
                    a aVar = C0318m.this.f281a;
                    float[] fArr3 = this.f288c;
                    aVar.mo276a(fArr3[0], fArr3[1], fArr3[2]);
                }
                float[] fArr4 = this.f288c;
                float[] fArr5 = this.f289d;
                System.arraycopy(fArr4, 0, fArr5, 0, fArr5.length);
            }
        }
    };

    /* JADX INFO: renamed from: com.aol.mobile.sdk.renderer.m$a */
    public interface a {
        /* JADX INFO: renamed from: a */
        void mo276a(float f, float f2, float f3);
    }

    public C0318m(Context context, a aVar) {
        this.f281a = aVar;
        this.f282b = (SensorManager) context.getSystemService("sensor");
        this.f283c = (WindowManager) context.getSystemService("window");
        this.f284d = this.f282b.getDefaultSensor(11);
        Sensor sensor = this.f284d;
        if (sensor != null) {
            this.f282b.registerListener(this.f285e, sensor, 0);
        }
    }

    /* JADX INFO: renamed from: a */
    public void m308a() {
        if (this.f284d != null) {
            this.f282b.unregisterListener(this.f285e);
        }
    }
}
