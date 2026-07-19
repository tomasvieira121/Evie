package com.evie.jigsaw.services.shortcuts;

import android.app.ActivityManager;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import androidx.core.content.p000pm.ShortcutInfoCompat;
import androidx.core.content.p000pm.ShortcutManagerCompat;
import androidx.core.graphics.drawable.IconCompat;
import com.evie.common.services.analytics.AnalyticsService;
import com.evie.common.services.analytics.models.AnalyticsData;
import com.evie.jigsaw.R;
import com.evie.jigsaw.services.images.ImageResolver;
import com.evie.jigsaw.services.images.models.Image;
import com.evie.jigsaw.services.images.models.Rounding;
import com.facebook.common.executors.UiThreadImmediateExecutorService;
import com.facebook.common.references.CloseableReference;
import com.facebook.datasource.DataSource;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.imagepipeline.core.ImagePipeline;
import com.facebook.imagepipeline.datasource.BaseBitmapDataSubscriber;
import com.facebook.imagepipeline.image.CloseableImage;
import com.facebook.imagepipeline.request.ImageRequest;

/* JADX INFO: loaded from: classes.dex */
public class ShortcutService {
    private static final Paint SHORTCUT_BASE_ICON_PAINT = new Paint(7);
    private final AnalyticsService analyticsService;
    private final ImageResolver imageResolver;
    private final float shortcutBadgeMultiplier;

    public ShortcutService(ImageResolver imageResolver, AnalyticsService analyticsService, float f) {
        this.imageResolver = imageResolver;
        this.analyticsService = analyticsService;
        this.shortcutBadgeMultiplier = f;
    }

    public void makeShortcut(final Context context, final String str, final Intent intent, Image image, Image image2, final AnalyticsData analyticsData, String str2) {
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.v2_subcomponent_shortcut_dialog, (ViewGroup) null);
        final EditText editText = (EditText) viewInflate.findViewById(R.id.shortcut_name);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.shortcut_icon);
        editText.setText(str);
        final Bitmap shortcutBitmap = getShortcutBitmap(context, image, image2);
        imageView.setImageBitmap(shortcutBitmap);
        new AlertDialog.Builder(context, 5).setView(viewInflate).setTitle(R.string.shortcut_dialog_title).setPositiveButton(R.string.shortcut_dialog_positive_button, new DialogInterface.OnClickListener() { // from class: com.evie.jigsaw.services.shortcuts.ShortcutService.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                String string = editText.getText().toString();
                ShortcutService.this.sendShortcutIntent(context, string, shortcutBitmap, intent);
                ShortcutService.this.analyticsService.recordShortcutRequestAcceptedEvent(analyticsData, str, string);
            }
        }).setNegativeButton(R.string.shortcut_dialog_negative_button, new DialogInterface.OnClickListener() { // from class: com.evie.jigsaw.services.shortcuts.ShortcutService.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                ShortcutService.this.analyticsService.recordShortcutRequestCanceledEvent(analyticsData);
            }
        }).create().show();
        this.analyticsService.recordShortcutRequestEvent(analyticsData, str2);
    }

    public void loadShortcut(Context context, Image image) {
        Uri uriResolve = this.imageResolver.resolve(image, getShortcutSizeInPixels(context));
        ImagePipeline imagePipeline = Fresco.getImagePipeline();
        if (imagePipeline.isInBitmapMemoryCache(uriResolve)) {
            return;
        }
        imagePipeline.prefetchToBitmapCache(ImageRequest.fromUri(uriResolve), null);
    }

    private Bitmap getShortcutBitmap(Context context, final Image image, final Image image2) {
        final int shortcutSizeInPixels = getShortcutSizeInPixels(context);
        final int iRound = Math.round(this.shortcutBadgeMultiplier * shortcutSizeInPixels);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(shortcutSizeInPixels, shortcutSizeInPixels, Bitmap.Config.ARGB_8888);
        final Canvas canvas = new Canvas(bitmapCreateBitmap);
        int i = shortcutSizeInPixels - iRound;
        final Rect rect = new Rect(i, i, shortcutSizeInPixels, shortcutSizeInPixels);
        final BaseBitmapDataSubscriber baseBitmapDataSubscriber = new BaseBitmapDataSubscriber() { // from class: com.evie.jigsaw.services.shortcuts.ShortcutService.3
            @Override // com.facebook.datasource.BaseDataSubscriber
            protected void onFailureImpl(DataSource<CloseableReference<CloseableImage>> dataSource) {
            }

            @Override // com.facebook.imagepipeline.datasource.BaseBitmapDataSubscriber
            protected void onNewResultImpl(Bitmap bitmap) {
                canvas.drawBitmap(bitmap, new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight()), rect, (Paint) null);
            }
        };
        final Rect rect2 = new Rect(0, 0, shortcutSizeInPixels, shortcutSizeInPixels);
        drawImage(image, shortcutSizeInPixels, new BaseBitmapDataSubscriber() { // from class: com.evie.jigsaw.services.shortcuts.ShortcutService.4
            @Override // com.facebook.datasource.BaseDataSubscriber
            protected void onFailureImpl(DataSource<CloseableReference<CloseableImage>> dataSource) {
            }

            @Override // com.facebook.imagepipeline.datasource.BaseBitmapDataSubscriber
            protected void onNewResultImpl(Bitmap bitmap) {
                Paint paint = new Paint(ShortcutService.SHORTCUT_BASE_ICON_PAINT);
                Rect rect3 = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
                if (image.getRounding() == Rounding.circle) {
                    canvas.drawARGB(0, 0, 0, 0);
                    paint.setColor(-12434878);
                    Canvas canvas2 = canvas;
                    int i2 = shortcutSizeInPixels;
                    canvas2.drawCircle(i2 / 2, i2 / 2, i2 / 2, paint);
                    paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
                }
                canvas.drawBitmap(bitmap, rect3, rect2, paint);
                ShortcutService.this.drawImage(image2, iRound, baseBitmapDataSubscriber);
            }
        });
        return bitmapCreateBitmap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void drawImage(Image image, int i, BaseBitmapDataSubscriber baseBitmapDataSubscriber) {
        Uri uriResolve = this.imageResolver.resolve(image, i);
        if (uriResolve == null) {
            return;
        }
        Fresco.getImagePipeline().fetchDecodedImage(ImageRequest.fromUri(uriResolve), null).subscribe(baseBitmapDataSubscriber, UiThreadImmediateExecutorService.getInstance());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendShortcutIntent(Context context, String str, Bitmap bitmap, Intent intent) {
        if (Build.VERSION.SDK_INT >= 26) {
            String str2 = String.format("%s:%s", intent.getPackage(), str);
            if (ShortcutManagerCompat.requestPinShortcut(context, new ShortcutInfoCompat.Builder(context, str2).setIntent(intent).setIcon(IconCompat.createWithBitmap(bitmap)).setShortLabel(str).build(), null)) {
                return;
            }
            Log.w("ShortcutService", "Failed to add shortcut " + str2);
            return;
        }
        Intent intent2 = new Intent("com.android.launcher.action.INSTALL_SHORTCUT");
        intent2.putExtra("android.intent.extra.shortcut.NAME", str);
        intent2.putExtra("android.intent.extra.shortcut.ICON", bitmap);
        intent2.putExtra("android.intent.extra.shortcut.INTENT", intent);
        context.sendBroadcast(intent2);
    }

    private static int getShortcutSizeInPixels(Context context) {
        return ((ActivityManager) context.getSystemService("activity")).getLauncherLargeIconSize();
    }
}
