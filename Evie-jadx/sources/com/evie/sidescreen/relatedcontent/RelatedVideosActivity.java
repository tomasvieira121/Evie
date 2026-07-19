package com.evie.sidescreen.relatedcontent;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.database.ContentObserver;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.provider.Settings;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.Menu;
import android.view.MenuItem;
import android.view.OrientationEventListener;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.aol.mobile.sdk.controls.view.TargetUrlActivity;
import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.models.sidescreen.data.TileType;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.R;
import com.evie.sidescreen.SideScreenActivity;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.personalize.TopicItemPresenter;
import com.evie.sidescreen.tiles.videos.PopupViewProvider;
import com.evie.sidescreen.tiles.videos.VideoControlsViewHolder;
import com.google.android.youtube.player.YouTubePlayerView;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import dagger.android.AndroidInjector;
import dagger.android.support.HasSupportFragmentInjector;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import io.reactivex.subjects.BehaviorSubject;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.schema.NewsArticle;
import org.schema.Organization;
import org.schema.VideoObject;
import timber.log.Timber;
import uk.p007co.chrisjenx.calligraphy.CalligraphyContextWrapper;
import uk.p007co.chrisjenx.calligraphy.TypefaceUtils;

/* JADX INFO: loaded from: classes.dex */
public class RelatedVideosActivity extends SideScreenActivity implements FullScreenControllerFragment.OnFragmentInteractionListener, VideoHandler.VideoHelperInterface, HasSupportFragmentInjector {
    private NewsArticle mArticle;
    private String mArticleId;
    private float mAspectRatio;
    private AudioFocusRequest mAudioFocusRequest;

    @BindView
    FrameLayout mContainer;

    @BindView
    View mContentView;
    private boolean mIsActivityStarted;
    private boolean mIsActivityStopped;
    private boolean mIsAutoRotateOn;

    @BindView
    ImageView mLogo;
    private OrientationEventListener mOrientationEventListener;

    @BindView
    View mPlaybackControls;
    private PlayerActionHandler mPlayerActionHandler;
    private VideoHandler mPreviousVideoHandler;
    private RelatedVideosFragment mRelatedVideosFragment;
    private ContentObserver mRotationObserver;
    private ScreenInfo mScreenInfo;
    private String mShareLink;
    private long mStartDuration;
    private long mStartPosition;

    @BindView
    Toolbar mToolbar;

    @BindView
    TextView mToolbarTitle;
    private VideoControlsViewHolder mVideoControlsViewHolder;
    private VideoHandler mVideoHandler;
    private VideoObject mVideoObject;
    private static final String PREFIX = "com.evie.sidescreen.relatedcontent.RelatedVideosActivity";
    public static final String EXTRA_ARTICLE = PREFIX + ".article";
    public static final String EXTRA_START_POSITION = PREFIX + ".start_position";
    public static final String EXTRA_START_DURATION = PREFIX + ".start_duration";
    static boolean sYouTubePlayerViewClassLoaded = false;
    private boolean mVideoVisible = false;
    private boolean mIsFullScreen = false;
    private PhoneStateListener mPhoneStateListener = new PhoneStateListener() { // from class: com.evie.sidescreen.relatedcontent.RelatedVideosActivity.1
        @Override // android.telephony.PhoneStateListener
        public void onCallStateChanged(int i, String str) {
            super.onCallStateChanged(i, str);
            if (i == 1 || i == 2) {
                RelatedVideosActivity.this.mVideoHandler.onVideoPause();
            }
        }
    };
    protected long firstVisibleTime = -1;

