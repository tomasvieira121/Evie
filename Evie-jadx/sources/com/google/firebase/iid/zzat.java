package com.google.firebase.iid;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
final class zzat {
    private static int zzcf;
    private static PendingIntent zzcr;
    private final zzan zzan;

    @GuardedBy("responseCallbacks")
    private final SimpleArrayMap<String, TaskCompletionSource<Bundle>> zzcs = new SimpleArrayMap<>();
    private Messenger zzct = new Messenger(new zzau(this, Looper.getMainLooper()));
    private Messenger zzcu;
    private zzl zzcv;
    private final Context zzx;

    public zzat(Context context, zzan zzanVar) {
        this.zzx = context;
        this.zzan = zzanVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzb(Message message) {
        if (message != null && (message.obj instanceof Intent)) {
            Intent intent = (Intent) message.obj;
            intent.setExtrasClassLoader(new zzl.zza());
            if (intent.hasExtra("google.messenger")) {
                Parcelable parcelableExtra = intent.getParcelableExtra("google.messenger");
                if (parcelableExtra instanceof zzl) {
                    this.zzcv = (zzl) parcelableExtra;
                }
                if (parcelableExtra instanceof Messenger) {
                    this.zzcu = (Messenger) parcelableExtra;
                }
            }
            Intent intent2 = (Intent) message.obj;
            String action = intent2.getAction();
            if (!"com.google.android.c2dm.intent.REGISTRATION".equals(action)) {
                if (Log.isLoggable("FirebaseInstanceId", 3)) {
                    String strValueOf = String.valueOf(action);
                    Log.d("FirebaseInstanceId", strValueOf.length() != 0 ? "Unexpected response action: ".concat(strValueOf) : new String("Unexpected response action: "));
                    return;
                }
                return;
            }
            String stringExtra = intent2.getStringExtra("registration_id");
            if (stringExtra == null) {
                stringExtra = intent2.getStringExtra("unregistered");
            }
            if (stringExtra == null) {
                String stringExtra2 = intent2.getStringExtra("error");
                if (stringExtra2 == null) {
                    String strValueOf2 = String.valueOf(intent2.getExtras());
                    StringBuilder sb = new StringBuilder(String.valueOf(strValueOf2).length() + 49);
                    sb.append("Unexpected response, no error or registration id ");
                    sb.append(strValueOf2);
                    Log.w("FirebaseInstanceId", sb.toString());
                    return;
                }
                if (Log.isLoggable("FirebaseInstanceId", 3)) {
                    String strValueOf3 = String.valueOf(stringExtra2);
                    Log.d("FirebaseInstanceId", strValueOf3.length() != 0 ? "Received InstanceID error ".concat(strValueOf3) : new String("Received InstanceID error "));
                }
                if (stringExtra2.startsWith("|")) {
                    String[] strArrSplit = stringExtra2.split("\\|");
                    if (strArrSplit.length <= 2 || !"ID".equals(strArrSplit[1])) {
                        String strValueOf4 = String.valueOf(stringExtra2);
                        Log.w("FirebaseInstanceId", strValueOf4.length() != 0 ? "Unexpected structured response ".concat(strValueOf4) : new String("Unexpected structured response "));
                        return;
                    }
                    String str = strArrSplit[2];
                    String strSubstring = strArrSplit[3];
                    if (strSubstring.startsWith(":")) {
                        strSubstring = strSubstring.substring(1);
                    }
                    zza(str, intent2.putExtra("error", strSubstring).getExtras());
                    return;
                }
                synchronized (this.zzcs) {
                    for (int i = 0; i < this.zzcs.size(); i++) {
                        zza(this.zzcs.keyAt(i), intent2.getExtras());
                    }
                }
                return;
            }
            Matcher matcher = Pattern.compile("\\|ID\\|([^|]+)\\|:?+(.*)").matcher(stringExtra);
            if (!matcher.matches()) {
                if (Log.isLoggable("FirebaseInstanceId", 3)) {
                    String strValueOf5 = String.valueOf(stringExtra);
                    Log.d("FirebaseInstanceId", strValueOf5.length() != 0 ? "Unexpected response string: ".concat(strValueOf5) : new String("Unexpected response string: "));
                    return;
                }
                return;
            }
            String strGroup = matcher.group(1);
            String strGroup2 = matcher.group(2);
            Bundle extras = intent2.getExtras();
            extras.putString("registration_id", strGroup2);
            zza(strGroup, extras);
            return;
        }
        Log.w("FirebaseInstanceId", "Dropping invalid message");
    }

    private static synchronized void zza(Context context, Intent intent) {
        if (zzcr == null) {
            Intent intent2 = new Intent();
            intent2.setPackage("com.google.example.invalidpackage");
            zzcr = PendingIntent.getBroadcast(context, 0, intent2, 0);
        }
        intent.putExtra("app", zzcr);
    }

    private final void zza(String str, Bundle bundle) {
        synchronized (this.zzcs) {
            TaskCompletionSource<Bundle> taskCompletionSourceRemove = this.zzcs.remove(str);
            if (taskCompletionSourceRemove == null) {
                String strValueOf = String.valueOf(str);
                Log.w("FirebaseInstanceId", strValueOf.length() != 0 ? "Missing callback for ".concat(strValueOf) : new String("Missing callback for "));
            } else {
                taskCompletionSourceRemove.setResult(bundle);
            }
        }
    }

    final Bundle zzc(Bundle bundle) throws IOException {
        if (this.zzan.zzaf() >= 12000000) {
            try {
                return (Bundle) Tasks.await(zzab.zzc(this.zzx).zzb(1, bundle));
            } catch (InterruptedException | ExecutionException e) {
                if (Log.isLoggable("FirebaseInstanceId", 3)) {
                    String strValueOf = String.valueOf(e);
                    StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 22);
                    sb.append("Error making request: ");
                    sb.append(strValueOf);
                    Log.d("FirebaseInstanceId", sb.toString());
                }
                if ((e.getCause() instanceof zzal) && ((zzal) e.getCause()).getErrorCode() == 4) {
                    return zzd(bundle);
                }
                return null;
            }
        }
        return zzd(bundle);
    }

