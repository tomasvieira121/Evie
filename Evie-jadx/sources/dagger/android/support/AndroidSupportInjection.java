package dagger.android.support;

import android.util.Log;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import dagger.android.AndroidInjector;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidSupportInjection {
    public static void inject(Fragment fragment) {
        Preconditions.checkNotNull(fragment, "fragment");
        HasSupportFragmentInjector hasSupportFragmentInjectorFindHasFragmentInjector = findHasFragmentInjector(fragment);
        if (Log.isLoggable("dagger.android.support", 3)) {
            Log.d("dagger.android.support", String.format("An injector for %s was found in %s", fragment.getClass().getCanonicalName(), hasSupportFragmentInjectorFindHasFragmentInjector.getClass().getCanonicalName()));
        }
        AndroidInjector<Fragment> androidInjectorSupportFragmentInjector = hasSupportFragmentInjectorFindHasFragmentInjector.supportFragmentInjector();
        Preconditions.checkNotNull(androidInjectorSupportFragmentInjector, "%s.supportFragmentInjector() returned null", hasSupportFragmentInjectorFindHasFragmentInjector.getClass());
        androidInjectorSupportFragmentInjector.inject(fragment);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    private static HasSupportFragmentInjector findHasFragmentInjector(Fragment fragment) {
        Fragment parentFragment = fragment;
        do {
            parentFragment = parentFragment.getParentFragment();
            if (parentFragment == 0) {
                FragmentActivity activity = fragment.getActivity();
                if (activity instanceof HasSupportFragmentInjector) {
                    return (HasSupportFragmentInjector) activity;
                }
                if (activity.getApplication() instanceof HasSupportFragmentInjector) {
                    return (HasSupportFragmentInjector) activity.getApplication();
                }
                throw new IllegalArgumentException(String.format("No injector was found for %s", fragment.getClass().getCanonicalName()));
            }
        } while (!(parentFragment instanceof HasSupportFragmentInjector));
        return (HasSupportFragmentInjector) parentFragment;
    }
}
