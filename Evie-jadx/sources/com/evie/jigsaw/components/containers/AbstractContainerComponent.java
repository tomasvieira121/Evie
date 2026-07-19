package com.evie.jigsaw.components.containers;

import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import com.evie.jigsaw.Jigsaw;
import com.evie.jigsaw.components.base.AbstractComponent;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractContainerComponent<VH extends RecyclerView.ViewHolder> extends AbstractComponent<VH> {
    private int minimum = 1;
    private int maximum = Integer.MAX_VALUE;
    private List<AbstractComponent<?>> items = Collections.emptyList();

    public AbstractContainerComponent<VH> setItems(List<AbstractComponent<?>> list) {
        this.items = list;
        return this;
    }

    @Override // com.evie.jigsaw.components.base.AbstractComponent
    public void initialize(Jigsaw jigsaw) {
        super.initialize(jigsaw);
        ListIterator<AbstractComponent<?>> listIterator = this.items.listIterator();
        while (listIterator.hasNext()) {
            AbstractComponent<?> next = listIterator.next();
            if (next != null) {
                next.initialize(jigsaw);
            } else {
                listIterator.remove();
            }
        }
    }

    @Override // com.evie.jigsaw.components.base.AbstractComponent
    public boolean ready() {
        Iterator<AbstractComponent<?>> it = this.items.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next().ready()) {
                i++;
            }
        }
        return i >= this.minimum;
    }

    @Override // com.evie.jigsaw.components.base.AbstractComponent
    public void proliferate() {
        for (AbstractComponent<?> abstractComponent : this.items) {
            abstractComponent.parent = this;
            abstractComponent.proliferate();
        }
    }

    @Override // com.evie.jigsaw.components.base.AbstractComponent
    public void resume() {
        super.resume();
        Iterator<AbstractComponent<?>> it = this.items.iterator();
        while (it.hasNext()) {
            it.next().resume();
        }
    }

    public List<AbstractComponent<?>> getItems() {
        if (this.maximum < this.items.size()) {
            ArrayList arrayList = new ArrayList();
            Iterator<AbstractComponent<?>> it = this.items.iterator();
            while (arrayList.size() < this.maximum && it.hasNext()) {
                AbstractComponent<?> next = it.next();
                if (next.ready()) {
                    arrayList.add(next);
                }
            }
            return arrayList;
        }
        return this.items;
    }
}
