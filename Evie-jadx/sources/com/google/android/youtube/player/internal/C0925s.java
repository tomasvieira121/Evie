package com.google.android.youtube.player.internal;

import android.content.res.Configuration;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.KeyEvent;
import android.view.View;
import com.google.android.youtube.player.YouTubePlayer;

/* JADX INFO: renamed from: com.google.android.youtube.player.internal.s */
/* JADX INFO: loaded from: classes.dex */
public final class C0925s implements YouTubePlayer {

    /* JADX INFO: renamed from: a */
    private InterfaceC0909b f491a;

    /* JADX INFO: renamed from: b */
    private InterfaceC0911d f492b;

    public C0925s(InterfaceC0909b interfaceC0909b, InterfaceC0911d interfaceC0911d) {
        this.f491a = (InterfaceC0909b) C0907ab.m397a(interfaceC0909b, "connectionClient cannot be null");
        this.f492b = (InterfaceC0911d) C0907ab.m397a(interfaceC0911d, "embeddedPlayer cannot be null");
    }

    /* JADX INFO: renamed from: a */
    public final View m506a() {
        try {
            return (View) BinderC0928v.m522a(this.f492b.mo445s());
        } catch (RemoteException e) {
            throw new C0923q(e);
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m507a(Configuration configuration) {
        try {
            this.f492b.mo405a(configuration);
        } catch (RemoteException e) {
            throw new C0923q(e);
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m508a(boolean z) {
        try {
            this.f492b.mo414a(z);
            this.f491a.mo401a(z);
            this.f491a.mo485d();
        } catch (RemoteException e) {
            throw new C0923q(e);
        }
    }

    /* JADX INFO: renamed from: a */
    public final boolean m509a(int i, KeyEvent keyEvent) {
        try {
            return this.f492b.mo415a(i, keyEvent);
        } catch (RemoteException e) {
            throw new C0923q(e);
        }
    }

    /* JADX INFO: renamed from: a */
    public final boolean m510a(Bundle bundle) {
        try {
            return this.f492b.mo416a(bundle);
        } catch (RemoteException e) {
            throw new C0923q(e);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void addFullscreenControlFlag(int i) {
        try {
            this.f492b.mo427d(i);
        } catch (RemoteException e) {
            throw new C0923q(e);
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m511b() {
        try {
            this.f492b.mo439m();
        } catch (RemoteException e) {
            throw new C0923q(e);
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m512b(boolean z) {
        try {
            this.f492b.mo430e(z);
        } catch (RemoteException e) {
            throw new C0923q(e);
        }
    }

    /* JADX INFO: renamed from: b */
    public final boolean m513b(int i, KeyEvent keyEvent) {
        try {
            return this.f492b.mo423b(i, keyEvent);
        } catch (RemoteException e) {
            throw new C0923q(e);
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m514c() {
        try {
            this.f492b.mo440n();
        } catch (RemoteException e) {
            throw new C0923q(e);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void cueVideo(String str) {
        cueVideo(str, 0);
    }

    public final void cueVideo(String str, int i) {
        try {
            this.f492b.mo411a(str, i);
        } catch (RemoteException e) {
            throw new C0923q(e);
        }
    }

    /* JADX INFO: renamed from: d */
    public final void m515d() {
        try {
            this.f492b.mo441o();
        } catch (RemoteException e) {
            throw new C0923q(e);
        }
    }

    /* JADX INFO: renamed from: e */
    public final void m516e() {
        try {
            this.f492b.mo442p();
        } catch (RemoteException e) {
            throw new C0923q(e);
        }
    }

    /* JADX INFO: renamed from: f */
    public final void m517f() {
        try {
            this.f492b.mo443q();
        } catch (RemoteException e) {
            throw new C0923q(e);
        }
    }

    /* JADX INFO: renamed from: g */
    public final void m518g() {
        try {
            this.f492b.mo438l();
        } catch (RemoteException e) {
            throw new C0923q(e);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final int getCurrentTimeMillis() {
        try {
            return this.f492b.mo434h();
        } catch (RemoteException e) {
            throw new C0923q(e);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final int getDurationMillis() {
        try {
            return this.f492b.mo435i();
        } catch (RemoteException e) {
            throw new C0923q(e);
        }
    }

    /* JADX INFO: renamed from: h */
    public final Bundle m519h() {
        try {
            return this.f492b.mo444r();
        } catch (RemoteException e) {
            throw new C0923q(e);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final boolean isPlaying() {
        try {
            return this.f492b.mo426c();
        } catch (RemoteException e) {
            throw new C0923q(e);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void loadVideo(String str) {
        loadVideo(str, 0);
    }

    public final void loadVideo(String str, int i) {
        try {
            this.f492b.mo419b(str, i);
        } catch (RemoteException e) {
            throw new C0923q(e);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void pause() {
        try {
            this.f492b.mo417b();
        } catch (RemoteException e) {
            throw new C0923q(e);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void play() {
        try {
            this.f492b.mo403a();
        } catch (RemoteException e) {
            throw new C0923q(e);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void release() {
        m508a(true);
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void seekToMillis(int i) {
        try {
            this.f492b.mo404a(i);
        } catch (RemoteException e) {
            throw new C0923q(e);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void setFullscreen(boolean z) {
        try {
            this.f492b.mo422b(z);
        } catch (RemoteException e) {
            throw new C0923q(e);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void setOnFullscreenListener(final YouTubePlayer.OnFullscreenListener onFullscreenListener) {
        try {
            this.f492b.mo406a(new InterfaceC0912e.a() { // from class: com.google.android.youtube.player.internal.s.1
                @Override // com.google.android.youtube.player.internal.InterfaceC0912e
                /* JADX INFO: renamed from: a */
                public final void mo447a(boolean z) {
                    onFullscreenListener.onFullscreen(z);
                }
            });
        } catch (RemoteException e) {
            throw new C0923q(e);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void setPlayerStateChangeListener(final YouTubePlayer.PlayerStateChangeListener playerStateChangeListener) {
        try {
            this.f492b.mo408a(new InterfaceC0914g.a() { // from class: com.google.android.youtube.player.internal.s.3
                @Override // com.google.android.youtube.player.internal.InterfaceC0914g
                /* JADX INFO: renamed from: a */
                public final void mo453a() {
                    playerStateChangeListener.onLoading();
                }

                @Override // com.google.android.youtube.player.internal.InterfaceC0914g
                /* JADX INFO: renamed from: a */
                public final void mo454a(String str) {
                    playerStateChangeListener.onLoaded(str);
                }

                @Override // com.google.android.youtube.player.internal.InterfaceC0914g
                /* JADX INFO: renamed from: b */
                public final void mo455b() {
                    playerStateChangeListener.onAdStarted();
                }

                @Override // com.google.android.youtube.player.internal.InterfaceC0914g
                /* JADX INFO: renamed from: b */
                public final void mo456b(String str) {
                    YouTubePlayer.ErrorReason errorReasonValueOf;
                    try {
                        errorReasonValueOf = YouTubePlayer.ErrorReason.valueOf(str);
                    } catch (IllegalArgumentException | NullPointerException unused) {
                        errorReasonValueOf = YouTubePlayer.ErrorReason.UNKNOWN;
                    }
                    playerStateChangeListener.onError(errorReasonValueOf);
                }

                @Override // com.google.android.youtube.player.internal.InterfaceC0914g
                /* JADX INFO: renamed from: c */
                public final void mo457c() {
                    playerStateChangeListener.onVideoStarted();
                }

                @Override // com.google.android.youtube.player.internal.InterfaceC0914g
                /* JADX INFO: renamed from: d */
                public final void mo458d() {
                    playerStateChangeListener.onVideoEnded();
                }
            });
        } catch (RemoteException e) {
            throw new C0923q(e);
        }
    }

    @Override // com.google.android.youtube.player.YouTubePlayer
    public final void setPlayerStyle(YouTubePlayer.PlayerStyle playerStyle) {
        try {
            this.f492b.mo410a(playerStyle.name());
        } catch (RemoteException e) {
            throw new C0923q(e);
        }
    }
}
