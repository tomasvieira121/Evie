package com.evie.jigsaw.services.layout;

import android.net.Uri;
import com.evie.jigsaw.components.base.AbstractComponent;
import java.util.Iterator;
import java.util.List;
import retrofit2.Call;

/* JADX INFO: loaded from: classes.dex */
public final class DelegatingLayoutService implements LayoutService {
    private final List<LayoutService> services;

    public DelegatingLayoutService(List<LayoutService> list) {
        this.services = list;
    }

    @Override // com.evie.jigsaw.services.layout.LayoutService
    public Call<AbstractComponent> resolve(Uri uri) {
        Iterator<LayoutService> it = this.services.iterator();
        while (it.hasNext()) {
            Call<AbstractComponent> callResolve = it.next().resolve(uri);
            if (callResolve != null) {
                return callResolve;
            }
        }
        return null;
    }
}
