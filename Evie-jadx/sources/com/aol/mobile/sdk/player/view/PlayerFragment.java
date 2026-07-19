package com.aol.mobile.sdk.player.view;

import android.app.Fragment;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.aol.mobile.sdk.C0233R;
import com.aol.mobile.sdk.annotations.PublicApi;
import com.aol.mobile.sdk.player.Binder;

/* JADX INFO: loaded from: classes.dex */
@PublicApi
public final class PlayerFragment extends Fragment {
    private final Binder binder = new Binder();
    private PlayerView playerView;

    public final Binder getBinder() {
        return this.binder;
    }

    public PlayerView getPlayerView() {
        return this.playerView;
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.playerView = (PlayerView) layoutInflater.inflate(C0233R.layout.fragment_player, viewGroup);
        this.binder.setPlayerView(this.playerView);
        return this.playerView;
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        this.binder.onResume();
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        this.binder.onPause();
    }

    @Override // android.app.Fragment
    public void onDestroyView() {
        this.playerView.dispose();
        this.binder.setPlayerView(null);
        this.playerView = null;
        super.onDestroyView();
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        this.binder.onDestroy();
        super.onDestroy();
    }
}
