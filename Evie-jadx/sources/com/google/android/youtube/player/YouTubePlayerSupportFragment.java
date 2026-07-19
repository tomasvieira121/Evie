package com.google.android.youtube.player;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.google.android.youtube.player.internal.C0907ab;

/* JADX INFO: loaded from: classes.dex */
public class YouTubePlayerSupportFragment extends Fragment implements YouTubePlayer.Provider {

    /* JADX INFO: renamed from: a */
    private final C0901a f421a = new C0901a(this, 0);

    /* JADX INFO: renamed from: b */
    private Bundle f422b;

    /* JADX INFO: renamed from: c */
    private YouTubePlayerView f423c;

    /* JADX INFO: renamed from: d */
    private String f424d;

    /* JADX INFO: renamed from: e */
    private YouTubePlayer.OnInitializedListener f425e;

    /* JADX INFO: renamed from: f */
    private boolean f426f;

    /* JADX INFO: renamed from: com.google.android.youtube.player.YouTubePlayerSupportFragment$a */
    private final class C0901a implements YouTubePlayerView.InterfaceC0905b {
        private C0901a() {
        }

        /* synthetic */ C0901a(YouTubePlayerSupportFragment youTubePlayerSupportFragment, byte b) {
            this();
        }

        @Override // com.google.android.youtube.player.YouTubePlayerView.InterfaceC0905b
        /* JADX INFO: renamed from: a */
        public final void mo366a(YouTubePlayerView youTubePlayerView) {
        }
    }

    /* JADX INFO: renamed from: a */
    private void m365a() {
        YouTubePlayerView youTubePlayerView = this.f423c;
        if (youTubePlayerView == null || this.f425e == null) {
            return;
        }
        youTubePlayerView.m382a(this.f426f);
        this.f423c.m381a(getActivity(), this, this.f424d, this.f425e, this.f422b);
        this.f422b = null;
        this.f425e = null;
    }

    public void initialize(String str, YouTubePlayer.OnInitializedListener onInitializedListener) {
        this.f424d = C0907ab.m398a(str, (Object) "Developer key cannot be null or empty");
        this.f425e = onInitializedListener;
        m365a();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f422b = bundle != null ? bundle.getBundle("YouTubePlayerSupportFragment.KEY_PLAYER_VIEW_STATE") : null;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f423c = new YouTubePlayerView(getActivity(), null, 0, this.f421a);
        m365a();
        return this.f423c;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        if (this.f423c != null) {
            FragmentActivity activity = getActivity();
            this.f423c.m384b(activity == null || activity.isFinishing());
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f423c.m386c(getActivity().isFinishing());
        this.f423c = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        this.f423c.m385c();
        super.onPause();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.f423c.m383b();
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        YouTubePlayerView youTubePlayerView = this.f423c;
        bundle.putBundle("YouTubePlayerSupportFragment.KEY_PLAYER_VIEW_STATE", youTubePlayerView != null ? youTubePlayerView.m388e() : this.f422b);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.f423c.m380a();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        this.f423c.m387d();
        super.onStop();
    }
}
