package com.voxel.launcher3;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Process;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class WeightWatcher extends LinearLayout {
    Handler mHandler;
    private MemoryTracker mMemoryService;

    static int indexOf(int[] iArr, int i) {
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (iArr[i2] == i) {
                return i2;
            }
        }
        return -1;
    }

    public WeightWatcher(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mHandler = new Handler() { // from class: com.voxel.launcher3.WeightWatcher.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                switch (message.what) {
                    case 1:
                        WeightWatcher.this.mHandler.sendEmptyMessage(3);
                        break;
                    case 2:
                        WeightWatcher.this.mHandler.removeMessages(3);
                        break;
                    case 3:
                        int[] trackedProcesses = WeightWatcher.this.mMemoryService.getTrackedProcesses();
                        int childCount = WeightWatcher.this.getChildCount();
                        if (trackedProcesses.length != childCount) {
                            WeightWatcher.this.initViews();
                        } else {
                            for (int i = 0; i < childCount; i++) {
                                ProcessWatcher processWatcher = (ProcessWatcher) WeightWatcher.this.getChildAt(i);
                                if (WeightWatcher.indexOf(trackedProcesses, processWatcher.getPid()) < 0) {
                                    WeightWatcher.this.initViews();
                                } else {
                                    processWatcher.update();
                                }
                            }
                        }
                        WeightWatcher.this.mHandler.sendEmptyMessageDelayed(3, 5000L);
                        break;
                }
            }
        };
        context.bindService(new Intent(context, (Class<?>) MemoryTracker.class), new ServiceConnection() { // from class: com.voxel.launcher3.WeightWatcher.2
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                WeightWatcher.this.mMemoryService = ((MemoryTracker.MemoryTrackerInterface) iBinder).getService();
                WeightWatcher.this.initViews();
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                WeightWatcher.this.mMemoryService = null;
            }
        }, 1);
        setOrientation(1);
        setBackgroundColor(-1073741824);
    }

    public void initViews() {
        removeAllViews();
        for (int i : this.mMemoryService.getTrackedProcesses()) {
            ProcessWatcher processWatcher = new ProcessWatcher(this, getContext());
            processWatcher.setPid(i);
            addView(processWatcher);
        }
    }

    public WeightWatcher(Context context) {
        this(context, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mHandler.sendEmptyMessage(1);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mHandler.sendEmptyMessage(2);
    }

    public class ProcessWatcher extends LinearLayout {
        private MemoryTracker.ProcessMemInfo mMemInfo;
        int mPid;
        GraphView mRamGraph;
        TextView mText;

        public ProcessWatcher(WeightWatcher weightWatcher, Context context) {
            this(context, null);
        }

        public ProcessWatcher(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            float f = getResources().getDisplayMetrics().density;
            this.mText = new TextView(getContext());
            this.mText.setTextColor(-1);
            this.mText.setTextSize(0, 10.0f * f);
            this.mText.setGravity(19);
            int i = (int) (2.0f * f);
            setPadding(i, 0, i, 0);
            this.mRamGraph = new GraphView(this, getContext());
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, (int) (14.0f * f), 1.0f);
            addView(this.mText, layoutParams);
            layoutParams.leftMargin = (int) (4.0f * f);
            layoutParams.weight = 0.0f;
            layoutParams.width = (int) (f * 200.0f);
            addView(this.mRamGraph, layoutParams);
        }

        public void setPid(int i) {
            this.mPid = i;
            this.mMemInfo = WeightWatcher.this.mMemoryService.getMemInfo(this.mPid);
            if (this.mMemInfo == null) {
                Log.v("WeightWatcher", "Missing info for pid " + this.mPid + ", removing view: " + this);
                WeightWatcher.this.initViews();
            }
        }

        public int getPid() {
            return this.mPid;
        }

        public String getUptimeString() {
            long uptime = this.mMemInfo.getUptime() / 1000;
            StringBuilder sb = new StringBuilder();
            long j = uptime / 86400;
            if (j > 0) {
                uptime -= 86400 * j;
                sb.append(j);
                sb.append("d");
            }
            long j2 = uptime / 3600;
            if (j2 > 0) {
                uptime -= 3600 * j2;
                sb.append(j2);
                sb.append("h");
            }
            long j3 = uptime / 60;
            if (j3 > 0) {
                uptime -= 60 * j3;
                sb.append(j3);
                sb.append("m");
            }
            sb.append(uptime);
            sb.append("s");
            return sb.toString();
        }

        public void update() {
            TextView textView = this.mText;
            StringBuilder sb = new StringBuilder();
            sb.append("(");
            sb.append(this.mPid);
            sb.append(this.mPid == Process.myPid() ? "/A" : "/S");
            sb.append(") up ");
            sb.append(getUptimeString());
            sb.append(" P=");
            sb.append(this.mMemInfo.currentPss);
            sb.append(" U=");
            sb.append(this.mMemInfo.currentUss);
            textView.setText(sb.toString());
            this.mRamGraph.invalidate();
        }

        public class GraphView extends View {
            Paint headPaint;
            Paint pssPaint;
            Paint ussPaint;

            public GraphView(Context context, AttributeSet attributeSet) {
                super(context, attributeSet);
                this.pssPaint = new Paint();
                this.pssPaint.setColor(-6697984);
                this.ussPaint = new Paint();
                this.ussPaint.setColor(-6750208);
                this.headPaint = new Paint();
                this.headPaint.setColor(-1);
            }

            public GraphView(ProcessWatcher processWatcher, Context context) {
                this(context, null);
            }

            @Override // android.view.View
            public void onDraw(Canvas canvas) {
                int width = canvas.getWidth();
                int height = canvas.getHeight();
                if (ProcessWatcher.this.mMemInfo == null) {
                    return;
                }
                int length = ProcessWatcher.this.mMemInfo.pss.length;
                float f = width / length;
                float fMax = Math.max(1.0f, f);
                float f2 = height;
                float f3 = f2 / ProcessWatcher.this.mMemInfo.max;
                for (int i = 0; i < length; i++) {
                    float f4 = i * f;
                    float f5 = f4 + fMax;
                    canvas.drawRect(f4, f2 - (ProcessWatcher.this.mMemInfo.pss[i] * f3), f5, f2, this.pssPaint);
                    canvas.drawRect(f4, f2 - (ProcessWatcher.this.mMemInfo.uss[i] * f3), f5, f2, this.ussPaint);
                }
                float f6 = ProcessWatcher.this.mMemInfo.head * f;
                canvas.drawRect(f6, 0.0f, f6 + fMax, f2, this.headPaint);
            }
        }
    }
}
