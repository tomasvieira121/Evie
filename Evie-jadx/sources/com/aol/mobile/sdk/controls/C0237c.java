package com.aol.mobile.sdk.controls;

import com.aol.mobile.sdk.controls.view.ContentControlsView;

/* JADX INFO: renamed from: com.aol.mobile.sdk.controls.c */
/* JADX INFO: loaded from: classes.dex */
public final class C0237c {

    /* JADX INFO: renamed from: a */
    private final ContentControlsView f50a;

    /* JADX INFO: renamed from: c */
    private final a f52c = new b() { // from class: com.aol.mobile.sdk.controls.c.1
        @Override // com.aol.mobile.sdk.controls.C0237c.b, com.aol.mobile.sdk.controls.C0237c.a
        /* JADX INFO: renamed from: a */
        public void mo20a() {
            C0237c.this.f50a.startTimer();
            C0237c.this.f50a.show();
            C0237c c0237c = C0237c.this;
            c0237c.f51b = c0237c.f53d;
        }

        @Override // com.aol.mobile.sdk.controls.C0237c.b, com.aol.mobile.sdk.controls.C0237c.a
        /* JADX INFO: renamed from: b */
        public void mo21b() {
            C0237c.this.f50a.cancelTimer();
            C0237c.this.f50a.hide();
            C0237c c0237c = C0237c.this;
            c0237c.f51b = c0237c.f55f;
        }
    };

    /* JADX INFO: renamed from: d */
    private final a f53d = new b() { // from class: com.aol.mobile.sdk.controls.c.2
        @Override // com.aol.mobile.sdk.controls.C0237c.b, com.aol.mobile.sdk.controls.C0237c.a
        /* JADX INFO: renamed from: b */
        public void mo21b() {
            C0237c.this.f50a.cancelTimer();
            C0237c.this.f50a.hide();
            C0237c c0237c = C0237c.this;
            c0237c.f51b = c0237c.f54e;
        }

        @Override // com.aol.mobile.sdk.controls.C0237c.b, com.aol.mobile.sdk.controls.C0237c.a
        /* JADX INFO: renamed from: c */
        public void mo22c() {
            C0237c.this.f50a.cancelTimer();
            C0237c.this.f50a.show();
            C0237c c0237c = C0237c.this;
            c0237c.f51b = c0237c.f52c;
        }

        @Override // com.aol.mobile.sdk.controls.C0237c.b, com.aol.mobile.sdk.controls.C0237c.a
        /* JADX INFO: renamed from: d */
        public void mo23d() {
            C0237c.this.f50a.hide();
            C0237c c0237c = C0237c.this;
            c0237c.f51b = c0237c.f54e;
        }

        @Override // com.aol.mobile.sdk.controls.C0237c.b, com.aol.mobile.sdk.controls.C0237c.a
        /* JADX INFO: renamed from: e */
        public void mo24e() {
            C0237c.this.f50a.cancelTimer();
            C0237c.this.f50a.startTimer();
        }
    };

    /* JADX INFO: renamed from: e */
    private final a f54e = new b() { // from class: com.aol.mobile.sdk.controls.c.3
        @Override // com.aol.mobile.sdk.controls.C0237c.b, com.aol.mobile.sdk.controls.C0237c.a
        /* JADX INFO: renamed from: b */
        public void mo21b() {
            C0237c.this.f50a.startTimer();
            C0237c.this.f50a.show();
            C0237c c0237c = C0237c.this;
            c0237c.f51b = c0237c.f53d;
        }

        @Override // com.aol.mobile.sdk.controls.C0237c.b, com.aol.mobile.sdk.controls.C0237c.a
        /* JADX INFO: renamed from: c */
        public void mo22c() {
            C0237c.this.f50a.cancelTimer();
            C0237c.this.f50a.show();
            C0237c c0237c = C0237c.this;
            c0237c.f51b = c0237c.f52c;
        }
    };

    /* JADX INFO: renamed from: f */
    private final a f55f = new b() { // from class: com.aol.mobile.sdk.controls.c.4
        @Override // com.aol.mobile.sdk.controls.C0237c.b, com.aol.mobile.sdk.controls.C0237c.a
        /* JADX INFO: renamed from: a */
        public void mo20a() {
            C0237c.this.f50a.startTimer();
            C0237c.this.f50a.show();
            C0237c c0237c = C0237c.this;
            c0237c.f51b = c0237c.f53d;
        }

        @Override // com.aol.mobile.sdk.controls.C0237c.b, com.aol.mobile.sdk.controls.C0237c.a
        /* JADX INFO: renamed from: b */
        public void mo21b() {
            C0237c.this.f50a.cancelTimer();
            C0237c.this.f50a.show();
            C0237c c0237c = C0237c.this;
            c0237c.f51b = c0237c.f52c;
        }
    };

    /* JADX INFO: renamed from: b */
    private a f51b = this.f52c;

    /* JADX INFO: renamed from: com.aol.mobile.sdk.controls.c$a */
    interface a {
        /* JADX INFO: renamed from: a */
        void mo20a();

        /* JADX INFO: renamed from: b */
        void mo21b();

        /* JADX INFO: renamed from: c */
        void mo22c();

        /* JADX INFO: renamed from: d */
        void mo23d();

        /* JADX INFO: renamed from: e */
        void mo24e();
    }

    /* JADX INFO: renamed from: com.aol.mobile.sdk.controls.c$b */
    class b implements a {
        private b() {
        }

        @Override // com.aol.mobile.sdk.controls.C0237c.a
        /* JADX INFO: renamed from: a */
        public void mo20a() {
        }

        @Override // com.aol.mobile.sdk.controls.C0237c.a
        /* JADX INFO: renamed from: b */
        public void mo21b() {
        }

        @Override // com.aol.mobile.sdk.controls.C0237c.a
        /* JADX INFO: renamed from: c */
        public void mo22c() {
        }

        @Override // com.aol.mobile.sdk.controls.C0237c.a
        /* JADX INFO: renamed from: d */
        public void mo23d() {
        }

        @Override // com.aol.mobile.sdk.controls.C0237c.a
        /* JADX INFO: renamed from: e */
        public void mo24e() {
        }
    }

    public C0237c(ContentControlsView contentControlsView) {
        this.f50a = contentControlsView;
    }

    /* JADX INFO: renamed from: a */
    public void m15a() {
        this.f51b.mo20a();
    }

    /* JADX INFO: renamed from: b */
    public void m16b() {
        this.f51b.mo22c();
    }

    /* JADX INFO: renamed from: c */
    public void m17c() {
        this.f51b.mo21b();
    }

    /* JADX INFO: renamed from: d */
    public void m18d() {
        this.f51b.mo23d();
    }

    /* JADX INFO: renamed from: e */
    public void m19e() {
        this.f51b.mo24e();
    }
}
