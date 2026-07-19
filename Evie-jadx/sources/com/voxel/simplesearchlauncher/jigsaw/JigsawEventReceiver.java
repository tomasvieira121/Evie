package com.voxel.simplesearchlauncher.jigsaw;

import android.content.Context;
import android.content.Intent;
import com.voxel.launcher3.Launcher;

/* JADX INFO: loaded from: classes2.dex */
public class JigsawEventReceiver extends AbstractJigsawEventReceiver {
    @Override // com.voxel.simplesearchlauncher.jigsaw.AbstractJigsawEventReceiver, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (((action.hashCode() == 547188710 && action.equals("com.evie.jigsaw.HANDLE_SEARCH")) ? (byte) 0 : (byte) -1) == 0) {
            startSearchActivity(context);
        } else {
            super.onReceive(context, intent);
        }
    }

    private static void startSearchActivity(Context context) {
        Intent intent = new Intent("android.intent.action.ASSIST");
        intent.addFlags(268435456);
        intent.setClass(context, Launcher.class);
        context.startActivity(intent);
    }
}
