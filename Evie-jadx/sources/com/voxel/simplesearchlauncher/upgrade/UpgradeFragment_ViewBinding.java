package com.voxel.simplesearchlauncher.upgrade;

import android.view.View;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import is.shortcut.R;

/* JADX INFO: loaded from: classes2.dex */
public class UpgradeFragment_ViewBinding implements Unbinder {
    private UpgradeFragment target;

    public UpgradeFragment_ViewBinding(UpgradeFragment upgradeFragment, View view) {
        this.target = upgradeFragment;
        upgradeFragment.mContainer = Utils.findRequiredView(view, R.id.container, "field 'mContainer'");
        upgradeFragment.mBackground = Utils.findRequiredView(view, R.id.background, "field 'mBackground'");
        upgradeFragment.mCloseButton = Utils.findRequiredView(view, R.id.close_button, "field 'mCloseButton'");
        upgradeFragment.mDoneButton = Utils.findRequiredView(view, R.id.done_button, "field 'mDoneButton'");
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        UpgradeFragment upgradeFragment = this.target;
        if (upgradeFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        upgradeFragment.mContainer = null;
        upgradeFragment.mBackground = null;
        upgradeFragment.mCloseButton = null;
        upgradeFragment.mDoneButton = null;
    }
}
