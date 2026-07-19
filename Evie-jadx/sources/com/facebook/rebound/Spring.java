package com.facebook.rebound;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes.dex */
public class Spring {

    /* JADX INFO: renamed from: ID */
    private static int f384ID;
    private final PhysicsState mCurrentState;
    private double mEndValue;
    private final String mId;
    private boolean mOvershootClampingEnabled;
    private final PhysicsState mPreviousState;
    private SpringConfig mSpringConfig;
    private final BaseSpringSystem mSpringSystem;
    private double mStartValue;
    private final PhysicsState mTempState;
    private boolean mWasAtRest = true;
    private double mRestSpeedThreshold = 0.005d;
    private double mDisplacementFromRestThreshold = 0.005d;
    private CopyOnWriteArraySet<SpringListener> mListeners = new CopyOnWriteArraySet<>();
    private double mTimeAccumulator = 0.0d;

    private static class PhysicsState {
        double position;
        double velocity;

        private PhysicsState() {
        }
    }

    Spring(BaseSpringSystem baseSpringSystem) {
        this.mCurrentState = new PhysicsState();
        this.mPreviousState = new PhysicsState();
        this.mTempState = new PhysicsState();
        if (baseSpringSystem == null) {
            throw new IllegalArgumentException("Spring cannot be created outside of a BaseSpringSystem");
        }
        this.mSpringSystem = baseSpringSystem;
        StringBuilder sb = new StringBuilder();
        sb.append("spring:");
        int i = f384ID;
        f384ID = i + 1;
        sb.append(i);
        this.mId = sb.toString();
        setSpringConfig(SpringConfig.defaultConfig);
    }

    public String getId() {
        return this.mId;
    }

    public Spring setSpringConfig(SpringConfig springConfig) {
        if (springConfig == null) {
            throw new IllegalArgumentException("springConfig is required");
        }
        this.mSpringConfig = springConfig;
        return this;
    }

    public SpringConfig getSpringConfig() {
        return this.mSpringConfig;
    }

    public Spring setCurrentValue(double d) {
        return setCurrentValue(d, true);
    }

