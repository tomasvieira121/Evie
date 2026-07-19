package com.evie.common.settings;

import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.evie.common.AbTestConfiguration;
import com.evie.common.R;

/* JADX INFO: loaded from: classes.dex */
public class AbTestActivity extends AppCompatActivity {
    private AbTestConfiguration mAbTestConfig;

    @BindView
    TextView mExperimentLabel;

    @BindView
    EditText mExperimentText;

    @BindView
    TextView mGroupLabel;

    @BindView
    EditText mGroupText;

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mAbTestConfig = new AbTestConfiguration(this);
        setContentView(R.layout.activity_ab_test_debug);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        ButterKnife.bind(this);
        this.mExperimentLabel.setText(String.format("Experiment (current: %s)\nEnter below to override", this.mAbTestConfig.getExperiment()));
        this.mExperimentText.setText(this.mAbTestConfig.getDebugExperimentOverride());
        this.mGroupLabel.setText(String.format("Group (current: %s)\nEnter below to override", this.mAbTestConfig.getGroup()));
        this.mGroupText.setText(this.mAbTestConfig.getDebugGroupOverride());
    }

    public void onOk(View view) {
        String string = this.mExperimentText.getText().toString();
        this.mAbTestConfig.setDebugExperimentOverride(string).setDebugGroupOverride(this.mGroupText.getText().toString());
        finish();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            onBackPressed();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
