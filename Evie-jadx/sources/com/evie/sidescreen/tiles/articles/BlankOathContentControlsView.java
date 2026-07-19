package com.evie.sidescreen.tiles.articles;

import android.content.Context;
import android.widget.FrameLayout;
import com.aol.mobile.sdk.controls.ContentControls;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class BlankOathContentControlsView extends FrameLayout implements ContentControls {
    @Override // com.aol.mobile.sdk.controls.ContentControls
    public void setListener(ContentControls.Listener listener) {
    }

    public BlankOathContentControlsView(Context context) {
        super(context);
        inflate(getContext(), R.layout.ss_oath_player_controls_overlay, this);
    }

    @Override // com.aol.mobile.sdk.controls.ContentControls
    public void render(ContentControls.ViewModel viewModel) {
        viewModel.isCastButtonVisible = false;
        viewModel.isNextButtonEnabled = false;
        viewModel.isNextButtonVisible = false;
        viewModel.isLiveIndicatorVisible = false;
        viewModel.isCompassViewVisible = false;
        viewModel.isPrevButtonEnabled = false;
        viewModel.isLoading = false;
        viewModel.isPlayButtonVisible = false;
        viewModel.isPauseButtonVisible = false;
        viewModel.isSeekerVisible = false;
        viewModel.isSeekForwardButtonVisible = false;
        viewModel.isSeekBackButtonVisible = false;
        viewModel.isTitleVisible = false;
        viewModel.isTrackChooserButtonVisible = false;
    }
}
