package com.google.firebase.components;

import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.events.Event;
import com.google.firebase.events.EventHandler;
import com.google.firebase.events.Publisher;
import com.google.firebase.events.Subscriber;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.firebase:firebase-common@@16.0.2 */
/* JADX INFO: loaded from: classes.dex */
class zzh implements Publisher, Subscriber {
    private final Map<Class<?>, ConcurrentHashMap<EventHandler<Object>, Executor>> zza = new HashMap();
    private Queue<Event<?>> zzb = new ArrayDeque();
    private final Executor zzc;

    zzh(Executor executor) {
        this.zzc = executor;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public void publish(Event<?> event) {
        Preconditions.checkNotNull(event);
        synchronized (this) {
            if (this.zzb != null) {
                this.zzb.add(event);
                return;
            }
            for (Map.Entry<EventHandler<Object>, Executor> entry : zza(event)) {
                entry.getValue().execute(zzi.zza(entry, event));
            }
        }
    }

    private synchronized Set<Map.Entry<EventHandler<Object>, Executor>> zza(Event<?> event) {
        ConcurrentHashMap<EventHandler<Object>, Executor> concurrentHashMap = this.zza.get(event.getType());
        if (concurrentHashMap == null) {
            return Collections.emptySet();
        }
        return concurrentHashMap.entrySet();
    }

    @Override // com.google.firebase.events.Subscriber
    public synchronized <T> void subscribe(Class<T> cls, Executor executor, EventHandler<? super T> eventHandler) {
        Preconditions.checkNotNull(cls);
        Preconditions.checkNotNull(eventHandler);
        Preconditions.checkNotNull(executor);
        if (!this.zza.containsKey(cls)) {
            this.zza.put(cls, new ConcurrentHashMap<>());
        }
        this.zza.get(cls).put(eventHandler, executor);
    }

    @Override // com.google.firebase.events.Subscriber
    public <T> void subscribe(Class<T> cls, EventHandler<? super T> eventHandler) {
        subscribe(cls, this.zzc, eventHandler);
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    final void zza() {
        Queue<Event<?>> queue;
        synchronized (this) {
            if (this.zzb != null) {
                queue = this.zzb;
                this.zzb = null;
            } else {
                queue = null;
            }
        }
        if (queue != null) {
            Iterator<Event<?>> it = queue.iterator();
            while (it.hasNext()) {
                publish(it.next());
            }
        }
    }
}
