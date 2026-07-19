package com.aol.mobile.sdk.controls;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.aol.mobile.sdk.controls.utils.ViewUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: renamed from: com.aol.mobile.sdk.controls.b */
/* JADX INFO: loaded from: classes.dex */
public class C0236b extends BaseAdapter {

    /* JADX INFO: renamed from: a */
    private final List<a> f34a = new ArrayList();

    /* JADX INFO: renamed from: com.aol.mobile.sdk.controls.b$a */
    public static class a {

        /* JADX INFO: renamed from: a */
        public final EnumC1497a f35a;

        /* JADX INFO: renamed from: b */
        public final int f36b;

        /* JADX INFO: renamed from: c */
        int f37c;

        /* JADX INFO: renamed from: d */
        int f38d;

        /* JADX INFO: renamed from: e */
        Drawable f39e;

        /* JADX INFO: renamed from: f */
        String f40f;

        /* JADX INFO: renamed from: g */
        boolean f41g;

        /* JADX INFO: renamed from: com.aol.mobile.sdk.controls.b$a$a, reason: collision with other inner class name */
        public enum EnumC1497a {
            AUDIO,
            CC,
            TITLE,
            CLOSE
        }

        a(int i, ContentControls.ViewModel.TrackOptionVM trackOptionVM, Drawable drawable, EnumC1497a enumC1497a, int i2) {
            this.f37c = i;
            this.f38d = trackOptionVM.isSelected ? 0 : 4;
            this.f39e = drawable;
            this.f40f = trackOptionVM.title;
            this.f35a = enumC1497a;
            this.f36b = i2;
        }

        a(int i, String str) {
            this.f37c = i;
            this.f38d = 8;
            this.f40f = str;
            this.f35a = EnumC1497a.TITLE;
            this.f36b = -1;
        }

        a(int i, String str, Drawable drawable) {
            this.f37c = i;
            this.f38d = 0;
            this.f40f = str;
            this.f39e = drawable;
            this.f41g = true;
            this.f35a = EnumC1497a.CLOSE;
            this.f36b = -1;
        }
    }

    /* JADX INFO: renamed from: com.aol.mobile.sdk.controls.b$b */
    static class b {

        /* JADX INFO: renamed from: a */
        final TextView f47a;

        /* JADX INFO: renamed from: b */
        final ImageView f48b;

        /* JADX INFO: renamed from: c */
        final View f49c;

        private b(TextView textView, ImageView imageView, View view) {
            this.f47a = textView;
            this.f48b = imageView;
            this.f49c = view;
        }
    }

    /* JADX INFO: renamed from: a */
    public void m6a(int i) {
        a aVar = this.f34a.get(i);
        if (aVar.f35a == a.EnumC1497a.CC || aVar.f35a == a.EnumC1497a.AUDIO) {
            Iterator<a> it = this.f34a.iterator();
            while (it.hasNext()) {
                a next = it.next();
                if (next.f35a == aVar.f35a) {
                    next.f38d = next == aVar ? 0 : 4;
                }
            }
        }
        notifyDataSetInvalidated();
    }

    /* JADX INFO: renamed from: a */
    public void m7a(Context context, LinkedList<ContentControls.ViewModel.TrackOptionVM> linkedList, LinkedList<ContentControls.ViewModel.TrackOptionVM> linkedList2) {
        Resources resources = context.getResources();
        int color = resources.getColor(C0234R.color.tracks_header_color);
        int color2 = resources.getColor(C0234R.color.track_title_color);
        Drawable drawable = resources.getDrawable(C0234R.drawable.ic_track_selected);
        Drawable drawable2 = resources.getDrawable(C0234R.drawable.ic_tracks_close);
        this.f34a.clear();
        if (!linkedList.isEmpty()) {
            this.f34a.add(new a(color, resources.getString(C0234R.string.audio_tracks_title)));
            for (ContentControls.ViewModel.TrackOptionVM trackOptionVM : linkedList) {
                this.f34a.add(new a(color2, trackOptionVM, drawable, a.EnumC1497a.AUDIO, linkedList.indexOf(trackOptionVM)));
            }
        }
        if (!linkedList2.isEmpty()) {
            this.f34a.add(new a(color, resources.getString(C0234R.string.text_tracks_title)));
            for (ContentControls.ViewModel.TrackOptionVM trackOptionVM2 : linkedList2) {
                this.f34a.add(new a(color2, trackOptionVM2, drawable, a.EnumC1497a.CC, linkedList2.indexOf(trackOptionVM2)));
            }
        }
        this.f34a.add(new a(color2, resources.getString(C0234R.string.track_close_title), drawable2));
        notifyDataSetInvalidated();
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return false;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public a getItem(int i) {
        return this.f34a.get(i);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f34a.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = View.inflate(viewGroup.getContext(), C0234R.layout.track_item_view, null);
            view.setTag(new b((TextView) ViewUtils.findView(view, C0234R.id.track_title), (ImageView) ViewUtils.findView(view, C0234R.id.track_check_image), ViewUtils.findView(view, C0234R.id.track_divider)));
        }
        b bVar = (b) view.getTag();
        a item = getItem(i);
        bVar.f48b.setVisibility(item.f38d);
        bVar.f48b.setImageDrawable(item.f39e);
        bVar.f47a.setText(item.f40f);
        bVar.f47a.setTextColor(item.f37c);
        bVar.f49c.setVisibility(item.f41g ? 0 : 8);
        return view;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return getItem(i).f38d != 8;
    }
}
