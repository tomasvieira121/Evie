package com.evie.sidescreen.mvp;

import android.graphics.Rect;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.ListUpdateCallback;
import androidx.recyclerview.widget.RecyclerView;
import com.crashlytics.android.Crashlytics;
import io.reactivex.disposables.CompositeDisposable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class MvpRecyclerAdapter extends RecyclerView.Adapter<MvpViewHolder> {
    private static final int BLANK_ITEM_ID = R.layout.ss_blank_item;
    private RecyclerView mRecyclerView;
    private SparseArray<ItemPresenter> mViewTypeMap = new SparseArray<>();
    private List<ItemPresenter> mItemPresenters = new ArrayList();
    protected final CompositeDisposable mDisposables = new CompositeDisposable();
    private final PresenterVisibilityManager mVisibilityManager = createVisibilityManager();

    protected PresenterVisibilityManager createVisibilityManager() {
        return new PresenterVisibilityManager();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(MvpViewHolder mvpViewHolder) {
        if (mvpViewHolder.mPresenter != 0) {
            mvpViewHolder.mPresenter.onVisibilityWillChange();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        try {
            return this.mItemPresenters.get(i).getType();
        } catch (IndexOutOfBoundsException e) {
            Crashlytics.logException(e);
            return BLANK_ITEM_ID;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public MvpViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i != BLANK_ITEM_ID) {
            return this.mViewTypeMap.get(i).onCreateViewHolder(viewGroup.getContext(), viewGroup);
        }
        return new BlankViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.ss_blank_item, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(MvpViewHolder mvpViewHolder, int i) {
        if (mvpViewHolder instanceof BlankViewHolder) {
            return;
        }
        ItemPresenter itemPresenter = this.mItemPresenters.get(mvpViewHolder.getAdapterPosition());
        mvpViewHolder.bindPresenter(itemPresenter);
        itemPresenter.bindViewHolder(mvpViewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mItemPresenters.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public boolean onFailedToRecycleView(MvpViewHolder mvpViewHolder) {
        disposeHolder(mvpViewHolder);
        return super.onFailedToRecycleView(mvpViewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(MvpViewHolder mvpViewHolder) {
        disposeHolder(mvpViewHolder);
    }

    void disposeHolder(MvpViewHolder mvpViewHolder) {
        if (mvpViewHolder.mPresenter != 0) {
            mvpViewHolder.mPresenter.unbindViewHolder();
        }
        mvpViewHolder.unbindPresenter();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        this.mRecyclerView = recyclerView;
        this.mVisibilityManager.listen();
        this.mRecyclerView.setOnScrollListener(this.mVisibilityManager);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        this.mVisibilityManager.clear();
        this.mDisposables.clear();
        this.mRecyclerView.setOnScrollListener(null);
    }

    public void setItemPresenters(List<? extends ItemPresenter> list, boolean z) {
        this.mVisibilityManager.clear();
        DiffUtil.DiffResult diffResultCalculateDiff = DiffUtil.calculateDiff(new MvpAdapterItemDiffCallbacks(this.mItemPresenters, list));
        diffResultCalculateDiff.dispatchUpdatesTo(new Disposer(this.mItemPresenters));
        this.mItemPresenters.clear();
        if (list != null) {
            this.mItemPresenters.addAll(list);
        }
        calculateViewTypeMap();
        if (z) {
            notifyDataSetChanged();
        } else {
            diffResultCalculateDiff.dispatchUpdatesTo(this);
        }
    }

    private void calculateViewTypeMap() {
        this.mViewTypeMap.clear();
        for (ItemPresenter itemPresenter : this.mItemPresenters) {
            this.mViewTypeMap.put(itemPresenter.getType(), itemPresenter);
        }
    }

    public ItemPresenter getItem(int i) {
        try {
            return this.mItemPresenters.get(i);
        } catch (IndexOutOfBoundsException e) {
            Crashlytics.logException(e);
            return null;
        }
    }

    public void disposeHolders() {
        for (int i = 0; i < this.mRecyclerView.getChildCount(); i++) {
            RecyclerView recyclerView = this.mRecyclerView;
            disposeHolder((MvpViewHolder) recyclerView.getChildViewHolder(recyclerView.getChildAt(i)));
        }
    }

    public void updateVisibility() {
        this.mVisibilityManager.update();
    }

    private static class Disposer implements ListUpdateCallback {
        List<ItemPresenter> mItemPresenters;

        @Override // androidx.recyclerview.widget.ListUpdateCallback
        public void onChanged(int i, int i2, Object obj) {
        }

        @Override // androidx.recyclerview.widget.ListUpdateCallback
        public void onInserted(int i, int i2) {
        }

        @Override // androidx.recyclerview.widget.ListUpdateCallback
        public void onMoved(int i, int i2) {
        }

        public Disposer(List<ItemPresenter> list) {
            this.mItemPresenters = list;
        }

        @Override // androidx.recyclerview.widget.ListUpdateCallback
        public void onRemoved(int i, int i2) {
            for (int i3 = 0; i3 < i2; i3++) {
                this.mItemPresenters.get(i + i3).unbindViewHolder();
            }
        }
    }

    class PresenterVisibilityManager extends RecyclerView.OnScrollListener {
        private boolean mIsShowing = false;
        private boolean mIsResumed = true;
        private final Set<ItemPresenter> mVisiblePresenters = new HashSet();
        private final Rect mCurrentVisibilityBounds = new Rect();

        PresenterVisibilityManager() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
            update();
        }

        public void listen() {
            setShowing(true);
        }

        /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
        public void clear() {
            synchronized (this.mVisiblePresenters) {
                Iterator<ItemPresenter> it = this.mVisiblePresenters.iterator();
                while (it.hasNext()) {
                    it.next().onVisibilityChanged(false);
                }
                this.mVisiblePresenters.clear();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void setShowing(boolean z) {
            this.mIsShowing = z;
            update();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void setResumed(boolean z) {
            this.mIsResumed = z;
            update();
        }

        /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
        public void update() {
            RecyclerView.ViewHolder viewHolderFindViewHolderForLayoutPosition;
            synchronized (this.mVisiblePresenters) {
                LinearLayoutManager linearLayoutManager = (LinearLayoutManager) MvpRecyclerAdapter.this.mRecyclerView.getLayoutManager();
                if (linearLayoutManager == null) {
                    Iterator<ItemPresenter> it = this.mVisiblePresenters.iterator();
                    while (it.hasNext()) {
                        it.next().onVisibilityChanged(false);
                    }
                    this.mVisiblePresenters.clear();
                    return;
                }
                int iFindFirstCompletelyVisibleItemPosition = linearLayoutManager.findFirstCompletelyVisibleItemPosition();
                int iFindLastCompletelyVisibleItemPosition = linearLayoutManager.findLastCompletelyVisibleItemPosition();
                if (this.mIsResumed && this.mIsShowing && iFindFirstCompletelyVisibleItemPosition != -1 && iFindLastCompletelyVisibleItemPosition != -1 && iFindFirstCompletelyVisibleItemPosition <= MvpRecyclerAdapter.this.mItemPresenters.size()) {
                    HashSet<ItemPresenter> hashSet = new HashSet();
                    for (Integer numValueOf = Integer.valueOf(iFindFirstCompletelyVisibleItemPosition); numValueOf.intValue() <= iFindLastCompletelyVisibleItemPosition; numValueOf = Integer.valueOf(numValueOf.intValue() + 1)) {
                        hashSet.add(MvpRecyclerAdapter.this.mItemPresenters.get(numValueOf.intValue()));
                    }
                    int[] iArr = {iFindFirstCompletelyVisibleItemPosition - 1, iFindLastCompletelyVisibleItemPosition + 1};
                    for (int i : iArr) {
                        Integer numValueOf2 = Integer.valueOf(i);
                        if (numValueOf2.intValue() >= 0 && numValueOf2.intValue() <= MvpRecyclerAdapter.this.mItemPresenters.size() - 1 && (viewHolderFindViewHolderForLayoutPosition = MvpRecyclerAdapter.this.mRecyclerView.findViewHolderForLayoutPosition(numValueOf2.intValue())) != null) {
                            viewHolderFindViewHolderForLayoutPosition.itemView.getGlobalVisibleRect(this.mCurrentVisibilityBounds);
                            ItemPresenter itemPresenter = (ItemPresenter) MvpRecyclerAdapter.this.mItemPresenters.get(numValueOf2.intValue());
                            if (viewHolderFindViewHolderForLayoutPosition.itemView.getHeight() * itemPresenter.getVisibilityThreshold(MvpRecyclerAdapter.this.mRecyclerView.getContext()) <= this.mCurrentVisibilityBounds.bottom - this.mCurrentVisibilityBounds.top) {
                                hashSet.add(itemPresenter);
                            }
                        }
                    }
                    for (ItemPresenter itemPresenter2 : this.mVisiblePresenters) {
                        if (!hashSet.contains(itemPresenter2)) {
                            itemPresenter2.onVisibilityChanged(false);
                        }
                    }
                    for (ItemPresenter itemPresenter3 : hashSet) {
                        if (!this.mVisiblePresenters.contains(itemPresenter3)) {
                            itemPresenter3.onVisibilityChanged(true);
                        }
                    }
                    this.mVisiblePresenters.clear();
                    this.mVisiblePresenters.addAll(hashSet);
                    return;
                }
                Iterator<ItemPresenter> it2 = this.mVisiblePresenters.iterator();
                while (it2.hasNext()) {
                    it2.next().onVisibilityChanged(false);
                }
                this.mVisiblePresenters.clear();
            }
        }
    }
}