    public Spring setCurrentValue(double d, boolean z) {
        this.mStartValue = d;
        this.mCurrentState.position = d;
        this.mSpringSystem.activateSpring(getId());
        Iterator<SpringListener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onSpringUpdate(this);
        }
        if (z) {
            setAtRest();
        }
        return this;
    }

    public double getCurrentValue() {
        return this.mCurrentState.position;
    }

    public double getCurrentDisplacementDistance() {
        return getDisplacementDistanceForState(this.mCurrentState);
    }

    private double getDisplacementDistanceForState(PhysicsState physicsState) {
        return Math.abs(this.mEndValue - physicsState.position);
    }

    public Spring setEndValue(double d) {
        if (this.mEndValue == d && isAtRest()) {
            return this;
        }
        this.mStartValue = getCurrentValue();
        this.mEndValue = d;
        this.mSpringSystem.activateSpring(getId());
        Iterator<SpringListener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onSpringEndStateChange(this);
        }
        return this;
    }

    public double getEndValue() {
        return this.mEndValue;
    }

    public Spring setVelocity(double d) {
        if (d == this.mCurrentState.velocity) {
            return this;
        }
        this.mCurrentState.velocity = d;
        this.mSpringSystem.activateSpring(getId());
        return this;
    }

    public double getVelocity() {
        return this.mCurrentState.velocity;
    }

    public Spring setRestSpeedThreshold(double d) {
        this.mRestSpeedThreshold = d;
        return this;
    }

    public Spring setRestDisplacementThreshold(double d) {
        this.mDisplacementFromRestThreshold = d;
        return this;
    }

    public Spring setOvershootClampingEnabled(boolean z) {
        this.mOvershootClampingEnabled = z;
        return this;
    }

    public boolean isOvershooting() {
        return this.mSpringConfig.tension > 0.0d && ((this.mStartValue < this.mEndValue && getCurrentValue() > this.mEndValue) || (this.mStartValue > this.mEndValue && getCurrentValue() < this.mEndValue));
    }

    void advance(double d) {
        double d2;
        boolean z;
        boolean zIsAtRest = isAtRest();
        if (zIsAtRest && this.mWasAtRest) {
            return;
        }
        this.mTimeAccumulator += d <= 0.064d ? d : 0.064d;
        double d3 = this.mSpringConfig.tension;
        double d4 = this.mSpringConfig.friction;
        double d5 = this.mCurrentState.position;
        double d6 = this.mCurrentState.velocity;
        double d7 = this.mTempState.position;
        double d8 = this.mTempState.velocity;
        while (true) {
            d2 = this.mTimeAccumulator;
            if (d2 < 0.001d) {
                break;
            }
            this.mTimeAccumulator = d2 - 0.001d;
            if (this.mTimeAccumulator < 0.001d) {
                PhysicsState physicsState = this.mPreviousState;
                physicsState.position = d5;
                physicsState.velocity = d6;
            }
            double d9 = this.mEndValue;
            double d10 = ((d9 - d7) * d3) - (d4 * d6);
            double d11 = d6 + (d10 * 0.001d * 0.5d);
            double d12 = ((d9 - (((d6 * 0.001d) * 0.5d) + d5)) * d3) - (d4 * d11);
            double d13 = d6 + (d12 * 0.001d * 0.5d);
            double d14 = ((d9 - (d5 + ((d11 * 0.001d) * 0.5d))) * d3) - (d4 * d13);
            double d15 = d5 + (d13 * 0.001d);
            double d16 = d6 + (d14 * 0.001d);
            d5 += (d6 + ((d11 + d13) * 2.0d) + d16) * 0.16666666666666666d * 0.001d;
            d6 += (d10 + ((d12 + d14) * 2.0d) + (((d9 - d15) * d3) - (d4 * d16))) * 0.16666666666666666d * 0.001d;
            d7 = d15;
            d8 = d16;
        }
        PhysicsState physicsState2 = this.mTempState;
        physicsState2.position = d7;
        physicsState2.velocity = d8;
        PhysicsState physicsState3 = this.mCurrentState;
        physicsState3.position = d5;
        physicsState3.velocity = d6;
        if (d2 > 0.0d) {
            interpolate(d2 / 0.001d);
        }
        if (isAtRest() || (this.mOvershootClampingEnabled && isOvershooting())) {
            if (d3 > 0.0d) {
                double d17 = this.mEndValue;
                this.mStartValue = d17;
                this.mCurrentState.position = d17;
            } else {
                this.mEndValue = this.mCurrentState.position;
                this.mStartValue = this.mEndValue;
            }
            setVelocity(0.0d);
            zIsAtRest = true;
        }
        boolean z2 = false;
        if (this.mWasAtRest) {
            this.mWasAtRest = false;
            z = true;
        } else {
            z = false;
        }
        if (zIsAtRest) {
            this.mWasAtRest = true;
            z2 = true;
        }
        for (SpringListener springListener : this.mListeners) {
            if (z) {
                springListener.onSpringActivate(this);
            }
            springListener.onSpringUpdate(this);
            if (z2) {
                springListener.onSpringAtRest(this);
            }
        }
    }

    public boolean systemShouldAdvance() {
        return (isAtRest() && wasAtRest()) ? false : true;
    }

    public boolean wasAtRest() {
        return this.mWasAtRest;
    }

    public boolean isAtRest() {
        return Math.abs(this.mCurrentState.velocity) <= this.mRestSpeedThreshold && (getDisplacementDistanceForState(this.mCurrentState) <= this.mDisplacementFromRestThreshold || this.mSpringConfig.tension == 0.0d);
    }

    public Spring setAtRest() {
        this.mEndValue = this.mCurrentState.position;
        this.mTempState.position = this.mCurrentState.position;
        this.mCurrentState.velocity = 0.0d;
        return this;
    }

    private void interpolate(double d) {
        PhysicsState physicsState = this.mCurrentState;
        double d2 = 1.0d - d;
        physicsState.position = (physicsState.position * d) + (this.mPreviousState.position * d2);
        PhysicsState physicsState2 = this.mCurrentState;
        physicsState2.velocity = (physicsState2.velocity * d) + (this.mPreviousState.velocity * d2);
    }

    public Spring addListener(SpringListener springListener) {
        if (springListener == null) {
            throw new IllegalArgumentException("newListener is required");
        }
        this.mListeners.add(springListener);
        return this;
    }

    public Spring removeListener(SpringListener springListener) {
        if (springListener == null) {
            throw new IllegalArgumentException("listenerToRemove is required");
        }
        this.mListeners.remove(springListener);
        return this;
    }

    public Spring removeAllListeners() {
        this.mListeners.clear();
        return this;
    }
}
