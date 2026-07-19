package com.evie.jigsaw.components.content;

import android.content.Context;
import android.graphics.Paint;
import android.text.Html;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.evie.common.services.links.LinkRequest;
import com.evie.common.services.links.LinkResolver;
import com.evie.jigsaw.Jigsaw;
import com.evie.jigsaw.R;
import com.evie.jigsaw.components.base.AbstractComponent;
import com.evie.jigsaw.listeners.DebouncingOnClickListener;
import com.evie.jigsaw.services.actions.ActionPreferenceStore;
import com.evie.jigsaw.services.attribution.ImageAttributionService;
import com.evie.jigsaw.services.images.models.EvieImage;
import com.evie.jigsaw.views.RichTextView;
import com.facebook.drawee.view.SimpleDraweeView;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class DetailsComponent extends AbstractComponent<Holder> {
    transient ActionPreferenceStore actionPreferenceStore;
    transient ImageAttributionService attributionService;
    private EvieImage icon;
    transient LinkResolver linkResolver;
    private EvieImage poster;
    private static final DetailProcessor DESCENT_IGNORANT_PROCESSOR = new DescentIgnorantDetailProcessor();
    private static final DetailProcessor LINE_SPACING_PROCESSOR = new LineSpacingDetailProcessor();
    private static final DetailProcessor ALL_PROCESSORS = new ComposedDetailProcessor(DESCENT_IGNORANT_PROCESSOR, LINE_SPACING_PROCESSOR);
    private List<Detail> items = Collections.emptyList();
    private List<String> links = Collections.emptyList();
    private Spacing spacing = Spacing.normal;
    private final transient View.OnClickListener mLinksListener = new DebouncingOnClickListener() { // from class: com.evie.jigsaw.components.content.DetailsComponent.1
        @Override // com.evie.jigsaw.listeners.DebouncingOnClickListener
        protected void click(View view) {
            DetailsComponent.this.linkResolver.resolve(view.getContext(), new LinkRequest((List<String>) DetailsComponent.this.links).analyticsData(DetailsComponent.this.getAnalytics()));
        }
    };
    private final transient View.OnClickListener mAttributionListener = new DebouncingOnClickListener() { // from class: com.evie.jigsaw.components.content.DetailsComponent.2
        @Override // com.evie.jigsaw.listeners.DebouncingOnClickListener
        protected void click(View view) {
            DetailsComponent.this.attributionService.showAttribution(view.getContext(), DetailsComponent.this.poster);
        }
    };

    private interface DetailProcessor {
        void process(Context context, RichTextView richTextView, DetailsComponent detailsComponent);
    }

    public DetailsComponent setItems(List<Detail> list) {
        this.items = list;
        return this;
    }

    public DetailsComponent setSpacing(Spacing spacing) {
        this.spacing = spacing;
        return this;
    }

    public enum Alignment {
        left(3),
        center(17),
        right(5);

        private final int value;

        Alignment(int i) {
            this.value = i;
        }
    }

    public static class Detail {
        private String action;
        private String attribution;
        private String text;
        private DetailStyle style = DetailStyle.content;
        private Integer lines = 1;
        private Map<String, String> options = Collections.emptyMap();
        private Alignment alignment = Alignment.left;

        public Detail setAlignment(Alignment alignment) {
            this.alignment = alignment;
            return this;
        }

        public Detail setLines(Integer num) {
            this.lines = num;
            return this;
        }

        public Detail setStyle(DetailStyle detailStyle) {
            this.style = detailStyle;
            return this;
        }

        public Detail setText(String str) {
            this.text = str;
            return this;
        }

        public String resolveText(ActionPreferenceStore actionPreferenceStore) {
            String str = this.action;
            if (str != null) {
                String str2 = this.options.get(actionPreferenceStore.get(str));
                if (!TextUtils.isEmpty(str2)) {
                    return str2;
                }
            }
            return this.text;
        }
    }

    private static final class DescentIgnorantDetailProcessor implements DetailProcessor {
        private DescentIgnorantDetailProcessor() {
        }

        @Override // com.evie.jigsaw.components.content.DetailsComponent.DetailProcessor
        public void process(Context context, RichTextView richTextView, DetailsComponent detailsComponent) {
            Paint.FontMetrics fontMetrics = richTextView.getPaint().getFontMetrics();
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) richTextView.getLayoutParams();
            marginLayoutParams.bottomMargin = (int) (marginLayoutParams.bottomMargin - fontMetrics.descent);
        }
    }

    private static final class LineSpacingDetailProcessor implements DetailProcessor {
        @Override // com.evie.jigsaw.components.content.DetailsComponent.DetailProcessor
        public void process(Context context, RichTextView richTextView, DetailsComponent detailsComponent) {
            richTextView.setLineSpacing(detailsComponent.spacing.getLineSpacing(context), 1.0f);
        }
    }

    private static final class ComposedDetailProcessor implements DetailProcessor {
        private final DetailProcessor[] processors;

        public ComposedDetailProcessor(DetailProcessor... detailProcessorArr) {
            this.processors = detailProcessorArr;
        }

        @Override // com.evie.jigsaw.components.content.DetailsComponent.DetailProcessor
        public void process(Context context, RichTextView richTextView, DetailsComponent detailsComponent) {
            for (DetailProcessor detailProcessor : this.processors) {
                detailProcessor.process(context, richTextView, detailsComponent);
            }
        }
    }

    public enum DetailStyle {
        big_title(R.style.TextBigTitle, DetailsComponent.ALL_PROCESSORS),
        title(R.style.TextTitle, DetailsComponent.ALL_PROCESSORS),
        subtitle(R.style.TextSubtitle, DetailsComponent.ALL_PROCESSORS),
        content(R.style.TextContent, DetailsComponent.ALL_PROCESSORS);

        private final DetailProcessor mProcessor;
        private final int mStyle;

        DetailStyle(int i, DetailProcessor detailProcessor) {
            this.mStyle = i;
            this.mProcessor = detailProcessor;
        }

        public RichTextView inflate(Context context, ViewGroup viewGroup, DetailsComponent detailsComponent) {
            RichTextView richTextView = (RichTextView) LayoutInflater.from(context).inflate(R.layout.v2_subcomponent_details_item, viewGroup, false);
            richTextView.setTextAppearance(context, this.mStyle);
            this.mProcessor.process(context, richTextView, detailsComponent);
            return richTextView;
        }
    }

    public enum Spacing {
        normal(R.dimen.details_normal_view_spacing, R.dimen.details_normal_line_spacing),
        text(R.dimen.details_text_only_view_spacing, R.dimen.details_text_only_line_spacing),
        wide(R.dimen.details_wide_view_spacing, R.dimen.details_wide_line_spacing);

        private final int mLineSpacing;
        private final int mViewSpacing;

        Spacing(int i, int i2) {
            this.mViewSpacing = i;
            this.mLineSpacing = i2;
        }

        public int getViewSpacing(Context context) {
            return context.getResources().getDimensionPixelSize(this.mViewSpacing);
        }

        public int getLineSpacing(Context context) {
            return context.getResources().getDimensionPixelSize(this.mLineSpacing);
        }
    }

    @Override // com.evie.jigsaw.components.base.AbstractComponent
    public void initialize(Jigsaw jigsaw) {
        super.initialize(jigsaw);
        jigsaw.inject(this);
    }

    public void bindWithAttribution(final RichTextView richTextView, final int i, final String str, final String str2) {
        richTextView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.evie.jigsaw.components.content.DetailsComponent.3
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                richTextView.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                DetailsComponent.this.bind(richTextView, str + "&nbsp;" + str2, 8);
                if (richTextView.getLineCount() > i) {
                    TextPaint paint = richTextView.getPaint();
                    String string = Html.fromHtml("&#8230; " + str2).toString();
                    float[] fArr = new float[string.length() * 2];
                    int textWidths = paint.getTextWidths(string, fArr);
                    String str3 = str + string;
                    int lineEnd = richTextView.getLayout().getLineEnd(i - 1);
                    int i2 = lineEnd - 1;
                    while (paint.getTextWidths(str3.substring(i2, lineEnd), fArr) < textWidths) {
                        i2--;
                        if (fArr.length < lineEnd - i2) {
                            fArr = new float[fArr.length * 2];
                        }
                    }
                    int iLastIndexOf = str.substring(0, i2).lastIndexOf(32);
                    if (iLastIndexOf <= 0) {
                        iLastIndexOf = i2;
                    }
                    richTextView.setRichText(str.substring(0, iLastIndexOf) + "&#8230; " + str2);
                }
            }
        });
    }

    @Override // com.evie.jigsaw.components.base.AbstractComponent
    public void bind(Context context, Holder holder) {
        super.bind(context, holder);
        bind(holder.icon, this.icon, 8);
        bind(holder.poster, this.poster, 8);
        if (this.items.size() > 0) {
            float viewSpacing = this.spacing.getViewSpacing(context);
            holder.items.removeAllViews();
            for (Detail detail : this.items) {
                if (detail != null) {
                    RichTextView richTextViewInflate = detail.style.inflate(context, holder.items, this);
                    richTextViewInflate.setGravity(detail.alignment.value);
                    richTextViewInflate.setLinkTextColor(richTextViewInflate.getCurrentTextColor());
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) richTextViewInflate.getLayoutParams();
                    marginLayoutParams.bottomMargin = (int) (marginLayoutParams.bottomMargin + viewSpacing);
                    String strResolveText = detail.resolveText(this.actionPreferenceStore);
                    if (TextUtils.isEmpty(detail.attribution)) {
                        richTextViewInflate.setMaxLines(detail.lines.intValue());
                        richTextViewInflate.setEllipsize(TextUtils.TruncateAt.END);
                        bind(richTextViewInflate, strResolveText, 8);
                    } else {
                        bindWithAttribution(richTextViewInflate, detail.lines.intValue(), strResolveText, detail.attribution);
                    }
                    holder.items.addView(richTextViewInflate);
                }
            }
            holder.items.setVisibility(0);
        } else {
            holder.items.setVisibility(8);
        }
        EvieImage evieImage = this.poster;
        if (evieImage != null && evieImage.getAttribution().isValid()) {
            holder.poster.setOnClickListener(this.mAttributionListener);
        }
        if (this.links.size() > 0) {
            holder.itemView.setOnClickListener(this.mLinksListener);
        }
    }

    public static class Holder extends RecyclerView.ViewHolder {
        public final SimpleDraweeView icon;
        public final LinearLayout items;
        public final SimpleDraweeView poster;

        public Holder(View view) {
            super(view);
            this.items = (LinearLayout) view.findViewById(R.id.details_items);
            this.icon = (SimpleDraweeView) view.findViewById(R.id.details_icon);
            this.poster = (SimpleDraweeView) view.findViewById(R.id.details_poster);
        }
    }
}
