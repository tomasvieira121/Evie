package com.evie.models.announcement;

import com.evie.models.announcement.data.Announcement;
import io.reactivex.Observable;
import java.util.List;
import retrofit2.Response;
import retrofit2.http.GET;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes.dex */
public interface AnnouncementAPI {
    @GET("/android/sidescreen/announcements")
    Observable<Response<List<Announcement>>> getAnnouncement(@Query("user_id") String str, @Query("package_id") String str2, @Query("version_code") int i, @Query("model") String str3, @Query("experiment") String str4, @Query("group") String str5);
}
