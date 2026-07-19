package com.evie.sidescreen.dagger;

import com.evie.sidescreen.mvp.ItemPresenter;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface ExternalPresenterFactory {
    List<ItemPresenter> create(SideScreenSubcomponent sideScreenSubcomponent);
}
