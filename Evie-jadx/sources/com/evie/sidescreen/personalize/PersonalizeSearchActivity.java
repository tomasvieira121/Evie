package com.evie.sidescreen.personalize;

import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.evie.models.topics.data.ListTopicsRequestOptions;
import com.evie.sidescreen.R;
import com.evie.sidescreen.SideScreenActivity;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.tiles.videos.PopupViewProvider;
import dagger.android.AndroidInjector;
import dagger.android.support.HasSupportFragmentInjector;
import uk.p007co.chrisjenx.calligraphy.CalligraphyContextWrapper;

/* JADX INFO: loaded from: classes.dex */
public class PersonalizeSearchActivity extends SideScreenActivity implements HasSupportFragmentInjector {

    @BindView
    View mNoResults;
    boolean mNoSearchYet;
    ListTopicsRequestOptions mOptions;

    @BindView
    FrameLayout mResultsContainer;

    @BindView
    EditText mSearchEditText;
    TopicsListFragment mTopicsListFragment;

    @Override // com.evie.sidescreen.SideScreenActivity
    protected String getScreenViewMetaData() {
        return null;
    }

    @Override // com.evie.sidescreen.SideScreenActivity
    protected String getScreenViewProtobuf() {
        return null;
    }

    @Override // com.evie.sidescreen.SideScreenActivity
    protected String getScreenViewSubType() {
        return null;
    }

    @Override // com.evie.sidescreen.SideScreenActivity
    protected String getScreenViewTitle() {
        return null;
    }

    @Override // com.evie.sidescreen.SideScreenActivity
    protected String getScreenViewType() {
        return "personalize-search";
    }

    @Override // com.evie.sidescreen.SideScreenActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        onCreateInject();
        super.onCreate(bundle);
        setContentView(R.layout.ss_personalize_search_activity);
        ButterKnife.bind(this);
        this.mOptions = new ListTopicsRequestOptions();
        this.mOptions.setLimit(100);
        this.mNoSearchYet = true;
        this.mTopicsListFragment = TopicsListFragment.createInstance(this.mOptions, false, true, new ScreenInfo("personalize_search", null, null));
        FragmentTransaction fragmentTransactionBeginTransaction = getSupportFragmentManager().beginTransaction();
        fragmentTransactionBeginTransaction.add(this.mResultsContainer.getId(), this.mTopicsListFragment);
        fragmentTransactionBeginTransaction.commit();
        this.mSearchEditText.addTextChangedListener(new TextWatcher() { // from class: com.evie.sidescreen.personalize.PersonalizeSearchActivity.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (editable == null) {
                    return;
                }
                PersonalizeSearchActivity.this.mTopicsListFragment.mTopicsListPresenter.clear();
                String strTrim = editable.toString().trim();
                if (strTrim.length() != 0) {
                    PersonalizeSearchActivity.this.startSearch(strTrim);
                    return;
                }
                PersonalizeSearchActivity.this.mNoResults.setVisibility(0);
                PersonalizeSearchActivity.this.mResultsContainer.setVisibility(8);
                PersonalizeSearchActivity.this.mNoSearchYet = true;
            }
        });
        this.mTopicsListFragment.setActive(true);
        this.mSearchEditText.requestFocus();
    }

    @Override // com.evie.sidescreen.SideScreenActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        this.mTopicsListFragment.setActive(false);
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startSearch(String str) {
        this.mOptions.setSearchQuery(str);
        if (this.mNoSearchYet) {
            this.mNoResults.setVisibility(8);
            this.mResultsContainer.setVisibility(0);
            this.mNoSearchYet = false;
        }
        this.mTopicsListFragment.mTopicsListPresenter.setOptions(this.mOptions);
    }

    @Override // com.evie.sidescreen.SideScreenActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(context));
    }

    @Override // com.evie.sidescreen.SideScreenActivity
    public PopupViewProvider getPopupViewProvider() {
        return new PopupViewProvider(null);
    }

    @Override // dagger.android.support.HasSupportFragmentInjector
    public AndroidInjector<Fragment> supportFragmentInjector() {
        return getSupportFragmentInjector();
    }
}
