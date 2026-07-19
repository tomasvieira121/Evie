package com.evie.sidescreen.tiles.videos;

import android.view.View;
import android.widget.CompoundButton;
import androidx.appcompat.widget.SwitchCompat;
import butterknife.BindView;
import butterknife.OnCheckedChanged;
import com.evie.sidescreen.R;
import com.evie.sidescreen.mvp.MvpViewHolder;

/* JADX INFO: loaded from: classes.dex */
public class AutoplayViewHolder extends MvpViewHolder<AutoplayPresenter> {

    /* JADX INFO: renamed from: ID */
    public static final int f369ID = R.layout.tile_autoplay;

    @BindView
    SwitchCompat mAutoplaySwitch;
    private boolean mInitialized;

    public AutoplayViewHolder(View view) {
        super(view);
        this.mInitialized = false;
    }

    public void setAutoplay(boolean z) {
        this.mAutoplaySwitch.setChecked(z);
        this.mInitialized = true;
    }

    @OnCheckedChanged
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (this.mInitialized) {
            ((AutoplayPresenter) this.mPresenter).onCheckedChanged(z);
        }
    }
}
