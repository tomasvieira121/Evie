package com.facebook.imagepipeline.cache;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.net.Uri;
import android.text.TextUtils;
import bolts.Task;
import com.facebook.cache.common.CacheKey;
import com.facebook.cache.common.CacheKeyUtil;
import com.facebook.common.logging.FLog;
import com.facebook.imagepipeline.image.EncodedImage;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.MediaVariations;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
public class MediaVariationsIndexDatabase implements MediaVariationsIndex {
    private static final String[] PROJECTION = {"cache_choice", "cache_key", "width", "height"};
    private static final String TAG = "MediaVariationsIndexDatabase";

    @GuardedBy("MediaVariationsIndexDatabase.class")
    private final LazyIndexDbOpenHelper mDbHelper;
    private final Executor mReadExecutor;
    private final Executor mWriteExecutor;

    public MediaVariationsIndexDatabase(Context context, Executor executor, Executor executor2) {
        this.mDbHelper = new LazyIndexDbOpenHelper(context);
        this.mReadExecutor = executor;
        this.mWriteExecutor = executor2;
    }

    @Override // com.facebook.imagepipeline.cache.MediaVariationsIndex
    public Task<MediaVariations> getCachedVariants(final String str, final MediaVariations.Builder builder) {
        try {
            return Task.call(new Callable<MediaVariations>() { // from class: com.facebook.imagepipeline.cache.MediaVariationsIndexDatabase.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public MediaVariations call() throws Exception {
                    return MediaVariationsIndexDatabase.this.getCachedVariantsSync(str, builder);
                }
            }, this.mReadExecutor);
        } catch (Exception e) {
            FLog.m339w(TAG, e, "Failed to schedule query task for %s", str);
            return Task.forError(e);
        }
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    protected MediaVariations getCachedVariantsSync(String str, MediaVariations.Builder builder) {
        Cursor cursorQuery;
        synchronized (MediaVariationsIndexDatabase.class) {
            Cursor cursor = null;
            try {
                try {
                    cursorQuery = this.mDbHelper.getWritableDatabase().query("media_variations_index", PROJECTION, "media_id = ?", new String[]{str}, null, null, null);
                    try {
                        if (cursorQuery.getCount() == 0) {
                            MediaVariations mediaVariationsBuild = builder.build();
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            return mediaVariationsBuild;
                        }
                        int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow("cache_key");
                        int columnIndexOrThrow2 = cursorQuery.getColumnIndexOrThrow("width");
                        int columnIndexOrThrow3 = cursorQuery.getColumnIndexOrThrow("height");
                        int columnIndexOrThrow4 = cursorQuery.getColumnIndexOrThrow("cache_choice");
                        while (cursorQuery.moveToNext()) {
                            String string = cursorQuery.getString(columnIndexOrThrow4);
                            builder.addVariant(Uri.parse(cursorQuery.getString(columnIndexOrThrow)), cursorQuery.getInt(columnIndexOrThrow2), cursorQuery.getInt(columnIndexOrThrow3), TextUtils.isEmpty(string) ? null : ImageRequest.CacheChoice.valueOf(string));
                        }
                        MediaVariations mediaVariationsBuild2 = builder.build();
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return mediaVariationsBuild2;
                    } catch (SQLException e) {
                        e = e;
                        cursor = cursorQuery;
                        FLog.m324e(TAG, e, "Error reading for %s", str);
                        throw e;
                    } catch (Throwable th) {
                        th = th;
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        throw th;
                    }
                } catch (SQLException e2) {
                    e = e2;
                }
            } catch (Throwable th2) {
                th = th2;
                cursorQuery = cursor;
            }
        }
    }

    @Override // com.facebook.imagepipeline.cache.MediaVariationsIndex
    public void saveCachedVariant(final String str, final ImageRequest.CacheChoice cacheChoice, final CacheKey cacheKey, final EncodedImage encodedImage) {
        this.mWriteExecutor.execute(new Runnable() { // from class: com.facebook.imagepipeline.cache.MediaVariationsIndexDatabase.2
            @Override // java.lang.Runnable
            public void run() {
                MediaVariationsIndexDatabase.this.saveCachedVariantSync(str, cacheChoice, cacheKey, encodedImage);
            }
        });
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    protected void saveCachedVariantSync(String str, ImageRequest.CacheChoice cacheChoice, CacheKey cacheKey, EncodedImage encodedImage) {
        synchronized (MediaVariationsIndexDatabase.class) {
            SQLiteDatabase writableDatabase = this.mDbHelper.getWritableDatabase();
            try {
                try {
                    writableDatabase.beginTransaction();
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("media_id", str);
                    contentValues.put("width", Integer.valueOf(encodedImage.getWidth()));
                    contentValues.put("height", Integer.valueOf(encodedImage.getHeight()));
                    contentValues.put("cache_choice", cacheChoice.name());
                    contentValues.put("cache_key", cacheKey.getUriString());
                    contentValues.put("resource_id", CacheKeyUtil.getFirstResourceId(cacheKey));
                    writableDatabase.replaceOrThrow("media_variations_index", null, contentValues);
                    writableDatabase.setTransactionSuccessful();
                } catch (Exception e) {
                    FLog.m324e(TAG, e, "Error writing for %s", str);
                }
                writableDatabase.endTransaction();
            } catch (Throwable th) {
                writableDatabase.endTransaction();
                throw th;
            }
        }
    }

    private static class LazyIndexDbOpenHelper {
        private final Context mContext;

        @Nullable
        private IndexDbOpenHelper mIndexDbOpenHelper;

        private LazyIndexDbOpenHelper(Context context) {
            this.mContext = context;
        }

        public synchronized SQLiteDatabase getWritableDatabase() {
            if (this.mIndexDbOpenHelper == null) {
                this.mIndexDbOpenHelper = new IndexDbOpenHelper(this.mContext);
            }
            return this.mIndexDbOpenHelper.getWritableDatabase();
        }
    }

    private static class IndexDbOpenHelper extends SQLiteOpenHelper {
        public IndexDbOpenHelper(Context context) {
            super(context, "FrescoMediaVariationsIndex.db", (SQLiteDatabase.CursorFactory) null, 2);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.beginTransaction();
            try {
                sQLiteDatabase.execSQL("CREATE TABLE media_variations_index (_id INTEGER PRIMARY KEY,media_id TEXT,width INTEGER,height INTEGER,cache_choice TEXT,cache_key TEXT,resource_id TEXT UNIQUE )");
                sQLiteDatabase.execSQL("CREATE INDEX index_media_id ON media_variations_index (media_id)");
                sQLiteDatabase.setTransactionSuccessful();
            } finally {
                sQLiteDatabase.endTransaction();
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            sQLiteDatabase.beginTransaction();
            try {
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS media_variations_index");
                sQLiteDatabase.setTransactionSuccessful();
                sQLiteDatabase.endTransaction();
                onCreate(sQLiteDatabase);
            } catch (Throwable th) {
                sQLiteDatabase.endTransaction();
                throw th;
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            onUpgrade(sQLiteDatabase, i, i2);
        }
    }
}
