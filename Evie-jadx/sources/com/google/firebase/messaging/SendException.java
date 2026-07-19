package com.google.firebase.messaging;

import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class SendException extends Exception {
    private final int errorCode;

    /* JADX WARN: Code duplicated, block: B:27:0x0054  */
    SendException(String str) {
        super(str);
        int i = 4;
        if (str != null) {
            switch (str.toLowerCase(Locale.US)) {
                case "invalid_parameters":
                case "missing_to":
                    i = 1;
                    break;
                case "messagetoobig":
                    i = 2;
                    break;
                case "service_not_available":
                    i = 3;
                    break;
                case "toomanymessages":
                    break;
                default:
                    i = 0;
                    break;
            }
        } else {
            i = 0;
        }
        this.errorCode = i;
    }
}
