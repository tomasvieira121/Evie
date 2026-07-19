package com.google.firebase.messaging;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.iid.zzab;
import com.google.firebase.iid.zzav;
import com.google.firebase.iid.zzb;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public class FirebaseMessagingService extends zzb {
    private static final Queue<String> zzdr = new ArrayDeque(10);

    public void onDeletedMessages() {
    }

    public void onMessageReceived(RemoteMessage remoteMessage) {
    }

    public void onMessageSent(String str) {
    }

    public void onNewToken(String str) {
    }

    public void onSendError(String str, Exception exc) {
    }

    @Override // com.google.firebase.iid.zzb
    protected final Intent zzb(Intent intent) {
        return zzav.zzai().zzaj();
    }

    @Override // com.google.firebase.iid.zzb
    public final boolean zzc(Intent intent) {
        if (!"com.google.firebase.messaging.NOTIFICATION_OPEN".equals(intent.getAction())) {
            return false;
        }
        PendingIntent pendingIntent = (PendingIntent) intent.getParcelableExtra("pending_intent");
        if (pendingIntent != null) {
            try {
                pendingIntent.send();
            } catch (PendingIntent.CanceledException unused) {
                Log.e("FirebaseMessaging", "Notification pending intent canceled");
            }
        }
        if (!MessagingAnalytics.shouldUploadMetrics(intent)) {
            return true;
        }
        MessagingAnalytics.logNotificationOpen(intent);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:69:0x0118  */
    @Override // com.google.firebase.iid.zzb
    public final void zzd(Intent intent) {
        Task<Void> taskZza;
        boolean z;
        String action = intent.getAction();
        if ("com.google.android.c2dm.intent.RECEIVE".equals(action) || "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT".equals(action)) {
            String stringExtra = intent.getStringExtra("google.message_id");
            if (TextUtils.isEmpty(stringExtra)) {
                taskZza = Tasks.forResult(null);
            } else {
                Bundle bundle = new Bundle();
                bundle.putString("google.message_id", stringExtra);
                taskZza = zzab.zzc(this).zza(2, bundle);
            }
            if (TextUtils.isEmpty(stringExtra)) {
                z = false;
            } else if (zzdr.contains(stringExtra)) {
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    String strValueOf = String.valueOf(stringExtra);
                    Log.d("FirebaseMessaging", strValueOf.length() != 0 ? "Received duplicate message: ".concat(strValueOf) : new String("Received duplicate message: "));
                }
                z = true;
            } else {
                if (zzdr.size() >= 10) {
                    zzdr.remove();
                }
                zzdr.add(stringExtra);
                z = false;
            }
            if (!z) {
                String stringExtra2 = intent.getStringExtra("message_type");
                if (stringExtra2 == null) {
                    stringExtra2 = "gcm";
                }
                switch (stringExtra2) {
                    case "gcm":
                        if (MessagingAnalytics.shouldUploadMetrics(intent)) {
                            MessagingAnalytics.logNotificationReceived(intent);
                        }
                        Bundle extras = intent.getExtras();
                        if (extras == null) {
                            extras = new Bundle();
                        }
                        extras.remove("androidx.contentpager.content.wakelockid");
                        if (zza.zzf(extras)) {
                            if (!new zza(this).zzh(extras)) {
                                if (MessagingAnalytics.shouldUploadMetrics(intent)) {
                                    MessagingAnalytics.logNotificationForeground(intent);
                                }
                                onMessageReceived(new RemoteMessage(extras));
                            }
                            break;
                        } else {
                            onMessageReceived(new RemoteMessage(extras));
                            break;
                        }
                        break;
                    case "deleted_messages":
                        onDeletedMessages();
                        break;
                    case "send_event":
                        onMessageSent(intent.getStringExtra("google.message_id"));
                        break;
                    case "send_error":
                        String stringExtra3 = intent.getStringExtra("google.message_id");
                        if (stringExtra3 == null) {
                            stringExtra3 = intent.getStringExtra("message_id");
                        }
                        onSendError(stringExtra3, new SendException(intent.getStringExtra("error")));
                        break;
                    default:
                        String strValueOf2 = String.valueOf(stringExtra2);
                        Log.w("FirebaseMessaging", strValueOf2.length() != 0 ? "Received message with unknown type: ".concat(strValueOf2) : new String("Received message with unknown type: "));
                        break;
                }
            }
            try {
                Tasks.await(taskZza, 1L, TimeUnit.SECONDS);
                return;
            } catch (InterruptedException | ExecutionException | TimeoutException e) {
                String strValueOf3 = String.valueOf(e);
                StringBuilder sb = new StringBuilder(String.valueOf(strValueOf3).length() + 20);
                sb.append("Message ack failed: ");
                sb.append(strValueOf3);
                Log.w("FirebaseMessaging", sb.toString());
                return;
            }
        }
        if ("com.google.firebase.messaging.NOTIFICATION_DISMISS".equals(action)) {
            if (MessagingAnalytics.shouldUploadMetrics(intent)) {
                MessagingAnalytics.logNotificationDismiss(intent);
            }
        } else if ("com.google.firebase.messaging.NEW_TOKEN".equals(action)) {
            onNewToken(intent.getStringExtra("token"));
        } else {
            String strValueOf4 = String.valueOf(intent.getAction());
            Log.d("FirebaseMessaging", strValueOf4.length() != 0 ? "Unknown intent action: ".concat(strValueOf4) : new String("Unknown intent action: "));
        }
    }

    static void zzj(Bundle bundle) {
        Iterator<String> it = bundle.keySet().iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (next != null && next.startsWith("google.c.")) {
                it.remove();
            }
        }
    }
}
