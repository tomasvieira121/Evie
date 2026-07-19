package com.evie.common.licenses;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.evie.common.R;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public class LicenseDialogFragment extends DialogFragment {
    private int licenseRawRes;

    public static LicenseDialogFragment newInstance(int i) {
        LicenseDialogFragment licenseDialogFragment = new LicenseDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("license_raw_resource_extra", i);
        licenseDialogFragment.setArguments(bundle);
        return licenseDialogFragment;
    }

    /* JADX WARN: Not initialized variable reg: 3, insn: 0x00bd: MOVE (r7 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:38:0x00bc */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) throws Throwable {
        InputStream inputStreamOpenRawResource;
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2;
        String string;
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.licenseRawRes = arguments.getInt("license_raw_resource_extra");
        }
        BufferedReader bufferedReader3 = null;
        try {
            try {
                StringBuilder sb = new StringBuilder();
                inputStreamOpenRawResource = getActivity().getResources().openRawResource(this.licenseRawRes);
                try {
                    bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpenRawResource, "UTF-8"));
                    try {
                        for (String line = bufferedReader.readLine(); line != null; line = bufferedReader.readLine()) {
                            sb.append(line);
                            sb.append('\n');
                        }
                        string = sb.toString();
                        try {
                            bufferedReader.close();
                        } catch (IOException unused) {
                            Timber.m553e("Error closing bufferedReader.", new Object[0]);
                        }
                        if (inputStreamOpenRawResource != null) {
                            try {
                                inputStreamOpenRawResource.close();
                            } catch (IOException unused2) {
                                Timber.m553e("Error closing inputStream.", new Object[0]);
                            }
                        }
                    } catch (Resources.NotFoundException | IOException unused3) {
                        Timber.m553e("Error reading from licenses.txt", new Object[0]);
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException unused4) {
                                Timber.m553e("Error closing bufferedReader.", new Object[0]);
                            }
                        }
                        if (inputStreamOpenRawResource != null) {
                            try {
                                inputStreamOpenRawResource.close();
                            } catch (IOException unused5) {
                                Timber.m553e("Error closing inputStream.", new Object[0]);
                            }
                        }
                        string = null;
                    }
                } catch (Resources.NotFoundException | IOException unused6) {
                    bufferedReader = null;
                } catch (Throwable th) {
                    th = th;
                    if (bufferedReader3 != null) {
                        try {
                            bufferedReader3.close();
                        } catch (IOException unused7) {
                            Timber.m553e("Error closing bufferedReader.", new Object[0]);
                        }
                    }
                    if (inputStreamOpenRawResource != null) {
                        try {
                            inputStreamOpenRawResource.close();
                            throw th;
                        } catch (IOException unused8) {
                            Timber.m553e("Error closing inputStream.", new Object[0]);
                            throw th;
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedReader3 = bufferedReader2;
            }
        } catch (Resources.NotFoundException | IOException unused9) {
            inputStreamOpenRawResource = null;
            bufferedReader = null;
        } catch (Throwable th3) {
            th = th3;
            inputStreamOpenRawResource = null;
        }
        View viewInflate = LayoutInflater.from(getActivity()).inflate(R.layout.open_source_licenses, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(R.id.text)).setText(string);
        return new AlertDialog.Builder(getActivity()).setTitle(R.string.dialog_open_source_title).setView(viewInflate).create();
    }
}
