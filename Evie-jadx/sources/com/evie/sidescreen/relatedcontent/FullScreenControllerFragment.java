package com.evie.sidescreen.relatedcontent;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.DialogFragment;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.evie.sidescreen.R;
import com.evie.sidescreen.tiles.videos.VideoControlsViewHolder;

/* JADX INFO: loaded from: classes.dex */
public class FullScreenControllerFragment extends DialogFragment {
    private static final int ID_OATH = R.layout.ss_related_fullscreen_fragment;
    private static final int ID_YT = R.layout.ss_related_fullscreen_controller;

    @BindView
    View mContainer;
    private VideoControlsViewHolder mControllerViewHolder;

    @BindView
    View mControls;
    private Dialog mDialog;
    private OnFragmentInteractionListener mFragmentInteractionListener;
    private View mFragmentView;
    private boolean mIsPlayingAd = false;
    private FullScreenPeekyControls mPeekyControls;
    private long mPlayerDuration;
    private long mPlayerPosition;
    private boolean mPlayerShouldPlay;
    private boolean mShouldUseDialog;

    public interface OnFragmentInteractionListener {
        VideoControlsViewHolder getVideoControlsViewHolder();

        void onDialogBackPressed();
    }

    static FullScreenControllerFragment newInstance(boolean z, boolean z2, long j, long j2, boolean z3) {
        FullScreenControllerFragment fullScreenControllerFragment = new FullScreenControllerFragment();
        Bundle bundle = new Bundle();
        bundle.putBoolean("use_dialog", z);
        bundle.putBoolean("is_playing_ad", z2);
        bundle.putLong("player_position", j);
        bundle.putLong("player_duration", j2);
        bundle.putBoolean("player_should_play", z3);
        fullScreenControllerFragment.setArguments(bundle);
        return fullScreenControllerFragment;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof OnFragmentInteractionListener) {
            this.mFragmentInteractionListener = (OnFragmentInteractionListener) context;
            this.mControllerViewHolder = this.mFragmentInteractionListener.getVideoControlsViewHolder();
            Bundle arguments = getArguments();
            if (arguments != null) {
                this.mShouldUseDialog = arguments.getBoolean("use_dialog");
                this.mIsPlayingAd = arguments.getBoolean("is_playing_ad", false);
                this.mPlayerPosition = arguments.getLong("player_position", -1L);
                this.mPlayerDuration = arguments.getLong("player_duration", -1L);
                this.mPlayerShouldPlay = arguments.getBoolean("player_should_play", true);
                return;
            }
            return;
        }
        throw new RuntimeException(context.toString() + " must implement OnFragmentInteractionListener");
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        setShowsDialog(this.mShouldUseDialog);
        if (getShowsDialog()) {
            return null;
        }
        this.mFragmentView = layoutInflater.inflate(ID_OATH, viewGroup, false);
        ButterKnife.bind(this, this.mFragmentView);
        this.mControllerViewHolder.bindFullScreenControls(this.mFragmentView.findViewById(R.id.fullscreen_controller));
        this.mControllerViewHolder.setExpand(true);
        this.mPeekyControls = new FullScreenPeekyControls(getContext(), getActivity().getWindow(), this.mControls, this.mContainer, this.mControllerViewHolder.mHandler);
        return this.mFragmentView;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.mControllerViewHolder.setPosition(this.mPlayerPosition);
        this.mControllerViewHolder.setDuration(this.mPlayerDuration);
        this.mControllerViewHolder.setPlaying(this.mPlayerShouldPlay);
        if (getShowsDialog()) {
            return;
        }
        this.mPeekyControls.initialize(getContext());
        if (this.mIsPlayingAd) {
            turnOffControls();
        }
        this.mFragmentView.setSystemUiVisibility(4102);
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        this.mDialog = new FullScreenControllerDialog(getContext(), R.style.DialogTheme, this.mControllerViewHolder) { // from class: com.evie.sidescreen.relatedcontent.FullScreenControllerFragment.1
            @Override // android.app.Dialog
            public void onBackPressed() {
                FullScreenControllerFragment.this.mFragmentInteractionListener.onDialogBackPressed();
            }
        };
        this.mDialog.getWindow().addFlags(1024);
        return this.mDialog;
    }

    public void exitFullScreen() {
        if (getShowsDialog()) {
            ((FullScreenControllerDialog) this.mDialog).exitFullScreen();
            return;
        }
        this.mControllerViewHolder.bindSmallScreenControls();
        this.mPeekyControls.dispose();
        dismissAllowingStateLoss();
    }

    public void turnOffControls() {
        this.mIsPlayingAd = true;
        this.mPeekyControls.hideControls();
        this.mPeekyControls.setClickable(false);
    }

    public void turnOnControls() {
        this.mIsPlayingAd = false;
        this.mPeekyControls.setClickable(true);
    }
}
