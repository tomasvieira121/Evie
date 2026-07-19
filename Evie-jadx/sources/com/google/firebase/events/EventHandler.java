package com.google.firebase.events;

/* JADX INFO: compiled from: com.google.firebase:firebase-common@@16.0.2 */
/* JADX INFO: loaded from: classes.dex */
public interface EventHandler<T> {
    void handle(Event<T> event);
}
