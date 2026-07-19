package com.evie.search.model;

import com.evie.search.recyclerview.presenter.BaseItemPresenter;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SearchPresenterData {
    private List<BaseItemPresenter> data;
    private DataType dataType;

    public enum DataType {
        LOCAL,
        REMOTE,
        WEB,
        CLEAR
    }

    public List<BaseItemPresenter> getData() {
        return this.data;
    }

    public DataType getDataType() {
        return this.dataType;
    }

    public SearchPresenterData(List<BaseItemPresenter> list, DataType dataType) {
        this.data = list;
        this.dataType = dataType;
    }
}
