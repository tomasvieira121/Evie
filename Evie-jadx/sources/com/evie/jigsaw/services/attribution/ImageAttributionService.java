package com.evie.jigsaw.services.attribution;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import androidx.browser.customtabs.CustomTabsIntent;
import com.evie.jigsaw.R;
import com.evie.jigsaw.listeners.DebouncingOnClickListener;
import com.evie.jigsaw.services.images.ImageResolver;
import com.evie.jigsaw.services.images.models.EvieImage;
import com.evie.jigsaw.views.RichTextView;
import com.facebook.drawee.view.SimpleDraweeView;

/* JADX INFO: loaded from: classes.dex */
public class ImageAttributionService {
    private final ImageResolver imageResolver;

    public ImageAttributionService(ImageResolver imageResolver) {
        this.imageResolver = imageResolver;
    }

    public void showAttribution(Context context, EvieImage evieImage) {
        new AttributionDialog(context, evieImage).show();
    }

    private class AttributionDialog extends Dialog {
        private final Context mContext;
        private final EvieImage mImage;
        private final transient View.OnClickListener mOpenAttributionListener;

        AttributionDialog(Context context, EvieImage evieImage) {
            super(context);
            this.mOpenAttributionListener = new DebouncingOnClickListener() { // from class: com.evie.jigsaw.services.attribution.ImageAttributionService.AttributionDialog.1
                @Override // com.evie.jigsaw.listeners.DebouncingOnClickListener
                protected void click(View view) {
                    view.getContext().startActivity(new CustomTabsIntent.Builder().setShowTitle(true).build().intent.setData(Uri.parse(AttributionDialog.this.mImage.getAttribution().getLink())));
                }
            };
            this.mContext = context;
            this.mImage = evieImage;
        }

        @Override // android.app.Dialog
        protected void onCreate(Bundle bundle) {
            requestWindowFeature(1);
            View viewInflate = getLayoutInflater().inflate(R.layout.v2_subcomponent_attribution_dialog, (ViewGroup) null);
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) viewInflate.findViewById(R.id.attribution_image);
            ((RichTextView) viewInflate.findViewById(R.id.attribution_source_text)).setRichText(this.mImage.getAttribution().getText());
            simpleDraweeView.setImageURI(ImageAttributionService.this.imageResolver.resolve(this.mImage, ImageAttributionService.getScreenWidth(this.mContext)));
            setContentView(viewInflate);
            Window window = getWindow();
            window.setBackgroundDrawable(new ColorDrawable(0));
            window.setLayout(-1, -1);
            viewInflate.findViewById(R.id.attribution_background).setOnClickListener(new View.OnClickListener() { // from class: com.evie.jigsaw.services.attribution.ImageAttributionService.AttributionDialog.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AttributionDialog.this.dismiss();
                }
            });
            viewInflate.findViewById(R.id.attribution_source).setOnClickListener(this.mOpenAttributionListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getScreenWidth(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point.x;
    }
}
