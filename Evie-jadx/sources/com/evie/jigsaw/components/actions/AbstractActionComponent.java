package com.evie.jigsaw.components.actions;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import com.evie.common.services.events.EventService;
import com.evie.common.services.links.LinkCallback;
import com.evie.common.services.links.LinkRequest;
import com.evie.common.services.links.LinkResolver;
import com.evie.jigsaw.Jigsaw;
import com.evie.jigsaw.components.base.AbstractComponent;
import com.evie.jigsaw.services.actions.ActionPreferenceStore;
import com.evie.jigsaw.services.images.ImageResolver;
import com.evie.jigsaw.services.images.models.EvieImage;
import com.evie.jigsaw.services.shortcuts.ShortcutService;
import com.google.gson.annotations.SerializedName;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractActionComponent<VH extends RecyclerView.ViewHolder> extends AbstractComponent<VH> {
    private static final transient Comparator<ActionItem> INSTALLED_ITEMS_FIRST_COMPARATOR = new Comparator<ActionItem>() { // from class: com.evie.jigsaw.components.actions.AbstractActionComponent.1
        @Override // java.util.Comparator
        public int compare(ActionItem actionItem, ActionItem actionItem2) {
            boolean zIsInstalled = actionItem.isInstalled();
            boolean zIsInstalled2 = actionItem2.isInstalled();
            if (!zIsInstalled || zIsInstalled2) {
                return (zIsInstalled || !zIsInstalled2) ? 0 : 1;
            }
            return -1;
        }
    };
    private String action;
    private String description;
    private EvieImage icon;
    private List<ActionItem> items = Collections.emptyList();

    @SerializedName("shortcut_icon")
    private EvieImage shortcutIcon;
    transient ShortcutService shortcutService;
    private transient boolean streamingEnabled;
    private String title;

    public AbstractActionComponent<VH> setAction(String str) {
        this.action = str;
        return this;
    }

    public AbstractActionComponent<VH> setDescription(String str) {
        this.description = str;
        return this;
    }

    public AbstractActionComponent<VH> setIcon(EvieImage evieImage) {
        this.icon = evieImage;
        return this;
    }

    public AbstractActionComponent<VH> setItems(List<ActionItem> list) {
        this.items = list;
        return this;
    }

    public AbstractActionComponent<VH> setShortcutIcon(EvieImage evieImage) {
        this.shortcutIcon = evieImage;
        return this;
    }

    public AbstractActionComponent<VH> setTitle(String str) {
        this.title = str;
        return this;
    }

    public String getAction() {
        return this.action;
    }

    public String getTitle() {
        return this.title;
    }

    public String getDescription() {
        return this.description;
    }

    public EvieImage getIcon() {
        return this.icon;
    }

    public EvieImage getShortcutIcon() {
        return this.shortcutIcon;
    }

    public List<ActionItem> getItems() {
        return this.items;
    }

    @Override // com.evie.jigsaw.components.base.AbstractComponent
    public void initialize(Jigsaw jigsaw) {
        super.initialize(jigsaw);
        jigsaw.inject(this);
        this.streamingEnabled = jigsaw.settings().streamingEnabled();
        PackageManager packageManager = jigsaw.application().getPackageManager();
        for (ActionItem actionItem : getItems()) {
            if (!actionItem.isInstalled()) {
                try {
                    packageManager.getPackageInfo(actionItem.getAppId(), 1);
                    actionItem.setInstalled(true);
                } catch (PackageManager.NameNotFoundException unused) {
                }
            }
        }
        ListIterator<ActionItem> listIterator = getItems().listIterator();
        while (listIterator.hasNext()) {
            ActionItem next = listIterator.next();
            if (next.isInstalled() && next.isSkipIfAppInstalled()) {
                listIterator.remove();
            }
        }
        Collections.sort(getItems(), INSTALLED_ITEMS_FIRST_COMPARATOR);
        ShortcutService shortcutService = this.shortcutService;
        if (shortcutService != null && this.shortcutIcon != null) {
            shortcutService.loadShortcut(jigsaw.application(), this.shortcutIcon);
        }
        Iterator<ActionItem> it = this.items.iterator();
        while (it.hasNext()) {
            jigsaw.inject(it.next());
        }
    }

    @Override // com.evie.jigsaw.components.base.AbstractComponent
    public void proliferate() {
        Iterator<ActionItem> it = this.items.iterator();
        while (it.hasNext()) {
            it.next().setParent(this);
        }
    }

    @Override // com.evie.jigsaw.components.base.AbstractComponent
    public boolean ready() {
        return this.items.size() > 0;
    }

    protected ActionItem getPreferredItem() {
        if (this.items.size() == 1) {
            return this.items.get(0);
        }
        for (ActionItem actionItem : this.items) {
            if (actionItem.isPreferred()) {
                return actionItem;
            }
        }
        return null;
    }

    public static class ActionItem {

        @SerializedName("app_id")
        private String appId;

        @SerializedName("app_name")
        private String appName;

        @SerializedName("custom_button_image")
        private EvieImage customButtonImage;
        private String description;
        transient EventService eventService;
        private EvieImage icon;
        transient ImageResolver imageResolver;
        transient LinkResolver linkResolver;
        private transient AbstractActionComponent parent;
        private transient String preferenceValue;
        transient ActionPreferenceStore preferences;

        @SerializedName("preferred_description")
        private String preferredDescription;
        transient ShortcutService shortcutService;

        @SerializedName("shortcut_title")
        private String shortcutTitle;

        @SerializedName("skip_if_installed")
        private boolean skipIfAppInstalled;
        private String title;
        private List<String> links = Collections.emptyList();
        private boolean exclusive = false;

        @SerializedName("default")
        private boolean def4ult = false;
        private boolean installed = false;

        @SerializedName("custom_button_links")
        private List<String> customButtonLinks = Collections.emptyList();
        public final View.OnLongClickListener listenerToShortcut = new View.OnLongClickListener() { // from class: com.evie.jigsaw.components.actions.AbstractActionComponent.ActionItem.2
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                return ActionItem.this.shortcut(view.getContext());
            }
        };

        public ActionItem setAppId(String str) {
            this.appId = str;
            return this;
        }

        public ActionItem setAppName(String str) {
            this.appName = str;
            return this;
        }

        public ActionItem setDescription(String str) {
            this.description = str;
            return this;
        }

        public ActionItem setIcon(EvieImage evieImage) {
            this.icon = evieImage;
            return this;
        }

        public ActionItem setInstalled(boolean z) {
            this.installed = z;
            return this;
        }

        public ActionItem setLinks(List<String> list) {
            this.links = list;
            return this;
        }

        public ActionItem setParent(AbstractActionComponent abstractActionComponent) {
            this.parent = abstractActionComponent;
            return this;
        }

        public ActionItem setPreferenceValue(String str) {
            this.preferenceValue = str;
            return this;
        }

        public ActionItem setShortcutTitle(String str) {
            this.shortcutTitle = str;
            return this;
        }

        public ActionItem setTitle(String str) {
            this.title = str;
            return this;
        }

        public String getTitle() {
            return this.title;
        }

        public EvieImage getIcon() {
            return this.icon;
        }

        public String getAppId() {
            return this.appId;
        }

        public String getAppName() {
            return this.appName;
        }

        public boolean isSkipIfAppInstalled() {
            return this.skipIfAppInstalled;
        }

        public boolean isInstalled() {
            return this.installed;
        }

        public EvieImage getCustomButtonImage() {
            return this.customButtonImage;
        }

        public List<String> getCustomButtonLinks() {
            return this.customButtonLinks;
        }

        public String getPermittedDescription() {
            if (!TextUtils.isEmpty(this.preferredDescription)) {
                ActionItem preferredItem = this.parent.getPreferredItem();
                if (this.exclusive) {
                    if (preferredItem == this || (this.def4ult && preferredItem == null)) {
                        return this.preferredDescription;
                    }
                    return this.description;
                }
                return this.preferredDescription;
            }
            return this.description;
        }

        public boolean hasCustomButton() {
            return this.customButtonImage != null && this.customButtonLinks.size() > 0;
        }

        public void execute(Context context) {
            this.linkResolver.resolve(context, new LinkRequest(this.links).analyticsData(this.parent.getAnalytics()).app(getAppId()));
        }

        public boolean shortcut(final Context context) {
            final EvieImage shortcutIcon;
            if (this.shortcutService == null || (shortcutIcon = this.parent.getShortcutIcon()) == null) {
                return false;
            }
            return this.linkResolver.resolve(context, new LinkRequest(this.links).analyticsData(this.parent.getAnalytics()).app(getAppId()).callback(new LinkCallback() { // from class: com.evie.jigsaw.components.actions.AbstractActionComponent.ActionItem.1
                private boolean started = false;

                @Override // com.evie.common.services.links.LinkCallback
                public boolean onResolved(Intent intent) {
                    if (this.started || intent == null) {
                        return false;
                    }
                    ActionItem.this.shortcutService.makeShortcut(context, ActionItem.this.shortcutTitle, intent, shortcutIcon, ActionItem.this.icon, ActionItem.this.parent.getAnalytics(), ActionItem.this.appId);
                    this.started = true;
                    return false;
                }
            }));
        }

        public boolean isPreferred() {
            String str = this.preferences.get(this.parent.getAction());
            return !TextUtils.isEmpty(str) && str.equals(getPreferenceValue());
        }

        public String getPreferenceValue() {
            if (!TextUtils.isEmpty(this.preferenceValue)) {
                return this.preferenceValue;
            }
            return this.appId;
        }

        public View.OnLongClickListener getListenerToShortcut() {
            return this.listenerToShortcut;
        }
    }
}