    static /* synthetic */ void lambda$requestAudioFocus$1(int i) {
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler.VideoHelperInterface
    public float getAspectRatioLowerLimit() {
        return 1.0f;
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler.VideoHelperInterface
    public float getDefaultAspectRatio() {
        return 1.77777f;
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler.VideoHelperInterface
    public int getMinimumImpressionDuration() {
        return 1000;
    }

    @Override // com.evie.sidescreen.SideScreenActivity
    protected String getScreenViewSubType() {
        return "trending";
    }

    @Override // com.evie.sidescreen.SideScreenActivity
    protected String getScreenViewTitle() {
        return null;
    }

    @Override // com.evie.sidescreen.SideScreenActivity
    protected String getScreenViewType() {
        return "related-videos";
    }

    @Override // com.evie.sidescreen.SideScreenActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(context));
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        if (menu.findItem(101) == null) {
            MenuItem menuItemAdd = menu.add(0, 101, 0, "Share");
            menuItemAdd.setIcon(R.drawable.ic_share_white_24dp);
            menuItemAdd.setShowAsAction(2);
        }
        if (this.mShareLink == null) {
            menu.findItem(101).setVisible(false);
        } else {
            menu.findItem(101).setVisible(true);
        }
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 101) {
            shareVideo();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.evie.sidescreen.SideScreenActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        onCreateInject();
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent.getBooleanExtra("analytics.send_tap_event", false)) {
            AnalyticsHandler.EventProp eventProp = new AnalyticsHandler.EventProp();
            eventProp.add("item_type", intent.getStringExtra("analytics.item_type"));
            eventProp.add("analytics_proto", intent.getStringExtra("analytics.proto"));
            eventProp.add("screen_type", "notification");
            eventProp.add("entity_id", intent.getStringExtra("com.evie.sidescreen.article_id"));
            eventProp.add("impression_id", intent.getStringExtra("analytics.impression_id"));
            this.mAnalyticsHandler.logEvent("ev_ss_tap", eventProp);
        }
        setContentView(R.layout.ss_related_videos_activity);
        ButterKnife.bind(this);
        this.mPlayerActionHandler = new PlayerActionHandler();
        this.mVideoControlsViewHolder = new VideoControlsViewHolder(this.mPlaybackControls, this.mPlayerActionHandler);
        setSupportActionBar(this.mToolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setDisplayShowHomeEnabled(true);
        getSupportActionBar().setDisplayShowTitleEnabled(false);
        this.mToolbar.setBackgroundColor(getResources().getColor(R.color.dark_theme_bg));
        this.mToolbar.getNavigationIcon().setColorFilter(-1, PorterDuff.Mode.SRC_ATOP);
        this.mToolbarTitle.setTextColor(-1);
        this.mToolbarTitle.setTextSize(14.0f);
        this.mToolbarTitle.setTypeface(TypefaceUtils.load(getAssets(), getString(R.string.circular_font_regular)));
        NewsArticle newsArticle = (NewsArticle) intent.getSerializableExtra(EXTRA_ARTICLE);
        if (newsArticle != null) {
            setArticle(newsArticle, 1);
        } else {
            this.mArticleId = intent.getStringExtra("com.evie.sidescreen.article_id");
            this.mScreenInfo = new ScreenInfo("related_content", this.mArticleId, "related_videos");
        }
        this.mRelatedVideosFragment = RelatedVideosFragment.createInstance(this.mArticle, this.mArticleId, this.mScreenInfo);
        FragmentTransaction fragmentTransactionBeginTransaction = getSupportFragmentManager().beginTransaction();
        fragmentTransactionBeginTransaction.add(this.mContainer.getId(), this.mRelatedVideosFragment);
        fragmentTransactionBeginTransaction.commit();
        registerAutoRotateSettingChangeListener();
        this.mPlayerActionHandler.exitFullScreenOrientation();
    }

    @Override // android.app.Activity, android.content.ContextWrapper, android.content.Context
    public void startActivity(Intent intent, Bundle bundle) {
        ComponentName component = intent.getComponent();
        String stringExtra = intent.getStringExtra(TargetUrlActivity.KEY_TARGET_URL);
        if (component != null && getPackageName().equals(component.getPackageName()) && TargetUrlActivity.class.getName().equals(component.getClassName())) {
            intent = new Intent("android.intent.action.VIEW");
            intent.setFlags(268435456);
            intent.setData(Uri.parse(stringExtra));
        }
        super.startActivity(intent, bundle);
    }

    @Override // com.evie.sidescreen.SideScreenActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        if (getFragmentManager().getBackStackEntryCount() == 0 && this.mIsFullScreen) {
            this.mPlayerActionHandler.manuallyExitFullScreen();
        } else {
            super.onBackPressed();
        }
    }

