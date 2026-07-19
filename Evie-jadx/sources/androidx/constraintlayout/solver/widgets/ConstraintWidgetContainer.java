package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.LinearSystem;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ConstraintWidgetContainer extends WidgetContainer {
    int mPaddingBottom;
    int mPaddingLeft;
    int mPaddingRight;
    int mPaddingTop;
    private Snapshot mSnapshot;
    private boolean mIsRtl = false;
    protected LinearSystem mSystem = new LinearSystem();
    int mHorizontalChainsSize = 0;
    int mVerticalChainsSize = 0;
    ChainHead[] mVerticalChainsArray = new ChainHead[4];
    ChainHead[] mHorizontalChainsArray = new ChainHead[4];
    public List<ConstraintWidgetGroup> mWidgetGroups = new ArrayList();
    public boolean mGroupsWrapOptimized = false;
    public boolean mHorizontalWrapOptimized = false;
    public boolean mVerticalWrapOptimized = false;
    public int mWrapFixedWidth = 0;
    public int mWrapFixedHeight = 0;
    private int mOptimizationLevel = 7;
    public boolean mSkipSolver = false;
    private boolean mWidthMeasuredTooSmall = false;
    private boolean mHeightMeasuredTooSmall = false;
    int mDebugSolverPassCount = 0;

    public boolean handlesInternalConstraints() {
        return false;
    }

    public void setOptimizationLevel(int i) {
        this.mOptimizationLevel = i;
    }

    public int getOptimizationLevel() {
        return this.mOptimizationLevel;
    }

    public boolean optimizeFor(int i) {
        return (this.mOptimizationLevel & i) == i;
    }

    @Override // androidx.constraintlayout.solver.widgets.WidgetContainer, androidx.constraintlayout.solver.widgets.ConstraintWidget
    public void reset() {
        this.mSystem.reset();
        this.mPaddingLeft = 0;
        this.mPaddingRight = 0;
        this.mPaddingTop = 0;
        this.mPaddingBottom = 0;
        this.mWidgetGroups.clear();
        this.mSkipSolver = false;
        super.reset();
    }

    public boolean isWidthMeasuredTooSmall() {
        return this.mWidthMeasuredTooSmall;
    }

    public boolean isHeightMeasuredTooSmall() {
        return this.mHeightMeasuredTooSmall;
    }

    public boolean addChildrenToSolver(LinearSystem linearSystem) {
        addToSolver(linearSystem);
        int size = this.mChildren.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i);
            if (constraintWidget instanceof ConstraintWidgetContainer) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = constraintWidget.mListDimensionBehaviors[0];
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = constraintWidget.mListDimensionBehaviors[1];
                if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    constraintWidget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                }
                if (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    constraintWidget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                }
                constraintWidget.addToSolver(linearSystem);
                if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    constraintWidget.setHorizontalDimensionBehaviour(dimensionBehaviour);
                }
                if (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    constraintWidget.setVerticalDimensionBehaviour(dimensionBehaviour2);
                }
            } else {
                Optimizer.checkMatchParent(this, linearSystem, constraintWidget);
                constraintWidget.addToSolver(linearSystem);
            }
        }
        if (this.mHorizontalChainsSize > 0) {
            Chain.applyChainConstraints(this, linearSystem, 0);
        }
        if (this.mVerticalChainsSize > 0) {
            Chain.applyChainConstraints(this, linearSystem, 1);
        }
        return true;
    }

    public void updateChildrenFromSolver(LinearSystem linearSystem, boolean[] zArr) {
        zArr[2] = false;
        updateFromSolver(linearSystem);
        int size = this.mChildren.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i);
            constraintWidget.updateFromSolver(linearSystem);
            if (constraintWidget.mListDimensionBehaviors[0] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.getWidth() < constraintWidget.getWrapWidth()) {
                zArr[2] = true;
            }
            if (constraintWidget.mListDimensionBehaviors[1] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.getHeight() < constraintWidget.getWrapHeight()) {
                zArr[2] = true;
            }
        }
    }

    public void setRtl(boolean z) {
        this.mIsRtl = z;
    }

    public boolean isRtl() {
        return this.mIsRtl;
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public void analyze(int i) {
        super.analyze(i);
        int size = this.mChildren.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mChildren.get(i2).analyze(i);
        }
    }

    /* JADX WARN: Code duplicated, block: B:111:0x025a  */
    /* JADX WARN: Code duplicated, block: B:114:0x026f  */
    /* JADX WARN: Code duplicated, block: B:117:0x028b  */
    /* JADX WARN: Code duplicated, block: B:118:0x0298  */
    /* JADX WARN: Code duplicated, block: B:120:0x029b  */
    /* JADX WARN: Code duplicated, block: B:132:0x02d8  */
    /* JADX WARN: Code duplicated, block: B:133:0x02da  */
    /* JADX WARN: Code duplicated, block: B:168:0x01df A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:72:0x0188  */
    /* JADX WARN: Code duplicated, block: B:73:0x0191  */
    /* JADX WARN: Code duplicated, block: B:75:0x0199  */
    /* JADX WARN: Type inference failed for: r8v20 */
    /* JADX WARN: Type inference failed for: r8v21, types: [boolean] */
    /* JADX WARN: Type inference failed for: r8v22 */
    @Override // androidx.constraintlayout.solver.widgets.WidgetContainer
    public void layout() {
        int i;
        boolean z;
        boolean z2;
        int i2;
        char c;
        ConstraintWidget constraintWidget;
        char c2;
        int i3;
        boolean z3;
        int iMax;
        int iMax2;
        ?? r8;
        boolean zAddChildrenToSolver;
        int i4 = this.f7mX;
        int i5 = this.f8mY;
        int iMax3 = Math.max(0, getWidth());
        int iMax4 = Math.max(0, getHeight());
        this.mWidthMeasuredTooSmall = false;
        this.mHeightMeasuredTooSmall = false;
        if (this.mParent != null) {
            if (this.mSnapshot == null) {
                this.mSnapshot = new Snapshot(this);
            }
            this.mSnapshot.updateFrom(this);
            setX(this.mPaddingLeft);
            setY(this.mPaddingTop);
            resetAnchors();
            resetSolverVariables(this.mSystem.getCache());
        } else {
            this.f7mX = 0;
            this.f8mY = 0;
        }
        int i6 = 32;
        if (this.mOptimizationLevel != 0) {
            if (!optimizeFor(8)) {
                optimizeReset();
            }
            if (!optimizeFor(32)) {
                optimize();
            }
            this.mSystem.graphOptimizer = true;
        } else {
            this.mSystem.graphOptimizer = false;
        }
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = this.mListDimensionBehaviors[1];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = this.mListDimensionBehaviors[0];
        resetChains();
        if (this.mWidgetGroups.size() == 0) {
            this.mWidgetGroups.clear();
            this.mWidgetGroups.add(0, new ConstraintWidgetGroup(this.mChildren));
        }
        int size = this.mWidgetGroups.size();
        ArrayList<ConstraintWidget> arrayList = this.mChildren;
        boolean z4 = getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        boolean z5 = false;
        int i7 = 0;
        while (i7 < size && !this.mSkipSolver) {
            if (this.mWidgetGroups.get(i7).mSkipSolver) {
                i = size;
            } else {
                if (optimizeFor(i6)) {
                    if (getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.FIXED && getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.FIXED) {
                        this.mChildren = (ArrayList) this.mWidgetGroups.get(i7).getWidgetsToSolve();
                    } else {
                        this.mChildren = (ArrayList) this.mWidgetGroups.get(i7).mConstrainedGroup;
                    }
                }
                resetChains();
                int size2 = this.mChildren.size();
                for (int i8 = 0; i8 < size2; i8++) {
                    ConstraintWidget constraintWidget2 = this.mChildren.get(i8);
                    if (constraintWidget2 instanceof WidgetContainer) {
                        ((WidgetContainer) constraintWidget2).layout();
                    }
                }
                boolean z6 = z5;
                int i9 = 0;
                boolean z7 = true;
                while (z7) {
                    boolean z8 = z7;
                    int i10 = i9 + 1;
                    try {
                        this.mSystem.reset();
                        resetChains();
                        createObjectVariables(this.mSystem);
                        int i11 = 0;
                        while (i11 < size2) {
                            z = z6;
                            try {
                                this.mChildren.get(i11).createObjectVariables(this.mSystem);
                                i11++;
                                z6 = z;
                            } catch (Exception e) {
                                e = e;
                                zAddChildrenToSolver = z8;
                                e.printStackTrace();
                                z2 = zAddChildrenToSolver;
                                System.out.println("EXCEPTION : " + e);
                                if (z2) {
                                    updateChildrenFromSolver(this.mSystem, Optimizer.flags);
                                    c = 2;
                                } else {
                                    updateFromSolver(this.mSystem);
                                    i2 = 0;
                                    while (true) {
                                        if (i2 < size2) {
                                            c = 2;
                                            break;
                                        }
                                        constraintWidget = this.mChildren.get(i2);
                                        c2 = constraintWidget.mListDimensionBehaviors[0] != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT ? (char) 1 : (char) 1;
                                        if (constraintWidget.mListDimensionBehaviors[c2] != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                                        }
                                        i2++;
                                    }
                                }
                                if (z4) {
                                    i3 = i10;
                                    z6 = z;
                                    z3 = false;
                                } else {
                                    i3 = i10;
                                    z6 = z;
                                    z3 = false;
                                }
                                iMax = Math.max(this.mMinWidth, getWidth());
                                if (iMax > getWidth()) {
                                    setWidth(iMax);
                                    this.mListDimensionBehaviors[0] = ConstraintWidget.DimensionBehaviour.FIXED;
                                    z3 = true;
                                    z6 = true;
                                }
                                iMax2 = Math.max(this.mMinHeight, getHeight());
                                if (iMax2 > getHeight()) {
                                    setHeight(iMax2);
                                    r8 = 1;
                                    this.mListDimensionBehaviors[1] = ConstraintWidget.DimensionBehaviour.FIXED;
                                    z3 = true;
                                    z6 = true;
                                } else {
                                    r8 = 1;
                                }
                                if (z6) {
                                    z7 = z3;
                                } else {
                                    if (this.mListDimensionBehaviors[0] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                                        this.mWidthMeasuredTooSmall = r8;
                                        this.mListDimensionBehaviors[0] = ConstraintWidget.DimensionBehaviour.FIXED;
                                        setWidth(iMax3);
                                        z3 = true;
                                        z6 = true;
                                    }
                                    if (this.mListDimensionBehaviors[r8] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                                        z7 = z3;
                                    } else {
                                        z7 = z3;
                                    }
                                }
                                i9 = i3;
                                size = size;
                            }
                        }
                        z = z6;
                        zAddChildrenToSolver = addChildrenToSolver(this.mSystem);
                        if (zAddChildrenToSolver) {
                            try {
                                this.mSystem.minimize();
                            } catch (Exception e2) {
                                e = e2;
                                e.printStackTrace();
                                z2 = zAddChildrenToSolver;
                                System.out.println("EXCEPTION : " + e);
                            }
                        }
                        z2 = zAddChildrenToSolver;
                    } catch (Exception e3) {
                        e = e3;
                        z = z6;
                    }
                    if (z2) {
                        updateChildrenFromSolver(this.mSystem, Optimizer.flags);
                        c = 2;
                    } else {
                        updateFromSolver(this.mSystem);
                        i2 = 0;
                        while (true) {
                            if (i2 < size2) {
                                c = 2;
                                break;
                            }
                            constraintWidget = this.mChildren.get(i2);
                            if (constraintWidget.mListDimensionBehaviors[0] != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.getWidth() < constraintWidget.getWrapWidth()) {
                                Optimizer.flags[2] = true;
                                c = 2;
                                break;
                            }
                            if (constraintWidget.mListDimensionBehaviors[c2] != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.getHeight() < constraintWidget.getWrapHeight()) {
                                c = 2;
                                Optimizer.flags[2] = true;
                                break;
                            }
                            i2++;
                        }
                    }
                    if (z4 || i10 >= 8 || !Optimizer.flags[c]) {
                        i3 = i10;
                        z6 = z;
                        z3 = false;
                    } else {
                        int i12 = 0;
                        int iMax5 = 0;
                        int iMax6 = 0;
                        while (i12 < size2) {
                            ConstraintWidget constraintWidget3 = this.mChildren.get(i12);
                            iMax5 = Math.max(iMax5, constraintWidget3.f7mX + constraintWidget3.getWidth());
                            iMax6 = Math.max(iMax6, constraintWidget3.f8mY + constraintWidget3.getHeight());
                            i12++;
                            i10 = i10;
                        }
                        i3 = i10;
                        int iMax7 = Math.max(this.mMinWidth, iMax5);
                        int iMax8 = Math.max(this.mMinHeight, iMax6);
                        if (dimensionBehaviour2 != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || getWidth() >= iMax7) {
                            z3 = false;
                        } else {
                            setWidth(iMax7);
                            this.mListDimensionBehaviors[0] = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                            z3 = true;
                            z = true;
                        }
                        if (dimensionBehaviour != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || getHeight() >= iMax8) {
                            z6 = z;
                        } else {
                            setHeight(iMax8);
                            this.mListDimensionBehaviors[1] = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                            z3 = true;
                            z6 = true;
                        }
                    }
                    iMax = Math.max(this.mMinWidth, getWidth());
                    if (iMax > getWidth()) {
                        setWidth(iMax);
                        this.mListDimensionBehaviors[0] = ConstraintWidget.DimensionBehaviour.FIXED;
                        z3 = true;
                        z6 = true;
                    }
                    iMax2 = Math.max(this.mMinHeight, getHeight());
                    if (iMax2 > getHeight()) {
                        setHeight(iMax2);
                        r8 = 1;
                        this.mListDimensionBehaviors[1] = ConstraintWidget.DimensionBehaviour.FIXED;
                        z3 = true;
                        z6 = true;
                    } else {
                        r8 = 1;
                    }
                    if (z6) {
                        if (this.mListDimensionBehaviors[0] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT && iMax3 > 0 && getWidth() > iMax3) {
                            this.mWidthMeasuredTooSmall = r8;
                            this.mListDimensionBehaviors[0] = ConstraintWidget.DimensionBehaviour.FIXED;
                            setWidth(iMax3);
                            z3 = true;
                            z6 = true;
                        }
                        if (this.mListDimensionBehaviors[r8] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || iMax4 <= 0 || getHeight() <= iMax4) {
                            z7 = z3;
                        } else {
                            this.mHeightMeasuredTooSmall = r8;
                            this.mListDimensionBehaviors[r8] = ConstraintWidget.DimensionBehaviour.FIXED;
                            setHeight(iMax4);
                            z7 = true;
                            z6 = true;
                        }
                    } else {
                        z7 = z3;
                    }
                    i9 = i3;
                    size = size;
                }
                i = size;
                this.mWidgetGroups.get(i7).updateUnresolvedWidgets();
                z5 = z6;
            }
            i7++;
            size = i;
            i6 = 32;
        }
        this.mChildren = arrayList;
        if (this.mParent != null) {
            int iMax9 = Math.max(this.mMinWidth, getWidth());
            int iMax10 = Math.max(this.mMinHeight, getHeight());
            this.mSnapshot.applyTo(this);
            setWidth(iMax9 + this.mPaddingLeft + this.mPaddingRight);
            setHeight(iMax10 + this.mPaddingTop + this.mPaddingBottom);
        } else {
            this.f7mX = i4;
            this.f8mY = i5;
        }
        if (z5) {
            this.mListDimensionBehaviors[0] = dimensionBehaviour2;
            this.mListDimensionBehaviors[1] = dimensionBehaviour;
        }
        resetSolverVariables(this.mSystem.getCache());
        if (this == getRootConstraintContainer()) {
            updateDrawPosition();
        }
    }

    public void preOptimize() {
        optimizeReset();
        analyze(this.mOptimizationLevel);
    }

    public void solveGraph() {
        ResolutionAnchor resolutionNode = getAnchor(ConstraintAnchor.Type.LEFT).getResolutionNode();
        ResolutionAnchor resolutionNode2 = getAnchor(ConstraintAnchor.Type.TOP).getResolutionNode();
        resolutionNode.resolve(null, 0.0f);
        resolutionNode2.resolve(null, 0.0f);
    }

    public void optimizeForDimensions(int i, int i2) {
        if (this.mListDimensionBehaviors[0] != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT && this.mResolutionWidth != null) {
            this.mResolutionWidth.resolve(i);
        }
        if (this.mListDimensionBehaviors[1] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || this.mResolutionHeight == null) {
            return;
        }
        this.mResolutionHeight.resolve(i2);
    }

    public void optimizeReset() {
        int size = this.mChildren.size();
        resetResolutionNodes();
        for (int i = 0; i < size; i++) {
            this.mChildren.get(i).resetResolutionNodes();
        }
    }

    public void optimize() {
        if (!optimizeFor(8)) {
            analyze(this.mOptimizationLevel);
        }
        solveGraph();
    }

    private void resetChains() {
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
    }

    void addChain(ConstraintWidget constraintWidget, int i) {
        if (i == 0) {
            addHorizontalChain(constraintWidget);
        } else if (i == 1) {
            addVerticalChain(constraintWidget);
        }
    }

    private void addHorizontalChain(ConstraintWidget constraintWidget) {
        int i = this.mHorizontalChainsSize + 1;
        ChainHead[] chainHeadArr = this.mHorizontalChainsArray;
        if (i >= chainHeadArr.length) {
            this.mHorizontalChainsArray = (ChainHead[]) Arrays.copyOf(chainHeadArr, chainHeadArr.length * 2);
        }
        this.mHorizontalChainsArray[this.mHorizontalChainsSize] = new ChainHead(constraintWidget, 0, isRtl());
        this.mHorizontalChainsSize++;
    }

    private void addVerticalChain(ConstraintWidget constraintWidget) {
        int i = this.mVerticalChainsSize + 1;
        ChainHead[] chainHeadArr = this.mVerticalChainsArray;
        if (i >= chainHeadArr.length) {
            this.mVerticalChainsArray = (ChainHead[]) Arrays.copyOf(chainHeadArr, chainHeadArr.length * 2);
        }
        this.mVerticalChainsArray[this.mVerticalChainsSize] = new ChainHead(constraintWidget, 1, isRtl());
        this.mVerticalChainsSize++;
    }
}
