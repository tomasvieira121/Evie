package dagger.android;

/* JADX INFO: loaded from: classes.dex */
public interface AndroidInjector<T> {

    /* JADX INFO: loaded from: classes2.dex */
    public interface Factory<T> {
        AndroidInjector<T> create(T t);
    }

    void inject(T t);

    /* JADX INFO: loaded from: classes2.dex */
    public static abstract class Builder<T> implements Factory<T> {
        public abstract AndroidInjector<T> build();

        public abstract void seedInstance(T t);

        @Override // dagger.android.AndroidInjector.Factory
        public final AndroidInjector<T> create(T t) {
            seedInstance(t);
            return build();
        }
    }
}
