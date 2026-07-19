package com.voxel.simplesearchlauncher.activity.onboarding;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.app.Activity;
import android.app.WallpaperManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.util.Property;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.DecelerateInterpolator;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.voxel.launcher3.BubbleTextView;
import com.voxel.launcher3.CellLayout;
import com.voxel.launcher3.CellParams;
import com.voxel.launcher3.DeviceProfile;
import com.voxel.launcher3.DynamicGrid;
import com.voxel.launcher3.FolderIcon;
import com.voxel.launcher3.FolderInfo;
import com.voxel.launcher3.IconCache;
import com.voxel.launcher3.ItemInfo;
import com.voxel.launcher3.Launcher;
import com.voxel.launcher3.LauncherAppState;
import com.voxel.launcher3.LauncherAppWidgetInfo;
import com.voxel.launcher3.ShortcutInfo;
import com.voxel.launcher3.Utilities;
import com.voxel.recyclerview.widget.RecyclerView;
import com.voxel.simplesearchlauncher.importer.ImportData;
import com.voxel.simplesearchlauncher.importer.ImporterInfo;
import com.voxel.simplesearchlauncher.importer.LauncherImportHelper;
import com.voxel.simplesearchlauncher.model.managers.SettingsStorage;
import com.voxel.simplesearchlauncher.settings.LayoutSettingsManager;
import com.voxel.simplesearchlauncher.view.Slide;
import com.voxel.simplesearchlauncher.view.SlideLayout;
import com.voxel.simplesearchlauncher.view.SpringySearchView;
import is.shortcut.R;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ImportSlide extends Slide {
    private Activity mActivity;
    private MockLauncherAdapter mAdapter;
    private List<ImporterInfo> mImporterInfos;
    private TimeInterpolator mInterpolator;
    private LayoutSettingsManager mLayoutSettingsManager;
    private Button mNextButton;
    private SlideLayout mSlideLayout;
    private ViewPager mViewPager;

    public ImportSlide(final Activity activity, SlideLayout slideLayout, final List<ImporterInfo> list, LayoutSettingsManager layoutSettingsManager) {
        super(LayoutInflater.from(activity).inflate(R.layout.onboarding_import_slide, (ViewGroup) null));
        this.mInterpolator = new DecelerateInterpolator();
        this.mActivity = activity;
        this.mLayoutSettingsManager = layoutSettingsManager;
        this.mImporterInfos = list;
        this.mSlideLayout = slideLayout;
        this.mNextButton = (Button) this.mView.findViewById(R.id.onboarding_next_button);
        this.mViewPager = (ViewPager) this.mView.findViewById(R.id.onboarding_import_view_pager);
        this.mNextButton.setOnClickListener(new View.OnClickListener() { // from class: com.voxel.simplesearchlauncher.activity.onboarding.-$$Lambda$ImportSlide$ukHI-TqgHo_t_r6wkZUMsaRpWHE
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ImportSlide.lambda$new$0(this.f$0, activity, list, view);
            }
        });
        LauncherAppState.setApplicationContext(activity.getApplicationContext());
        this.mViewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.voxel.simplesearchlauncher.activity.onboarding.ImportSlide.1
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i, float f, int i2) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
                ImportSlide.this.mNextButton.setText(activity.getResources().getString(R.string.onboarding_import_button, ((ImporterInfo) list.get(i)).label));
            }
        });
        this.mViewPager.setOffscreenPageLimit(0);
    }

    public static /* synthetic */ void lambda$new$0(ImportSlide importSlide, Activity activity, List list, View view) {
        importSlide.doImport(activity, ((ImporterInfo) list.get(importSlide.mViewPager.getCurrentItem())).importData);
        activity.finish();
        importSlide.mNextButton.setOnClickListener(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupMockLauncher(View view, DeviceProfile deviceProfile, Context context, Drawable drawable) {
        CellParams cellParamsForType = deviceProfile.getCellParamsForType(DeviceProfile.ParamType.WORKSPACE);
        view.setLayerType(1, null);
        view.setDrawingCacheEnabled(true);
        View viewFindViewById = view.findViewById(R.id.qsb);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) viewFindViewById.getLayoutParams();
        layoutParams.gravity = 49;
        layoutParams.width = deviceProfile.searchBarSpaceWidthPx;
        layoutParams.height = deviceProfile.searchBarSpaceHeightPx;
        viewFindViewById.setPadding(deviceProfile.edgeMarginPx * 2, deviceProfile.getSearchBarTopOffset(), deviceProfile.edgeMarginPx * 2, 0);
        viewFindViewById.setLayoutParams(layoutParams);
        View viewFindViewById2 = view.findViewById(R.id.workspace);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) viewFindViewById2.getLayoutParams();
        layoutParams2.gravity = 17;
        Rect workspacePadding = deviceProfile.getWorkspacePadding();
        viewFindViewById2.setLayoutParams(layoutParams2);
        viewFindViewById2.setPadding(workspacePadding.left, workspacePadding.top, workspacePadding.right, workspacePadding.bottom);
        CellLayout cellLayout = (CellLayout) view.findViewById(R.id.cell_layout);
        cellLayout.setDeviceProfile(deviceProfile);
        cellLayout.setCellParams(cellParamsForType);
        cellLayout.setGridSize((int) cellParamsForType.numColumns, (int) cellParamsForType.numRows);
        SpringySearchView springySearchView = (SpringySearchView) view.findViewById(R.id.qsb_search);
        springySearchView.setFocusable(false);
        springySearchView.clearFocus();
        ((ImageView) view.findViewById(R.id.main_layer_background)).setImageDrawable(drawable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addItemsToMockLauncher(View view, Context context, DeviceProfile deviceProfile, List<ItemInfo> list, int i) {
        CellLayout cellLayout = (CellLayout) view.findViewById(R.id.cell_layout);
        IconCache iconCache = new IconCache(context);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        for (ItemInfo itemInfo : list) {
            if (itemInfo.container == -100 && itemInfo.screenId == i && itemInfo.cellX < cellLayout.getCountX() && itemInfo.cellY < cellLayout.getCountY()) {
                int i2 = itemInfo.itemType;
                if (i2 != 4) {
                    switch (i2) {
                        case 0:
                        case 1:
                            BubbleTextView bubbleTextView = (BubbleTextView) layoutInflaterFrom.inflate(R.layout.application, (ViewGroup) cellLayout, false);
                            bubbleTextView.setCellParams(cellLayout.getCellParams());
                            bubbleTextView.applyFromShortcutInfo((ShortcutInfo) itemInfo, iconCache, false, false);
                            if (itemInfo.container == -100 && cellLayout != null && cellLayout.isOccupied(itemInfo.cellX, itemInfo.cellY)) {
                                String str = "Collision while binding workspace item: " + itemInfo + ". Collides with " + cellLayout.getChildAt(itemInfo.cellX, itemInfo.cellY).getTag();
                            } else {
                                CellLayout.LayoutParams layoutParams = new CellLayout.LayoutParams(itemInfo.cellX, itemInfo.cellY, itemInfo.spanX, itemInfo.spanY);
                                bubbleTextView.setLayoutParams(layoutParams);
                                cellLayout.addViewToCellLayout(bubbleTextView, 0, Launcher.generateViewId(), layoutParams, true);
                            }
                            break;
                        case 2:
                            FolderIcon folderIconFromXml = FolderIcon.fromXml(R.layout.folder_icon, context, cellLayout, (FolderInfo) itemInfo, iconCache, deviceProfile, false);
                            CellLayout.LayoutParams layoutParams2 = new CellLayout.LayoutParams(itemInfo.cellX, itemInfo.cellY, itemInfo.spanX, itemInfo.spanY);
                            folderIconFromXml.setLayoutParams(layoutParams2);
                            cellLayout.addViewToCellLayout(folderIconFromXml, 0, Launcher.generateViewId(), layoutParams2, true);
                            break;
                    }
                } else {
                    LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) itemInfo;
                    ViewGroup viewGroup = (ViewGroup) layoutInflaterFrom.inflate(R.layout.onboarding_import_mock_widget, (ViewGroup) cellLayout, false);
                    BubbleTextView bubbleTextView2 = (BubbleTextView) viewGroup.findViewById(R.id.text);
                    Intent component = new Intent().setComponent(launcherAppWidgetInfo.providerName);
                    bubbleTextView2.setCompoundDrawables(null, Utilities.createIconDrawable(iconCache.getIcon(component, launcherAppWidgetInfo.user)), null, null);
                    bubbleTextView2.setCompoundDrawablePadding(cellLayout.getCellParams().getIconDrawablePaddingPx());
                    bubbleTextView2.setText(iconCache.getTitle(component, launcherAppWidgetInfo.user));
                    bubbleTextView2.setCellParams(cellLayout.getCellParams());
                    CellLayout.LayoutParams layoutParams3 = new CellLayout.LayoutParams(itemInfo.cellX, itemInfo.cellY, itemInfo.spanX, itemInfo.spanY);
                    layoutParams3.controlsOwnPadding = true;
                    viewGroup.setLayoutParams(layoutParams3);
                    cellLayout.addViewToCellLayout(viewGroup, 0, Launcher.generateViewId(), layoutParams3, true);
                }
            }
        }
    }

    public void doImport(Context context, ImportData importData) {
        LauncherImportHelper.importItems(context, importData, this.mLayoutSettingsManager);
        context.getSharedPreferences(LauncherAppState.getSharedPreferencesKey(), 0).edit().putBoolean("launcher.first_run_did_auto_import", true).apply();
    }

    @Override // com.voxel.simplesearchlauncher.view.Slide
    public void onEnteringSlide() {
        if (this.mAdapter == null) {
            this.mViewPager.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.voxel.simplesearchlauncher.activity.onboarding.ImportSlide.2
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    ImportSlide.this.mViewPager.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    ImportSlide importSlide = ImportSlide.this;
                    importSlide.mAdapter = importSlide.new MockLauncherAdapter(importSlide.mActivity, ImportSlide.this.mImporterInfos);
                    ImportSlide.this.mViewPager.setAdapter(ImportSlide.this.mAdapter);
                    ImportSlide.this.mNextButton.setText(ImportSlide.this.mActivity.getResources().getString(R.string.onboarding_import_button, ((ImporterInfo) ImportSlide.this.mImporterInfos.get(0)).label));
                    ImportSlide.this.mViewPager.setCurrentItem(0);
                }
            });
        }
    }

    @Override // com.voxel.simplesearchlauncher.view.Slide
    public AnimatorSet getSlideEnteringAnimation(SlideLayout slideLayout) {
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.mView, (Property<View, Float>) View.ALPHA, 0.0f, 1.0f);
        objectAnimatorOfFloat.setInterpolator(this.mInterpolator);
        objectAnimatorOfFloat.setDuration(750L);
        animatorSet.play(objectAnimatorOfFloat);
        return animatorSet;
    }

    @Override // com.voxel.simplesearchlauncher.view.Slide
    public AnimatorSet getSlideExitingAnimation(SlideLayout slideLayout) {
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.mView, (Property<View, Float>) View.ALPHA, 1.0f, 0.0f);
        objectAnimatorOfFloat.setInterpolator(this.mInterpolator);
        objectAnimatorOfFloat.setDuration(750L);
        animatorSet.play(objectAnimatorOfFloat);
        return animatorSet;
    }

    private class ImportViewHolder extends RecyclerView.ViewHolder {
        ImageView icon;
        ImageView mockLauncher;
        View view;

        public ImportViewHolder(View view) {
            super(view);
            this.view = view;
            this.mockLauncher = (ImageView) view.findViewById(R.id.onboarding_import_mock);
            this.icon = (ImageView) view.findViewById(R.id.onboarding_import_icon);
        }
    }

    private class MockLauncherAdapter extends PagerAdapter {
        List<ImporterInfo> mImporterInfos;
        float mScale;
        ImportViewHolder[] mViewHolders;

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(View view, Object obj) {
            return view == obj;
        }

        MockLauncherAdapter(Activity activity, List<ImporterInfo> list) {
            this.mImporterInfos = list;
            this.mViewHolders = new ImportViewHolder[this.mImporterInfos.size()];
            for (int i = 0; i < list.size() && i < 2; i++) {
                this.mViewHolders[i] = makeView(activity, i);
            }
            int dimensionPixelSize = activity.getResources().getDimensionPixelSize(R.dimen.onboarding_import_pager_item_padding);
            int dimensionPixelSize2 = activity.getResources().getDimensionPixelSize(R.dimen.onboarding_import_pager_padding);
            int height = (ImportSlide.this.mViewPager.getHeight() - (dimensionPixelSize * 2)) - activity.getResources().getDimensionPixelSize(R.dimen.onboarding_import_pager_item_bottom_margin);
            int width = ImportSlide.this.mViewPager.getWidth() - ((dimensionPixelSize + dimensionPixelSize2) * 2);
            Point point = new Point();
            Point point2 = new Point();
            Point point3 = new Point();
            Display defaultDisplay = ImportSlide.this.mActivity.getWindowManager().getDefaultDisplay();
            defaultDisplay.getCurrentSizeRange(point, point2);
            defaultDisplay.getRealSize(point3);
            defaultDisplay.getMetrics(new DisplayMetrics());
            this.mScale = Math.min(width / point3.x, height / point3.y);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i) {
            ImportViewHolder importViewHolderMakeView;
            ImportViewHolder[] importViewHolderArr = this.mViewHolders;
            if (importViewHolderArr[i] != null) {
                importViewHolderMakeView = importViewHolderArr[i];
                importViewHolderArr[i] = null;
            } else {
                importViewHolderMakeView = makeView(viewGroup.getContext(), i);
            }
            viewGroup.addView(importViewHolderMakeView.view);
            return importViewHolderMakeView.view;
        }

        private ImportViewHolder makeView(Context context, int i) {
            Drawable builtInDrawable;
            ImporterInfo importerInfo = this.mImporterInfos.get(i);
            LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
            final ImportViewHolder importViewHolder = ImportSlide.this.new ImportViewHolder(layoutInflaterFrom.inflate(R.layout.onboarding_import_card, (ViewGroup) null));
            importViewHolder.icon.setImageDrawable(importerInfo.icon);
            final View viewInflate = layoutInflaterFrom.inflate(R.layout.onboarding_import_mock_launcher, (ViewGroup) ImportSlide.this.mView, false);
            viewInflate.setFocusable(true);
            viewInflate.setFocusableInTouchMode(true);
            viewInflate.requestFocus();
            ((RelativeLayout) ImportSlide.this.mView).addView(viewInflate);
            WallpaperManager wallpaperManager = WallpaperManager.getInstance(context);
            try {
                builtInDrawable = wallpaperManager.getFastDrawable();
            } catch (RuntimeException unused) {
                builtInDrawable = wallpaperManager.getBuiltInDrawable();
            }
            Point point = new Point();
            Point point2 = new Point();
            Point point3 = new Point();
            Display defaultDisplay = ImportSlide.this.mActivity.getWindowManager().getDefaultDisplay();
            defaultDisplay.getCurrentSizeRange(point, point2);
            defaultDisplay.getRealSize(point3);
            DisplayMetrics displayMetrics = new DisplayMetrics();
            defaultDisplay.getMetrics(displayMetrics);
            CellParams cellParams = new CellParams();
            cellParams.numRows = importerInfo.importData.rows;
            cellParams.numColumns = importerInfo.importData.cols;
            cellParams.iconScale = importerInfo.importData.iconScale;
            cellParams.showLabels = true;
            HashMap map = new HashMap();
            map.put(DeviceProfile.ParamType.WORKSPACE, cellParams);
            DeviceProfile deviceProfile = new DynamicGrid(ImportSlide.this.mActivity.getApplicationContext(), ImportSlide.this.mActivity.getResources(), Math.min(point.x, point.y), Math.min(point2.x, point2.y), point3.x, point3.y, displayMetrics.widthPixels, displayMetrics.heightPixels, map, SettingsStorage.getInstance().getSearchBarDesktopEnabled()).getDeviceProfile();
            ImportSlide.this.setupMockLauncher(viewInflate, deviceProfile, context, builtInDrawable);
            ImportSlide.this.addItemsToMockLauncher(viewInflate, context, deviceProfile, importerInfo.importData.itemInfos, importerInfo.importData.mainScreenId);
            ImportSlide.this.mSlideLayout.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.voxel.simplesearchlauncher.activity.onboarding.ImportSlide.MockLauncherAdapter.1
                int preDrawTimes = 0;

                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    viewInflate.buildDrawingCache();
                    if (viewInflate.getDrawingCache() != null) {
                        this.preDrawTimes++;
                        if (this.preDrawTimes >= 2) {
                            ImportSlide.this.mSlideLayout.getViewTreeObserver().removeOnPreDrawListener(this);
                        }
                        Bitmap drawingCache = viewInflate.getDrawingCache();
                        BitmapDrawable bitmapDrawable = new BitmapDrawable(Bitmap.createScaledBitmap(drawingCache, Math.round(drawingCache.getWidth() * MockLauncherAdapter.this.mScale), Math.round(drawingCache.getHeight() * MockLauncherAdapter.this.mScale), true));
                        viewInflate.destroyDrawingCache();
                        ((RelativeLayout) ImportSlide.this.mView).removeView(viewInflate);
                        importViewHolder.mockLauncher.setImageDrawable(bitmapDrawable);
                    }
                    return true;
                }
            });
            return importViewHolder;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
            viewGroup.removeView((View) obj);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return this.mImporterInfos.size();
        }
    }
}
