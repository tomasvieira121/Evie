package com.evie.sidescreen;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class LayerStack implements Iterable<StackLayer> {
    private Deque<StackLayer> mStack = new ArrayDeque();

    @Override // java.lang.Iterable
    public Iterator<StackLayer> iterator() {
        return this.mStack.iterator();
    }

    public void push(StackLayer stackLayer) {
        this.mStack.push(stackLayer);
    }

    public boolean remove(Object obj) {
        return this.mStack.remove(obj);
    }

    public void clearToRoot(boolean z) {
        while (true) {
            StackLayer stackLayerPeek = this.mStack.peek();
            if (stackLayerPeek == null || stackLayerPeek.isRootLayer()) {
                return;
            }
            stackLayerPeek.pop(z);
            this.mStack.remove(stackLayerPeek);
        }
    }
}
