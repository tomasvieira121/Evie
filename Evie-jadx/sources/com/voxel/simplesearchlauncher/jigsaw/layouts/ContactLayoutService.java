package com.voxel.simplesearchlauncher.jigsaw.layouts;

import android.net.Uri;
import android.text.TextUtils;
import com.evie.common.services.analytics.models.AnalyticsData;
import com.evie.jigsaw.adapters.spacing.SpacingType;
import com.evie.jigsaw.components.actions.AbstractActionComponent;
import com.evie.jigsaw.components.actions.ActionRowComponent;
import com.evie.jigsaw.components.base.AbstractComponent;
import com.evie.jigsaw.components.containers.EmptyComponent;
import com.evie.jigsaw.components.containers.StackComponent;
import com.evie.jigsaw.components.containers.VerticalListComponent;
import com.evie.jigsaw.components.content.DetailsComponent;
import com.evie.jigsaw.components.content.MediaComponent;
import com.evie.jigsaw.components.delimiters.HorizontalDelimiterComponent;
import com.evie.jigsaw.components.navigation.BackComponent;
import com.evie.jigsaw.services.images.models.EvieImage;
import com.evie.jigsaw.services.images.models.Rounding;
import com.evie.jigsaw.services.layout.LayoutService;
import com.evie.search.local.ContactManager;
import com.evie.search.model.ActionData;
import com.evie.search.model.AppLink;
import com.evie.search.model.ContactData;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import retrofit2.Call;

/* JADX INFO: loaded from: classes2.dex */
public final class ContactLayoutService implements LayoutService {
    private final ContactManager mContactManager;

    public ContactLayoutService(ContactManager contactManager) {
        this.mContactManager = contactManager;
    }

    @Override // com.evie.jigsaw.services.layout.LayoutService
    public Call<AbstractComponent> resolve(Uri uri) {
        if (uri == null || !uri.getScheme().equals("contact")) {
            return null;
        }
        try {
            return new LayoutService.SuccessCall(buildContactComponent(uri.getSchemeSpecificPart()));
        } catch (SecurityException e) {
            return new LayoutService.FailureCall(e);
        }
    }

    private AbstractComponent buildContactComponent(String str) throws Throwable {
        ContactData contactData = this.mContactManager.getContactData(str);
        BackComponent backComponent = new BackComponent();
        MediaComponent overlay = new MediaComponent().setImage(new EvieImage().setBaseUrl(contactData.getHeaderUri()).setAspectRatio(2.0f)).setOverlay(new EvieImage().setBaseUrl(contactData.getOverlayUri()).setRounding(Rounding.circle));
        ArrayList arrayList = new ArrayList();
        arrayList.add(backComponent);
        arrayList.add(overlay);
        StackComponent stackComponent = (StackComponent) new StackComponent().setItems(arrayList);
        DetailsComponent detailsComponent = (DetailsComponent) new DetailsComponent().setItems(Collections.singletonList(new DetailsComponent.Detail().setAlignment(DetailsComponent.Alignment.center).setLines(1).setText(contactData.getName()).setStyle(DetailsComponent.DetailStyle.big_title))).setSpacing(DetailsComponent.Spacing.wide).setInset(true);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new EmptyComponent());
        for (ActionData actionData : contactData.getActions()) {
            List<AbstractActionComponent.ActionItem> arrayList3 = new ArrayList<>();
            EvieImage baseUrl = new EvieImage().setBaseUrl(actionData.getIconUrl());
            for (AppLink appLink : actionData.getLinks()) {
                AbstractActionComponent.ActionItem title = new AbstractActionComponent.ActionItem().setAppName(appLink.getAppName()).setAppId(appLink.getAppPackage()).setIcon(baseUrl).setLinks(Collections.singletonList(appLink.getLink())).setPreferenceValue(appLink.getLink()).setShortcutTitle(contactData.getName()).setTitle(appLink.getAppName());
                if (!TextUtils.isEmpty(appLink.getSubtext())) {
                    title.setDescription(appLink.getSubtext());
                }
                arrayList3.add(title);
            }
            ActionRowComponent actionRowComponent = (ActionRowComponent) new ActionRowComponent().setAction(str + actionData.getActionType()).setIcon(baseUrl).setItems(arrayList3).setShortcutIcon(new EvieImage().setBaseUrl(contactData.getShortcutUri()).setRounding(Rounding.circle)).setTitle(actionData.getLabel()).setAnalytics(new AnalyticsData().setEntityType("contact").setEntityName(contactData.getName()).setLayout("card"));
            if (!TextUtils.isEmpty(actionData.getSubtext())) {
                actionRowComponent.setDescription(actionData.getSubtext());
            }
            arrayList2.add(actionRowComponent);
        }
        VerticalListComponent verticalListComponent = (VerticalListComponent) new VerticalListComponent().setDelimiter((HorizontalDelimiterComponent) new HorizontalDelimiterComponent().setInset(true)).setSpacing(SpacingType.none).setItems(arrayList2).setStyle(new AbstractComponent.Style().setBackground(AbstractComponent.BackgroundColor.light));
        ArrayList arrayList4 = new ArrayList();
        arrayList4.add(stackComponent);
        arrayList4.add(detailsComponent);
        arrayList4.add(verticalListComponent);
        return new VerticalListComponent().setSpacing(SpacingType.none).setItems(arrayList4).setStyle(new AbstractComponent.Style().setBackground(AbstractComponent.BackgroundColor.light).setFullscreen(true));
    }
}
