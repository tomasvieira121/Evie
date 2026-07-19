package com.evie.sidescreen.topicdetail;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import butterknife.ButterKnife;
import com.evie.sidescreen.R;
import dagger.android.support.AndroidSupportInjection;

/* JADX INFO: loaded from: classes.dex */
public class TopicDetailFragment extends Fragment {
    private TopicDetailPresenter mTopicDetailPresenter;
    TopicDetailPresenterFactory mTopicDetailPresenterFactory;
    private TopicDetailViewHolder mTopicDetailViewHolder;
    TopicDetailViewHolderFactory mTopicDetailViewHolderFactory;
    private String mTopicId;

    public interface TopicDetailIdProvider {
        String getTopicId();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        AndroidSupportInjection.inject(this);
        super.onAttach(context);
        try {
            this.mTopicId = ((TopicDetailIdProvider) context).getTopicId();
        } catch (ClassCastException unused) {
            throw new ClassCastException(context.toString() + " must implement OnFragmentInteractionListener");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.ss_topic_detail_fragment, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        ButterKnife.bind(this, view);
        this.mTopicDetailPresenter = this.mTopicDetailPresenterFactory.create(this.mTopicId, new TopicDetailHeaderPresenter.OnBackListener() { // from class: com.evie.sidescreen.topicdetail.-$$Lambda$TopicDetailFragment$hrSNnlNTS_ZOI15vf7JHICBFdHI
            @Override // com.evie.sidescreen.topicdetail.TopicDetailHeaderPresenter.OnBackListener
            public final void onBack() {
                this.f$0.getActivity().finish();
            }
        });
        this.mTopicDetailViewHolder = this.mTopicDetailViewHolderFactory.create(view);
        this.mTopicDetailViewHolder.bindPresenter(this.mTopicDetailPresenter);
        this.mTopicDetailPresenter.bindViewHolder(this.mTopicDetailViewHolder);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        TopicDetailPresenter topicDetailPresenter = this.mTopicDetailPresenter;
        if (topicDetailPresenter != null) {
            topicDetailPresenter.unbindViewHolder();
        }
        TopicDetailViewHolder topicDetailViewHolder = this.mTopicDetailViewHolder;
        if (topicDetailViewHolder != null) {
            topicDetailViewHolder.unbindPresenter();
        }
    }
}
