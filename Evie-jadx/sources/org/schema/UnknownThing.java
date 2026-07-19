package org.schema;

/* JADX INFO: loaded from: classes2.dex */
public class UnknownThing extends Thing {
    @Override // org.schema.Thing, org.schema.C1483Id
    public String toString() {
        return "UnknownThing(super=" + super.toString() + ")";
    }

    @Override // org.schema.Thing, org.schema.C1483Id
    protected boolean canEqual(Object obj) {
        return obj instanceof UnknownThing;
    }

    @Override // org.schema.Thing, org.schema.C1483Id
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof UnknownThing) && ((UnknownThing) obj).canEqual(this) && super.equals(obj);
    }

    @Override // org.schema.Thing, org.schema.C1483Id
    public int hashCode() {
        return super.hashCode();
    }
}
