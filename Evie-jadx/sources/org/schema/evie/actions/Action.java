package org.schema.evie.actions;

import org.schema.Thing;

/* JADX INFO: loaded from: classes2.dex */
public class Action extends Thing {
    @Override // org.schema.Thing, org.schema.C1483Id
    public String toString() {
        return "Action(super=" + super.toString() + ")";
    }

    @Override // org.schema.Thing, org.schema.C1483Id
    protected boolean canEqual(Object obj) {
        return obj instanceof Action;
    }

    @Override // org.schema.Thing, org.schema.C1483Id
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof Action) && ((Action) obj).canEqual(this) && super.equals(obj);
    }

    @Override // org.schema.Thing, org.schema.C1483Id
    public int hashCode() {
        return super.hashCode();
    }
}