    private void registerAutoRotateSettingChangeListener() {
        this.mIsAutoRotateOn = Settings.System.getInt(getContentResolver(), "accelerometer_rotation", 0) == 1;
        this.mIsAutoRotateOn = Settings.System.getInt(getContentResolver(), "accelerometer_rotation", 0) == 1;
        this.mRotationObserver = new ContentObserver(new Handler()) { // from class: com.evie.sidescreen.relatedcontent.RelatedVideosActivity.2
            @Override // android.database.ContentObserver
            public void onChange(boolean z) {
                if (z) {
                    return;
                }
                RelatedVideosActivity relatedVideosActivity = RelatedVideosActivity.this;
                relatedVideosActivity.mIsAutoRotateOn = !relatedVideosActivity.mIsAutoRotateOn;
                if (RelatedVideosActivity.this.mIsAutoRotateOn) {
                    RelatedVideosActivity.this.setRequestedOrientation(4);
                    return;
                }
                if (RelatedVideosActivity.this.mAspectRatio > 1.0f) {
                    if (RelatedVideosActivity.this.mIsFullScreen) {
                        RelatedVideosActivity.this.setRequestedOrientation(6);
                        return;
                    } else {
                        RelatedVideosActivity.this.setRequestedOrientation(1);
                        return;
                    }
                }
                RelatedVideosActivity.this.setRequestedOrientation(1);
            }
        };
        getContentResolver().registerContentObserver(Settings.System.getUriFor("accelerometer_rotation"), true, this.mRotationObserver);
    }

    private void unregisterAutoRotateChangeListener() {
        getContentResolver().unregisterContentObserver(this.mRotationObserver);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == TopicItemPresenter.REQUEST_CODE_TOPIC_FOLLOWING_STATUS && i2 == -1) {
            if (intent.hasExtra("following")) {
                try {
                    this.mRelatedVideosFragment.updateFollowingStatus(intent.getBooleanExtra("following", false));
                } catch (Exception unused) {
                }
            }
            if (intent.hasExtra("article")) {
                Serializable serializableExtra = intent.getSerializableExtra("article");
                if (serializableExtra instanceof NewsArticle) {
                    this.mVideoObject = null;
                    setArticle((NewsArticle) serializableExtra, 3);
                }
            }
        }
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler.VideoHelperInterface
    public int getScreenWidthPixels() {
        Point point = new Point();
        ((WindowManager) getSystemService("window")).getDefaultDisplay().getRealSize(point);
        return point.x;
    }

