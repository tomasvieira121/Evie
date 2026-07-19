package com.voxel.simplesearchlauncher.settings;

import android.app.ProgressDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.format.DateUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.drive.Metadata;
import com.google.android.gms.drive.MetadataBuffer;
import com.voxel.launcher3.Launcher;
import com.voxel.simplesearchlauncher.activity.SafeActivityStarter;
import com.voxel.simplesearchlauncher.model.managers.BackupRestoreManager;
import is.shortcut.R;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class BackupRestoreSettingsFragment extends Fragment implements BackupRestoreManager.BackupRestoreUI {
    private static final String TAG = "BackupRestoreSettingsFragment";
    private BackupRestoreManager mBackupManager;
    private SettingsTextViewHolder mBackupViewHolder;
    private View mCircularProgressView;
    private Handler mConnectionRetryHandler;
    private SettingsTextViewHolder mDeleteViewHolder;
    private SettingsTextViewHolder mGoogleAccountViewHolder;
    private ProgressDialog mProgressDialog;
    private SettingsTextViewHolder mRestoreViewHolder;
    private SettingsTextViewHolder mSignInViewHolder;

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        BackupRestoreManager.init(getActivity());
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.settings_activity_backup_restore_fragment, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        this.mBackupManager = BackupRestoreManager.getInstance();
        this.mBackupManager.setUICallbacks(this);
        this.mProgressDialog = new ProgressDialog(getContext());
        this.mCircularProgressView = view.findViewById(R.id.loading);
        this.mSignInViewHolder = new SettingsTextViewHolder(view.findViewById(R.id.sign_in));
        this.mBackupViewHolder = new SettingsTextViewHolder(view.findViewById(R.id.backup));
        this.mRestoreViewHolder = new SettingsTextViewHolder(view.findViewById(R.id.restore));
        this.mDeleteViewHolder = new SettingsTextViewHolder(view.findViewById(R.id.delete));
        this.mGoogleAccountViewHolder = new SettingsTextViewHolder(view.findViewById(R.id.google_account));
        this.mSignInViewHolder.mLabel.setText(R.string.app_settings_item_backup_restore_sign_in);
        this.mSignInViewHolder.mSubLabel.setText(R.string.app_settings_item_backup_restore_sign_in_subtext);
        this.mSignInViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.voxel.simplesearchlauncher.settings.-$$Lambda$BackupRestoreSettingsFragment$Kye5xPj9zBwwQZgB-0Y1x-R7IuM
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                BackupRestoreSettingsFragment.lambda$onViewCreated$0(this.f$0, view2);
            }
        });
        this.mBackupViewHolder.mLabel.setText(R.string.app_settings_item_backup_restore_backup);
        this.mBackupViewHolder.mSubLabel.setText(R.string.app_settings_item_backup_restore_backup_subtext);
        this.mBackupViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.voxel.simplesearchlauncher.settings.-$$Lambda$BackupRestoreSettingsFragment$yS_y5WojH13nOTVKS4Anx4BeCQ4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                BackupRestoreSettingsFragment.lambda$onViewCreated$1(this.f$0, view2);
            }
        });
        this.mRestoreViewHolder.mLabel.setText(R.string.app_settings_item_backup_restore_restore);
        this.mRestoreViewHolder.mSubLabel.setText(R.string.app_settings_item_backup_restore_restore_subtext);
        this.mRestoreViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.voxel.simplesearchlauncher.settings.-$$Lambda$BackupRestoreSettingsFragment$oxxL-ltCkwTcT4i--aQEUunjeg8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.mBackupManager.requestAvailableRestoreData(0);
            }
        });
        this.mDeleteViewHolder.mLabel.setText(R.string.app_settings_item_backup_restore_delete);
        this.mDeleteViewHolder.mSubLabel.setText(R.string.app_settings_item_backup_restore_delete_subtext);
        this.mDeleteViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.voxel.simplesearchlauncher.settings.-$$Lambda$BackupRestoreSettingsFragment$PaPmeVQboIjEJm0FJaWjEUr8i-A
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.mBackupManager.requestAvailableRestoreData(1);
            }
        });
        this.mGoogleAccountViewHolder.mLabel.setText(R.string.app_settings_item_backup_restore_account);
        this.mGoogleAccountViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.voxel.simplesearchlauncher.settings.-$$Lambda$BackupRestoreSettingsFragment$rIcvKxnjrBv0JFglTjukAdgH_Rk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                BackupRestoreSettingsFragment.lambda$onViewCreated$6(this.f$0, view2);
            }
        });
        this.mConnectionRetryHandler = new Handler();
        this.mConnectionRetryHandler.post(new Runnable() { // from class: com.voxel.simplesearchlauncher.settings.BackupRestoreSettingsFragment.1
            @Override // java.lang.Runnable
            public void run() {
                if (!BackupRestoreSettingsFragment.this.mBackupManager.isConnected()) {
                    if (BackupRestoreSettingsFragment.this.mBackupManager.connect()) {
                        BackupRestoreSettingsFragment.this.mConnectionRetryHandler.postDelayed(this, 2000L);
                    }
                } else {
                    BackupRestoreSettingsFragment backupRestoreSettingsFragment = BackupRestoreSettingsFragment.this;
                    backupRestoreSettingsFragment.updateUI(backupRestoreSettingsFragment.mBackupManager.getAccountEmail(), BackupRestoreSettingsFragment.this.mBackupManager.isRestoreAvailable());
                }
            }
        });
    }

    public static /* synthetic */ void lambda$onViewCreated$0(BackupRestoreSettingsFragment backupRestoreSettingsFragment, View view) {
        backupRestoreSettingsFragment.mProgressDialog.setMessage(backupRestoreSettingsFragment.getResources().getString(R.string.app_settings_item_backup_restore_sign_in_progress));
        backupRestoreSettingsFragment.mProgressDialog.show();
        backupRestoreSettingsFragment.mBackupManager.signIn(backupRestoreSettingsFragment.getActivity());
    }

    public static /* synthetic */ void lambda$onViewCreated$1(BackupRestoreSettingsFragment backupRestoreSettingsFragment, View view) {
        backupRestoreSettingsFragment.mProgressDialog.setMessage(backupRestoreSettingsFragment.getResources().getString(R.string.app_settings_item_backup_restore_backup_progress));
        backupRestoreSettingsFragment.mProgressDialog.show();
        backupRestoreSettingsFragment.mBackupManager.requestBackup(backupRestoreSettingsFragment.getContext());
    }

    public static /* synthetic */ void lambda$onViewCreated$6(final BackupRestoreSettingsFragment backupRestoreSettingsFragment, View view) {
        AlertDialog.Builder builder = new AlertDialog.Builder(backupRestoreSettingsFragment.getActivity());
        builder.setTitle(R.string.app_settings_item_backup_restore_account_dialog).setMessage(String.format(backupRestoreSettingsFragment.getResources().getString(R.string.app_settings_item_backup_restore_account_dialog_subtext), backupRestoreSettingsFragment.mBackupManager.getAccountEmail()));
        builder.setPositiveButton(R.string.app_settings_item_backup_restore_account_dialog_positive, new DialogInterface.OnClickListener() { // from class: com.voxel.simplesearchlauncher.settings.-$$Lambda$BackupRestoreSettingsFragment$s224orxuqyugizRTM7aEI558PsU
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        builder.setNegativeButton(R.string.app_settings_item_backup_restore_account_dialog_negative, new DialogInterface.OnClickListener() { // from class: com.voxel.simplesearchlauncher.settings.-$$Lambda$BackupRestoreSettingsFragment$4h8XY_0PjvYbHqbxX3v9OqzkOBo
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.mBackupManager.signOut();
            }
        });
        builder.create().show();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.mConnectionRetryHandler.removeCallbacksAndMessages(null);
        this.mBackupManager.setUICallbacks(null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        BackupRestoreManager backupRestoreManager = this.mBackupManager;
        if (backupRestoreManager == null) {
            return;
        }
        backupRestoreManager.setUICallbacks(this);
        updateUI(this.mBackupManager.getAccountEmail(), this.mBackupManager.isRestoreAvailable());
    }

    private void stopProgressDialog() {
        ProgressDialog progressDialog = this.mProgressDialog;
        if (progressDialog != null) {
            progressDialog.dismiss();
            this.mProgressDialog.setMessage("");
        }
    }

    @Override // com.voxel.simplesearchlauncher.model.managers.BackupRestoreManager.BackupRestoreUI
    public synchronized void updateUI(String str, boolean z) {
        this.mConnectionRetryHandler.removeCallbacksAndMessages(null);
        stopProgressDialog();
        this.mCircularProgressView.setVisibility(8);
        if (str == null) {
            this.mSignInViewHolder.itemView.setVisibility(0);
            this.mBackupViewHolder.itemView.setVisibility(8);
            this.mRestoreViewHolder.itemView.setVisibility(8);
            this.mDeleteViewHolder.itemView.setVisibility(8);
            this.mGoogleAccountViewHolder.itemView.setVisibility(8);
        } else {
            this.mSignInViewHolder.itemView.setVisibility(8);
            this.mBackupViewHolder.itemView.setVisibility(0);
            this.mRestoreViewHolder.itemView.setVisibility(0);
            this.mDeleteViewHolder.itemView.setVisibility(0);
            this.mGoogleAccountViewHolder.itemView.setVisibility(0);
            this.mGoogleAccountViewHolder.mSubLabel.setText(String.format(getResources().getString(R.string.app_settings_item_backup_restore_account_subtext), str));
            this.mRestoreViewHolder.setEnabled(z);
            this.mDeleteViewHolder.setEnabled(z);
            if (z) {
                this.mRestoreViewHolder.mSubLabel.setText(R.string.app_settings_item_backup_restore_restore_subtext);
                this.mDeleteViewHolder.mSubLabel.setText(R.string.app_settings_item_backup_restore_delete_subtext);
            } else {
                this.mRestoreViewHolder.mSubLabel.setText(R.string.app_settings_item_backup_restore_restore_unavailable_subtext);
                this.mDeleteViewHolder.mSubLabel.setText(R.string.app_settings_item_backup_restore_restore_unavailable_subtext);
            }
        }
    }

    @Override // com.voxel.simplesearchlauncher.model.managers.BackupRestoreManager.BackupRestoreUI
    public void handleAvailableRestoreData(final MetadataBuffer metadataBuffer, int i) {
        HashMap map = new HashMap();
        for (Metadata metadata : metadataBuffer) {
            String description = metadata.getCustomProperties().get(BackupRestoreManager.CPK_DEVICE_ID);
            if (description == null || description.isEmpty()) {
                description = metadata.getDescription();
            }
            if (description != null && !description.isEmpty() && !map.containsKey(description)) {
                map.put(description, metadata);
            }
        }
        final Metadata[] metadataArr = new Metadata[map.size()];
        int i2 = 0;
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            metadataArr[i2] = (Metadata) it.next();
            i2++;
        }
        View viewInflate = getActivity().getLayoutInflater().inflate(R.layout.dialog_with_list, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(R.id.title_text);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.subtext);
        ListView listView = (ListView) viewInflate.findViewById(R.id.list);
        textView.setText(R.string.app_settings_item_backup_restore_restore_dialog);
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setView(viewInflate).setNegativeButton(R.string.button_label_cancel, new DialogInterface.OnClickListener() { // from class: com.voxel.simplesearchlauncher.settings.-$$Lambda$BackupRestoreSettingsFragment$Y4-woszb3rJC7MrORUW3Fm7VIJ0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                dialogInterface.cancel();
            }
        }).setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.voxel.simplesearchlauncher.settings.-$$Lambda$BackupRestoreSettingsFragment$nis6193VtKGzZqPH4WTTeaiwmMM
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                metadataBuffer.release();
            }
        });
        final AlertDialog alertDialogCreate = builder.create();
        listView.setAdapter((ListAdapter) new BackupsAdapter(getContext(), R.layout.dialog_with_list_text_item, metadataArr));
        if (i == 0) {
            textView2.setText(R.string.app_settings_item_backup_restore_restore_dialog_subtext);
            listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.voxel.simplesearchlauncher.settings.-$$Lambda$BackupRestoreSettingsFragment$hy5mpnCC74v3_l_Si74AiX7Icdc
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i3, long j) {
                    BackupRestoreSettingsFragment.lambda$handleAvailableRestoreData$9(this.f$0, alertDialogCreate, metadataArr, adapterView, view, i3, j);
                }
            });
        } else {
            if (i != 1) {
                return;
            }
            textView2.setText(R.string.app_settings_item_backup_restore_delete_dialog_subtext);
            listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.voxel.simplesearchlauncher.settings.-$$Lambda$BackupRestoreSettingsFragment$yE6gIGNlZC5tTt8i_UIoJ1UkDrs
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i3, long j) {
                    BackupRestoreSettingsFragment.lambda$handleAvailableRestoreData$10(this.f$0, alertDialogCreate, metadataArr, adapterView, view, i3, j);
                }
            });
        }
        alertDialogCreate.show();
    }

    public static /* synthetic */ void lambda$handleAvailableRestoreData$9(BackupRestoreSettingsFragment backupRestoreSettingsFragment, AlertDialog alertDialog, Metadata[] metadataArr, AdapterView adapterView, View view, int i, long j) {
        alertDialog.dismiss();
        backupRestoreSettingsFragment.mProgressDialog.setMessage(backupRestoreSettingsFragment.getResources().getString(R.string.app_settings_item_backup_restore_restore_progress));
        backupRestoreSettingsFragment.mProgressDialog.show();
        backupRestoreSettingsFragment.mBackupManager.createLocalBackup(backupRestoreSettingsFragment.getContext(), "undo_restore.zip");
        backupRestoreSettingsFragment.mBackupManager.restoreFromDriveId(backupRestoreSettingsFragment.getActivity(), metadataArr[i].getDriveId());
    }

    public static /* synthetic */ void lambda$handleAvailableRestoreData$10(BackupRestoreSettingsFragment backupRestoreSettingsFragment, AlertDialog alertDialog, Metadata[] metadataArr, AdapterView adapterView, View view, int i, long j) {
        alertDialog.dismiss();
        backupRestoreSettingsFragment.mProgressDialog.setMessage(backupRestoreSettingsFragment.getResources().getString(R.string.app_settings_item_backup_restore_delete_progress));
        backupRestoreSettingsFragment.mProgressDialog.show();
        backupRestoreSettingsFragment.mBackupManager.deleteBackup(metadataArr[i].getDriveId());
    }

    @Override // com.voxel.simplesearchlauncher.model.managers.BackupRestoreManager.BackupRestoreUI
    public void onBackupSuccess() {
        stopProgressDialog();
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setTitle(R.string.app_settings_item_backup_restore_backup_success_dialog).setMessage(R.string.app_settings_item_backup_restore_backup_success_dialog_subtext).setPositiveButton(R.string.app_settings_item_backup_restore_backup_success_dialog_positive, new DialogInterface.OnClickListener() { // from class: com.voxel.simplesearchlauncher.settings.-$$Lambda$BackupRestoreSettingsFragment$xiBDoCHz61J1mvydVe79RN7qBZ0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        builder.create().show();
    }

    @Override // com.voxel.simplesearchlauncher.model.managers.BackupRestoreManager.BackupRestoreUI
    public void onBackupFailure() {
        stopProgressDialog();
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setTitle(R.string.app_settings_item_backup_restore_backup_failure_dialog).setMessage(R.string.app_settings_item_backup_restore_backup_failure_dialog_subtext).setPositiveButton(R.string.app_settings_item_backup_restore_backup_failure_dialog_positive, new DialogInterface.OnClickListener() { // from class: com.voxel.simplesearchlauncher.settings.-$$Lambda$BackupRestoreSettingsFragment$SLKRP6DFrQEZdI0_OwEPTFgAOwo
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        builder.create().show();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.voxel.simplesearchlauncher.model.managers.BackupRestoreManager.BackupRestoreUI
    public void onRestoreSuccess() {
        stopProgressDialog();
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        intent.putExtra(BackupRestoreManager.KEY_LAUNCHER_RESTORED, true);
        intent.setComponent(new ComponentName(getContext(), (Class<?>) Launcher.class));
        FragmentActivity activity = getActivity();
        if (activity instanceof SafeActivityStarter) {
            ((SafeActivityStarter) activity).startActivitySafely(intent);
        } else {
            activity.startActivity(intent);
        }
    }

    @Override // com.voxel.simplesearchlauncher.model.managers.BackupRestoreManager.BackupRestoreUI
    public void onRestoreFailure() {
        stopProgressDialog();
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setTitle(R.string.app_settings_item_backup_restore_restore_failure_dialog).setMessage(R.string.app_settings_item_backup_restore_restore_failure_dialog_subtext).setPositiveButton(R.string.app_settings_item_backup_restore_restore_failure_dialog_positive, new DialogInterface.OnClickListener() { // from class: com.voxel.simplesearchlauncher.settings.-$$Lambda$BackupRestoreSettingsFragment$YKP8pwZ1vfejCxUmmfAQTx18KNk
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        builder.create().show();
    }

    @Override // com.voxel.simplesearchlauncher.model.managers.BackupRestoreManager.BackupRestoreUI
    public void onDeleteSuccess() {
        stopProgressDialog();
    }

    @Override // com.voxel.simplesearchlauncher.model.managers.BackupRestoreManager.BackupRestoreUI
    public void onDeleteFailure() {
        stopProgressDialog();
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setTitle(R.string.app_settings_item_backup_restore_delete_failure_dialog).setMessage(R.string.app_settings_item_backup_restore_delete_failure_dialog_subtext).setPositiveButton(R.string.app_settings_item_backup_restore_delete_failure_dialog_positive, new DialogInterface.OnClickListener() { // from class: com.voxel.simplesearchlauncher.settings.-$$Lambda$BackupRestoreSettingsFragment$q5avShCzlzdYIZvBKrHhXdGYGZ0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        builder.create().show();
    }

    private class BackupsAdapter extends ArrayAdapter<Metadata> {
        Metadata[] mBackups;

        public BackupsAdapter(Context context, int i, Metadata[] metadataArr) {
            super(context, i, metadataArr);
            this.mBackups = metadataArr;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = BackupRestoreSettingsFragment.this.getActivity().getLayoutInflater().inflate(R.layout.dialog_with_list_text_item, viewGroup, false);
            }
            TextView textView = (TextView) view.findViewById(R.id.line1);
            TextView textView2 = (TextView) view.findViewById(R.id.line2);
            Metadata metadata = this.mBackups[i];
            textView.setText(metadata.getCustomProperties().get(BackupRestoreManager.CPK_DEVICE_NAME));
            textView2.setText(String.format(BackupRestoreSettingsFragment.this.getResources().getString(R.string.app_settings_item_backup_restore_restore_date), DateUtils.formatSameDayTime(metadata.getCreatedDate().getTime(), Calendar.getInstance().getTime().getTime(), 3, 3)));
            return view;
        }
    }
}
