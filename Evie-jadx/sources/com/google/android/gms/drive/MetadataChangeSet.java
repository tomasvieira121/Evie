package com.google.android.gms.drive;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.drive.metadata.CustomPropertyKey;
import com.google.android.gms.drive.metadata.internal.AppVisibleCustomProperties;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.internal.drive.zzhp;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class MetadataChangeSet {
    public static final MetadataChangeSet zzav = new MetadataChangeSet(MetadataBundle.zzaw());
    private final MetadataBundle zzaw;

    public static class Builder {
        private final MetadataBundle zzaw = MetadataBundle.zzaw();
        private AppVisibleCustomProperties.zza zzax;

        private static void zza(String str, int i, int i2) {
            Preconditions.checkArgument(i2 <= i, String.format(Locale.US, "%s must be no more than %d bytes, but is %d bytes.", str, Integer.valueOf(i), Integer.valueOf(i2)));
        }

        private static int zzb(String str) {
            if (str == null) {
                return 0;
            }
            return str.getBytes().length;
        }

        private final AppVisibleCustomProperties.zza zzq() {
            if (this.zzax == null) {
                this.zzax = new AppVisibleCustomProperties.zza();
            }
            return this.zzax;
        }

        public MetadataChangeSet build() {
            if (this.zzax != null) {
                this.zzaw.zzb(zzhp.zzix, this.zzax.zzat());
            }
            return new MetadataChangeSet(this.zzaw);
        }

        public Builder setCustomProperty(CustomPropertyKey customPropertyKey, String str) {
            Preconditions.checkNotNull(customPropertyKey, "key");
            Preconditions.checkNotNull(str, "value");
            zza("The total size of key string and value string of a custom property", 124, zzb(customPropertyKey.getKey()) + zzb(str));
            zzq().zza(customPropertyKey, str);
            return this;
        }

        public Builder setDescription(String str) {
            this.zzaw.zzb(zzhp.zziy, str);
            return this;
        }

        public Builder setMimeType(String str) {
            Preconditions.checkNotNull(str);
            this.zzaw.zzb(zzhp.zzjs, str);
            return this;
        }

        public Builder setTitle(String str) {
            Preconditions.checkNotNull(str, "Title cannot be null.");
            this.zzaw.zzb(zzhp.zzkb, str);
            return this;
        }
    }

    public MetadataChangeSet(MetadataBundle metadataBundle) {
        this.zzaw = metadataBundle.zzax();
    }

    public final String getMimeType() {
        return (String) this.zzaw.zza(zzhp.zzjs);
    }

    public final MetadataBundle zzp() {
        return this.zzaw;
    }
}