    public void setArticle(NewsArticle newsArticle, int i) {
        if (newsArticle == null) {
            finish();
            return;
        }
        if (this.mVideoVisible) {
            onVideoVisibilityChanged(false);
        }
        if (!(this.mArticle == null)) {
            this.mStartPosition = 0L;
        } else {
            Intent intent = getIntent();
            this.mStartPosition = intent.getLongExtra(EXTRA_START_POSITION, 0L);
            this.mStartDuration = intent.getLongExtra(EXTRA_START_DURATION, 0L);
        }
        if (i == 3) {
            this.mVideoHandler.onAdInterrupted();
            this.mPlaybackControls.setVisibility(0);
        }
        String mediaPlayer = newsArticle.getVideo().get(0).getMediaPlayer();
        VideoObject videoObject = this.mVideoObject;
        boolean zEquals = mediaPlayer.equals(videoObject == null ? null : videoObject.getMediaPlayer());
        this.mArticle = newsArticle;
        this.mScreenInfo = new ScreenInfo("related_content", this.mArticle.getId(), "related_videos");
        this.mVideoObject = this.mArticle.getVideo().get(0);
        this.mShareLink = this.mVideoObject.getUrl();
        invalidateOptionsMenu();
        VideoObject videoObject2 = this.mVideoObject;
        int iIntValue = (videoObject2 == null || videoObject2.getWidth() == null) ? 16 : this.mVideoObject.getWidth().intValue();
        VideoObject videoObject3 = this.mVideoObject;
        int iIntValue2 = (videoObject3 == null || videoObject3.getHeight() == null) ? 9 : this.mVideoObject.getHeight().intValue();
        this.mAspectRatio = (iIntValue == 0 || iIntValue2 == 0) ? 1.7777778f : iIntValue / iIntValue2;
        if (zEquals) {
            this.mVideoHandler.samePlayerTransition();
        } else {
            boolean z = this.mIsFullScreen;
            if (z) {
                this.mPlayerActionHandler.onExitFullScreen();
            }
            VideoHandler videoHandler = this.mVideoHandler;
            if (videoHandler != null) {
                videoHandler.tearDown();
            }
            switchVideoHandler();
            VideoHandler videoHandler2 = this.mVideoHandler;
            this.mPreviousVideoHandler = videoHandler2;
            if (!videoHandler2.isInitialized()) {
                this.mVideoHandler.initializeParams();
            }
            this.mVideoHandler.setUp();
            if (z) {
                this.mPlayerActionHandler.onEnterFullScreen();
            }
        }
        setHeader();
        if (i == 1 || i == 2) {
            return;
        }
        this.mRelatedVideosFragment.setArticle(this.mArticle, this.mScreenInfo);
    }

    private void switchVideoHandler() {
        if (this.mVideoObject.isOath()) {
            this.mVideoHandler = new OathVideoHandler(this.mOathPlayerObservableProvider, this, this, this.mVideoControlsViewHolder, this.mDisposables, this.mPlaybackControls, this.mPlayerActionHandler);
        } else if (this.mVideoObject.isYouTube()) {
            this.mVideoHandler = new YouTubeVideoHandler(this, this, this.mVideoControlsViewHolder, this.mPlayerActionHandler);
        } else {
            this.mVideoHandler = new ExoVideoHandler(this.mExoPlayerObservableProvider, this, this, this.mVideoControlsViewHolder, this.mDisposables, this.mPlayerActionHandler);
        }
    }

    public void setAutoplay(boolean z) {
        this.mSideScreenSharedPreferencesModel.setPlaylistAutoplayEnabled(z);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        requestAudioFocus();
    }

