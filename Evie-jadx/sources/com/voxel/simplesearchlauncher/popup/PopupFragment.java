package com.voxel.simplesearchlauncher.popup;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.service.notification.StatusBarNotification;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.FragmentActivity;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.evie.common.dragndrop.DragObjectAbstraction;
import com.evie.common.dragndrop.DragSource;
import com.voxel.launcher3.BubbleTextView;
import com.voxel.launcher3.DropTarget;
import com.voxel.launcher3.FolderInfo;
import com.voxel.launcher3.IconCache;
import com.voxel.launcher3.ItemInfo;
import com.voxel.launcher3.Launcher;
import com.voxel.launcher3.LauncherAppWidgetHost;
import com.voxel.launcher3.LauncherAppWidgetHostView;
import com.voxel.launcher3.LauncherAppWidgetInfo;
import com.voxel.launcher3.LauncherModel;
import com.voxel.launcher3.ShortcutInfo;
import com.voxel.launcher3.Utilities;
import com.voxel.launcher3.compat.UserHandleCompat;
import com.voxel.launcher3.dragndrop.DragController;
import com.voxel.launcher3.dragndrop.DragOptions;
import com.voxel.launcher3.shortcuts.DeepShortcutInfoCompat;
import com.voxel.launcher3.shortcuts.DeepShortcutManager;
import com.voxel.launcher3.shortcuts.ShortcutDragPreviewProvider;
import com.voxel.launcher3.shortcuts.ShortcutFilter;
import com.voxel.launcher3.util.ComponentKey;
import com.voxel.simplesearchlauncher.appoptions.AppOptionsFragment;
import com.voxel.simplesearchlauncher.fragment.LauncherStackableFragment;
import com.voxel.simplesearchlauncher.model.managers.SettingsStorage;
import com.voxel.simplesearchlauncher.notification.NotificationContent;
import com.voxel.simplesearchlauncher.notification.NotificationController;
import com.voxel.simplesearchlauncher.notification.NotificationKeyData;
import com.voxel.simplesearchlauncher.notification.Notifier;
import dagger.android.support.AndroidSupportInjection;
import io.reactivex.Completable;
import io.reactivex.functions.Action;
import io.reactivex.schedulers.Schedulers;
import is.shortcut.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class PopupFragment extends LauncherStackableFragment implements PopupContainerWithArrow.ActionHandler {

    @BindView
    View mBackgroundWash;
    DeepShortcutManager mDeepShortcutManager;
    private View mDeferredDragIcon;
    private DragController mDragController;
    private ItemInfo mItemInfo;
    private View mItemView;
    Launcher mLauncher;
    private DragSource mOriginalDragSource;

    @BindView
    PopupContainerWithArrow mPopupContainer;
    private View mSourceView;
    private int mStartDragThreshold;
    private Handler mUiHandler;
    private View.OnClickListener mNotificationOnClickListener = new View.OnClickListener() { // from class: com.voxel.simplesearchlauncher.popup.-$$Lambda$PopupFragment$xOrCwN7C03Xz7r31aFMUoxQC97g
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            PopupFragment.lambda$new$2(this.f$0, view);
        }
    };
    private View.OnClickListener mShortcutOnClickListener = new View.OnClickListener() { // from class: com.voxel.simplesearchlauncher.popup.-$$Lambda$PopupFragment$uiC1aOgw_fKyjMoaU6huPbfW4Yc
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) throws PackageManager.NameNotFoundException {
            PopupFragment.lambda$new$3(this.f$0, view);
        }
    };
    private DragController.DragListener mDragListener = new DragController.DragListener() { // from class: com.voxel.simplesearchlauncher.popup.PopupFragment.2
        @Override // com.voxel.launcher3.dragndrop.DragController.DragListener
        public void onDragStart(DropTarget.DragObject dragObject, DragOptions dragOptions) {
            PopupFragment.this.runExitAnimation();
        }

        @Override // com.voxel.launcher3.dragndrop.DragController.DragListener
        public void onDragEnd() {
            if (PopupFragment.this.mDeferredDragIcon != null) {
                PopupFragment.this.mDeferredDragIcon.setVisibility(0);
                PopupFragment.this.mDeferredDragIcon = null;
            }
            PopupFragment.this.mDragController.removeDragListener(this);
        }
    };
    private DragSource mDragSource = new DragSource() { // from class: com.voxel.simplesearchlauncher.popup.PopupFragment.3
        @Override // com.evie.common.dragndrop.DragSource
        public float getIntrinsicIconScaleFactor() {
            return 1.0f;
        }

        @Override // com.evie.common.dragndrop.DragSource
        public void onFlingToDeleteCompleted() {
        }

        @Override // com.evie.common.dragndrop.DragSource
        public boolean supportsFlingToDelete() {
            return false;
        }

        @Override // com.evie.common.dragndrop.DragSource
        public boolean supportsRemoveDropTarget() {
            return false;
        }

        @Override // com.evie.common.dragndrop.DragSource
        public void onDropCompleted(View view, DragObjectAbstraction dragObjectAbstraction, boolean z, boolean z2) {
            DropTarget.DragObject dragObject = (DropTarget.DragObject) dragObjectAbstraction;
            if (z2) {
                return;
            }
            dragObject.setDeferDragViewCleanupPostAnimation(false);
            PopupFragment.this.mLauncher.showWorkspace(true);
        }
    };
    private View.OnLongClickListener mShortcutOnLongClickListener = new View.OnLongClickListener() { // from class: com.voxel.simplesearchlauncher.popup.-$$Lambda$PopupFragment$zck-5hps8jAII1oY6Fae8d8l0P4
        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            return PopupFragment.lambda$new$5(this.f$0, view);
        }
    };
    private BroadcastReceiver mNotificationDismissedReceiver = new BroadcastReceiver() { // from class: com.voxel.simplesearchlauncher.popup.PopupFragment.5
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (PopupFragment.this.mItemInfo == null || PopupFragment.this.mItemInfo.getIntent() == null || PopupFragment.this.mItemInfo.getIntent().getComponent() == null) {
                return;
            }
            String packageName = PopupFragment.this.mItemInfo.getIntent().getComponent().getPackageName();
            List<NotificationKeyData> notificationKeys = Notifier.getInstance(context).getNotificationKeys(packageName);
            ArrayList arrayList = new ArrayList(notificationKeys.size());
            Iterator<NotificationKeyData> it = notificationKeys.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().notificationKey);
            }
            PopupFragment.this.mPopupContainer.trimNotifications(PopupFragment.this.mUiHandler, arrayList, Notifier.getInstance(PopupFragment.this.getContext()).getCount(packageName));
        }
    };

    public static boolean canProperlyShow(ItemInfo itemInfo) {
        return true;
    }

    @Override // com.voxel.simplesearchlauncher.fragment.LauncherStackableFragment
    public void focusFragment(boolean z) {
    }

    @Override // com.voxel.simplesearchlauncher.fragment.LauncherStackableFragment
    public void onPopLauncherStackedAppearance(FragmentActivity fragmentActivity, boolean z) {
    }

    @Override // com.voxel.simplesearchlauncher.fragment.LauncherStackableFragment
    public void onPushLauncherStackedAppearance(LauncherStackableFragment.OnFragmentInteractionListener onFragmentInteractionListener) {
    }

    @Override // com.voxel.simplesearchlauncher.fragment.LauncherStackableFragment
    public void unfocusFragment(boolean z) {
    }

    public enum Item {
        SHORTCUT(R.layout.popup_deep_shortcut_item, true),
        NOTIFICATION(R.layout.popup_notification_item, false),
        SYSTEM_SHORTCUT(R.layout.popup_deep_shortcut_item, true),
        SYSTEM_SHORTCUT_ICON(R.layout.popup_system_shortcut_icon_item, true);

        public final boolean isShortcut;
        public final int layoutId;

        Item(int i, boolean z) {
            this.layoutId = i;
            this.isShortcut = z;
        }
    }

    public PopupFragment() {
    }

    @SuppressLint({"ValidFragment"})
    public PopupFragment(View view, ItemInfo itemInfo, DragSource dragSource) {
        this.mSourceView = view;
        this.mItemInfo = itemInfo;
        this.mOriginalDragSource = dragSource;
    }

    @Override // com.voxel.simplesearchlauncher.fragment.LauncherStackableFragment, androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        AndroidSupportInjection.inject(this);
        super.onAttach(activity);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mStartDragThreshold = getResources().getDimensionPixelSize(R.dimen.deep_shortcuts_start_drag_threshold);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.mItemView = layoutInflater.inflate(R.layout.popup_fragment, viewGroup, false);
        return this.mItemView;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        if (getContext() == null || getActivity() == null) {
            throw new RuntimeException();
        }
        ButterKnife.bind(this, view);
        this.mLauncher = (Launcher) getActivity();
        this.mBackgroundWash.setOnClickListener(new View.OnClickListener() { // from class: com.voxel.simplesearchlauncher.popup.-$$Lambda$PopupFragment$ECUxpG8xO8JgDH2Tl5QuJM6QRds
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.runExitAnimation();
            }
        });
        deferDrag(this.mSourceView);
        View view2 = this.mSourceView;
        if (view2 instanceof BubbleTextView) {
            ((BubbleTextView) view2).setBadgeEnabled(false);
        }
        ItemInfo itemInfo = this.mItemInfo;
        if (itemInfo == null) {
            this.mDragController.removeDragListener(this.mDragListener);
            dismissWithoutAnimation();
            return;
        }
        Intent intent = itemInfo.getIntent();
        final ComponentName component = intent != null ? intent.getComponent() : null;
        final ArrayList arrayList = new ArrayList();
        if (this.mOriginalDragSource.supportsRemoveDropTarget()) {
            arrayList.add(SystemShortcut.REMOVE);
        }
        View view3 = this.mSourceView;
        if ((view3 instanceof LauncherAppWidgetHostView) && ((LauncherAppWidgetHostView) view3).getAppWidgetInfo() != null) {
            arrayList.add(SystemShortcut.RESIZE);
        }
        if (intent != null) {
            arrayList.add(SystemShortcut.APP_OPTIONS);
        }
        final ArrayList arrayList2 = new ArrayList();
        final ArrayList arrayList3 = new ArrayList();
        if (this.mItemInfo.itemType == 0) {
            arrayList2.addAll(this.mDeepShortcutManager.getShortcutIdsForComponentKey(new ComponentKey(this.mItemInfo.getTargetComponent(), this.mItemInfo.user)));
            arrayList3.addAll(Notifier.getInstance(getContext()).getNotificationKeys(this.mItemInfo.getTargetComponent().getPackageName()));
        }
        this.mPopupContainer.populateAndShow(this, this.mSourceView, this.mLauncher.getDragLayer(), getItemsToPopulate(arrayList2, arrayList, arrayList3), arrayList3.size());
        Looper workerLooper = LauncherModel.getWorkerLooper();
        this.mUiHandler = new Handler(Looper.getMainLooper());
        final UserHandleCompat userHandleCompat = this.mItemInfo.user;
        final Context context = getContext();
        final Notifier notifier = Notifier.getInstance(context);
        new Handler(workerLooper).postAtFrontOfQueue(new Runnable() { // from class: com.voxel.simplesearchlauncher.popup.-$$Lambda$PopupFragment$UdkXyvZalNfhaAtNif0t0ULpyUI
            @Override // java.lang.Runnable
            public final void run() {
                PopupFragment.lambda$onViewCreated$1(this.f$0, notifier, arrayList3, component, context, arrayList2, userHandleCompat, arrayList);
            }
        });
    }

    public static /* synthetic */ void lambda$onViewCreated$1(PopupFragment popupFragment, Notifier notifier, List list, ComponentName componentName, Context context, List list2, UserHandleCompat userHandleCompat, List list3) {
        List<StatusBarNotification> statusBarNotificationsForKeys = notifier.getStatusBarNotificationsForKeys(list);
        ArrayList arrayList = new ArrayList();
        int count = componentName != null ? notifier.getCount(componentName.getPackageName(), componentName.getClassName()) : 0;
        String shortcutId = null;
        for (StatusBarNotification statusBarNotification : statusBarNotificationsForKeys) {
            if (Utilities.isAtLeastO() && statusBarNotification.getNotification().getShortcutId() != null) {
                shortcutId = statusBarNotification.getNotification().getShortcutId();
            }
            arrayList.add(new NotificationContent(context, statusBarNotification));
        }
        ArrayList arrayList2 = new ArrayList();
        if (componentName != null) {
            arrayList2.addAll(ShortcutFilter.sortAndFilterShortcuts(popupFragment.mDeepShortcutManager.queryForShortcutsContainer(componentName, list2, userHandleCompat), shortcutId));
        }
        popupFragment.mPopupContainer.updateNotifications(popupFragment.mUiHandler, arrayList, count);
        popupFragment.mPopupContainer.updateShortcuts(popupFragment.mUiHandler, popupFragment.mDeepShortcutManager, arrayList2, list3);
    }

    public List<Item> getItemsToPopulate(List<String> list, List<SystemShortcut> list2, List<NotificationKeyData> list3) {
        ArrayList arrayList = new ArrayList();
        int iMin = Math.min(list.size(), 4);
        boolean z = list3.size() > 0;
        if (z && iMin > 2) {
            iMin = 2;
        }
        if (z) {
            arrayList.add(Item.NOTIFICATION);
        }
        for (int i = 0; i < iMin; i++) {
            arrayList.add(Item.SHORTCUT);
        }
        boolean z2 = !list.isEmpty();
        for (SystemShortcut systemShortcut : list2) {
            arrayList.add(z2 ? Item.SYSTEM_SHORTCUT_ICON : Item.SYSTEM_SHORTCUT);
        }
        return arrayList;
    }

    @Override // com.voxel.simplesearchlauncher.popup.PopupContainerWithArrow.ActionHandler
    public void registerShortcutActions(View view) {
        view.setOnClickListener(this.mShortcutOnClickListener);
        if (view instanceof ShortcutItemView) {
            ((ShortcutItemView) view).setOnLongClickListener(this.mShortcutOnLongClickListener);
        }
    }

    @Override // com.voxel.simplesearchlauncher.popup.PopupContainerWithArrow.ActionHandler
    public void registerNotificationActions(NotificationItemView notificationItemView) {
        notificationItemView.setOnClickListener(this.mNotificationOnClickListener);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        LocalBroadcastManager.getInstance(getContext()).registerReceiver(this.mNotificationDismissedReceiver, new IntentFilter("com.evie.notification_dismissed"));
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        LocalBroadcastManager.getInstance(getContext()).unregisterReceiver(this.mNotificationDismissedReceiver);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.mDragController.removeDragListener(this.mDragListener);
        View view = this.mSourceView;
        if (view instanceof BubbleTextView) {
            ((BubbleTextView) view).setBadgeEnabled(true);
        }
    }

    private void deferDrag(View view) {
        this.mDeferredDragIcon = view;
        this.mDragController = this.mLauncher.getDragController();
        this.mDragController.addDragListener(this.mDragListener);
    }

    private void startShortcutDrag(ShortcutItemView shortcutItemView) {
        this.mDragController.addDragListener(this.mDragListener);
        shortcutItemView.setIconVisible(false);
        Point point = new Point();
        point.x = shortcutItemView.mIconLastTouchPos.x - shortcutItemView.getIconCenter().x;
        point.y = shortcutItemView.mIconLastTouchPos.y - shortcutItemView.getIconView().getHeight();
        DragOptions dragOptions = new DragOptions();
        dragOptions.isDesktopLocked = SettingsStorage.getInstance().isDesktopLockedCurrently();
        this.mLauncher.getWorkspace().beginDragShared(shortcutItemView.getIconView(), this.mDragSource, shortcutItemView.getFinalInfo(), new ShortcutDragPreviewProvider(shortcutItemView.getIconView(), point), dragOptions).animateShiftFrom(-point.x, -point.y);
    }

    public DragOptions.DeferDragCondition createDeferDragCondition(final Runnable runnable) {
        return new DragOptions.DeferDragCondition() { // from class: com.voxel.simplesearchlauncher.popup.PopupFragment.1
            @Override // com.voxel.launcher3.dragndrop.DragOptions.DeferDragCondition
            public void onDropBeforeDeferredDrag() {
            }

            @Override // com.voxel.launcher3.dragndrop.DragOptions.DeferDragCondition
            public boolean shouldStartDeferredDrag(double d) {
                return d > ((double) PopupFragment.this.mStartDragThreshold);
            }

            @Override // com.voxel.launcher3.dragndrop.DragOptions.DeferDragCondition
            public void onDeferredDragStart() {
                if (PopupFragment.this.mDeferredDragIcon != null) {
                    PopupFragment.this.mDeferredDragIcon.setVisibility(4);
                }
            }

            @Override // com.voxel.launcher3.dragndrop.DragOptions.DeferDragCondition
            public void onDragStart() {
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        };
    }

    public static /* synthetic */ void lambda$new$2(PopupFragment popupFragment, View view) {
        NotificationContent notificationContent = ((NotificationItemView) view).getNotificationContent();
        try {
            notificationContent.intent.send();
        } catch (PendingIntent.CanceledException unused) {
        }
        if (notificationContent.autoCancel) {
            NotificationController.getInstance(popupFragment.getContext()).dismissNotification(notificationContent.notificationKey);
        }
        popupFragment.runExitAnimation();
    }

    public static /* synthetic */ void lambda$new$3(PopupFragment popupFragment, View view) throws PackageManager.NameNotFoundException {
        SystemShortcut systemShortcut;
        UnbadgedShortcutInfo unbadgedShortcutInfo = null;
        if (view instanceof ShortcutItemView) {
            ShortcutItemView shortcutItemView = (ShortcutItemView) view;
            unbadgedShortcutInfo = shortcutItemView.mInfo;
            systemShortcut = shortcutItemView.mSystemShortcut;
        } else {
            Object tag = view.getTag();
            systemShortcut = (tag == null || !(tag instanceof SystemShortcut)) ? null : (SystemShortcut) tag;
        }
        if (unbadgedShortcutInfo != null) {
            popupFragment.mLauncher.onClick(view);
            popupFragment.dismissWithoutAnimation();
        }
        if (systemShortcut == null) {
            popupFragment.dismissWithoutAnimation();
            return;
        }
        switch (systemShortcut) {
            case REMOVE:
                popupFragment.runExitAnimation();
                popupFragment.deleteItem(popupFragment.mItemInfo);
                popupFragment.mLauncher.getWorkspace().removeExtraEmptyScreen(true, true);
                break;
            case RESIZE:
                popupFragment.runExitAnimation();
                popupFragment.mLauncher.getDragLayer().addResizeFrame(popupFragment.mItemInfo, (LauncherAppWidgetHostView) popupFragment.mSourceView, popupFragment.mLauncher.getWorkspace().getCurrentDropLayout());
                break;
            case APP_OPTIONS:
                popupFragment.dismissWithoutAnimation();
                AppOptionsFragment appOptionsFragmentNewInstance = AppOptionsFragment.newInstance(popupFragment.mItemInfo);
                if (appOptionsFragmentNewInstance != null) {
                    popupFragment.mLauncher.pushStackFragment(appOptionsFragmentNewInstance);
                }
                break;
        }
    }

    private void deleteItem(ItemInfo itemInfo) {
        if (isWorkspaceOrFolderApplication(itemInfo)) {
            LauncherModel.deleteItemFromDatabase(this.mLauncher, itemInfo);
            this.mLauncher.removeViewForItemInfo(itemInfo);
            return;
        }
        if (isWorkspaceFolder(itemInfo)) {
            FolderInfo folderInfo = (FolderInfo) itemInfo;
            this.mLauncher.removeFolder(folderInfo);
            this.mLauncher.removeViewForItemInfo(itemInfo);
            LauncherModel.deleteFolderContentsFromDatabase(this.mLauncher, folderInfo);
            return;
        }
        if (isWorkspaceOrFolderWidget(itemInfo)) {
            final LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) itemInfo;
            this.mLauncher.removeAppWidget(launcherAppWidgetInfo);
            this.mLauncher.removeViewForItemInfo(itemInfo);
            LauncherModel.deleteItemFromDatabase(this.mLauncher, itemInfo);
            final LauncherAppWidgetHost appWidgetHost = this.mLauncher.getAppWidgetHost();
            if (appWidgetHost == null || !launcherAppWidgetInfo.isWidgetIdValid()) {
                return;
            }
            Completable.fromAction(new Action() { // from class: com.voxel.simplesearchlauncher.popup.-$$Lambda$PopupFragment$ropvpEB7RUnr4KlqhfJHfliYp4M
                @Override // io.reactivex.functions.Action
                public final void run() throws Exception {
                    PopupFragment.lambda$deleteItem$4(launcherAppWidgetInfo, appWidgetHost);
                }
            }).subscribeOn(Schedulers.m548io()).subscribe();
        }
    }

    static /* synthetic */ void lambda$deleteItem$4(LauncherAppWidgetInfo launcherAppWidgetInfo, LauncherAppWidgetHost launcherAppWidgetHost) throws Exception {
        Timber.m551d("================= Widget deleted " + launcherAppWidgetInfo.appWidgetId, new Object[0]);
        launcherAppWidgetHost.deleteAppWidgetId(launcherAppWidgetInfo.appWidgetId);
    }

    private boolean isDragSourceWorkspaceOrFolder(ItemInfo itemInfo) {
        return itemInfo.container != -1;
    }

    private boolean isWorkspaceOrFolderApplication(ItemInfo itemInfo) {
        return isDragSourceWorkspaceOrFolder(itemInfo) && (itemInfo instanceof ShortcutInfo);
    }

    private boolean isWorkspaceOrFolderWidget(ItemInfo itemInfo) {
        return isDragSourceWorkspaceOrFolder(itemInfo) && (itemInfo instanceof LauncherAppWidgetInfo);
    }

    private boolean isWorkspaceFolder(ItemInfo itemInfo) {
        return isDragSourceWorkspaceOrFolder(itemInfo) && (itemInfo instanceof FolderInfo);
    }

    public static /* synthetic */ boolean lambda$new$5(PopupFragment popupFragment, View view) {
        ShortcutItemView shortcutItemView = (ShortcutItemView) view;
        if (!shortcutItemView.isInTouchMode() || shortcutItemView.mInfo == null || !popupFragment.mLauncher.isDraggingEnabled() || popupFragment.mLauncher.getDragController().isDragging()) {
            return false;
        }
        popupFragment.startShortcutDrag(shortcutItemView);
        return false;
    }

    public void dismissWithoutAnimation() {
        notifyFragmentWillRequestClose();
        notifyFragmentRequestClose();
    }

    @Override // com.voxel.simplesearchlauncher.fragment.LauncherStackableFragment
    public void runExitAnimation() {
        notifyFragmentWillRequestClose();
        this.mPopupContainer.animateClose(new AnimatorListenerAdapter() { // from class: com.voxel.simplesearchlauncher.popup.PopupFragment.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                PopupFragment.this.notifyFragmentRequestClose();
            }
        });
    }

    static class UnbadgedShortcutInfo extends ShortcutInfo {
        public final DeepShortcutInfoCompat mDetail;

        @Override // com.voxel.launcher3.ShortcutInfo
        protected Bitmap getBadgedIcon(Bitmap bitmap, DeepShortcutInfoCompat deepShortcutInfoCompat, IconCache iconCache, Context context) {
            return bitmap;
        }

        public UnbadgedShortcutInfo(DeepShortcutInfoCompat deepShortcutInfoCompat, DeepShortcutManager deepShortcutManager, Context context) {
            super(deepShortcutInfoCompat, deepShortcutManager, context);
            this.mDetail = deepShortcutInfoCompat;
        }
    }
}
