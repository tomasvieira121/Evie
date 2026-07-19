package com.evie.sidescreen.datanotification;

import android.text.SpannableString;
import android.text.style.UnderlineSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import com.evie.sidescreen.R;
import com.evie.sidescreen.mvp.MvpViewHolder;

/* JADX INFO: loaded from: classes.dex */
public class DataWarningCardViewHolder extends MvpViewHolder<DataWarningCardPresenter> {

    @BindView
    ViewGroup mContent;

    @BindView
    TextView mDescription;

    /* JADX INFO: renamed from: ID */
    public static final int f328ID = R.layout.ss_data_warning_card;
    private static final int TAG_TAG = R.id.tag;
    private static final int DATA_TAG = R.id.data;

    public DataWarningCardViewHolder(View view) {
        super(view);
        String string = view.getResources().getString(R.string.ss_data_notification_card_description_part1);
        SpannableString spannableString = new SpannableString(string + ' ' + view.getResources().getString(R.string.ss_data_notification_card_description_more));
        spannableString.setSpan(new UnderlineSpan(), string.length() + 1, spannableString.length(), 0);
        this.mDescription.setText(spannableString);
        hide();
    }

    @OnClick
    public void onMoreTap() {
        String string = this.itemView.getResources().getString(R.string.ss_data_notification_card_description_part1);
        String string2 = this.itemView.getResources().getString(R.string.ss_data_notification_card_description_part2);
        this.mDescription.setText(string + ' ' + string2);
    }

    @OnClick
    public void onDismiss() {
        hide();
        ((DataWarningCardPresenter) this.mPresenter).onManualDismiss();
    }

    public void hide() {
        this.mContent.getLayoutParams().height = 0;
        this.mContent.requestLayout();
    }

    public void show() {
        this.mContent.getLayoutParams().height = -2;
        this.mContent.requestLayout();
    }
}
