package com.evie.common.data;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.ObservableTransformer;
import io.reactivex.functions.Function;
import retrofit2.HttpException;
import retrofit2.Response;

/* JADX INFO: loaded from: classes.dex */
public class Lce<D> {
    private final D data;
    private final boolean error;
    private final Throwable errorData;
    private final boolean loading;
    private final String loadingSource;

    public String toString() {
        return "Lce(error=" + isError() + ", errorData=" + getErrorData() + ", loading=" + isLoading() + ", loadingSource=" + getLoadingSource() + ", data=" + getData() + ")";
    }

    private Lce(boolean z, Throwable th, boolean z2, String str, D d) {
        this.error = z;
        this.errorData = th;
        this.loading = z2;
        this.loadingSource = str;
        this.data = d;
    }

    public boolean isError() {
        return this.error;
    }

    public Throwable getErrorData() {
        return this.errorData;
    }

    public boolean isLoading() {
        return this.loading;
    }

    public String getLoadingSource() {
        return this.loadingSource;
    }

    public D getData() {
        return this.data;
    }

    public static <D> Lce<D> error(Throwable th) {
        return new Lce<>(true, th, false, null, null);
    }

    public static <D> Lce<D> loading(String str) {
        return new Lce<>(false, null, true, str, null);
    }

    public static <D> Lce<D> data(D d) {
        return new Lce<>(false, null, false, null, d);
    }

    public static <D> ObservableTransformer<Response<D>, Lce<D>> transformRequestToLce() {
        return transformRequestToLce(null);
    }

    public static <D> ObservableTransformer<Response<D>, Lce<D>> transformRequestToLce(final String str) {
        return new ObservableTransformer() { // from class: com.evie.common.data.-$$Lambda$Lce$7VSNivaRySqp8VttLY4dK4Sa9ME
            @Override // io.reactivex.ObservableTransformer
            public final ObservableSource apply(Observable observable) {
                return observable.map(new Function() { // from class: com.evie.common.data.-$$Lambda$Lce$5PPj1IxrEERE8Ui2ocHjXCbHJE8
                    @Override // io.reactivex.functions.Function
                    public final Object apply(Object obj) {
                        return Lce.lambda$null$0((Response) obj);
                    }
                }).startWith(Lce.loading(str)).onErrorReturn(new Function() { // from class: com.evie.common.data.-$$Lambda$By5LkKDJ1mjq-bZPHsJH5Ufz5vQ
                    @Override // io.reactivex.functions.Function
                    public final Object apply(Object obj) {
                        return Lce.error((Throwable) obj);
                    }
                });
            }
        };
    }

    static /* synthetic */ Lce lambda$null$0(Response response) throws Exception {
        if (response.isSuccessful()) {
            return data(response.body());
        }
        return error(new HttpException(response));
    }
}
