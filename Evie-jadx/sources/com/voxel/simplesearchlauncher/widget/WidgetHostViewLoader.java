package com.voxel.simplesearchlauncher.widget;

import android.appwidget.AppWidgetHostView;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import com.voxel.launcher3.AppWidgetResizeFrame;
import com.voxel.launcher3.DropTarget;
import com.voxel.launcher3.Launcher;
import com.voxel.launcher3.Utilities;
import com.voxel.launcher3.compat.AppWidgetManagerCompat;
import com.voxel.launcher3.dragndrop.DragController;
import com.voxel.launcher3.dragndrop.DragLayer;
import com.voxel.launcher3.dragndrop.DragOptions;

/* JADX INFO: loaded from: classes2.dex */
public class WidgetHostViewLoader implements DragController.DragListener {
    final PendingAddWidgetInfo mInfo;
    Launcher mLauncher;
    final View mView;
    Runnable mInflateWidgetRunnable = null;
    private Runnable mBindWidgetRunnable = null;
    int mWidgetLoadingId = -1;
    Handler mHandler = new Handler();

    @Override // com.voxel.launcher3.dragndrop.DragController.DragListener
    public void onDragStart(DropTarget.DragObject dragObject, DragOptions dragOptions) {
    }

    public WidgetHostViewLoader(Launcher launcher, View view) {
        this.mLauncher = launcher;
        this.mView = view;
        this.mInfo = (PendingAddWidgetInfo) view.getTag();
    }

    @Override // com.voxel.launcher3.dragndrop.DragController.DragListener
    public void onDragEnd() {
        this.mLauncher.getDragController().removeDragListener(this);
        this.mHandler.removeCallbacks(this.mBindWidgetRunnable);
        this.mHandler.removeCallbacks(this.mInflateWidgetRunnable);
        if (this.mWidgetLoadingId != -1) {
            this.mLauncher.getAppWidgetHost().deleteAppWidgetId(this.mWidgetLoadingId);
            this.mWidgetLoadingId = -1;
        }
        if (this.mInfo.boundWidget != null) {
            this.mLauncher.getDragLayer().removeView(this.mInfo.boundWidget);
            this.mLauncher.getAppWidgetHost().deleteAppWidgetId(this.mInfo.boundWidget.getAppWidgetId());
            this.mInfo.boundWidget = null;
        }
    }

    public boolean preloadWidget() {
        final LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo = this.mInfo.info;
        if (launcherAppWidgetProviderInfo.isCustomWidget) {
            return false;
        }
        final Bundle defaultOptionsForWidget = getDefaultOptionsForWidget(this.mLauncher, this.mInfo);
        if (launcherAppWidgetProviderInfo.configure != null) {
            this.mInfo.bindOptions = defaultOptionsForWidget;
            return false;
        }
        this.mBindWidgetRunnable = new Runnable() { // from class: com.voxel.simplesearchlauncher.widget.-$$Lambda$WidgetHostViewLoader$nlp2ZLKLqgZ9X2vdNOJuWsRCqlA
            @Override // java.lang.Runnable
            public final void run() {
                WidgetHostViewLoader.lambda$preloadWidget$0(this.f$0, launcherAppWidgetProviderInfo, defaultOptionsForWidget);
            }
        };
        this.mInflateWidgetRunnable = new Runnable() { // from class: com.voxel.simplesearchlauncher.widget.-$$Lambda$WidgetHostViewLoader$3u0p7lLklpQSJBozmo9sA9okku0
            @Override // java.lang.Runnable
            public final void run() {
                WidgetHostViewLoader.lambda$preloadWidget$1(this.f$0, launcherAppWidgetProviderInfo);
            }
        };
        this.mHandler.post(this.mBindWidgetRunnable);
        return true;
    }

    public static /* synthetic */ void lambda$preloadWidget$0(WidgetHostViewLoader widgetHostViewLoader, LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo, Bundle bundle) {
        widgetHostViewLoader.mWidgetLoadingId = widgetHostViewLoader.mLauncher.getAppWidgetHost().allocateAppWidgetId();
        if (AppWidgetManagerCompat.getInstance(widgetHostViewLoader.mLauncher).bindAppWidgetIdIfAllowed(widgetHostViewLoader.mWidgetLoadingId, launcherAppWidgetProviderInfo, bundle)) {
            widgetHostViewLoader.mHandler.post(widgetHostViewLoader.mInflateWidgetRunnable);
        }
    }

    public static /* synthetic */ void lambda$preloadWidget$1(WidgetHostViewLoader widgetHostViewLoader, LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo) {
        if (widgetHostViewLoader.mWidgetLoadingId == -1) {
            return;
        }
        AppWidgetHostView appWidgetHostViewCreateView = widgetHostViewLoader.mLauncher.getAppWidgetHost().createView(widgetHostViewLoader.mLauncher, widgetHostViewLoader.mWidgetLoadingId, launcherAppWidgetProviderInfo);
        widgetHostViewLoader.mInfo.boundWidget = appWidgetHostViewCreateView;
        widgetHostViewLoader.mWidgetLoadingId = -1;
        appWidgetHostViewCreateView.setVisibility(4);
        int[] iArrEstimateItemSize = widgetHostViewLoader.mLauncher.getWorkspace().estimateItemSize(widgetHostViewLoader.mInfo.spanX, widgetHostViewLoader.mInfo.spanY, false);
        DragLayer.LayoutParams layoutParams = new DragLayer.LayoutParams(iArrEstimateItemSize[0], iArrEstimateItemSize[1]);
        layoutParams.f516y = 0;
        layoutParams.f515x = 0;
        layoutParams.customPosition = true;
        appWidgetHostViewCreateView.setLayoutParams(layoutParams);
        widgetHostViewLoader.mLauncher.getDragLayer().addView(appWidgetHostViewCreateView);
        widgetHostViewLoader.mView.setTag(widgetHostViewLoader.mInfo);
    }

    public static Bundle getDefaultOptionsForWidget(Launcher launcher, PendingAddWidgetInfo pendingAddWidgetInfo) {
        Rect rect = new Rect();
        if (!Utilities.ATLEAST_JB_MR1) {
            return null;
        }
        AppWidgetResizeFrame.getWidgetSizeRanges(launcher, pendingAddWidgetInfo.spanX, pendingAddWidgetInfo.spanY, rect);
        Rect defaultPaddingForWidget = AppWidgetHostView.getDefaultPaddingForWidget(launcher, pendingAddWidgetInfo.componentName, null);
        float f = launcher.getResources().getDisplayMetrics().density;
        int i = (int) ((defaultPaddingForWidget.left + defaultPaddingForWidget.right) / f);
        int i2 = (int) ((defaultPaddingForWidget.top + defaultPaddingForWidget.bottom) / f);
        Bundle bundle = new Bundle();
        bundle.putInt("appWidgetMinWidth", rect.left - i);
        bundle.putInt("appWidgetMinHeight", rect.top - i2);
        bundle.putInt("appWidgetMaxWidth", rect.right - i);
        bundle.putInt("appWidgetMaxHeight", rect.bottom - i2);
        return bundle;
    }
}
