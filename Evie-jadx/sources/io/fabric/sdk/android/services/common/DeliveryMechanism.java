package io.fabric.sdk.android.services.common;

/* JADX INFO: loaded from: classes2.dex */
public enum DeliveryMechanism {
    DEVELOPER(1),
    USER_SIDELOAD(2),
    TEST_DISTRIBUTION(3),
    APP_STORE(4);


    /* JADX INFO: renamed from: id */
    private final int f532id;

    DeliveryMechanism(int i) {
        this.f532id = i;
    }

    public int getId() {
        return this.f532id;
    }

    @Override // java.lang.Enum
    public String toString() {
        return Integer.toString(this.f532id);
    }

    public static DeliveryMechanism determineFrom(String str) {
        if ("io.crash.air".equals(str)) {
            return TEST_DISTRIBUTION;
        }
        if (str != null) {
            return APP_STORE;
        }
        return DEVELOPER;
    }
}
