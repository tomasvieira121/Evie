package com.evie.jigsaw.components.content;

import android.content.Context;
import android.content.Intent;
import android.graphics.Point;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.evie.common.services.analytics.AnalyticsService;
import com.evie.common.services.links.LinkCallback;
import com.evie.common.services.links.LinkRequest;
import com.evie.common.services.links.LinkResolver;
import com.evie.jigsaw.Jigsaw;
import com.evie.jigsaw.R;
import com.evie.jigsaw.components.base.AbstractComponent;
import com.evie.jigsaw.listeners.DebouncingOnClickListener;
import com.evie.jigsaw.services.attribution.ImageAttributionService;
import com.evie.jigsaw.services.images.models.EvieImage;
import com.evie.jigsaw.views.RichTextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.gson.annotations.SerializedName;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class MediaComponent extends AbstractComponent<Holder> {
    transient AnalyticsService analyticsService;
    transient ImageAttributionService attributionService;
    private EvieImage image;
    transient LinkResolver linkResolver;
    private EvieImage overlay;

    @SerializedName("video_url")
    private String videoUrl;
    private List<String> links = Collections.emptyList();
    private final transient View.OnClickListener mLinkClickListener = new DebouncingOnClickListener() { // from class: com.evie.jigsaw.components.content.MediaComponent.1
        @Override // com.evie.jigsaw.listeners.DebouncingOnClickListener
        protected void click(final View view) {
            MediaComponent.this.linkResolver.resolve(view.getContext(), new LinkRequest((List<String>) MediaComponent.this.links).analyticsData(MediaComponent.this.getAnalytics()).callback(new LinkCallback() { // from class: com.evie.jigsaw.components.content.MediaComponent.1.1
                @Override // com.evie.common.services.links.LinkCallback
                public boolean onResolved(Intent intent) {
                    MediaComponent.this.fade(view);
                    return true;
                }
            }));
        }
    };
    private final transient View.OnClickListener mPlayVideoListener = new DebouncingOnClickListener() { // from class: com.evie.jigsaw.components.content.MediaComponent.2
        @Override // com.evie.jigsaw.listeners.DebouncingOnClickListener
        public void click(View view) {
            MediaComponent.this.recordVideoEvent();
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(MediaComponent.this.videoUrl));
            intent.putExtra("force_fullscreen", true);
            view.getContext().startActivity(intent);
        }
    };
    private final transient View.OnClickListener mAttributionListener = new DebouncingOnClickListener() { // from class: com.evie.jigsaw.components.content.MediaComponent.3
        @Override // com.evie.jigsaw.listeners.DebouncingOnClickListener
        protected void click(View view) {
            MediaComponent.this.attributionService.showAttribution(view.getContext(), MediaComponent.this.image);
        }
    };

    public MediaComponent setImage(EvieImage evieImage) {
        this.image = evieImage;
        return this;
    }

    public MediaComponent setOverlay(EvieImage evieImage) {
        this.overlay = evieImage;
        return this;
    }

    @Override // com.evie.jigsaw.components.base.AbstractComponent
    public void initialize(Jigsaw jigsaw) {
        super.initialize(jigsaw);
        jigsaw.inject(this);
    }

    @Override // com.evie.jigsaw.components.base.AbstractComponent
    public void bind(Context context, Holder holder) {
        super.bind(context, holder);
        Point pointMeasure = measure(context);
        bind(holder.image, this.image, 0, pointMeasure.x, pointMeasure.y);
        if (!TextUtils.isEmpty(this.videoUrl)) {
            holder.videoButton.setVisibility(0);
            holder.videoButton.setOnClickListener(this.mPlayVideoListener);
            holder.videoButton.getLayoutParams().width = pointMeasure.x;
            holder.videoButton.getLayoutParams().height = pointMeasure.y;
        } else {
            holder.videoButton.setVisibility(8);
        }
        if (this.image.getAttribution().isValid()) {
            if (!TextUtils.isEmpty(this.videoUrl)) {
                bind(holder.attribution, this.image.getAttribution().getText(), 8);
                holder.attribution.setOnClickListener(this.mAttributionListener);
            } else {
                holder.attribution.setVisibility(8);
                holder.itemView.setOnClickListener(this.mAttributionListener);
            }
        } else {
            holder.attribution.setVisibility(8);
            if (this.links.size() > 0) {
                holder.itemView.setOnClickListener(this.mLinkClickListener);
            }
        }
        if (bind(holder.overlay, this.overlay, 8)) {
            holder.itemView.getLayoutParams().height = pointMeasure.y + context.getResources().getDimensionPixelSize(R.dimen.media_overlay_offset);
        }
    }

    @Override // com.evie.jigsaw.components.base.AbstractComponent
    public Point measure(Context context) {
        Point pointMeasure = super.measure(context);
        if (this.image != null) {
            pointMeasure.y = Math.round(pointMeasure.x / this.image.getAspectRatio());
        }
        if (isInset()) {
            int inset = getInset(context) * 2;
            pointMeasure.x -= inset;
            pointMeasure.y -= inset;
        }
        return pointMeasure;
    }

    @Override // com.evie.jigsaw.components.base.AbstractComponent
    protected int getInset(Context context) {
        return context.getResources().getDimensionPixelSize(R.dimen.three_quarter_spacing);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.jigsaw.components.base.AbstractComponent
    public void inset(Holder holder, int i) {
        holder.itemView.setPadding(i, i, i, 0);
    }

    public static class Holder extends RecyclerView.ViewHolder {
        public final RichTextView attribution;
        public final SimpleDraweeView image;
        public final SimpleDraweeView overlay;
        public final SimpleDraweeView videoButton;

        public Holder(View view) {
            super(view);
            this.image = (SimpleDraweeView) view.findViewById(R.id.media_image);
            this.overlay = (SimpleDraweeView) view.findViewById(R.id.media_overlay);
            this.videoButton = (SimpleDraweeView) view.findViewById(R.id.media_video_button);
            this.attribution = (RichTextView) view.findViewById(R.id.media_attribution);
        }
    }
}
