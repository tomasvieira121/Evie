package com.evie.sidescreen.personalize;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.evie.sidescreen.R;
import com.evie.sidescreen.SideScreenActivity;
import com.evie.sidescreen.tiles.videos.PopupViewProvider;
import dagger.android.AndroidInjector;
import dagger.android.support.HasSupportFragmentInjector;

/* JADX INFO: loaded from: classes.dex */
public class PersonalizeActivity extends SideScreenActivity implements HasSupportFragmentInjector {

    @BindView
    Toolbar mToolbar;

    @BindView
    TextView mToolbarTitle;

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
        return "personalize";
    }

    @Override // com.evie.sidescreen.SideScreenActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        onCreateInject();
        super.onCreate(bundle);
        setContentView(R.layout.ss_personalize_activity);
        ButterKnife.bind(this);
        setSupportActionBar(this.mToolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setDisplayShowHomeEnabled(true);
        getSupportActionBar().setDisplayShowTitleEnabled(false);
        this.mToolbarTitle.setText(R.string.ss_personalize_activity_title);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        menu.clear();
        menu.add(0, 101, 0, "Search").setIcon(R.drawable.homescreen_search_icon).setShowAsAction(2);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 101) {
            startActivity(new Intent(this, (Class<?>) PersonalizeSearchActivity.class));
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.appcompat.app.AppCompatActivity
    public boolean onSupportNavigateUp() {
        finish();
        return true;
    }

    @Override // com.evie.sidescreen.SideScreenActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
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
