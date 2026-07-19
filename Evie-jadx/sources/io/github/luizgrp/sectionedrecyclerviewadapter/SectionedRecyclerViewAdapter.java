package io.github.luizgrp.sectionedrecyclerviewadapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class SectionedRecyclerViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    private int viewTypeCount = 0;
    private LinkedHashMap<String, Section> sections = new LinkedHashMap<>();
    private HashMap<String, Integer> sectionViewTypeNumbers = new HashMap<>();

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        RecyclerView.ViewHolder failedViewHolder = null;
        for (Map.Entry<String, Integer> entry : this.sectionViewTypeNumbers.entrySet()) {
            if (i >= entry.getValue().intValue() && i < entry.getValue().intValue() + 5) {
                Section section = this.sections.get(entry.getKey());
                switch (i - entry.getValue().intValue()) {
                    case 0:
                        Integer headerResourceId = section.getHeaderResourceId();
                        if (headerResourceId == null) {
                            throw new NullPointerException("Missing 'header' resource id");
                        }
                        failedViewHolder = section.getHeaderViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(headerResourceId.intValue(), viewGroup, false));
                        break;
                        break;
                    case 1:
                        Integer footerResourceId = section.getFooterResourceId();
                        if (footerResourceId == null) {
                            throw new NullPointerException("Missing 'footer' resource id");
                        }
                        failedViewHolder = section.getFooterViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(footerResourceId.intValue(), viewGroup, false));
                        break;
                        break;
                    case 2:
                        failedViewHolder = section.getItemViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(section.getItemResourceId(), viewGroup, false));
                        break;
                    case 3:
                        Integer loadingResourceId = section.getLoadingResourceId();
                        if (loadingResourceId == null) {
                            throw new NullPointerException("Missing 'loading state' resource id");
                        }
                        failedViewHolder = section.getLoadingViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(loadingResourceId.intValue(), viewGroup, false));
                        break;
                        break;
                    case 4:
                        Integer failedResourceId = section.getFailedResourceId();
                        if (failedResourceId == null) {
                            throw new NullPointerException("Missing 'failed state' resource id");
                        }
                        failedViewHolder = section.getFailedViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(failedResourceId.intValue(), viewGroup, false));
                        break;
                        break;
                    default:
                        throw new IllegalArgumentException("Invalid viewType");
                }
            }
        }
        return failedViewHolder;
    }

    public void addSection(String str, Section section) {
        this.sections.put(str, section);
        this.sectionViewTypeNumbers.put(str, Integer.valueOf(this.viewTypeCount));
        this.viewTypeCount += 5;
    }

    public String addSection(Section section) {
        String string = UUID.randomUUID().toString();
        addSection(string, section);
        return string;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        int i2;
        Iterator<Map.Entry<String, Section>> it = this.sections.entrySet().iterator();
        int i3 = 0;
        while (it.hasNext()) {
            Section value = it.next().getValue();
            if (value.isVisible()) {
                int sectionItemsTotal = value.getSectionItemsTotal();
                if (i >= i3 && i <= (i2 = (i3 + sectionItemsTotal) - 1)) {
                    if (value.hasHeader() && i == i3) {
                        getSectionForPosition(i).onBindHeaderViewHolder(viewHolder);
                        return;
                    } else if (value.hasFooter() && i == i2) {
                        getSectionForPosition(i).onBindFooterViewHolder(viewHolder);
                        return;
                    } else {
                        getSectionForPosition(i).onBindContentViewHolder(viewHolder, getSectionPosition(i));
                        return;
                    }
                }
                i3 += sectionItemsTotal;
            }
        }
        throw new IndexOutOfBoundsException("Invalid position");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        Iterator<Map.Entry<String, Section>> it = this.sections.entrySet().iterator();
        int sectionItemsTotal = 0;
        while (it.hasNext()) {
            Section value = it.next().getValue();
            if (value.isVisible()) {
                sectionItemsTotal += value.getSectionItemsTotal();
            }
        }
        return sectionItemsTotal;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        int i2;
        int i3 = 0;
        for (Map.Entry<String, Section> entry : this.sections.entrySet()) {
            Section value = entry.getValue();
            if (value.isVisible()) {
                int sectionItemsTotal = value.getSectionItemsTotal();
                if (i >= i3 && i <= (i2 = (i3 + sectionItemsTotal) - 1)) {
                    int iIntValue = this.sectionViewTypeNumbers.get(entry.getKey()).intValue();
                    if (value.hasHeader() && i == i3) {
                        return iIntValue;
                    }
                    if (value.hasFooter() && i == i2) {
                        return iIntValue + 1;
                    }
                    switch (value.getState()) {
                        case LOADED:
                            return iIntValue + 2;
                        case LOADING:
                            return iIntValue + 3;
                        case FAILED:
                            return iIntValue + 4;
                        default:
                            throw new IllegalStateException("Invalid state");
                    }
                }
                i3 += sectionItemsTotal;
            }
        }
        throw new IndexOutOfBoundsException("Invalid position");
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public Section getSectionForPosition(int i) {
        Iterator<Map.Entry<String, Section>> it = this.sections.entrySet().iterator();
        int i2 = 0;
        while (it.hasNext()) {
            Section value = it.next().getValue();
            if (value.isVisible()) {
                int sectionItemsTotal = value.getSectionItemsTotal();
                if (i >= i2 && i <= (i2 + sectionItemsTotal) - 1) {
                    return value;
                }
                i2 += sectionItemsTotal;
            }
        }
        throw new IndexOutOfBoundsException("Invalid position");
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public int getSectionPosition(int i) {
        Iterator<Map.Entry<String, Section>> it = this.sections.entrySet().iterator();
        int i2 = 0;
        while (it.hasNext()) {
            Section value = it.next().getValue();
            if (value.isVisible()) {
                int sectionItemsTotal = value.getSectionItemsTotal();
                if (i >= i2 && i <= (i2 + sectionItemsTotal) - 1) {
                    return (i - i2) - (value.hasHeader() ? 1 : 0);
                }
                i2 += sectionItemsTotal;
            }
        }
        throw new IndexOutOfBoundsException("Invalid position");
    }

    public static class EmptyViewHolder extends RecyclerView.ViewHolder {
        public EmptyViewHolder(View view) {
            super(view);
        }
    }
}