    @Override // com.evie.sidescreen.SideScreenActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.mIsActivityStarted = true;
        if (this.mIsActivityStopped) {
            this.mIsActivityStopped = false;
            this.mVideoHandler.onActivityResume();
        }
        ((TelephonyManager) getSystemService("phone")).listen(this.mPhoneStateListener, 32);
    }

    @Override // com.evie.sidescreen.SideScreenActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        ((TelephonyManager) getSystemService("phone")).listen(this.mPhoneStateListener, 0);
        this.mVideoHandler.onActivityPause();
        this.mDisposables.clear();
        super.onPause();
        this.mIsActivityStarted = false;
        this.mIsActivityStopped = true;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        abandonAudioFocus();
        super.onStop();
    }

    @Override // com.evie.sidescreen.SideScreenActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        this.mDisposables.dispose();
        unregisterAutoRotateChangeListener();
        this.mVideoHandler.onActivityDestroy();
        if (this.mVideoVisible) {
            onVideoVisibilityChanged(false);
        }
        disposeVideoHandlers();
        super.onDestroy();
    }

    @Override // com.evie.sidescreen.SideScreenActivity
    protected String getScreenViewMetaData() {
        NewsArticle newsArticle = this.mArticle;
        if (newsArticle != null) {
            return newsArticle.getId();
        }
        return this.mArticleId;
    }

    @Override // com.evie.sidescreen.SideScreenActivity
    protected String getScreenViewProtobuf() {
        return (String) this.mArticle.getAnalytics().get("analytics_proto");
    }

    private void setHeader() {
        if (this.mArticle.getPublisherOrganization() != null) {
            this.mToolbarTitle.setText(this.mArticle.getPublisherOrganization().getName());
        }
        Organization publisherOrganization = this.mArticle.getPublisherOrganization();
        String faviconUrl = publisherOrganization != null ? publisherOrganization.getFaviconUrl() : null;
        if (faviconUrl == null) {
            this.mLogo.setVisibility(8);
        } else {
            this.mLogo.setImageURI(Uri.parse(faviconUrl));
            this.mLogo.setVisibility(0);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity
    public boolean onSupportNavigateUp() {
        finish();
        return true;
    }

    public static void warmup(Context context) {
        if (YouTubePlayerView.class.getSimpleName() == null) {
            Timber.m551d("", new Object[0]);
        }
        if (sYouTubePlayerViewClassLoaded) {
            return;
        }
        sYouTubePlayerViewClassLoaded = true;
    }

    @Override // com.evie.sidescreen.SideScreenActivity
    public PopupViewProvider getPopupViewProvider() {
        return new PopupViewProvider(null);
    }

    @Override // dagger.android.support.HasSupportFragmentInjector
    public AndroidInjector<Fragment> supportFragmentInjector() {
        return getSupportFragmentInjector();
    }

    private void shareVideo() {
        if (this.mShareLink == null) {
            return;
        }
        final ActivityStarter activityStarter = new ActivityStarter(this, this.mAnalyticsModel);
        this.mDisposables.add(this.mSideScreenRelatedContentModel.getShortLink(this.mShareLink).subscribeOn(Schedulers.m548io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.evie.sidescreen.relatedcontent.-$$Lambda$RelatedVideosActivity$oGSEQGe4torg0hj-2utTBCuTowY
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                RelatedVideosActivity relatedVideosActivity = this.f$0;
                activityStarter.startShareActivity((String) obj, relatedVideosActivity.mArticle.getHeadline(), relatedVideosActivity.mScreenInfo);
            }
        }));
    }

    private void requestAudioFocus() {
        AudioManager audioManager = (AudioManager) getSystemService("audio");
        if (Build.VERSION.SDK_INT >= 26) {
            if (this.mAudioFocusRequest != null) {
                abandonAudioFocus();
            }
            this.mAudioFocusRequest = new AudioFocusRequest.Builder(1).setAcceptsDelayedFocusGain(true).setOnAudioFocusChangeListener(new AudioManager.OnAudioFocusChangeListener() { // from class: com.evie.sidescreen.relatedcontent.-$$Lambda$RelatedVideosActivity$t_QoP4p9wEZoN37Q196tJOWd3WA
                @Override // android.media.AudioManager.OnAudioFocusChangeListener
                public final void onAudioFocusChange(int i) {
                    RelatedVideosActivity.lambda$requestAudioFocus$1(i);
                }
            }).build();
            audioManager.requestAudioFocus(this.mAudioFocusRequest);
            return;
        }
        audioManager.requestAudioFocus(null, 3, 1);
    }

    private void abandonAudioFocus() {
        AudioManager audioManager = (AudioManager) getSystemService("audio");
        if (Build.VERSION.SDK_INT >= 26) {
            AudioFocusRequest audioFocusRequest = this.mAudioFocusRequest;
            if (audioFocusRequest != null) {
                audioManager.abandonAudioFocusRequest(audioFocusRequest);
                this.mAudioFocusRequest = null;
                return;
            }
            return;
        }
        audioManager.abandonAudioFocus(null);
    }

    public class PlayerActionHandler implements VideoControlsViewHolder.ActionHandler {
        private int SENSOR_ORIENTATION_CHANGE_DELAY = 2000;
        private BehaviorSubject<Boolean> mControlsFocus = BehaviorSubject.create();
        private Handler orientationHandler = new Handler();
        private Runnable sensorRunnable = new Runnable() { // from class: com.evie.sidescreen.relatedcontent.-$$Lambda$RelatedVideosActivity$PlayerActionHandler$w6GnehXxoKQOvYaFbahwX_m-b64
            @Override // java.lang.Runnable
            public final void run() {
                RelatedVideosActivity.this.setRequestedOrientation(4);
            }
        };

        public PlayerActionHandler() {
        }

        public void onPlay() {
            RelatedVideosActivity.this.mContentView.setKeepScreenOn(true);
            this.mControlsFocus.onNext(false);
            RelatedVideosActivity.this.mVideoHandler.onVideoPlay();
        }

        public void onPause() {
            RelatedVideosActivity.this.mContentView.setKeepScreenOn(false);
            this.mControlsFocus.onNext(true);
            RelatedVideosActivity.this.mVideoHandler.onVideoPause();
        }

        public void onScrub(long j) {
            this.mControlsFocus.onNext(false);
            RelatedVideosActivity.this.mVideoHandler.onVideoScrub(j);
        }

        public void onEnterFullScreen() {
            if (RelatedVideosActivity.this.mIsFullScreen) {
                return;
            }
            this.mControlsFocus.onNext(false);
            RelatedVideosActivity.this.mIsFullScreen = true;
            if (RelatedVideosActivity.this.mVideoObject == null) {
                return;
            }
            RelatedVideosActivity.this.mVideoHandler.enterFullscreen();
        }

        public void onExitFullScreen() {
            if (RelatedVideosActivity.this.mIsFullScreen) {
                RelatedVideosActivity.this.mIsFullScreen = false;
                RelatedVideosActivity.this.getWindow().clearFlags(1024);
                RelatedVideosActivity.this.getWindow().getDecorView().setSystemUiVisibility(0);
                RelatedVideosActivity.this.mVideoHandler.exitFullscreen();
            }
        }

        @Override // com.evie.sidescreen.tiles.videos.VideoControlsViewHolder.ActionHandler
        public Observable<Boolean> observeControlsFocus() {
            return this.mControlsFocus;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void exitFullScreenOrientation() {
            this.orientationHandler.removeCallbacks(this.sensorRunnable);
            RelatedVideosActivity.this.setRequestedOrientation(1);
            if (RelatedVideosActivity.this.mIsAutoRotateOn) {
                this.orientationHandler.postDelayed(this.sensorRunnable, this.SENSOR_ORIENTATION_CHANGE_DELAY);
            }
        }

        private void enterFullScreenOrientation() {
            this.orientationHandler.removeCallbacks(this.sensorRunnable);
            if (RelatedVideosActivity.this.mAspectRatio > 1.0f) {
                RelatedVideosActivity.this.setRequestedOrientation(6);
            } else {
                RelatedVideosActivity.this.setRequestedOrientation(1);
            }
            if (RelatedVideosActivity.this.mIsAutoRotateOn) {
                this.orientationHandler.postDelayed(this.sensorRunnable, this.SENSOR_ORIENTATION_CHANGE_DELAY);
            }
        }

        public void manuallyEnterFullScreen() {
            if (RelatedVideosActivity.this.mAspectRatio > 1.0f) {
                if (RelatedVideosActivity.this.mIsAutoRotateOn) {
                    this.orientationHandler.removeCallbacks(this.sensorRunnable);
                    RelatedVideosActivity.this.setRequestedOrientation(6);
                    if (RelatedVideosActivity.this.mOrientationEventListener == null) {
                        RelatedVideosActivity relatedVideosActivity = RelatedVideosActivity.this;
                        relatedVideosActivity.mOrientationEventListener = relatedVideosActivity.createOrientationListenerInstance();
                    }
                    if (RelatedVideosActivity.this.mOrientationEventListener.canDetectOrientation()) {
                        RelatedVideosActivity.this.mOrientationEventListener.enable();
                        return;
                    }
                    return;
                }
                enterFullScreenOrientation();
                return;
            }
            onEnterFullScreen();
        }

        public void manuallyExitFullScreen() {
            if (RelatedVideosActivity.this.mOrientationEventListener != null) {
                RelatedVideosActivity.this.mOrientationEventListener.disable();
                RelatedVideosActivity.this.mOrientationEventListener = null;
            }
            exitFullScreenOrientation();
            if (!RelatedVideosActivity.this.mIsFullScreen || RelatedVideosActivity.this.mAspectRatio > 1.0f) {
                return;
            }
            onExitFullScreen();
        }
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler.VideoHelperInterface
    public void trackAdTap(String str, String str2) {
        HashMap map = new HashMap();
        map.put("entity_id", str2);
        map.put("ad_network", str);
        map.put("item_type", "ad");
        map.put("parent_entity_id", this.mArticle.getId());
        map.put("attribute_screen_info", this.mScreenInfo);
        this.mAnalyticsModel.trackEvent("ev_ss_tap", map);
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler.VideoHelperInterface
    public void setPersistentImmersiveMode() {
        setToolBarVisibility(false);
        setIsFullScreen(true);
        getWindow().setFlags(1024, 1024);
        final View decorView = getWindow().getDecorView();
        final int i = 2054;
        decorView.setSystemUiVisibility(2054);
        this.mContentView.setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.evie.sidescreen.relatedcontent.-$$Lambda$RelatedVideosActivity$y5suLPa4zUHSWSp9IxERJu8Hq3Y
            @Override // android.view.View.OnSystemUiVisibilityChangeListener
            public final void onSystemUiVisibilityChange(int i2) {
                RelatedVideosActivity.lambda$setPersistentImmersiveMode$2(this.f$0, decorView, i, i2);
            }
        });
    }

    public static /* synthetic */ void lambda$setPersistentImmersiveMode$2(RelatedVideosActivity relatedVideosActivity, View view, int i, int i2) {
        if (relatedVideosActivity.getIsFullScreen() && i2 == 0) {
            view.setSystemUiVisibility(i);
        }
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler.VideoHelperInterface
    public void onVideoEnded() {
        if (this.mSideScreenSharedPreferencesModel.getPlaylistAutoplayEnabled()) {
            NewsArticle nextArticle = this.mRelatedVideosFragment.getNextArticle();
            if (nextArticle == null || nextArticle.getVideo() == null || nextArticle.getVideo().size() <= 0) {
                return;
            }
            if (this.mAspectRatio <= 1.0f && getResources().getConfiguration().orientation == 1) {
                this.mPlayerActionHandler.onExitFullScreen();
            }
            setArticle(nextArticle, 4);
            return;
        }
        this.mVideoControlsViewHolder.setPlaying(false);
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler.VideoHelperInterface
    public void onVideoVisibilityChanged(boolean z) {
        this.mVideoVisible = z;
        if (z) {
            beginImpressionEvent();
        } else {
            endImpressionEvent(getAnalyticsAttributes());
        }
    }

    private Map<String, Object> getAnalyticsAttributes() {
        HashMap map = new HashMap();
        map.put("item_type", "trending_video");
        map.put("attribute_news_article", this.mArticle);
        map.put("attribute_screen_info", this.mScreenInfo);
        return map;
    }

    protected void beginImpressionEvent() {
        this.firstVisibleTime = SystemClock.elapsedRealtime();
    }

    protected void endImpressionEvent(Map<String, Object> map) {
        if (this.firstVisibleTime < 0) {
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.firstVisibleTime;
        if (jElapsedRealtime < 1000) {
            return;
        }
        map.put("screen_position_start", 0);
        map.put("screen_position_end", Float.valueOf(getYPositionFraction(this.mVideoHandler.getContainerView())));
        map.put("is_screen_landscape", false);
        map.put("duration", Long.valueOf(jElapsedRealtime));
        map.put("attribute_content_tile", new SideScreenContentTile(this.mArticle.getId(), TileType.VIDEO_SEED, 0));
        this.mAnalyticsModel.trackEvent("ev_ss_article_impression", map);
        this.firstVisibleTime = -1L;
    }

    private float getYPositionFraction(View view) {
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int statusBarHeight = iArr[1] - getStatusBarHeight();
        float usableDisplayHeight = getUsableDisplayHeight();
        return Math.round(((usableDisplayHeight - statusBarHeight) / usableDisplayHeight) * 100.0f) / 100.0f;
    }

    private int getStatusBarHeight() {
        int identifier = getResources().getIdentifier("status_bar_height", "dimen", AbstractSpiCall.ANDROID_CLIENT_TYPE);
        if (identifier > 0) {
            return getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    private int getUsableDisplayHeight() {
        Display defaultDisplay = ((WindowManager) getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public OrientationEventListener createOrientationListenerInstance() {
        final WindowManager windowManager = (WindowManager) getSystemService("window");
        final int rotation = windowManager == null ? 0 : windowManager.getDefaultDisplay().getRotation();
        return new OrientationEventListener(this, 3) { // from class: com.evie.sidescreen.relatedcontent.RelatedVideosActivity.3
            @Override // android.view.OrientationEventListener
            public void onOrientationChanged(int i) {
                WindowManager windowManager2 = windowManager;
                if (windowManager2 == null) {
                    return;
                }
                int rotation2 = windowManager2.getDefaultDisplay().getRotation();
                int i2 = rotation;
                if (rotation2 - i2 != 0) {
                    if (rotation2 - i2 == 2 || rotation2 - i2 == -2) {
                        RelatedVideosActivity.this.setRequestedOrientation(4);
                        if (RelatedVideosActivity.this.mOrientationEventListener != null) {
                            RelatedVideosActivity.this.mOrientationEventListener.disable();
                            RelatedVideosActivity.this.mOrientationEventListener = null;
                        }
                    }
                }
            }
        };
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.mIsActivityStopped) {
            return;
        }
        if (configuration.orientation != 2) {
            if (configuration.orientation != 1 || this.mAspectRatio <= 1.0f) {
                return;
            }
            this.mPlayerActionHandler.onExitFullScreen();
            return;
        }
        if (this.mAspectRatio > 1.0f) {
            this.mPlayerActionHandler.onEnterFullScreen();
        } else {
            if (this.mIsFullScreen) {
                return;
            }
            this.mPlayerActionHandler.onEnterFullScreen();
        }
    }

    void disposeVideoHandlers() {
        this.mVideoHandler = null;
        this.mPreviousVideoHandler = null;
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler.VideoHelperInterface
    public boolean getIsFullScreen() {
        return this.mIsFullScreen;
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler.VideoHelperInterface
    public float getMediaAspectRatio() {
        return this.mAspectRatio;
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler.VideoHelperInterface
    public List<VideoObject> getVideoObjectList() {
        return this.mArticle.getVideo();
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler.VideoHelperInterface
    public boolean isActivityStarted() {
        return this.mIsActivityStarted;
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler.VideoHelperInterface
    public void setIsFullScreen(boolean z) {
        this.mIsFullScreen = z;
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler.VideoHelperInterface
    public void setStartPosition(long j) {
        this.mStartPosition = j;
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler.VideoHelperInterface
    public long getStartPosition() {
        return this.mStartPosition;
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler.VideoHelperInterface
    public long getStartDuration() {
        return this.mStartDuration;
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler.VideoHelperInterface
    public void setToolBarVisibility(boolean z) {
        if (z) {
            this.mToolbar.setVisibility(0);
        } else {
            this.mToolbar.setVisibility(8);
        }
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler.VideoHelperInterface
    public void manuallyExitFullScreen() {
        this.mPlayerActionHandler.manuallyExitFullScreen();
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler.VideoHelperInterface
    public AnalyticsModel trackAnalyticsModel() {
        return this.mAnalyticsModel;
    }

    @Override // com.evie.sidescreen.relatedcontent.VideoHandler.VideoHelperInterface
    public boolean getIsPlaylistAutoplayEnabled() {
        return this.mSideScreenSharedPreferencesModel.getPlaylistAutoplayEnabled();
    }

    @Override // com.evie.sidescreen.relatedcontent.FullScreenControllerFragment.OnFragmentInteractionListener
    public VideoControlsViewHolder getVideoControlsViewHolder() {
        return this.mVideoControlsViewHolder;
    }

    @Override // com.evie.sidescreen.relatedcontent.FullScreenControllerFragment.OnFragmentInteractionListener
    public void onDialogBackPressed() {
        this.mPlayerActionHandler.manuallyExitFullScreen();
    }
}
