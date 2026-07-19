package com.evie.jigsaw.components.actions;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.evie.common.services.analytics.AnalyticsService;
import com.evie.common.services.analytics.models.AnalyticsData;
import com.evie.common.services.analytics.models.CloseMethod;
import com.evie.common.services.links.LinkRequest;
import com.evie.common.services.links.LinkResolver;
import com.evie.jigsaw.Jigsaw;
import com.evie.jigsaw.R;
import com.evie.jigsaw.components.actions.holders.MultipleActionViewHolder;
import com.evie.jigsaw.components.actions.holders.SingleActionViewHolder;
import com.evie.jigsaw.components.delimiters.HorizontalDelimiterComponent;
import com.evie.jigsaw.services.actions.ActionPreferenceStore;
import com.facebook.drawee.view.SimpleDraweeView;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes.dex */
public class ActionRowComponent extends AbstractActionComponent<Holder> {
    transient AnalyticsService analyticsService;
    transient LinkResolver linkResolver;
    private final transient BaseAdapter multiconListAdapter = new BaseAdapter() { // from class: com.evie.jigsaw.components.actions.ActionRowComponent.1
        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return Math.min(ActionRowComponent.this.getItems().size(), 4);
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return ActionRowComponent.this.getItems().get(i);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            Context context = viewGroup.getContext();
            if (view == null) {
                view = LayoutInflater.from(context).inflate(R.layout.v2_subcomponent_action_multiple_icon, viewGroup, false);
            }
            ActionRowComponent actionRowComponent = ActionRowComponent.this;
            actionRowComponent.bind((SimpleDraweeView) view, actionRowComponent.getItems().get(i).getIcon());
            return view;
        }
    };
    transient ActionPreferenceStore preferences;

    @Override // com.evie.jigsaw.components.actions.AbstractActionComponent, com.evie.jigsaw.components.base.AbstractComponent
    public void initialize(Jigsaw jigsaw) {
        super.initialize(jigsaw);
        jigsaw.inject(this);
    }

    @Override // com.evie.jigsaw.components.base.AbstractComponent
    public void bind(Context context, Holder holder) {
        View viewBindMultiple;
        super.bind(context, holder);
        ViewGroup viewGroup = holder.container;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        AbstractActionComponent.ActionItem preferredItem = getPreferredItem();
        viewGroup.removeAllViews();
        if (preferredItem != null) {
            viewBindMultiple = bindSingle(preferredItem, new SingleActionViewHolder(layoutInflaterFrom.inflate(R.layout.v2_subcomponent_action_single, viewGroup, false)));
        } else {
            viewBindMultiple = bindMultiple(new MultipleActionViewHolder(layoutInflaterFrom.inflate(R.layout.v2_subcomponent_action_multiple, viewGroup, false)));
        }
        viewGroup.addView(viewBindMultiple);
    }

    private View bindSingle(final AbstractActionComponent.ActionItem actionItem, SingleActionViewHolder singleActionViewHolder) {
        Context context = singleActionViewHolder.itemView.getContext();
        if (getIcon() != null) {
            bind(singleActionViewHolder.icon, getIcon());
        } else {
            bind(singleActionViewHolder.icon, actionItem.getIcon());
        }
        bind(singleActionViewHolder.title, getTitle(), 8);
        bind(singleActionViewHolder.description, actionItem.getPermittedDescription(), 8);
        singleActionViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.evie.jigsaw.components.actions.ActionRowComponent.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ActionRowComponent.this.recordExecuteEvent(actionItem);
                actionItem.execute(view.getContext());
            }
        });
        singleActionViewHolder.itemView.setOnLongClickListener(actionItem.getListenerToShortcut());
        if (getItems().size() > 1) {
            singleActionViewHolder.mainButton.setImageResource(R.drawable.more_options_icon);
            singleActionViewHolder.mainButton.setOnClickListener(makeOpenActionDialogListener(context));
            singleActionViewHolder.mainButton.setVisibility(0);
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.action_row_more_options_inset);
            singleActionViewHolder.mainButton.setPadding(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        } else {
            singleActionViewHolder.mainButton.setVisibility(8);
        }
        if (actionItem.hasCustomButton()) {
            bind(singleActionViewHolder.customButton, actionItem.getCustomButtonImage());
            singleActionViewHolder.customButton.setOnClickListener(new View.OnClickListener() { // from class: com.evie.jigsaw.components.actions.ActionRowComponent.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ActionRowComponent.this.linkResolver.resolve(view.getContext(), new LinkRequest(actionItem.getCustomButtonLinks()).app(actionItem.getAppId()));
                }
            });
        } else {
            singleActionViewHolder.customButton.setVisibility(8);
        }
        return singleActionViewHolder.itemView;
    }

    private View bindMultiple(MultipleActionViewHolder multipleActionViewHolder) {
        Context context = multipleActionViewHolder.itemView.getContext();
        bind(multipleActionViewHolder.title, getTitle(), 8);
        bind(multipleActionViewHolder.description, getDescription(), 8);
        multipleActionViewHolder.itemView.setOnClickListener(makeOpenActionDialogListener(context));
        multipleActionViewHolder.itemView.setOnLongClickListener(null);
        if (getIcon() == null) {
            multipleActionViewHolder.multicon.setAdapter((ListAdapter) this.multiconListAdapter);
            multipleActionViewHolder.multicon.setOnItemClickListener(makeOpenActionDialogAdapterListener(context));
            multipleActionViewHolder.icon.setVisibility(8);
        } else {
            bind(multipleActionViewHolder.icon, getIcon(), 8);
            multipleActionViewHolder.multicon.setVisibility(8);
        }
        return multipleActionViewHolder.itemView;
    }

    private View.OnClickListener makeOpenActionDialogListener(final Context context) {
        return new View.OnClickListener() { // from class: com.evie.jigsaw.components.actions.ActionRowComponent.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ActionRowComponent.this.new ActionDialog(context).show();
            }
        };
    }

    private AdapterView.OnItemClickListener makeOpenActionDialogAdapterListener(final Context context) {
        return new AdapterView.OnItemClickListener() { // from class: com.evie.jigsaw.components.actions.ActionRowComponent.5
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                ActionRowComponent.this.new ActionDialog(context).show();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void recordExecuteEvent(AbstractActionComponent.ActionItem actionItem) {
        AnalyticsData analytics = getAnalytics();
        if (analytics == null) {
            return;
        }
        this.analyticsService.recordActionRowExecuteEvent(analytics, getAction(), actionItem.getAppId(), actionItem.getAppName());
    }

    private class ActionDialog extends Dialog {
        private CloseMethod mCloseMethod;
        private RecyclerView.Adapter mItemsAdapter;
        private SingleActionViewHolder mPreferredItemHolder;

        ActionDialog(Context context) {
            super(context, R.style.ActionDialog);
            this.mCloseMethod = CloseMethod.HARDWARE_TOUCH;
        }

        @Override // android.app.Dialog
        protected void onCreate(Bundle bundle) {
            View viewInflate = getLayoutInflater().inflate(R.layout.v2_subcomponent_action_dialog, (ViewGroup) null);
            RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R.id.action_dialog_items);
            this.mItemsAdapter = getDialogItemsAdapter();
            recyclerView.setAdapter(this.mItemsAdapter);
            setContentView(viewInflate);
            Window window = getWindow();
            window.setGravity(80);
            window.setLayout(-1, -2);
            setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.evie.jigsaw.components.actions.ActionRowComponent.ActionDialog.1
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    ActionDialog.this.recordCloseEvent();
                }
            });
        }

        @Override // android.app.Dialog
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (!super.onTouchEvent(motionEvent)) {
                return false;
            }
            this.mCloseMethod = CloseMethod.EMPTY_SPACE_TOUCH;
            return true;
        }

        @Override // android.app.Dialog
        protected void onStop() {
            super.onStop();
            ActionRowComponent.this.invalidate();
        }

        private RecyclerView.Adapter<RecyclerView.ViewHolder> getDialogItemsAdapter() {
            return new RecyclerView.Adapter<RecyclerView.ViewHolder>() { // from class: com.evie.jigsaw.components.actions.ActionRowComponent.ActionDialog.2
                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                    LayoutInflater layoutInflater = ActionDialog.this.getLayoutInflater();
                    switch (i) {
                        case 0:
                            return new HorizontalDelimiterComponent.Holder(layoutInflater.inflate(R.layout.v2_component_horizontal_delimiter, viewGroup, false));
                        case 1:
                            return new SingleActionViewHolder(layoutInflater.inflate(R.layout.v2_subcomponent_action_single, viewGroup, false));
                        default:
                            throw new IllegalStateException("Invalid action dialog view type: " + i);
                    }
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
                    if (viewHolder instanceof HorizontalDelimiterComponent.Holder) {
                        return;
                    }
                    AbstractActionComponent.ActionItem actionItem = ActionRowComponent.this.getItems().get(i / 2);
                    ActionDialog.this.bindDialogItem(actionItem, (SingleActionViewHolder) viewHolder);
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public int getItemViewType(int i) {
                    return i % 2 == 0 ? 1 : 0;
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public int getItemCount() {
                    return (ActionRowComponent.this.getItems().size() * 2) - 1;
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void bindDialogItem(final AbstractActionComponent.ActionItem actionItem, final SingleActionViewHolder singleActionViewHolder) {
            final String action = ActionRowComponent.this.getAction();
            ActionRowComponent.this.bind(singleActionViewHolder.icon, actionItem.getIcon());
            ActionRowComponent.this.bind(singleActionViewHolder.title, actionItem.getTitle(), 8);
            ActionRowComponent.this.bind(singleActionViewHolder.description, actionItem.getPermittedDescription(), 8);
            singleActionViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.evie.jigsaw.components.actions.ActionRowComponent.ActionDialog.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ActionRowComponent.this.recordExecuteEvent(actionItem);
                    actionItem.execute(view.getContext());
                }
            });
            singleActionViewHolder.itemView.setOnLongClickListener(actionItem.getListenerToShortcut());
            if (actionItem.isPreferred()) {
                prefer(singleActionViewHolder);
            } else {
                singleActionViewHolder.mainButton.setImageResource(R.drawable.star_outline);
            }
            int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.action_row_star_inset);
            singleActionViewHolder.mainButton.setPadding(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
            singleActionViewHolder.mainButton.setOnClickListener(new View.OnClickListener() { // from class: com.evie.jigsaw.components.actions.ActionRowComponent.ActionDialog.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (actionItem.isPreferred()) {
                        ActionDialog.this.unprefer();
                        ActionRowComponent.this.preferences.clear(action);
                        ActionDialog.this.recordUnselectEvent();
                    } else {
                        ActionDialog.this.prefer(singleActionViewHolder);
                        ActionRowComponent.this.preferences.save(action, actionItem.getPreferenceValue());
                        ActionDialog.this.recordSelectEvent(actionItem);
                        new Timer().schedule(new TimerTask() { // from class: com.evie.jigsaw.components.actions.ActionRowComponent.ActionDialog.4.1
                            @Override // java.util.TimerTask, java.lang.Runnable
                            public void run() {
                                ActionDialog.this.dismiss(CloseMethod.VIEW_TOUCH);
                            }
                        }, 100L);
                    }
                }
            });
            if (actionItem.hasCustomButton()) {
                ActionRowComponent.this.bind(singleActionViewHolder.customButton, actionItem.getCustomButtonImage());
                singleActionViewHolder.customButton.setOnClickListener(new View.OnClickListener() { // from class: com.evie.jigsaw.components.actions.ActionRowComponent.ActionDialog.5
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        ActionRowComponent.this.linkResolver.resolve(view.getContext(), new LinkRequest(actionItem.getCustomButtonLinks()).app(actionItem.getAppId()));
                    }
                });
            } else {
                singleActionViewHolder.customButton.setVisibility(8);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void prefer(SingleActionViewHolder singleActionViewHolder) {
            unprefer();
            this.mPreferredItemHolder = singleActionViewHolder;
            this.mPreferredItemHolder.mainButton.setImageResource(R.drawable.star);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void unprefer() {
            SingleActionViewHolder singleActionViewHolder = this.mPreferredItemHolder;
            if (singleActionViewHolder != null) {
                singleActionViewHolder.mainButton.setImageResource(R.drawable.star_outline);
                this.mPreferredItemHolder = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void recordSelectEvent(AbstractActionComponent.ActionItem actionItem) {
            AnalyticsData analytics = ActionRowComponent.this.getAnalytics();
            if (analytics == null) {
                return;
            }
            ActionRowComponent.this.analyticsService.recordActionDialogSelectEvent(analytics, ActionRowComponent.this.getAction(), actionItem.getAppId(), actionItem.getAppName());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void recordUnselectEvent() {
            AnalyticsData analytics = ActionRowComponent.this.getAnalytics();
            if (analytics == null) {
                return;
            }
            ActionRowComponent.this.analyticsService.recordActionDialogUnselectEvent(analytics, ActionRowComponent.this.getAction());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void recordCloseEvent() {
            AnalyticsData analytics = ActionRowComponent.this.getAnalytics();
            if (analytics == null) {
                return;
            }
            ActionRowComponent.this.analyticsService.recordActionDialogCloseEvent(analytics, this.mCloseMethod);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void dismiss(CloseMethod closeMethod) {
            this.mCloseMethod = closeMethod;
            dismiss();
        }
    }

    public static class Holder extends RecyclerView.ViewHolder {
        public final ViewGroup container;

        public Holder(View view) {
            super(view);
            this.container = (ViewGroup) view;
        }
    }
}
