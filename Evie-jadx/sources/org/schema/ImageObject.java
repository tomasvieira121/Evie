package org.schema;

/* JADX INFO: loaded from: classes2.dex */
public class ImageObject extends MediaObject {
    @Override // org.schema.MediaObject, org.schema.Thing, org.schema.C1483Id
    public String toString() {
        return "ImageObject(super=" + super.toString() + ")";
    }

    @Override // org.schema.MediaObject, org.schema.Thing, org.schema.C1483Id
    protected boolean canEqual(Object obj) {
        return obj instanceof ImageObject;
    }

    @Override // org.schema.MediaObject, org.schema.Thing, org.schema.C1483Id
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof ImageObject) && ((ImageObject) obj).canEqual(this) && super.equals(obj);
    }

    @Override // org.schema.MediaObject, org.schema.Thing, org.schema.C1483Id
    public int hashCode() {
        return super.hashCode();
    }
}
