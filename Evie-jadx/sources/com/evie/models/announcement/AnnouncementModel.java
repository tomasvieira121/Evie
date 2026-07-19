package com.evie.models.announcement;

import com.crashlytics.android.Crashlytics;
import com.evie.common.AbTestConfiguration;
import com.evie.common.data.Lce;
import com.evie.models.PromptStoreModel;
import com.evie.models.announcement.data.Announcement;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AnnouncementModel {
    private final AnnouncementAPI mAPI;
    private final AbTestConfiguration mAbTestConfiguration;
    private final String mBuildModel;
    private final String mUserId;
    private final String packageName;
    private final PromptStoreModel promptStoreModel;
    private final int versionCode;

    public AnnouncementModel(AnnouncementAPI announcementAPI, String str, String str2, PromptStoreModel promptStoreModel, int i, String str3, AbTestConfiguration abTestConfiguration) {
        this.mAPI = announcementAPI;
        this.mUserId = str;
        this.packageName = str2;
        this.promptStoreModel = promptStoreModel;
        this.versionCode = i;
        this.mBuildModel = str3;
        this.mAbTestConfiguration = abTestConfiguration;
    }

    public Disposable cacheAnnouncement() {
        return this.mAPI.getAnnouncement(this.mUserId, this.packageName, this.versionCode, this.mBuildModel, this.mAbTestConfiguration.getExperiment(), this.mAbTestConfiguration.getGroup()).subscribeOn(Schedulers.m548io()).compose(Lce.transformRequestToLce()).subscribe((Consumer<? super R>) new Consumer() { // from class: com.evie.models.announcement.-$$Lambda$AnnouncementModel$mGqG1eN0WR3fs9qc9aR5mn_ORRo
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                AnnouncementModel.lambda$cacheAnnouncement$0(this.f$0, (Lce) obj);
            }
        });
    }

    public static /* synthetic */ void lambda$cacheAnnouncement$0(AnnouncementModel announcementModel, Lce lce) throws Exception {
        if (lce.isLoading()) {
            return;
        }
        if (lce.isError()) {
            Crashlytics.logException(lce.getErrorData());
            return;
        }
        List list = (List) lce.getData();
        if (list == null || list.size() <= 0) {
            return;
        }
        announcementModel.promptStoreModel.setAnnouncement((Announcement) list.get(0));
    }
}
