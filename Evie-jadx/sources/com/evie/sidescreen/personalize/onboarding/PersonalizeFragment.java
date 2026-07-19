package com.evie.sidescreen.personalize.onboarding;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import com.evie.sidescreen.R;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.personalize.PersonalizePresenter;
import com.evie.sidescreen.personalize.PersonalizePresenterFactory;
import com.evie.sidescreen.personalize.PersonalizeViewHolder;
import dagger.android.support.AndroidSupportInjection;
import io.reactivex.disposables.CompositeDisposable;

/* JADX INFO: loaded from: classes.dex */
public class PersonalizeFragment extends Fragment {
    private CompositeDisposable mDisposable = new CompositeDisposable();
    private PersonalizePresenter mPersonalizePresenter;
    PersonalizePresenterFactory mPersonalizePresenterFactory;
    private PersonalizeViewHolder mPersonalizeViewHolder;

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        AndroidSupportInjection.inject(this);
        super.onAttach(context);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.ss_personalize_fragment, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        this.mPersonalizePresenter = this.mPersonalizePresenterFactory.create(new ScreenInfo("personalize", null, null));
        this.mPersonalizeViewHolder = new PersonalizeViewHolder(view);
        this.mPersonalizeViewHolder.bindPresenter(this.mPersonalizePresenter);
        this.mPersonalizePresenter.bindViewHolder(this.mPersonalizeViewHolder);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.mPersonalizePresenter.dispose();
        this.mPersonalizePresenter = null;
        this.mPersonalizeViewHolder = null;
    }
}
