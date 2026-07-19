package com.evie.sidescreen;

import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.mvp.ItemPresenter;
import io.reactivex.Observable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface SideScreenTabSectionModelInterface {
    Observable<Boolean> getIntervalRefreshSubject();

    ScreenInfo getScreenInfo();

    Observable<List<ItemPresenter>> getSideScreenSections(Boolean bool);

    String getTabPath();
}
