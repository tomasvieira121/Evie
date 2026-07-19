package dagger.android;

import android.app.Activity;
import android.app.Service;
import android.content.ComponentCallbacks2;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidInjection {
    public static void inject(Activity activity) {
        Preconditions.checkNotNull(activity, "activity");
        ComponentCallbacks2 application = activity.getApplication();
        if (!(application instanceof HasActivityInjector)) {
            throw new RuntimeException(String.format("%s does not implement %s", application.getClass().getCanonicalName(), HasActivityInjector.class.getCanonicalName()));
        }
        AndroidInjector<Activity> androidInjectorActivityInjector = ((HasActivityInjector) application).activityInjector();
        Preconditions.checkNotNull(androidInjectorActivityInjector, "%s.activityInjector() returned null", application.getClass());
        androidInjectorActivityInjector.inject(activity);
    }

    public static void inject(Service service) {
        Preconditions.checkNotNull(service, "service");
        ComponentCallbacks2 application = service.getApplication();
        if (!(application instanceof HasServiceInjector)) {
            throw new RuntimeException(String.format("%s does not implement %s", application.getClass().getCanonicalName(), HasServiceInjector.class.getCanonicalName()));
        }
        AndroidInjector<Service> androidInjectorServiceInjector = ((HasServiceInjector) application).serviceInjector();
        Preconditions.checkNotNull(androidInjectorServiceInjector, "%s.serviceInjector() returned null", application.getClass());
        androidInjectorServiceInjector.inject(service);
    }
}
