package com.voxel.simplesearchlauncher.activity.onboarding;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.graphics.Point;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.util.Pair;
import android.util.Property;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.WindowManager;
import android.view.animation.DecelerateInterpolator;
import androidx.fragment.app.FragmentActivity;
import com.github.rahatarmanahmed.cpv.CircularProgressView;
import com.voxel.launcher3.DeviceProfile;
import com.voxel.launcher3.DynamicGrid;
import com.voxel.launcher3.ItemInfo;
import com.voxel.launcher3.ShortcutInfo;
import com.voxel.simplesearchlauncher.activity.OnboardingActivity;
import com.voxel.simplesearchlauncher.importer.ImportData;
import com.voxel.simplesearchlauncher.importer.ImporterInfo;
import com.voxel.simplesearchlauncher.importer.LauncherImportHelper;
import com.voxel.simplesearchlauncher.model.managers.LocalAppsManager;
import com.voxel.simplesearchlauncher.model.managers.SettingsStorage;
import com.voxel.simplesearchlauncher.settings.LayoutSettingsManager;
import com.voxel.simplesearchlauncher.view.Slide;
import com.voxel.simplesearchlauncher.view.SlideLayout;
import com.voxel.simplesearchlauncher.view.TextureVideoView;
import is.shortcut.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class IntroSlide extends Slide {
    private FragmentActivity mActivity;
    private ImportData mDefaultItemData;
    private Handler mHandler;
    private boolean mImporterDataReady;
    private List<ImporterInfo> mImporterInfos;
    private TimeInterpolator mInterpolator;
    private LayoutSettingsManager mLayoutSettingsManager;
    private AsyncTask<Context, Void, Result> mLoadImportersTask;
    private SlideLayout mSlideLayout;
    private View mSpinner;
    private TextureVideoView mVideoView;
    private long mWaitStartTime;

    @Override // com.voxel.simplesearchlauncher.view.Slide
    public void onEnteringSlide() {
    }

    private class Result {
        public List<ItemInfo> defaultItemInfos;
        public List<ImporterInfo> importerInfos;

        private Result() {
        }
    }

    public IntroSlide(FragmentActivity fragmentActivity, SlideLayout slideLayout, LayoutSettingsManager layoutSettingsManager) {
        super(LayoutInflater.from(fragmentActivity).inflate(R.layout.onboarding_intro_slide, (ViewGroup) null));
        this.mInterpolator = new DecelerateInterpolator();
        this.mImporterDataReady = false;
        this.mLoadImportersTask = new AsyncTask<Context, Void, Result>() { // from class: com.voxel.simplesearchlauncher.activity.onboarding.IntroSlide.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public Result doInBackground(Context... contextArr) {
                Context context = contextArr[0];
                Result result = new Result();
                List<ImporterInfo> availableImporters = LauncherImportHelper.getAvailableImporters(context);
                ArrayList arrayList = new ArrayList(availableImporters.size());
                for (ImporterInfo importerInfo : availableImporters) {
                    ImportData mainScreenItems = LauncherImportHelper.getMainScreenItems(importerInfo.importerInterface, context);
                    if (!mainScreenItems.itemInfos.isEmpty() && !mainScreenItems.screens.isEmpty()) {
                        ImporterInfo importerInfo2 = new ImporterInfo();
                        importerInfo2.label = importerInfo.label;
                        importerInfo2.icon = importerInfo.icon;
                        importerInfo2.importerInterface = importerInfo.importerInterface;
                        importerInfo2.importData = mainScreenItems;
                        arrayList.add(importerInfo2);
                    }
                }
                result.importerInfos = arrayList;
                result.defaultItemInfos = findDefaultItemInfos(context);
                return result;
            }

            private List<ItemInfo> findDefaultItemInfos(Context context) {
                Intent intent = new Intent("android.intent.action.DIAL");
                intent.addCategory("android.intent.category.DEFAULT");
                ResolveInfo defaultAppInfoForAction = getDefaultAppInfoForAction(context, intent);
                ResolveInfo defaultAppInfoForAction2 = getDefaultAppInfoForAction(context, LocalAppsManager.getLaunchTextIntent("123456789"));
                Intent intent2 = new Intent("android.media.action.IMAGE_CAPTURE");
                intent2.addCategory("android.intent.category.DEFAULT");
                intent2.addFlags(268468224);
                ResolveInfo defaultAppInfoForAction3 = getDefaultAppInfoForAction(context, intent2);
                Intent intent3 = new Intent("android.intent.action.VIEW");
                intent3.setData(Uri.parse("http://www.google.com"));
                ResolveInfo defaultAppInfoForAction4 = getDefaultAppInfoForAction(context, intent3);
                Point point = new Point();
                Point point2 = new Point();
                Point point3 = new Point();
                Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
                defaultDisplay.getCurrentSizeRange(point, point2);
                defaultDisplay.getRealSize(point3);
                DisplayMetrics displayMetrics = new DisplayMetrics();
                defaultDisplay.getMetrics(displayMetrics);
                int iRound = Math.round(new DynamicGrid(context, context.getResources(), Math.min(point.x, point.y), Math.min(point2.x, point2.y), point3.x, point3.y, displayMetrics.widthPixels, displayMetrics.heightPixels, new HashMap(), SettingsStorage.getInstance().getSearchBarDesktopEnabled()).getDeviceProfile().getCellParamsForType(DeviceProfile.ParamType.WORKSPACE).numRows) - 1;
                ArrayList arrayList = new ArrayList();
                if (defaultAppInfoForAction != null) {
                    ShortcutInfo shortcutInfoMakeShortcutInfoForResolveInfo = makeShortcutInfoForResolveInfo(context, defaultAppInfoForAction);
                    shortcutInfoMakeShortcutInfoForResolveInfo.cellX = 0;
                    shortcutInfoMakeShortcutInfoForResolveInfo.cellY = iRound;
                    arrayList.add(shortcutInfoMakeShortcutInfoForResolveInfo);
                }
                if (defaultAppInfoForAction2 != null) {
                    ShortcutInfo shortcutInfoMakeShortcutInfoForResolveInfo2 = makeShortcutInfoForResolveInfo(context, defaultAppInfoForAction2);
                    shortcutInfoMakeShortcutInfoForResolveInfo2.cellX = 1;
                    shortcutInfoMakeShortcutInfoForResolveInfo2.cellY = iRound;
                    arrayList.add(shortcutInfoMakeShortcutInfoForResolveInfo2);
                }
                if (defaultAppInfoForAction3 != null) {
                    ShortcutInfo shortcutInfoMakeShortcutInfoForResolveInfo3 = makeShortcutInfoForResolveInfo(context, defaultAppInfoForAction3);
                    shortcutInfoMakeShortcutInfoForResolveInfo3.cellX = 2;
                    shortcutInfoMakeShortcutInfoForResolveInfo3.cellY = iRound;
                    arrayList.add(shortcutInfoMakeShortcutInfoForResolveInfo3);
                }
                if (r20 != 0) {
                    ShortcutInfo shortcutInfoMakeShortcutInfoForResolveInfo4 = makeShortcutInfoForResolveInfo(context, defaultAppInfoForAction4);
                    shortcutInfoMakeShortcutInfoForResolveInfo4.cellX = 3;
                    shortcutInfoMakeShortcutInfoForResolveInfo4.cellY = iRound;
                    arrayList.add(shortcutInfoMakeShortcutInfoForResolveInfo4);
                }
                return arrayList;
            }

            private ResolveInfo getDefaultAppInfoForAction(Context context, Intent intent) {
                List<ResolveInfo> listQueryIntentActivities;
                ResolveInfo resolveInfoResolveActivity = context.getPackageManager().resolveActivity(intent, 65536);
                ResolveInfo launchableAppInfoForResolveInfo = null;
                if (resolveInfoResolveActivity != null) {
                    launchableAppInfoForResolveInfo = resolveInfoResolveActivity.activityInfo.name.equals("com.android.internal.app.ResolverActivity") ? null : getLaunchableAppInfoForResolveInfo(context, resolveInfoResolveActivity);
                    if (launchableAppInfoForResolveInfo == null && (listQueryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 65536)) != null && !listQueryIntentActivities.isEmpty()) {
                        Iterator<ResolveInfo> it = listQueryIntentActivities.iterator();
                        while (it.hasNext() && (launchableAppInfoForResolveInfo = getLaunchableAppInfoForResolveInfo(context, it.next())) == null) {
                        }
                    }
                }
                return launchableAppInfoForResolveInfo;
            }

            private ResolveInfo getLaunchableAppInfoForResolveInfo(Context context, ResolveInfo resolveInfo) {
                if (resolveInfo.activityInfo == null || resolveInfo.activityInfo.packageName == null) {
                    return null;
                }
                Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
                intent.addCategory("android.intent.category.LAUNCHER");
                intent.setPackage(resolveInfo.activityInfo.packageName);
                List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
                if (listQueryIntentActivities == null || listQueryIntentActivities.size() <= 0) {
                    return null;
                }
                return listQueryIntentActivities.get(0);
            }

            private ShortcutInfo makeShortcutInfoForResolveInfo(Context context, ResolveInfo resolveInfo) {
                ShortcutInfo shortcutInfo = new ShortcutInfo();
                shortcutInfo.itemType = 0;
                shortcutInfo.intent = new Intent("android.intent.action.MAIN");
                shortcutInfo.intent.addCategory("android.intent.category.LAUNCHER");
                shortcutInfo.intent.setComponent(new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name));
                shortcutInfo.intent.setFlags(270532608);
                shortcutInfo.container = -100L;
                shortcutInfo.screenId = 1L;
                shortcutInfo.title = resolveInfo.loadLabel(context.getPackageManager());
                return shortcutInfo;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(Result result) {
                IntroSlide.this.mImporterInfos = result.importerInfos;
                IntroSlide.this.mDefaultItemData = new ImportData();
                IntroSlide.this.mDefaultItemData.screens = new HashSet();
                IntroSlide.this.mDefaultItemData.screens.add(new Pair<>(1, 0));
                IntroSlide.this.mDefaultItemData.itemInfos = result.defaultItemInfos;
                if (IntroSlide.this.mImporterInfos.isEmpty() && result.defaultItemInfos != null && !result.defaultItemInfos.isEmpty()) {
                    LauncherImportHelper.importItems(IntroSlide.this.mActivity, IntroSlide.this.mDefaultItemData, IntroSlide.this.mLayoutSettingsManager);
                }
                IntroSlide.this.mImporterDataReady = true;
            }
        };
        this.mActivity = fragmentActivity;
        this.mLayoutSettingsManager = layoutSettingsManager;
        this.mHandler = new Handler(Looper.getMainLooper());
        this.mSlideLayout = slideLayout;
        this.mVideoView = (TextureVideoView) this.mView.findViewById(R.id.video_view);
        this.mSpinner = this.mView.findViewById(R.id.onboarding_spinner);
        this.mLoadImportersTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, fragmentActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ViewPropertyAnimator showSpinner() {
        this.mSpinner.animate().cancel();
        this.mSpinner.setVisibility(0);
        View view = this.mSpinner;
        if (view instanceof CircularProgressView) {
            ((CircularProgressView) view).startAnimation();
        }
        return this.mSpinner.animate().alpha(1.0f).setDuration(500L).withLayer().setInterpolator(this.mInterpolator).setListener(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ViewPropertyAnimator hideSpinner() {
        this.mSpinner.animate().cancel();
        return this.mSpinner.animate().alpha(0.0f).setDuration(500L).withLayer().setInterpolator(this.mInterpolator);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void waitForImporters() {
        this.mHandler.postDelayed(new Runnable() { // from class: com.voxel.simplesearchlauncher.activity.onboarding.IntroSlide.2
            @Override // java.lang.Runnable
            public void run() {
                if (IntroSlide.this.mImporterDataReady) {
                    IntroSlide.this.hideSpinner().setListener(new Animator.AnimatorListener() { // from class: com.voxel.simplesearchlauncher.activity.onboarding.IntroSlide.2.1
                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationRepeat(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (IntroSlide.this.mSpinner instanceof CircularProgressView) {
                                ((CircularProgressView) IntroSlide.this.mSpinner).stopAnimation();
                            }
                            IntroSlide.this.mSpinner.setVisibility(4);
                            IntroSlide.this.continueToOnboarding();
                        }
                    });
                    IntroSlide.this.mHandler.removeCallbacksAndMessages(null);
                } else if (SystemClock.elapsedRealtime() - IntroSlide.this.mWaitStartTime <= 8000) {
                    IntroSlide.this.mHandler.postDelayed(this, 500L);
                } else {
                    IntroSlide.this.hideSpinner().setListener(new Animator.AnimatorListener() { // from class: com.voxel.simplesearchlauncher.activity.onboarding.IntroSlide.2.2
                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationRepeat(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (IntroSlide.this.mSpinner instanceof CircularProgressView) {
                                ((CircularProgressView) IntroSlide.this.mSpinner).stopAnimation();
                            }
                            IntroSlide.this.mSpinner.setVisibility(4);
                            IntroSlide.this.continueToOnboarding();
                        }
                    });
                    IntroSlide.this.mHandler.removeCallbacksAndMessages(null);
                }
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void continueToOnboarding() {
        if (this.mActivity.isFinishing() || this.mActivity.isDestroyed()) {
            return;
        }
        List<ImporterInfo> list = this.mImporterInfos;
        if (list == null || list.isEmpty()) {
            setupSlideLayoutForNoImport();
        } else {
            setupSlideLayoutForImportPopup();
        }
    }

    private int setupSlideLayoutForTutorial() {
        if (!PermissionsSlide.needsPermissions(this.mActivity)) {
            return 0;
        }
        SlideLayout slideLayout = this.mSlideLayout;
        slideLayout.addSlide(new PermissionsSlide((OnboardingActivity) this.mActivity, slideLayout), 1);
        return 1;
    }

    private void setupSlideLayoutForImportPopup() {
        int i = setupSlideLayoutForTutorial();
        ImporterInfo importerInfo = this.mImporterInfos.size() == 1 ? this.mImporterInfos.get(0) : null;
        SlideLayout slideLayout = this.mSlideLayout;
        int i2 = i + 0;
        int i3 = i2 + 2;
        slideLayout.addSlide(new ImportIntroSlide(this.mActivity, slideLayout, this.mDefaultItemData, importerInfo, i3, this.mLayoutSettingsManager), i2 + 1);
        SlideLayout slideLayout2 = this.mSlideLayout;
        slideLayout2.addSlide(new ImportSlide(this.mActivity, slideLayout2, this.mImporterInfos, this.mLayoutSettingsManager), i3);
        this.mSlideLayout.setDisplayedChild(1);
    }

    private void setupSlideLayoutForNoImport() {
        if (setupSlideLayoutForTutorial() > 0) {
            this.mSlideLayout.setDisplayedChild(1);
        } else {
            this.mActivity.finish();
        }
    }

    /* JADX INFO: renamed from: com.voxel.simplesearchlauncher.activity.onboarding.IntroSlide$3 */
    class C11703 implements Animator.AnimatorListener {
        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        C11703() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            IntroSlide.this.mVideoView.setDataSource(IntroSlide.this.mActivity, Uri.parse("android.resource://" + IntroSlide.this.mActivity.getPackageName() + "/" + R.raw.evie_intro));
            IntroSlide.this.mVideoView.setScaleType(TextureVideoView.ScaleType.CENTER_CROP);
            IntroSlide.this.mVideoView.play();
            IntroSlide.this.mVideoView.setListener(new AnonymousClass1());
        }

        /* JADX INFO: renamed from: com.voxel.simplesearchlauncher.activity.onboarding.IntroSlide$3$1, reason: invalid class name */
        class AnonymousClass1 implements TextureVideoView.MediaPlayerListener {
            @Override // com.voxel.simplesearchlauncher.view.TextureVideoView.MediaPlayerListener
            public void onVideoPrepared() {
            }

            AnonymousClass1() {
            }

            @Override // com.voxel.simplesearchlauncher.view.TextureVideoView.MediaPlayerListener
            public void onVideoEnd() {
                IntroSlide.this.mHandler.post(new Runnable() { // from class: com.voxel.simplesearchlauncher.activity.onboarding.-$$Lambda$IntroSlide$3$1$DXPsvFqoPa9mrd5GBeHu4LBPruA
                    @Override // java.lang.Runnable
                    public final void run() {
                        IntroSlide.C11703.AnonymousClass1.lambda$onVideoEnd$0(this.f$0);
                    }
                });
            }

            public static /* synthetic */ void lambda$onVideoEnd$0(AnonymousClass1 anonymousClass1) {
                if (IntroSlide.this.mImporterDataReady) {
                    if (IntroSlide.this.mSpinner instanceof CircularProgressView) {
                        ((CircularProgressView) IntroSlide.this.mSpinner).stopAnimation();
                    }
                    IntroSlide.this.mSpinner.setVisibility(4);
                    IntroSlide.this.continueToOnboarding();
                    return;
                }
                IntroSlide.this.mWaitStartTime = SystemClock.elapsedRealtime();
                IntroSlide.this.showSpinner().setListener(new Animator.AnimatorListener() { // from class: com.voxel.simplesearchlauncher.activity.onboarding.IntroSlide.3.1.1
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        IntroSlide.this.waitForImporters();
                    }
                });
            }
        }
    }

    @Override // com.voxel.simplesearchlauncher.view.Slide
    public AnimatorSet getSlideEnteringAnimation(SlideLayout slideLayout) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.addListener(new C11703());
        return animatorSet;
    }

    @Override // com.voxel.simplesearchlauncher.view.Slide
    public AnimatorSet getSlideExitingAnimation(SlideLayout slideLayout) {
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.mView, (Property<View, Float>) View.ALPHA, 1.0f, 0.0f);
        objectAnimatorOfFloat.setDuration(750L);
        animatorSet.play(objectAnimatorOfFloat);
        return animatorSet;
    }

    @Override // com.voxel.simplesearchlauncher.view.Slide
    public void onExitingSlide() {
        this.mVideoView.release();
    }
}
