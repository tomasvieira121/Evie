package com.voxel.simplesearchlauncher.upgrade;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.view.animation.PathInterpolatorCompat;
import androidx.fragment.app.FragmentActivity;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.facebook.drawee.view.SimpleDraweeView;
import com.voxel.simplesearchlauncher.fragment.LauncherStackableFragment;
import com.voxel.simplesearchlauncher.model.managers.SettingsStorage;
import com.voxel.simplesearchlauncher.view.TextureVideoView;
import is.shortcut.R;

/* JADX INFO: loaded from: classes2.dex */
public class UpgradeFragment extends LauncherStackableFragment {
    private static final TimeInterpolator INTERPOLATOR = PathInterpolatorCompat.create(0.35f, 0.77f, 0.19f, 1.0f);
    private static final TimeInterpolator REVERSE_INTERPOLATOR = PathInterpolatorCompat.create(0.81f, 0.0f, 0.65f, 0.23f);

    @BindView
    View mBackground;

    @BindView
    View mCloseButton;

    @BindView
    View mContainer;

    @BindView
    View mDoneButton;
    FeatureSection mFeed;
    FeatureSection mGestures;
    View mItemView;
    FeatureSection mSearchBar;

    @Override // com.voxel.simplesearchlauncher.fragment.LauncherStackableFragment
    public void focusFragment(boolean z) {
    }

    @Override // com.voxel.simplesearchlauncher.fragment.LauncherStackableFragment
    public void onPopLauncherStackedAppearance(FragmentActivity fragmentActivity, boolean z) {
    }

    @Override // com.voxel.simplesearchlauncher.fragment.LauncherStackableFragment
    public void onPushLauncherStackedAppearance(LauncherStackableFragment.OnFragmentInteractionListener onFragmentInteractionListener) {
    }

    @Override // com.voxel.simplesearchlauncher.fragment.LauncherStackableFragment
    public void unfocusFragment(boolean z) {
    }

    public class FeatureSection_ViewBinding implements Unbinder {
        private FeatureSection target;

        public FeatureSection_ViewBinding(FeatureSection featureSection, View view) {
            this.target = featureSection;
            featureSection.mTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.title, "field 'mTitle'", TextView.class);
            featureSection.mDescription = (TextView) Utils.findRequiredViewAsType(view, R.id.description, "field 'mDescription'", TextView.class);
            featureSection.mImage = (SimpleDraweeView) Utils.findRequiredViewAsType(view, R.id.image, "field 'mImage'", SimpleDraweeView.class);
            featureSection.mVideo = (TextureVideoView) Utils.findRequiredViewAsType(view, R.id.video, "field 'mVideo'", TextureVideoView.class);
        }

        @Override // butterknife.Unbinder
        public void unbind() {
            FeatureSection featureSection = this.target;
            if (featureSection == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.target = null;
            featureSection.mTitle = null;
            featureSection.mDescription = null;
            featureSection.mImage = null;
            featureSection.mVideo = null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.mItemView = layoutInflater.inflate(R.layout.upgrade_fragment, viewGroup, false);
        return this.mItemView;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        ButterKnife.bind(this, this.mItemView);
        this.mCloseButton.setOnClickListener(new View.OnClickListener() { // from class: com.voxel.simplesearchlauncher.upgrade.-$$Lambda$UpgradeFragment$cM24P-e04X7DJ_igACsqvmzEhOA
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.runExitAnimation();
            }
        });
        this.mDoneButton.setOnClickListener(new View.OnClickListener() { // from class: com.voxel.simplesearchlauncher.upgrade.-$$Lambda$UpgradeFragment$sK6bTzf5PvXccflm5OYx7IX2NEE
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.runExitAnimation();
            }
        });
        this.mSearchBar = new FeatureSection(view.findViewById(R.id.search_bar));
        this.mSearchBar.setTitle(getString(R.string.upgrade_remove_search_bar_title));
        this.mSearchBar.setDescription(getString(R.string.upgrade_remove_search_bar_message));
        this.mSearchBar.setVideo(R.raw.upgrade_searchbar, 2.338983f);
        this.mGestures = new FeatureSection(view.findViewById(R.id.gestures));
        this.mGestures.setTitle(getString(R.string.upgrade_gestures_title));
        this.mGestures.setDescription(getString(R.string.upgrade_gestures_message));
        this.mFeed = new FeatureSection(view.findViewById(R.id.feed));
        if (SettingsStorage.getInstance().getSideScreenEnabled()) {
            this.mFeed.setTitle(getString(R.string.upgrade_evie_feed_title));
            this.mFeed.setDescription(getString(R.string.upgrade_evie_feed_message));
            this.mFeed.setVideo(R.raw.upgrade_feed, 1.1358025f);
        } else {
            this.mFeed.mView.setVisibility(8);
        }
        this.mContainer.measure(0, 0);
        View view2 = this.mContainer;
        view2.setTranslationY(view2.getMeasuredHeight());
        this.mContainer.animate().translationY(0.0f).setInterpolator(INTERPOLATOR).start();
    }

    @Override // com.voxel.simplesearchlauncher.fragment.LauncherStackableFragment
    public void runExitAnimation() {
        notifyFragmentWillRequestClose();
        this.mContainer.animate().translationY(this.mContainer.getHeight()).setListener(new AnimatorListenerAdapter() { // from class: com.voxel.simplesearchlauncher.upgrade.UpgradeFragment.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                UpgradeFragment.this.notifyFragmentRequestClose();
            }
        }).setInterpolator(REVERSE_INTERPOLATOR).start();
    }

    @Override // com.voxel.simplesearchlauncher.fragment.LauncherStackableFragment
    protected void onFragmentWillClose() {
        super.onFragmentWillClose();
        FeatureSection featureSection = this.mSearchBar;
        if (featureSection != null && featureSection.mVideo != null) {
            this.mSearchBar.mVideo.stop();
        }
        FeatureSection featureSection2 = this.mFeed;
        if (featureSection2 == null || featureSection2.mVideo == null) {
            return;
        }
        this.mFeed.mVideo.stop();
    }

    static class FeatureSection {

        @BindView
        TextView mDescription;

        @BindView
        SimpleDraweeView mImage;

        @BindView
        TextView mTitle;

        @BindView
        TextureVideoView mVideo;
        View mView;

        FeatureSection(View view) {
            this.mView = view;
            ButterKnife.bind(this, view);
        }

        void setTitle(String str) {
            this.mTitle.setText(str);
        }

        void setDescription(String str) {
            this.mDescription.setText(str);
        }

        void setVideo(int i, float f) {
            this.mImage.setAspectRatio(f);
            this.mImage.setVisibility(4);
            this.mVideo.setVisibility(0);
            Uri uri = Uri.parse("android.resource://" + this.mVideo.getContext().getPackageName() + "/" + i);
            this.mVideo.setListener(new TextureVideoView.MediaPlayerListener() { // from class: com.voxel.simplesearchlauncher.upgrade.UpgradeFragment.FeatureSection.1
                @Override // com.voxel.simplesearchlauncher.view.TextureVideoView.MediaPlayerListener
                public void onVideoPrepared() {
                }

                @Override // com.voxel.simplesearchlauncher.view.TextureVideoView.MediaPlayerListener
                public void onVideoEnd() {
                    FeatureSection.this.mVideo.play();
                }
            });
            this.mVideo.setLooping(true);
            TextureVideoView textureVideoView = this.mVideo;
            textureVideoView.setDataSource(textureVideoView.getContext(), uri);
            this.mVideo.play();
        }
    }
}
