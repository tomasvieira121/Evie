package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.view.View;
import androidx.collection.ArraySet;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.signin.SignInOptions;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class ClientSettings {
    private final Set<Scope> zabr;
    private final int zabt;
    private final View zabu;
    private final String zabv;
    private final String zabw;
    private final Set<Scope> zaoa;
    private final Map<Api<?>, OptionalApiSettings> zaob;
    private final SignInOptions zaoc;
    private Integer zaod;
    private final Account zax;

    public static final class OptionalApiSettings {
        public final Set<Scope> mScopes;
    }

    public ClientSettings(Account account, Set<Scope> set, Map<Api<?>, OptionalApiSettings> map, int i, View view, String str, String str2, SignInOptions signInOptions) {
        this.zax = account;
        this.zabr = set == null ? Collections.EMPTY_SET : Collections.unmodifiableSet(set);
        this.zaob = map == null ? Collections.EMPTY_MAP : map;
        this.zabu = view;
        this.zabt = i;
        this.zabv = str;
        this.zabw = str2;
        this.zaoc = signInOptions;
        HashSet hashSet = new HashSet(this.zabr);
        Iterator<OptionalApiSettings> it = this.zaob.values().iterator();
        while (it.hasNext()) {
            hashSet.addAll(it.next().mScopes);
        }
        this.zaoa = Collections.unmodifiableSet(hashSet);
    }

    public static final class Builder {
        private View zabu;
        private String zabv;
        private String zabw;
        private Map<Api<?>, OptionalApiSettings> zaob;
        private ArraySet<Scope> zaoe;
        private Account zax;
        private int zabt = 0;
        private SignInOptions zaoc = SignInOptions.DEFAULT;

        public final Builder setAccount(Account account) {
            this.zax = account;
            return this;
        }

        public final Builder addAllRequiredScopes(Collection<Scope> collection) {
            if (this.zaoe == null) {
                this.zaoe = new ArraySet<>();
            }
            this.zaoe.addAll(collection);
            return this;
        }

        public final Builder setRealClientPackageName(String str) {
            this.zabv = str;
            return this;
        }

        public final Builder setRealClientClassName(String str) {
            this.zabw = str;
            return this;
        }

        public final ClientSettings build() {
            return new ClientSettings(this.zax, this.zaoe, this.zaob, this.zabt, this.zabu, this.zabv, this.zabw, this.zaoc);
        }
    }

    @Nullable
    @Deprecated
    public final String getAccountName() {
        Account account = this.zax;
        if (account != null) {
            return account.name;
        }
        return null;
    }

    @Nullable
    public final Account getAccount() {
        return this.zax;
    }

    public final Account getAccountOrDefault() {
        Account account = this.zax;
        return account != null ? account : new Account("<<default account>>", "com.google");
    }

    public final Set<Scope> getRequiredScopes() {
        return this.zabr;
    }

    public final Set<Scope> getAllRequestedScopes() {
        return this.zaoa;
    }

    public final Map<Api<?>, OptionalApiSettings> getOptionalApiSettings() {
        return this.zaob;
    }

    @Nullable
    public final String getRealClientPackageName() {
        return this.zabv;
    }

    @Nullable
    public final String getRealClientClassName() {
        return this.zabw;
    }

    @Nullable
    public final SignInOptions getSignInOptions() {
        return this.zaoc;
    }

    @Nullable
    public final Integer getClientSessionId() {
        return this.zaod;
    }

    public final void setClientSessionId(Integer num) {
        this.zaod = num;
    }

    public final Set<Scope> getApplicableScopes(Api<?> api) {
        OptionalApiSettings optionalApiSettings = this.zaob.get(api);
        if (optionalApiSettings == null || optionalApiSettings.mScopes.isEmpty()) {
            return this.zabr;
        }
        HashSet hashSet = new HashSet(this.zabr);
        hashSet.addAll(optionalApiSettings.mScopes);
        return hashSet;
    }
}
