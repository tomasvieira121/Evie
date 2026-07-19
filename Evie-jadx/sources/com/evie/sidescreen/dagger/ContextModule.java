package com.evie.sidescreen.dagger;

import android.content.Context;
import androidx.appcompat.view.ContextThemeWrapper;
import com.evie.sidescreen.R;
import uk.p007co.chrisjenx.calligraphy.CalligraphyContextWrapper;

/* JADX INFO: loaded from: classes.dex */
public class ContextModule {
    private final Context mContext;

    public ContextModule(Context context) {
        this.mContext = CalligraphyContextWrapper.wrap(new ContextThemeWrapper(context, R.style.SideScreenTheme));
    }

    Context providesContext() {
        return this.mContext;
    }
}
