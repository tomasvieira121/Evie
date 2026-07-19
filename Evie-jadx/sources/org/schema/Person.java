package org.schema;

import com.google.gson.annotations.JsonAdapter;
import java.util.Collections;
import java.util.List;
import org.schema.serialization.AlwaysListTypeAdapterFactory;

/* JADX INFO: loaded from: classes2.dex */
public class Person extends Thing {

    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<Organization> affiliation = Collections.emptyList();

    @Override // org.schema.Thing, org.schema.C1483Id
    public String toString() {
        return "Person(super=" + super.toString() + ", affiliation=" + getAffiliation() + ")";
    }

    @Override // org.schema.Thing, org.schema.C1483Id
    protected boolean canEqual(Object obj) {
        return obj instanceof Person;
    }

    @Override // org.schema.Thing, org.schema.C1483Id
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Person)) {
            return false;
        }
        Person person = (Person) obj;
        if (!person.canEqual(this) || !super.equals(obj)) {
            return false;
        }
        Organization affiliation = getAffiliation();
        Organization affiliation2 = person.getAffiliation();
        return affiliation != null ? affiliation.equals(affiliation2) : affiliation2 == null;
    }

    @Override // org.schema.Thing, org.schema.C1483Id
    public int hashCode() {
        int iHashCode = super.hashCode();
        Organization affiliation = getAffiliation();
        return (iHashCode * 59) + (affiliation == null ? 43 : affiliation.hashCode());
    }

    public Organization getAffiliation() {
        if (this.affiliation.isEmpty()) {
            return null;
        }
        return this.affiliation.get(0);
    }
}
