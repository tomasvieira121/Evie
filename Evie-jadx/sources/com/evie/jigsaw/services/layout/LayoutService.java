package com.evie.jigsaw.services.layout;

import android.net.Uri;
import com.evie.jigsaw.components.base.AbstractComponent;
import java.io.IOException;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes.dex */
public interface LayoutService {
    Call<AbstractComponent> resolve(Uri uri);

    public static abstract class ConstantCall implements Call<AbstractComponent> {
        @Override // retrofit2.Call
        public Response<AbstractComponent> execute() throws IOException {
            throw new IllegalStateException("Not implemented");
        }

        @Override // retrofit2.Call
        public void cancel() {
            throw new IllegalStateException("Not implemented");
        }

        @Override // retrofit2.Call
        public boolean isCanceled() {
            throw new IllegalStateException("Not implemented");
        }

        @Override // retrofit2.Call
        public Call<AbstractComponent> clone() {
            throw new IllegalStateException("Not implemented");
        }
    }

    public static final class SuccessCall extends ConstantCall {
        private final AbstractComponent component;

        public SuccessCall(AbstractComponent abstractComponent) {
            this.component = abstractComponent;
        }

        @Override // retrofit2.Call
        public void enqueue(Callback<AbstractComponent> callback) {
            callback.onResponse(this, Response.success(this.component));
        }
    }

    public static final class FailureCall extends ConstantCall {
        private final Throwable throwable;

        public FailureCall(Throwable th) {
            this.throwable = th;
        }

        @Override // retrofit2.Call
        public void enqueue(Callback<AbstractComponent> callback) {
            callback.onFailure(this, this.throwable);
        }
    }
}
