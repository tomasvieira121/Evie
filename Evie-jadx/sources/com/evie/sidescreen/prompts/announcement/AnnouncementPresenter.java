package com.evie.sidescreen.prompts.announcement;

import android.view.View;
import com.evie.models.PromptStoreModel;
import com.evie.models.announcement.data.Announcement;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.prompts.PromptsPresenter;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AnnouncementPresenter extends PromptsPresenter<AnnouncementViewHolder> {
    private final Announcement mAnnouncement;
    private final PromptStoreModel mPromptStoreModel;

    public AnnouncementPresenter(AnalyticsModel analyticsModel, PromptStoreModel promptStoreModel, Announcement announcement) {
        super(analyticsModel);
        this.mPromptStoreModel = promptStoreModel;
        this.mAnnouncement = announcement;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public AnnouncementViewHolder createViewHolderInstance(View view) {
        return new AnnouncementViewHolder(view);
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return AnnouncementViewHolder.f341ID;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onBindViewHolder(AnnouncementViewHolder announcementViewHolder) {
        bindContent();
    }

    private void bindContent() {
        if (this.mAnnouncement != null) {
            ((AnnouncementViewHolder) this.mViewHolder).showTitle(this.mAnnouncement.getTitle());
            ((AnnouncementViewHolder) this.mViewHolder).showDescription(this.mAnnouncement.getDescription());
            bindImage();
            bindDismissButton();
            bindActionButton();
            if (this.mAnnouncement.hasAction() && this.mAnnouncement.hasDismiss()) {
                ((AnnouncementViewHolder) this.mViewHolder).showRailHori();
                ((AnnouncementViewHolder) this.mViewHolder).showRailVert();
            } else if (this.mAnnouncement.hasAction() || this.mAnnouncement.hasDismiss()) {
                ((AnnouncementViewHolder) this.mViewHolder).hideRailVert();
            } else {
                ((AnnouncementViewHolder) this.mViewHolder).hideRailVert();
                ((AnnouncementViewHolder) this.mViewHolder).hideRailHori();
            }
        }
    }

    private void bindImage() {
        if (this.mAnnouncement.hasImage()) {
            ((AnnouncementViewHolder) this.mViewHolder).showImage(this.mAnnouncement.getImageURL());
        } else {
            ((AnnouncementViewHolder) this.mViewHolder).hideImage();
        }
    }

    private void bindDismissButton() {
        if (this.mAnnouncement.hasDismiss()) {
            ((AnnouncementViewHolder) this.mViewHolder).showDismissButton(this.mAnnouncement.getDismissText());
        } else {
            ((AnnouncementViewHolder) this.mViewHolder).hideDismissButton();
        }
    }

    private void bindActionButton() {
        if (this.mAnnouncement.hasAction()) {
            ((AnnouncementViewHolder) this.mViewHolder).showActionButton(this.mAnnouncement.getActionText());
        } else {
            ((AnnouncementViewHolder) this.mViewHolder).hideActionButton();
        }
    }

    public void onDismissClick(View view) {
        Map<String, Object> trackableAttributes = getTrackableAttributes();
        trackableAttributes.put("item_type", "dismiss");
        this.mAnalyticsModel.trackEvent("ev_ss_tap", trackableAttributes);
        this.mPromptStoreModel.markAnnouncementOld();
    }

    public void onActionClick(View view) {
        this.mAnalyticsModel.trackEvent("ev_ss_tap", getTrackableAttributes());
    }

    @Override // com.evie.sidescreen.prompts.PromptsPresenter
    public Map<String, Object> getTrackableAttributes() {
        HashMap map = new HashMap();
        map.put("screen_subtype", "announcement");
        map.put("screen_type", "side_screen");
        map.put("attribute_announcement", this.mAnnouncement);
        return map;
    }
}
