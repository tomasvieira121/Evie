package com.evie.sidescreen.searchbar;

import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.util.Pair;
import android.view.View;
import com.google.auto.factory.AutoFactory;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import io.reactivex.subjects.BehaviorSubject;
import io.reactivex.subjects.PublishSubject;

/* JADX INFO: loaded from: classes.dex */
@AutoFactory
public class WhiteSearchBarBackgroundModel extends SearchBarBackgroundModel {
    private BehaviorSubject<SearchBarBackgroundModel.SearchBarBackground> mOutputObservable;
    private PublishSubject<Pair<View, Rect>> mTargetRectObservable = PublishSubject.create();

    public WhiteSearchBarBackgroundModel(View view) {
        view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.evie.sidescreen.searchbar.-$$Lambda$WhiteSearchBarBackgroundModel$kTTJusc_-KADcWDsoeaid0btJ_M
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                WhiteSearchBarBackgroundModel.lambda$new$0(this.f$0, view2, i, i2, i3, i4, i5, i6, i7, i8);
            }
        });
        this.mOutputObservable = BehaviorSubject.create();
        this.mTargetRectObservable.observeOn(Schedulers.m548io()).map(new Function() { // from class: com.evie.sidescreen.searchbar.-$$Lambda$WhiteSearchBarBackgroundModel$OwJDyDV1CUds7uV2u0RuMruh_iI
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.createBlurredSearchBar((Pair) obj);
            }
        }).onErrorReturnItem(ERROR).observeOn(AndroidSchedulers.mainThread()).subscribe(this.mOutputObservable);
    }

    public static /* synthetic */ void lambda$new$0(WhiteSearchBarBackgroundModel whiteSearchBarBackgroundModel, View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        Rect rect = new Rect(i, i2, i3, i4);
        if (rect.equals(new Rect(i5, i6, i7, i8))) {
            return;
        }
        whiteSearchBarBackgroundModel.mTargetRectObservable.onNext(new Pair<>(view, rect));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SearchBarBackgroundModel.SearchBarBackground createBlurredSearchBar(Pair<View, Rect> pair) {
        View view = (View) pair.first;
        Rect rect = (Rect) pair.second;
        float f = view.getContext().getResources().getDisplayMetrics().density;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.argb(30, 0, 0, 0));
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setColor(-1);
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{gradientDrawable, gradientDrawable2});
        float f2 = f * 1.0f;
        layerDrawable.setLayerInset(1, 0, 0, 0, Math.round(f2));
        layerDrawable.setLayerInset(0, 0, Math.round(f2), 0, 0);
        float fHeight = rect.height() / 2.0f;
        for (int i = 0; i < layerDrawable.getNumberOfLayers(); i++) {
            ((GradientDrawable) layerDrawable.getDrawable(i)).setCornerRadius(fHeight);
        }
        return new SearchBarBackgroundModel.SearchBarBackground(layerDrawable, false);
    }

    @Override // com.evie.sidescreen.searchbar.SearchBarBackgroundModel
    public Observable<SearchBarBackgroundModel.SearchBarBackground> getObservable() {
        return this.mOutputObservable;
    }
}
