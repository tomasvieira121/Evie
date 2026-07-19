package com.evie.models.frequentlyused.data;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class FrequentlyUsedResponse {
    private List<FrequentlyUsedApp> predictions = Collections.emptyList();

    protected boolean canEqual(Object obj) {
        return obj instanceof FrequentlyUsedResponse;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof FrequentlyUsedResponse)) {
            return false;
        }
        FrequentlyUsedResponse frequentlyUsedResponse = (FrequentlyUsedResponse) obj;
        if (!frequentlyUsedResponse.canEqual(this)) {
            return false;
        }
        List<FrequentlyUsedApp> predictions = getPredictions();
        List<FrequentlyUsedApp> predictions2 = frequentlyUsedResponse.getPredictions();
        return predictions != null ? predictions.equals(predictions2) : predictions2 == null;
    }

    public int hashCode() {
        List<FrequentlyUsedApp> predictions = getPredictions();
        return 59 + (predictions == null ? 43 : predictions.hashCode());
    }

    public String toString() {
        return "FrequentlyUsedResponse(predictions=" + getPredictions() + ")";
    }

    public List<FrequentlyUsedApp> getPredictions() {
        return this.predictions;
    }
}
