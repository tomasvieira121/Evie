package com.evie.jigsaw.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.Html;
import android.text.Layout;
import android.text.SpannedString;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.CharacterStyle;
import android.text.style.ClickableSpan;
import android.text.style.DynamicDrawableSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.URLSpan;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.evie.common.services.links.LinkRequest;
import com.evie.common.services.links.LinkResolver;
import com.evie.jigsaw.JigsawInjector;
import com.evie.jigsaw.R;
import com.evie.jigsaw.components.base.AbstractComponent;
import com.facebook.common.references.CloseableReference;
import com.facebook.datasource.BaseDataSubscriber;
import com.facebook.datasource.DataSource;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.imagepipeline.core.ImagePipeline;
import com.facebook.imagepipeline.image.CloseableBitmap;
import com.facebook.imagepipeline.image.CloseableImage;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.Stack;
import org.xml.sax.XMLReader;

/* JADX INFO: loaded from: classes.dex */
public class RichTextView extends TextView {
    private AbstractComponent<?> mComponent;
    private final Handler mHandler;
    private Set<Uri> mImagesRequested;
    transient LinkResolver mLinkResolver;
    private final List<CloseableReference<?>> mReferences;
    private String mText;

    public RichTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mImagesRequested = new HashSet();
        this.mHandler = new Handler(Looper.getMainLooper());
        this.mReferences = new ArrayList();
        initialize();
    }

    private void initialize() {
        ((JigsawInjector) getContext().getApplicationContext()).getJigsaw().inject(this);
    }

    public void setComponent(AbstractComponent<?> abstractComponent) {
        this.mComponent = abstractComponent;
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 1 || action == 0) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            int totalPaddingLeft = x - getTotalPaddingLeft();
            int totalPaddingTop = y - getTotalPaddingTop();
            int scrollX = totalPaddingLeft + getScrollX();
            int scrollY = totalPaddingTop + getScrollY();
            Layout layout = getLayout();
            int offsetForHorizontal = layout.getOffsetForHorizontal(layout.getLineForVertical(scrollY), scrollX);
            ClickableSpan[] clickableSpanArr = (ClickableSpan[]) ((SpannedString) getText()).getSpans(offsetForHorizontal, offsetForHorizontal, ClickableSpan.class);
            if (clickableSpanArr.length != 0) {
                if (action == 1) {
                    String url = ((URLSpan) clickableSpanArr[0]).getURL();
                    AbstractComponent<?> abstractComponent = this.mComponent;
                    this.mLinkResolver.resolve(getContext(), new LinkRequest(url).analyticsData(abstractComponent == null ? null : abstractComponent.getAnalytics()));
                }
                return true;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setRichText(String str) {
        this.mText = str;
        setText(Html.fromHtml("<html>" + this.mText + "</html>", new RichTextImageGetter(), new RichTextTagHandler()));
    }

    protected void finalize() throws Throwable {
        Iterator<CloseableReference<?>> it = this.mReferences.iterator();
        while (it.hasNext()) {
            CloseableReference.closeSafely(it.next());
        }
        super.finalize();
    }

    private class RichTextImageGetter implements Html.ImageGetter {
        private final ImagePipeline mImagePipeline;
        private final Drawable mPlaceholderColor;

        private RichTextImageGetter() {
            this.mImagePipeline = Fresco.getImagePipeline();
            this.mPlaceholderColor = new ColorDrawable(RichTextView.this.getResources().getColor(R.color.placeholder));
        }

        @Override // android.text.Html.ImageGetter
        public Drawable getDrawable(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            Paint.FontMetrics fontMetrics = RichTextView.this.getPaint().getFontMetrics();
            float f = ((-fontMetrics.top) + fontMetrics.bottom) * 1.1f;
            Uri uri = Uri.parse(str);
            if (uri.getScheme().equals("local")) {
                Drawable drawable = RichTextView.this.getResources().getDrawable(Integer.parseInt(uri.getSchemeSpecificPart()));
                drawable.setBounds(0, 0, (int) (f / (drawable.getIntrinsicWidth() / drawable.getIntrinsicHeight())), (int) f);
                return drawable;
            }
            ImageRequest imageRequestBuild = ImageRequestBuilder.newBuilderWithSource(uri).build();
            ImageView imageView = new ImageView(RichTextView.this.getContext());
            boolean z = true;
            if (RichTextView.this.mImagesRequested.add(uri)) {
                this.mImagePipeline.prefetchToBitmapCache(imageRequestBuild, null).subscribe(new BaseDataSubscriber<Void>() { // from class: com.evie.jigsaw.views.RichTextView.RichTextImageGetter.1
                    @Override // com.facebook.datasource.BaseDataSubscriber
                    protected void onFailureImpl(DataSource<Void> dataSource) {
                    }

                    @Override // com.facebook.datasource.BaseDataSubscriber
                    protected void onNewResultImpl(DataSource<Void> dataSource) {
                        RichTextView.this.mHandler.post(new Runnable() { // from class: com.evie.jigsaw.views.RichTextView.RichTextImageGetter.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                RichTextView.this.setRichText(RichTextView.this.mText);
                            }
                        });
                    }
                }, AsyncTask.THREAD_POOL_EXECUTOR);
            } else {
                DataSource<CloseableReference<CloseableImage>> dataSourceFetchImageFromBitmapCache = this.mImagePipeline.fetchImageFromBitmapCache(imageRequestBuild, null);
                try {
                    CloseableReference<CloseableImage> result = dataSourceFetchImageFromBitmapCache.getResult();
                    if (result != null) {
                        try {
                            CloseableReference<CloseableImage> closeableReferenceM574clone = result.m574clone();
                            RichTextView.this.mReferences.add(closeableReferenceM574clone);
                            CloseableBitmap closeableBitmap = (CloseableBitmap) closeableReferenceM574clone.get();
                            float width = (closeableBitmap.getWidth() / closeableBitmap.getHeight()) * f;
                            imageView.setImageBitmap(closeableBitmap.getUnderlyingBitmap());
                            imageView.getDrawable().setBounds(0, 0, (int) width, (int) f);
                            CloseableReference.closeSafely(result);
                            z = false;
                        } catch (Throwable th) {
                            CloseableReference.closeSafely(result);
                            throw th;
                        }
                    }
                    dataSourceFetchImageFromBitmapCache.close();
                } catch (Throwable th2) {
                    dataSourceFetchImageFromBitmapCache.close();
                    throw th2;
                }
            }
            if (z) {
                imageView.setImageDrawable(this.mPlaceholderColor);
                imageView.getDrawable().setBounds(0, 0, (int) (f / 1.0f), (int) f);
            }
            return imageView.getDrawable();
        }
    }

    private class RichTextTagHandler implements Html.TagHandler {
        private Stack<Object> marks;

        private RichTextTagHandler() {
            this.marks = new Stack<>();
        }

        /* JADX WARN: Code duplicated, block: B:26:0x005d  */
        @Override // android.text.Html.TagHandler
        public void handleTag(boolean z, String str, Editable editable, XMLReader xMLReader) {
            if (z) {
                editable.setSpan(this.marks.push(new Object()), 0, editable.length(), 17);
                return;
            }
            switch (str) {
                case "box":
                    close(editable, RichTextView.this.new BoxedTextSpan());
                    break;
                case "img":
                    break;
                case "underline":
                    close(editable, RichTextView.this.new UnderlineSpan(true));
                    break;
                case "nounderline":
                    close(editable, RichTextView.this.new UnderlineSpan(false));
                    break;
                default:
                    editable.getSpanEnd(this.marks.peek());
                    String[] strArrSplit = str.split("-", 2);
                    if (strArrSplit.length == 2) {
                        switch (strArrSplit[0]) {
                            case "bg":
                                close(editable, new RoundedBackgroundColorSpan(RichTextView.this, Color.parseColor("#" + strArrSplit[1])));
                                break;
                            case "fg":
                                close(editable, new ForegroundColorSpan(Color.parseColor("#" + strArrSplit[1])));
                                break;
                            case "fbg":
                                String[] strArrSplit2 = strArrSplit[1].split("-", 2);
                                close(editable, RichTextView.this.new RoundedBackgroundColorSpan(Color.parseColor("#" + strArrSplit2[0]), Color.parseColor("#" + strArrSplit2[1])));
                                break;
                            default:
                                close(editable);
                                break;
                        }
                    } else {
                        close(editable);
                        break;
                    }
                    break;
            }
        }

        private void close(Editable editable) {
            editable.removeSpan(this.marks.pop());
        }

        private void close(Editable editable, Object obj) {
            Object objPop = this.marks.pop();
            editable.setSpan(obj, editable.getSpanEnd(objPop), editable.length(), 33);
            editable.removeSpan(objPop);
        }
    }

    private class RoundedBackgroundColorSpan extends DynamicDrawableSpan {
        private final int mBackgroundColor;
        private final Drawable mBackgroundDrawable;
        private final int mForegroundColor;

        public RoundedBackgroundColorSpan(RichTextView richTextView, int i) {
            this(i, -16777216);
        }

        public RoundedBackgroundColorSpan(int i, int i2) {
            this.mBackgroundDrawable = ContextCompat.getDrawable(RichTextView.this.getContext(), R.drawable.richtext_background);
            this.mForegroundColor = i;
            this.mBackgroundColor = i2;
        }

        @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
        public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
            float fMeasureText = paint.measureText(charSequence, i, i2);
            Paint.FontMetrics fontMetrics = paint.getFontMetrics();
            this.mBackgroundDrawable.setBounds(0, 0, (int) fMeasureText, (int) (fontMetrics.bottom - fontMetrics.top));
            return super.getSize(paint, charSequence, i, i2, fontMetricsInt);
        }

        @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
        public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
            this.mBackgroundDrawable.setColorFilter(this.mBackgroundColor, PorterDuff.Mode.SRC);
            super.draw(canvas, charSequence, i, i2, f, i3, i4, i5, paint);
            paint.setFakeBoldText(true);
            paint.setColor(this.mForegroundColor);
            canvas.drawText(charSequence, i, i2, f, i4, paint);
        }

        @Override // android.text.style.DynamicDrawableSpan
        public Drawable getDrawable() {
            return this.mBackgroundDrawable;
        }
    }

    private class BoxedTextSpan extends DynamicDrawableSpan {
        private final Drawable mBoxDrawable;
        private final float mBoxStrokeWidth;
        private final int mBoxTextColor;
        private int mPadding;

        BoxedTextSpan() {
            super(1);
            this.mBoxStrokeWidth = RichTextView.this.getResources().getDimension(R.dimen.richtext_box_stroke_width);
            this.mBoxTextColor = ContextCompat.getColor(RichTextView.this.getContext(), R.color.evie_black);
            this.mBoxDrawable = ContextCompat.getDrawable(RichTextView.this.getContext(), R.drawable.richtext_box);
        }

        @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
        public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
            float fMeasureText = paint.measureText(charSequence, i, i2);
            this.mPadding = (int) ((paint.measureText(" ") * 0.75f) + this.mBoxStrokeWidth);
            this.mBoxDrawable.setBounds(0, 0, (int) (fMeasureText + (this.mPadding * 2)), (int) ((-paint.getFontMetrics().ascent) + (this.mPadding * 2)));
            return super.getSize(paint, charSequence, i, i2, fontMetricsInt);
        }

        @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
        public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
            int i6 = this.mPadding;
            super.draw(canvas, charSequence, i, i2, f - i6, i3, i4, i5 + i6, paint);
            paint.setColor(this.mBoxTextColor);
            canvas.drawText(charSequence, i, i2, f, i4, paint);
        }

        @Override // android.text.style.DynamicDrawableSpan
        public Drawable getDrawable() {
            return this.mBoxDrawable;
        }
    }

    private class UnderlineSpan extends CharacterStyle {
        private final boolean mUnderline;

        UnderlineSpan(boolean z) {
            this.mUnderline = z;
        }

        @Override // android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            textPaint.setUnderlineText(this.mUnderline);
        }
    }
}
