package com.evie.models;

import android.content.SharedPreferences;
import com.evie.models.announcement.data.Announcement;
import com.evie.models.breakingnews.data.BreakingNews;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import io.reactivex.Observable;
import io.reactivex.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class PromptStoreModel {
    private final Gson mGson;
    private SharedPreferences.OnSharedPreferenceChangeListener mOnSharedPreferenceChangeListener;
    private final PublishSubject<String> mPublishSubject = PublishSubject.create();
    private final SharedPreferences mSharedPreferences;

    public PromptStoreModel(SharedPreferences sharedPreferences, Gson gson) {
        this.mOnSharedPreferenceChangeListener = null;
        this.mSharedPreferences = sharedPreferences;
        this.mGson = gson;
        this.mOnSharedPreferenceChangeListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.evie.models.-$$Lambda$PromptStoreModel$fKDDxgTUrPWZ-glHRFx08ltMFIQ
            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
            public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences2, String str) {
                this.f$0.mPublishSubject.onNext(str);
            }
        };
        this.mSharedPreferences.registerOnSharedPreferenceChangeListener(this.mOnSharedPreferenceChangeListener);
    }

    public Observable<String> observePromptStoreChanges() {
        return this.mPublishSubject;
    }

    public void setAnnouncement(Announcement announcement) {
        if (announcement != null) {
            Announcement announcement2 = getAnnouncement();
            if (!(hasNewAnnouncement() && announcement2 == null) && announcement.equals(announcement2)) {
                return;
            }
            this.mSharedPreferences.edit().putString("prompt_announcement", this.mGson.toJson(announcement)).apply();
            markAnnouncementNew(announcement, announcement2);
        }
    }

    public Announcement getNewAnnouncement() {
        if (hasNewAnnouncement()) {
            return getAnnouncement();
        }
        return null;
    }

    private Announcement getAnnouncement() {
        try {
            return (Announcement) this.mGson.fromJson(this.mSharedPreferences.getString("prompt_announcement", null), Announcement.class);
        } catch (Exception unused) {
            this.mSharedPreferences.edit().remove("prompt_announcement").apply();
            return null;
        }
    }

    public boolean hasNewAnnouncement() {
        return this.mSharedPreferences.getBoolean("prompt_announcement_new", true);
    }

    private void setNewAnnouncementFlag(boolean z) {
        this.mSharedPreferences.edit().putBoolean("prompt_announcement_new", z).apply();
    }

    public void markAnnouncementOld() {
        setNewAnnouncementFlag(false);
    }

    private void markAnnouncementNew(Announcement announcement, Announcement announcement2) {
        if (announcement2 == null || announcement.getId().equals(announcement2.getId())) {
            setNewAnnouncementFlag(true);
        }
    }

    public void addNewBreakingNews(BreakingNews breakingNews) {
        ArrayList arrayList = new ArrayList(getBreakingNewsList());
        if (arrayList.contains(breakingNews)) {
            return;
        }
        if (arrayList.size() >= 3) {
            for (int i = 0; i <= arrayList.size() - 3; i++) {
                arrayList.remove((arrayList.size() - i) - 1);
            }
        }
        arrayList.add(0, breakingNews);
        setBreakingNewsList(arrayList);
    }

    public void removeSingleBreakingNews(BreakingNews breakingNews) {
        ArrayList arrayList = new ArrayList(getBreakingNewsList());
        arrayList.remove(breakingNews);
        setBreakingNewsList(arrayList);
    }

    private void setBreakingNewsList(List<BreakingNews> list) {
        this.mSharedPreferences.edit().putString("prompt_breaking_news", this.mGson.toJson(list)).apply();
    }

    public void removeAllBreakingNews() {
        this.mSharedPreferences.edit().remove("prompt_breaking_news").apply();
    }

    public List<BreakingNews> getBreakingNewsList() {
        String string = this.mSharedPreferences.getString("prompt_breaking_news", null);
        if (string == null || string.isEmpty()) {
            return Collections.emptyList();
        }
        try {
            return (List) this.mGson.fromJson(string, new TypeToken<ArrayList<BreakingNews>>() { // from class: com.evie.models.PromptStoreModel.1
            }.getType());
        } catch (Exception unused) {
            this.mSharedPreferences.edit().remove("prompt_breaking_news").apply();
            return Collections.emptyList();
        }
    }
}
