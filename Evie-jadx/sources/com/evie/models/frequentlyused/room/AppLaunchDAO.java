package com.evie.models.frequentlyused.room;

import io.reactivex.Maybe;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface AppLaunchDAO {
    int deleteAllOlderThanLimit(long j);

    List<AppLaunchEntry> getAllEntries();

    Maybe<AppLaunchEntry> getMostRecentEntry();

    void insertAppLaunchEntry(AppLaunchEntry appLaunchEntry);
}
