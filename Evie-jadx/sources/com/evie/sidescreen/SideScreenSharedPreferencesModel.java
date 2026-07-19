package com.evie.sidescreen;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.voxel.simplesearchlauncher.utils.UpgradeUtil;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.schema.C1483Id;
import org.schema.evie.topics.Topic;

/* JADX INFO: loaded from: classes.dex */
public class SideScreenSharedPreferencesModel implements UpgradeUtil.UpgradableComponent, Disposable {
    private final Gson mGson;
    private SharedPreferences.OnSharedPreferenceChangeListener mOnSharedPreferenceChangeListener;
    private final PublishSubject<String> mPublishSubject = PublishSubject.create();
    private final SharedPreferences mSharedPreferences;

    public SideScreenSharedPreferencesModel(SharedPreferences sharedPreferences, Gson gson) {
        this.mOnSharedPreferenceChangeListener = null;
        this.mSharedPreferences = sharedPreferences;
        this.mGson = gson;
        UpgradeUtil.processUpgrade(this.mSharedPreferences, this, 0);
        this.mOnSharedPreferenceChangeListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.evie.sidescreen.-$$Lambda$SideScreenSharedPreferencesModel$s_aV9-Ea_o9UjOeMzHs724nx61Y
            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
            public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences2, String str) {
                this.f$0.mPublishSubject.onNext(str);
            }
        };
        this.mSharedPreferences.registerOnSharedPreferenceChangeListener(this.mOnSharedPreferenceChangeListener);
    }

    @Override // com.voxel.simplesearchlauncher.utils.UpgradeUtil.UpgradableComponent
    public void onUpgrade(int i, int i2) {
        if (i == -1) {
            setHasFinishedPersonalizeOnboarding(getHasOpenedPersonalize());
        }
    }

    public Observable<String> observeSharedPreferenceChanges() {
        return this.mPublishSubject;
    }

    public void setHasOpenedPersonalize(boolean z) {
        this.mSharedPreferences.edit().putBoolean("has_opened_personalize", z).apply();
    }

    public boolean getHasOpenedPersonalize() {
        return this.mSharedPreferences.getBoolean("has_opened_personalize", false);
    }

    public void setHasFinishedPersonalizeOnboarding(boolean z) {
        this.mSharedPreferences.edit().putBoolean("personalize_onboarding_finished", z).apply();
    }

    public boolean getHasFinishedPersonalizeOnboarding() {
        return this.mSharedPreferences.getBoolean("personalize_onboarding_finished", false);
    }

    public List<Topic> getPersonalizeOnboardingList() {
        String string = this.mSharedPreferences.getString("personalize_onboarding_saved_topics", null);
        if (string == null || string.isEmpty()) {
            return Collections.emptyList();
        }
        try {
            return (List) this.mGson.fromJson(string, new TypeToken<List<Topic>>() { // from class: com.evie.sidescreen.SideScreenSharedPreferencesModel.1
            }.getType());
        } catch (Exception unused) {
            this.mSharedPreferences.edit().remove("personalize_onboarding_saved_topics").apply();
            return Collections.emptyList();
        }
    }

    public void addToPersonalizeOnboardingList(Topic topic) {
        ArrayList arrayList = new ArrayList(getPersonalizeOnboardingList());
        if (containsId(arrayList, topic)) {
            return;
        }
        arrayList.add(topic);
        setPersonalizeOnboardingList(arrayList);
    }

    public void removeFromPersonalizeOnboardingList(Topic topic) {
        ArrayList arrayList = new ArrayList(getPersonalizeOnboardingList());
        if (containsId(arrayList, topic)) {
            arrayList.remove(topic);
            setPersonalizeOnboardingList(arrayList);
        }
    }

    private boolean containsId(List<Topic> list, C1483Id c1483Id) {
        Iterator<Topic> it = list.iterator();
        while (it.hasNext()) {
            if (TextUtils.equals(it.next().getId(), c1483Id.getId())) {
                return true;
            }
        }
        return false;
    }

    public void setPersonalizeOnboardingList(List<Topic> list) {
        this.mSharedPreferences.edit().putString("personalize_onboarding_saved_topics", this.mGson.toJson(list, List.class)).apply();
    }

    public void setPlaylistAutoplayEnabled(boolean z) {
        this.mSharedPreferences.edit().putBoolean("playlist_autoplay", z).apply();
    }

    public boolean getPlaylistAutoplayEnabled() {
        return this.mSharedPreferences.getBoolean("playlist_autoplay", true);
    }

    public void setFirebaseCloudMessagingRegistrationToken(String str) {
        this.mSharedPreferences.edit().putString("fcmrt", str).apply();
    }

    public String getFirebaseCloudMessagingRegistrationToken() {
        return this.mSharedPreferences.getString("fcmrt", null);
    }

    public void setWasOnboardedWithFreeBee(boolean z) {
        this.mSharedPreferences.edit().putBoolean("wowf", z).apply();
    }

    public Boolean getWasOnboardedWithFreeBee() {
        if (this.mSharedPreferences.contains("wowf")) {
            return Boolean.valueOf(this.mSharedPreferences.getBoolean("wowf", false));
        }
        return null;
    }

    public void setDataWarningCardDismissed(boolean z) {
        this.mSharedPreferences.edit().putBoolean("dwcd", z).apply();
    }

    public boolean getDataWarningCardDismissed() {
        return this.mSharedPreferences.getBoolean("dwcd", false);
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        this.mSharedPreferences.unregisterOnSharedPreferenceChangeListener(this.mOnSharedPreferenceChangeListener);
        this.mOnSharedPreferenceChangeListener = null;
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.mOnSharedPreferenceChangeListener == null;
    }
}
