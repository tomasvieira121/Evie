package com.evie.sidescreen.tiles.videos;

import android.view.View;
import android.widget.CompoundButton;
import androidx.appcompat.widget.SwitchCompat;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class AutoplayViewHolder_ViewBinding implements Unbinder {
    private AutoplayViewHolder target;
    private View view7f0b003d;

    public AutoplayViewHolder_ViewBinding(final AutoplayViewHolder autoplayViewHolder, View view) {
        this.target = autoplayViewHolder;
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.autoplay, "field 'mAutoplaySwitch' and method 'onCheckedChanged'");
        autoplayViewHolder.mAutoplaySwitch = (SwitchCompat) Utils.castView(viewFindRequiredView, R.id.autoplay, "field 'mAutoplaySwitch'", SwitchCompat.class);
        this.view7f0b003d = viewFindRequiredView;
        ((CompoundButton) viewFindRequiredView).setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.evie.sidescreen.tiles.videos.AutoplayViewHolder_ViewBinding.1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                autoplayViewHolder.onCheckedChanged(compoundButton, z);
            }
        });
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        AutoplayViewHolder autoplayViewHolder = this.target;
        if (autoplayViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        autoplayViewHolder.mAutoplaySwitch = null;
        ((CompoundButton) this.view7f0b003d).setOnCheckedChangeListener(null);
        this.view7f0b003d = null;
    }
}
