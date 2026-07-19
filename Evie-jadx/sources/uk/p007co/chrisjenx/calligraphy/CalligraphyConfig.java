package uk.p007co.chrisjenx.calligraphy;

import android.R;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.MultiAutoCompleteTextView;
import android.widget.RadioButton;
import android.widget.TextView;
import android.widget.ToggleButton;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.AppCompatCheckedTextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatMultiAutoCompleteTextView;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.appcompat.widget.AppCompatTextView;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class CalligraphyConfig {
    private static final Map<Class<? extends TextView>, Integer> DEFAULT_STYLES = new HashMap();
    private static CalligraphyConfig sInstance;
    private final Set<Class<?>> hasTypefaceViews;
    private final int mAttrId;
    private final Map<Class<? extends TextView>, Integer> mClassStyleAttributeMap;
    private final boolean mCustomViewCreation;
    private final boolean mCustomViewTypefaceSupport;
    private final String mFontPath;
    private final boolean mIsFontSet;
    private final boolean mReflection;

    static {
        DEFAULT_STYLES.put(TextView.class, Integer.valueOf(R.attr.textViewStyle));
        DEFAULT_STYLES.put(Button.class, Integer.valueOf(R.attr.buttonStyle));
        DEFAULT_STYLES.put(EditText.class, Integer.valueOf(R.attr.editTextStyle));
        DEFAULT_STYLES.put(AutoCompleteTextView.class, Integer.valueOf(R.attr.autoCompleteTextViewStyle));
        DEFAULT_STYLES.put(MultiAutoCompleteTextView.class, Integer.valueOf(R.attr.autoCompleteTextViewStyle));
        DEFAULT_STYLES.put(CheckBox.class, Integer.valueOf(R.attr.checkboxStyle));
        DEFAULT_STYLES.put(RadioButton.class, Integer.valueOf(R.attr.radioButtonStyle));
        DEFAULT_STYLES.put(ToggleButton.class, Integer.valueOf(R.attr.buttonStyleToggle));
        if (CalligraphyUtils.canAddV7AppCompatViews()) {
            addAppCompatViews();
        }
    }

    private static void addAppCompatViews() {
        DEFAULT_STYLES.put(AppCompatTextView.class, Integer.valueOf(R.attr.textViewStyle));
        DEFAULT_STYLES.put(AppCompatButton.class, Integer.valueOf(R.attr.buttonStyle));
        DEFAULT_STYLES.put(AppCompatEditText.class, Integer.valueOf(R.attr.editTextStyle));
        DEFAULT_STYLES.put(AppCompatAutoCompleteTextView.class, Integer.valueOf(R.attr.autoCompleteTextViewStyle));
        DEFAULT_STYLES.put(AppCompatMultiAutoCompleteTextView.class, Integer.valueOf(R.attr.autoCompleteTextViewStyle));
        DEFAULT_STYLES.put(AppCompatCheckBox.class, Integer.valueOf(R.attr.checkboxStyle));
        DEFAULT_STYLES.put(AppCompatRadioButton.class, Integer.valueOf(R.attr.radioButtonStyle));
        DEFAULT_STYLES.put(AppCompatCheckedTextView.class, Integer.valueOf(R.attr.checkedTextViewStyle));
    }

    public static void initDefault(CalligraphyConfig calligraphyConfig) {
        sInstance = calligraphyConfig;
    }

    public static CalligraphyConfig get() {
        if (sInstance == null) {
            sInstance = new CalligraphyConfig(new Builder());
        }
        return sInstance;
    }

    protected CalligraphyConfig(Builder builder) {
        this.mIsFontSet = builder.isFontSet;
        this.mFontPath = builder.fontAssetPath;
        this.mAttrId = builder.attrId;
        this.mReflection = builder.reflection;
        this.mCustomViewCreation = builder.customViewCreation;
        this.mCustomViewTypefaceSupport = builder.customViewTypefaceSupport;
        HashMap map = new HashMap(DEFAULT_STYLES);
        map.putAll(builder.mStyleClassMap);
        this.mClassStyleAttributeMap = Collections.unmodifiableMap(map);
        this.hasTypefaceViews = Collections.unmodifiableSet(builder.mHasTypefaceClasses);
    }

    public String getFontPath() {
        return this.mFontPath;
    }

    boolean isFontSet() {
        return this.mIsFontSet;
    }

    public boolean isReflection() {
        return this.mReflection;
    }

    public boolean isCustomViewCreation() {
        return this.mCustomViewCreation;
    }

    public boolean isCustomViewTypefaceSupport() {
        return this.mCustomViewTypefaceSupport;
    }

    public boolean isCustomViewHasTypeface(View view) {
        return this.hasTypefaceViews.contains(view.getClass());
    }

    Map<Class<? extends TextView>, Integer> getClassStyles() {
        return this.mClassStyleAttributeMap;
    }

    public int getAttrId() {
        return this.mAttrId;
    }

    public static class Builder {
        public static final int INVALID_ATTR_ID = -1;
        private int attrId;
        private boolean customViewCreation;
        private boolean customViewTypefaceSupport;
        private String fontAssetPath;
        private boolean isFontSet;
        private Set<Class<?>> mHasTypefaceClasses;
        private Map<Class<? extends TextView>, Integer> mStyleClassMap;
        private boolean reflection;

        public Builder() {
            this.reflection = Build.VERSION.SDK_INT >= 11;
            this.customViewCreation = true;
            this.customViewTypefaceSupport = false;
            this.attrId = C1496R.attr.fontPath;
            this.isFontSet = false;
            this.fontAssetPath = null;
            this.mStyleClassMap = new HashMap();
            this.mHasTypefaceClasses = new HashSet();
        }

        public Builder setFontAttrId(int i) {
            this.attrId = i;
            return this;
        }

        public Builder setDefaultFontPath(String str) {
            this.isFontSet = !TextUtils.isEmpty(str);
            this.fontAssetPath = str;
            return this;
        }

        public Builder disablePrivateFactoryInjection() {
            this.reflection = false;
            return this;
        }

        public Builder disableCustomViewInflation() {
            this.customViewCreation = false;
            return this;
        }

        public Builder addCustomStyle(Class<? extends TextView> cls, int i) {
            if (cls == null || i == 0) {
                return this;
            }
            this.mStyleClassMap.put(cls, Integer.valueOf(i));
            return this;
        }

        public Builder addCustomViewWithSetTypeface(Class<?> cls) {
            this.customViewTypefaceSupport = true;
            this.mHasTypefaceClasses.add(cls);
            return this;
        }

        public CalligraphyConfig build() {
            this.isFontSet = !TextUtils.isEmpty(this.fontAssetPath);
            return new CalligraphyConfig(this);
        }
    }
}