    private final Bundle zzd(Bundle bundle) throws IOException {
        Bundle bundleZze = zze(bundle);
        if (bundleZze == null || !bundleZze.containsKey("google.messenger")) {
            return bundleZze;
        }
        Bundle bundleZze2 = zze(bundle);
        if (bundleZze2 == null || !bundleZze2.containsKey("google.messenger")) {
            return bundleZze2;
        }
        return null;
    }

    private static synchronized String zzah() {
        int i;
        i = zzcf;
        zzcf = i + 1;
        return Integer.toString(i);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:31:0x00d9  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.tasks.TaskCompletionSource, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v14, types: [java.util.concurrent.TimeUnit] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00d3 -> B:65:0x00de). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00d9 -> B:65:0x00de). Please report as a decompilation issue!!! */
    private final Bundle zze(Bundle bundle) throws IOException {
        TaskCompletionSource taskCompletionSource;
        ?? r1;
        String strZzah = zzah();
        ?? taskCompletionSource2 = new TaskCompletionSource();
        synchronized (this.zzcs) {
            this.zzcs.put(strZzah, taskCompletionSource2);
        }
        if (this.zzan.zzac() == 0) {
            throw new IOException("MISSING_INSTANCEID_SERVICE");
        }
        Intent intent = new Intent();
        intent.setPackage("com.google.android.gms");
        if (this.zzan.zzac() == 2) {
            intent.setAction("com.google.iid.TOKEN_REQUEST");
        } else {
            intent.setAction("com.google.android.c2dm.intent.REGISTER");
        }
        intent.putExtras(bundle);
        zza(this.zzx, intent);
        StringBuilder sb = new StringBuilder(String.valueOf(strZzah).length() + 5);
        sb.append("|ID|");
        sb.append(strZzah);
        sb.append("|");
        intent.putExtra("kid", sb.toString());
        int i = 3;
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            String strValueOf = String.valueOf(intent.getExtras());
            StringBuilder sb2 = new StringBuilder(String.valueOf(strValueOf).length() + 8);
            sb2.append("Sending ");
            sb2.append(strValueOf);
            Log.d("FirebaseInstanceId", sb2.toString());
        }
        intent.putExtra("google.messenger", this.zzct);
        if (this.zzcu != null || this.zzcv != null) {
            r1 = taskCompletionSource2;
            Message messageObtain = Message.obtain();
            messageObtain.obj = intent;
            try {
                if (this.zzcu != null) {
                    this.zzcu.send(messageObtain);
                    taskCompletionSource = taskCompletionSource2;
                } else {
                    this.zzcv.send(messageObtain);
                    taskCompletionSource = taskCompletionSource2;
                }
            } catch (RemoteException unused) {
                r1 = taskCompletionSource2;
                if (Log.isLoggable("FirebaseInstanceId", i)) {
                    Log.d("FirebaseInstanceId", "Messenger failed, fallback to startService");
                    r1 = taskCompletionSource2;
                }
                r1 = taskCompletionSource2;
                if (this.zzan.zzac() == 2) {
                    this.zzx.sendBroadcast(intent);
                    taskCompletionSource = r1;
                } else {
                    this.zzx.startService(intent);
                    taskCompletionSource = r1;
                }
            }
        } else {
            r1 = taskCompletionSource2;
            if (this.zzan.zzac() == 2) {
                this.zzx.sendBroadcast(intent);
                taskCompletionSource = r1;
            } else {
                this.zzx.startService(intent);
                taskCompletionSource = r1;
            }
        }
        try {
            try {
                Task task = taskCompletionSource.getTask();
                taskCompletionSource2 = 30000;
                i = TimeUnit.MILLISECONDS;
                Bundle bundle2 = (Bundle) Tasks.await(task, 30000L, i);
                synchronized (this.zzcs) {
                    this.zzcs.remove(strZzah);
                }
                return bundle2;
            } catch (Throwable th) {
                synchronized (this.zzcs) {
                    this.zzcs.remove(strZzah);
                    throw th;
                }
            }
        } catch (InterruptedException | TimeoutException unused2) {
            Log.w("FirebaseInstanceId", "No response");
            throw new IOException("TIMEOUT");
        } catch (ExecutionException e) {
            throw new IOException(e);
        }
    }
}
