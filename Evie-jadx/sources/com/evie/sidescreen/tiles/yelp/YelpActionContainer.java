package com.evie.sidescreen.tiles.yelp;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.evie.sidescreen.R;
import org.schema.evie.yelp.YelpAction;

/* JADX INFO: loaded from: classes.dex */
public class YelpActionContainer extends FrameLayout {

    @BindView
    Button mBarAction;

    @BindView
    ViewGroup mBarType;

    @BindView
    Button mButtonAction;

    @BindView
    TextView mButtonDescription;

    @BindView
    ViewGroup mButtonType;

    public YelpActionContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    private void init(Context context) {
        LayoutInflater.from(context).inflate(R.layout.yelp_action_container, (ViewGroup) this, true);
        ButterKnife.bind(this);
    }

    public void setBarType() {
        this.mBarType.setVisibility(0);
        this.mButtonType.setVisibility(8);
    }

    public void setButtonType() {
        this.mBarType.setVisibility(8);
        this.mButtonType.setVisibility(0);
    }

    public void setActionLabel(String str) {
        this.mBarAction.setText(str);
        this.mButtonAction.setText(str);
    }

    public void setOnActionClick(View.OnClickListener onClickListener) {
        this.mBarAction.setOnClickListener(onClickListener);
        this.mButtonAction.setOnClickListener(onClickListener);
    }

    public void setDescription(String str) {
        this.mButtonDescription.setText(str);
    }

    public void setAction(YelpAction yelpAction) {
        if (yelpAction == null) {
            setVisibility(8);
            return;
        }
        setVisibility(0);
        if ("button".equals(yelpAction.getStyle())) {
            setButtonType();
        } else {
            setBarType();
        }
        setActionLabel(yelpAction.getLabel());
        setDescription(yelpAction.getDescription());
    }
}
