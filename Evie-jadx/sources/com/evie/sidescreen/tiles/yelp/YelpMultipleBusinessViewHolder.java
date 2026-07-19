package com.evie.sidescreen.tiles.yelp;

import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindDimen;
import butterknife.BindView;
import com.evie.sidescreen.R;
import com.evie.sidescreen.mvp.ItemPresenter;
import com.evie.sidescreen.mvp.MvpRecyclerAdapter;
import com.evie.sidescreen.mvp.MvpViewHolder;
import com.evie.sidescreen.tiles.TileRowDividerItemDecoration;
import java.util.List;
import org.schema.evie.yelp.YelpAction;

/* JADX INFO: loaded from: classes.dex */
public class YelpMultipleBusinessViewHolder extends MvpViewHolder<YelpMultipleBusinessPresenter> {

    /* JADX INFO: renamed from: ID */
    public static final int f373ID = R.layout.ss_yelp_multiple_business;

    @BindView
    YelpActionContainer mActionContainer;
    private MvpRecyclerAdapter mAdapter;

    @BindView
    TextView mDescription;

    @BindDimen
    int mDividerPadding;

    @BindView
    TextView mHeadline;

    @BindView
    RecyclerView mRecyclerView;

    public YelpMultipleBusinessViewHolder(final View view) {
        super(view);
        this.mAdapter = new MvpRecyclerAdapter();
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(view.getContext()) { // from class: com.evie.sidescreen.tiles.yelp.YelpMultipleBusinessViewHolder.1
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public void onLayoutCompleted(RecyclerView.State state) {
                super.onLayoutCompleted(state);
                YelpMultipleBusinessViewHolder.this.mAdapter.updateVisibility();
            }
        });
        TileRowDividerItemDecoration tileRowDividerItemDecoration = new TileRowDividerItemDecoration(view.getContext());
        tileRowDividerItemDecoration.setPaddingLeft(this.mDividerPadding);
        tileRowDividerItemDecoration.setPaddingRight(this.mDividerPadding);
        this.mRecyclerView.addItemDecoration(tileRowDividerItemDecoration);
        this.mRecyclerView.setAdapter(this.mAdapter);
        this.mActionContainer.setOnActionClick(new View.OnClickListener() { // from class: com.evie.sidescreen.tiles.yelp.-$$Lambda$YelpMultipleBusinessViewHolder$ythNeRXg_Y1ctHiYhoOPORcjYlY
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ((YelpMultipleBusinessPresenter) this.f$0.mPresenter).onActionClicked(view);
            }
        });
    }

    public void setItemPresenters(List<ItemPresenter> list) {
        this.mAdapter.setItemPresenters(list, false);
    }

    public void setAction(YelpAction yelpAction) {
        this.mActionContainer.setAction(yelpAction);
    }

    public void setHeadline(String str) {
        this.mHeadline.setText(str);
    }

    public void setDescription(String str) {
        this.mDescription.setText(str);
    }
}
