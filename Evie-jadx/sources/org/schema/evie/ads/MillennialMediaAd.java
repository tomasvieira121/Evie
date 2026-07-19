package org.schema.evie.ads;

/* JADX INFO: loaded from: classes2.dex */
public class MillennialMediaAd extends AbstractC1484Ad {
    @Override // org.schema.evie.ads.AbstractC1484Ad, org.schema.Thing, org.schema.C1483Id
    public String toString() {
        return "MillennialMediaAd(super=" + super.toString() + ")";
    }

    @Override // org.schema.evie.ads.AbstractC1484Ad, org.schema.Thing, org.schema.C1483Id
    protected boolean canEqual(Object obj) {
        return obj instanceof MillennialMediaAd;
    }

    @Override // org.schema.evie.ads.AbstractC1484Ad, org.schema.Thing, org.schema.C1483Id
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof MillennialMediaAd) && ((MillennialMediaAd) obj).canEqual(this) && super.equals(obj);
    }

    @Override // org.schema.evie.ads.AbstractC1484Ad, org.schema.Thing, org.schema.C1483Id
    public int hashCode() {
        return super.hashCode();
    }
}
