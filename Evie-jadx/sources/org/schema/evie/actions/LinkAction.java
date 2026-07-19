package org.schema.evie.actions;

import com.google.gson.annotations.JsonAdapter;
import java.util.Collections;
import java.util.List;
import org.schema.serialization.AlwaysListTypeAdapterFactory;

/* JADX INFO: loaded from: classes2.dex */
public class LinkAction extends Action {

    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<String> link = Collections.emptyList();

    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<String> text = Collections.emptyList();

    @Override // org.schema.evie.actions.Action, org.schema.Thing, org.schema.C1483Id
    public String toString() {
        return "LinkAction(super=" + super.toString() + ", link=" + getLink() + ", text=" + getText() + ")";
    }

    @Override // org.schema.evie.actions.Action, org.schema.Thing, org.schema.C1483Id
    protected boolean canEqual(Object obj) {
        return obj instanceof LinkAction;
    }

    @Override // org.schema.evie.actions.Action, org.schema.Thing, org.schema.C1483Id
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LinkAction)) {
            return false;
        }
        LinkAction linkAction = (LinkAction) obj;
        if (!linkAction.canEqual(this) || !super.equals(obj)) {
            return false;
        }
        String link = getLink();
        String link2 = linkAction.getLink();
        if (link != null ? !link.equals(link2) : link2 != null) {
            return false;
        }
        String text = getText();
        String text2 = linkAction.getText();
        return text != null ? text.equals(text2) : text2 == null;
    }

    @Override // org.schema.evie.actions.Action, org.schema.Thing, org.schema.C1483Id
    public int hashCode() {
        int iHashCode = super.hashCode();
        String link = getLink();
        int iHashCode2 = (iHashCode * 59) + (link == null ? 43 : link.hashCode());
        String text = getText();
        return (iHashCode2 * 59) + (text != null ? text.hashCode() : 43);
    }

    public String getLink() {
        if (this.link.isEmpty()) {
            return null;
        }
        return this.link.get(0);
    }

    public String getText() {
        if (this.text.isEmpty()) {
            return null;
        }
        return this.text.get(0);
    }
}
