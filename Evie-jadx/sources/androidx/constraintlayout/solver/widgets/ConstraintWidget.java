package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.Cache;
import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.SolverVariable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ConstraintWidget {
    public static float DEFAULT_BIAS = 0.5f;
    private Object mCompanionWidget;
    private int mContainerItemSkip;
    private String mDebugName;
    boolean mGroupsToSolver;
    float mHorizontalBiasPercent;
    boolean mHorizontalChainFixedPosition;
    int mHorizontalChainStyle;
    ConstraintWidget mHorizontalNextWidget;
    boolean mHorizontalWrapVisited;
    boolean mIsHeightWrapContent;
    boolean mIsWidthWrapContent;
    protected ConstraintWidget[] mListNextMatchConstraintsWidget;
    protected int mMinHeight;
    protected int mMinWidth;
    protected ConstraintWidget[] mNextChainWidget;
    boolean mOptimizerMeasurable;
    boolean mOptimizerMeasured;
    ResolutionDimension mResolutionHeight;
    ResolutionDimension mResolutionWidth;
    private String mType;
    float mVerticalBiasPercent;
    boolean mVerticalChainFixedPosition;
    int mVerticalChainStyle;
    ConstraintWidget mVerticalNextWidget;
    boolean mVerticalWrapVisited;
    private int mVisibility;
    float[] mWeight;
    private int mWrapHeight;
    private int mWrapWidth;
    public int mHorizontalResolution = -1;
    public int mVerticalResolution = -1;
    int mMatchConstraintDefaultWidth = 0;
    int mMatchConstraintDefaultHeight = 0;
    int[] mResolvedMatchConstraintDefault = new int[2];
    int mMatchConstraintMinWidth = 0;
    int mMatchConstraintMaxWidth = 0;
    float mMatchConstraintPercentWidth = 1.0f;
    int mMatchConstraintMinHeight = 0;
    int mMatchConstraintMaxHeight = 0;
    float mMatchConstraintPercentHeight = 1.0f;
    int mResolvedDimensionRatioSide = -1;
    float mResolvedDimensionRatio = 1.0f;
    ConstraintWidgetGroup mBelongingGroup = null;
    private int[] mMaxDimension = {Integer.MAX_VALUE, Integer.MAX_VALUE};
    private float mCircleConstraintAngle = 0.0f;
    ConstraintAnchor mLeft = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
    ConstraintAnchor mTop = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
    ConstraintAnchor mRight = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
    ConstraintAnchor mBottom = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
    ConstraintAnchor mBaseline = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
    ConstraintAnchor mCenterX = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
    ConstraintAnchor mCenterY = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
    ConstraintAnchor mCenter = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
    protected ConstraintAnchor[] mListAnchors = {this.mLeft, this.mRight, this.mTop, this.mBottom, this.mBaseline, this.mCenter};
    protected ArrayList<ConstraintAnchor> mAnchors = new ArrayList<>();
    protected DimensionBehaviour[] mListDimensionBehaviors = {DimensionBehaviour.FIXED, DimensionBehaviour.FIXED};
    ConstraintWidget mParent = null;
    int mWidth = 0;
    int mHeight = 0;
    protected float mDimensionRatio = 0.0f;
    protected int mDimensionRatioSide = -1;

    /* JADX INFO: renamed from: mX */
    protected int f7mX = 0;

    /* JADX INFO: renamed from: mY */
    protected int f8mY = 0;
    int mRelX = 0;
    int mRelY = 0;
    private int mDrawX = 0;
    private int mDrawY = 0;
    private int mDrawWidth = 0;
    private int mDrawHeight = 0;
    protected int mOffsetX = 0;
    protected int mOffsetY = 0;
    int mBaselineDistance = 0;

    public enum DimensionBehaviour {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT
    }

    public void resolve() {
    }

    public void setMaxWidth(int i) {
        this.mMaxDimension[0] = i;
    }

    public void setMaxHeight(int i) {
        this.mMaxDimension[1] = i;
    }

    public boolean isSpreadWidth() {
        return this.mMatchConstraintDefaultWidth == 0 && this.mDimensionRatio == 0.0f && this.mMatchConstraintMinWidth == 0 && this.mMatchConstraintMaxWidth == 0 && this.mListDimensionBehaviors[0] == DimensionBehaviour.MATCH_CONSTRAINT;
    }

    public boolean isSpreadHeight() {
        return this.mMatchConstraintDefaultHeight == 0 && this.mDimensionRatio == 0.0f && this.mMatchConstraintMinHeight == 0 && this.mMatchConstraintMaxHeight == 0 && this.mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT;
    }

    public void reset() {
        this.mLeft.reset();
        this.mTop.reset();
        this.mRight.reset();
        this.mBottom.reset();
        this.mBaseline.reset();
        this.mCenterX.reset();
        this.mCenterY.reset();
        this.mCenter.reset();
        this.mParent = null;
        this.mCircleConstraintAngle = 0.0f;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.f7mX = 0;
        this.f8mY = 0;
        this.mDrawX = 0;
        this.mDrawY = 0;
        this.mDrawWidth = 0;
        this.mDrawHeight = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mWrapWidth = 0;
        this.mWrapHeight = 0;
        float f = DEFAULT_BIAS;
        this.mHorizontalBiasPercent = f;
        this.mVerticalBiasPercent = f;
        this.mListDimensionBehaviors[0] = DimensionBehaviour.FIXED;
        this.mListDimensionBehaviors[1] = DimensionBehaviour.FIXED;
        this.mCompanionWidget = null;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mType = null;
        this.mHorizontalWrapVisited = false;
        this.mVerticalWrapVisited = false;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        this.mHorizontalChainFixedPosition = false;
        this.mVerticalChainFixedPosition = false;
        float[] fArr = this.mWeight;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        int[] iArr = this.mMaxDimension;
        iArr[0] = Integer.MAX_VALUE;
        iArr[1] = Integer.MAX_VALUE;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mMatchConstraintPercentWidth = 1.0f;
        this.mMatchConstraintPercentHeight = 1.0f;
        this.mMatchConstraintMaxWidth = Integer.MAX_VALUE;
        this.mMatchConstraintMaxHeight = Integer.MAX_VALUE;
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMinHeight = 0;
        this.mResolvedDimensionRatioSide = -1;
        this.mResolvedDimensionRatio = 1.0f;
        ResolutionDimension resolutionDimension = this.mResolutionWidth;
        if (resolutionDimension != null) {
            resolutionDimension.reset();
        }
        ResolutionDimension resolutionDimension2 = this.mResolutionHeight;
        if (resolutionDimension2 != null) {
            resolutionDimension2.reset();
        }
        this.mBelongingGroup = null;
        this.mOptimizerMeasurable = false;
        this.mOptimizerMeasured = false;
        this.mGroupsToSolver = false;
    }

    public void resetResolutionNodes() {
        for (int i = 0; i < 6; i++) {
            this.mListAnchors[i].getResolutionNode().reset();
        }
    }

    public void updateResolutionNodes() {
        for (int i = 0; i < 6; i++) {
            this.mListAnchors[i].getResolutionNode().update();
        }
    }

    public void analyze(int i) {
        Optimizer.analyze(i, this);
    }

    public boolean isFullyResolved() {
        return this.mLeft.getResolutionNode().state == 1 && this.mRight.getResolutionNode().state == 1 && this.mTop.getResolutionNode().state == 1 && this.mBottom.getResolutionNode().state == 1;
    }

    public ResolutionDimension getResolutionWidth() {
        if (this.mResolutionWidth == null) {
            this.mResolutionWidth = new ResolutionDimension();
        }
        return this.mResolutionWidth;
    }

    public ResolutionDimension getResolutionHeight() {
        if (this.mResolutionHeight == null) {
            this.mResolutionHeight = new ResolutionDimension();
        }
        return this.mResolutionHeight;
    }

    public ConstraintWidget() {
        float f = DEFAULT_BIAS;
        this.mHorizontalBiasPercent = f;
        this.mVerticalBiasPercent = f;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mDebugName = null;
        this.mType = null;
        this.mOptimizerMeasurable = false;
        this.mOptimizerMeasured = false;
        this.mGroupsToSolver = false;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        this.mWeight = new float[]{-1.0f, -1.0f};
        this.mListNextMatchConstraintsWidget = new ConstraintWidget[]{null, null};
        this.mNextChainWidget = new ConstraintWidget[]{null, null};
        this.mHorizontalNextWidget = null;
        this.mVerticalNextWidget = null;
        addAnchors();
    }

    public void resetSolverVariables(Cache cache) {
        this.mLeft.resetSolverVariable(cache);
        this.mTop.resetSolverVariable(cache);
        this.mRight.resetSolverVariable(cache);
        this.mBottom.resetSolverVariable(cache);
        this.mBaseline.resetSolverVariable(cache);
        this.mCenter.resetSolverVariable(cache);
        this.mCenterX.resetSolverVariable(cache);
        this.mCenterY.resetSolverVariable(cache);
    }

    private void addAnchors() {
        this.mAnchors.add(this.mLeft);
        this.mAnchors.add(this.mTop);
        this.mAnchors.add(this.mRight);
        this.mAnchors.add(this.mBottom);
        this.mAnchors.add(this.mCenterX);
        this.mAnchors.add(this.mCenterY);
        this.mAnchors.add(this.mCenter);
        this.mAnchors.add(this.mBaseline);
    }

    public ConstraintWidget getParent() {
        return this.mParent;
    }

    public void setParent(ConstraintWidget constraintWidget) {
        this.mParent = constraintWidget;
    }

    public void setWidthWrapContent(boolean z) {
        this.mIsWidthWrapContent = z;
    }

    public void setHeightWrapContent(boolean z) {
        this.mIsHeightWrapContent = z;
    }

    public void connectCircularConstraint(ConstraintWidget constraintWidget, float f, int i) {
        immediateConnect(ConstraintAnchor.Type.CENTER, constraintWidget, ConstraintAnchor.Type.CENTER, i, 0);
        this.mCircleConstraintAngle = f;
    }

    public void setVisibility(int i) {
        this.mVisibility = i;
    }

    public int getVisibility() {
        return this.mVisibility;
    }

    public String getDebugName() {
        return this.mDebugName;
    }

    public void setDebugName(String str) {
        this.mDebugName = str;
    }

    public void createObjectVariables(LinearSystem linearSystem) {
        linearSystem.createObjectVariable(this.mLeft);
        linearSystem.createObjectVariable(this.mTop);
        linearSystem.createObjectVariable(this.mRight);
        linearSystem.createObjectVariable(this.mBottom);
        if (this.mBaselineDistance > 0) {
            linearSystem.createObjectVariable(this.mBaseline);
        }
    }

    public String toString() {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder();
        if (this.mType != null) {
            str = "type: " + this.mType + " ";
        } else {
            str = "";
        }
        sb.append(str);
        if (this.mDebugName != null) {
            str2 = "id: " + this.mDebugName + " ";
        } else {
            str2 = "";
        }
        sb.append(str2);
        sb.append("(");
        sb.append(this.f7mX);
        sb.append(", ");
        sb.append(this.f8mY);
        sb.append(") - (");
        sb.append(this.mWidth);
        sb.append(" x ");
        sb.append(this.mHeight);
        sb.append(") wrap: (");
        sb.append(this.mWrapWidth);
        sb.append(" x ");
        sb.append(this.mWrapHeight);
        sb.append(")");
        return sb.toString();
    }

    public int getX() {
        return this.f7mX;
    }

    public int getY() {
        return this.f8mY;
    }

    public int getWidth() {
        if (this.mVisibility == 8) {
            return 0;
        }
        return this.mWidth;
    }

    public int getWrapWidth() {
        return this.mWrapWidth;
    }

    public int getHeight() {
        if (this.mVisibility == 8) {
            return 0;
        }
        return this.mHeight;
    }

    public int getWrapHeight() {
        return this.mWrapHeight;
    }

    public int getLength(int i) {
        if (i == 0) {
            return getWidth();
        }
        if (i == 1) {
            return getHeight();
        }
        return 0;
    }

    public int getDrawX() {
        return this.mDrawX + this.mOffsetX;
    }

    public int getDrawY() {
        return this.mDrawY + this.mOffsetY;
    }

    protected int getRootX() {
        return this.f7mX + this.mOffsetX;
    }

    protected int getRootY() {
        return this.f8mY + this.mOffsetY;
    }

    public int getRight() {
        return getX() + this.mWidth;
    }

    public int getBottom() {
        return getY() + this.mHeight;
    }

    public float getBiasPercent(int i) {
        if (i == 0) {
            return this.mHorizontalBiasPercent;
        }
        if (i == 1) {
            return this.mVerticalBiasPercent;
        }
        return -1.0f;
    }

    public boolean hasBaseline() {
        return this.mBaselineDistance > 0;
    }

    public int getBaselineDistance() {
        return this.mBaselineDistance;
    }

    public Object getCompanionWidget() {
        return this.mCompanionWidget;
    }

    public ArrayList<ConstraintAnchor> getAnchors() {
        return this.mAnchors;
    }

    public void setX(int i) {
        this.f7mX = i;
    }

    public void setY(int i) {
        this.f8mY = i;
    }

    public void setOrigin(int i, int i2) {
        this.f7mX = i;
        this.f8mY = i2;
    }

    public void setOffset(int i, int i2) {
        this.mOffsetX = i;
        this.mOffsetY = i2;
    }

    public void updateDrawPosition() {
        int i = this.f7mX;
        int i2 = this.f8mY;
        int i3 = this.mWidth + i;
        int i4 = this.mHeight + i2;
        this.mDrawX = i;
        this.mDrawY = i2;
        this.mDrawWidth = i3 - i;
        this.mDrawHeight = i4 - i2;
    }

    public void setWidth(int i) {
        this.mWidth = i;
        int i2 = this.mWidth;
        int i3 = this.mMinWidth;
        if (i2 < i3) {
            this.mWidth = i3;
        }
    }

    public void setHeight(int i) {
        this.mHeight = i;
        int i2 = this.mHeight;
        int i3 = this.mMinHeight;
        if (i2 < i3) {
            this.mHeight = i3;
        }
    }

    public void setHorizontalMatchStyle(int i, int i2, int i3, float f) {
        this.mMatchConstraintDefaultWidth = i;
        this.mMatchConstraintMinWidth = i2;
        this.mMatchConstraintMaxWidth = i3;
        this.mMatchConstraintPercentWidth = f;
        if (f >= 1.0f || this.mMatchConstraintDefaultWidth != 0) {
            return;
        }
        this.mMatchConstraintDefaultWidth = 2;
    }

    public void setVerticalMatchStyle(int i, int i2, int i3, float f) {
        this.mMatchConstraintDefaultHeight = i;
        this.mMatchConstraintMinHeight = i2;
        this.mMatchConstraintMaxHeight = i3;
        this.mMatchConstraintPercentHeight = f;
        if (f >= 1.0f || this.mMatchConstraintDefaultHeight != 0) {
            return;
        }
        this.mMatchConstraintDefaultHeight = 2;
    }

    public void setDimensionRatio(String str) {
        float fAbs;
        if (str == null || str.length() == 0) {
            this.mDimensionRatio = 0.0f;
            return;
        }
        int i = -1;
        int length = str.length();
        int iIndexOf = str.indexOf(44);
        int i2 = 0;
        if (iIndexOf > 0 && iIndexOf < length - 1) {
            String strSubstring = str.substring(0, iIndexOf);
            if (strSubstring.equalsIgnoreCase("W")) {
                i = 0;
            } else if (strSubstring.equalsIgnoreCase("H")) {
                i = 1;
            }
            i2 = iIndexOf + 1;
        }
        int iIndexOf2 = str.indexOf(58);
        if (iIndexOf2 >= 0 && iIndexOf2 < length - 1) {
            String strSubstring2 = str.substring(i2, iIndexOf2);
            String strSubstring3 = str.substring(iIndexOf2 + 1);
            if (strSubstring2.length() <= 0 || strSubstring3.length() <= 0) {
                fAbs = 0.0f;
            } else {
                try {
                    float f = Float.parseFloat(strSubstring2);
                    float f2 = Float.parseFloat(strSubstring3);
                    if (f <= 0.0f || f2 <= 0.0f) {
                        fAbs = 0.0f;
                    } else if (i == 1) {
                        fAbs = Math.abs(f2 / f);
                    } else {
                        fAbs = Math.abs(f / f2);
                    }
                } catch (NumberFormatException unused) {
                    fAbs = 0.0f;
                }
            }
        } else {
            String strSubstring4 = str.substring(i2);
            if (strSubstring4.length() > 0) {
                try {
                    fAbs = Float.parseFloat(strSubstring4);
                } catch (NumberFormatException unused2) {
                    fAbs = 0.0f;
                }
            } else {
                fAbs = 0.0f;
            }
        }
        if (fAbs > 0.0f) {
            this.mDimensionRatio = fAbs;
            this.mDimensionRatioSide = i;
        }
    }

    public void setHorizontalBiasPercent(float f) {
        this.mHorizontalBiasPercent = f;
    }

    public void setVerticalBiasPercent(float f) {
        this.mVerticalBiasPercent = f;
    }

    public void setMinWidth(int i) {
        if (i < 0) {
            this.mMinWidth = 0;
        } else {
            this.mMinWidth = i;
        }
    }

    public void setMinHeight(int i) {
        if (i < 0) {
            this.mMinHeight = 0;
        } else {
            this.mMinHeight = i;
        }
    }

    public void setWrapWidth(int i) {
        this.mWrapWidth = i;
    }

    public void setWrapHeight(int i) {
        this.mWrapHeight = i;
    }

    public void setFrame(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7 = i3 - i;
        int i8 = i4 - i2;
        this.f7mX = i;
        this.f8mY = i2;
        if (this.mVisibility == 8) {
            this.mWidth = 0;
            this.mHeight = 0;
            return;
        }
        if (this.mListDimensionBehaviors[0] != DimensionBehaviour.FIXED || i7 >= (i5 = this.mWidth)) {
            i5 = i7;
        }
        if (this.mListDimensionBehaviors[1] != DimensionBehaviour.FIXED || i8 >= (i6 = this.mHeight)) {
            i6 = i8;
        }
        this.mWidth = i5;
        this.mHeight = i6;
        int i9 = this.mHeight;
        int i10 = this.mMinHeight;
        if (i9 < i10) {
            this.mHeight = i10;
        }
        int i11 = this.mWidth;
        int i12 = this.mMinWidth;
        if (i11 < i12) {
            this.mWidth = i12;
        }
        this.mOptimizerMeasured = true;
    }

    public void setFrame(int i, int i2, int i3) {
        if (i3 == 0) {
            setHorizontalDimension(i, i2);
        } else if (i3 == 1) {
            setVerticalDimension(i, i2);
        }
        this.mOptimizerMeasured = true;
    }

    public void setHorizontalDimension(int i, int i2) {
        this.f7mX = i;
        this.mWidth = i2 - i;
        int i3 = this.mWidth;
        int i4 = this.mMinWidth;
        if (i3 < i4) {
            this.mWidth = i4;
        }
    }

    public void setVerticalDimension(int i, int i2) {
        this.f8mY = i;
        this.mHeight = i2 - i;
        int i3 = this.mHeight;
        int i4 = this.mMinHeight;
        if (i3 < i4) {
            this.mHeight = i4;
        }
    }

    int getRelativePositioning(int i) {
        if (i == 0) {
            return this.mRelX;
        }
        if (i == 1) {
            return this.mRelY;
        }
        return 0;
    }

    void setRelativePositioning(int i, int i2) {
        if (i2 == 0) {
            this.mRelX = i;
        } else if (i2 == 1) {
            this.mRelY = i;
        }
    }

    public void setBaselineDistance(int i) {
        this.mBaselineDistance = i;
    }

    public void setCompanionWidget(Object obj) {
        this.mCompanionWidget = obj;
    }

    public void setHorizontalWeight(float f) {
        this.mWeight[0] = f;
    }

    public void setVerticalWeight(float f) {
        this.mWeight[1] = f;
    }

    public void setHorizontalChainStyle(int i) {
        this.mHorizontalChainStyle = i;
    }

    public void setVerticalChainStyle(int i) {
        this.mVerticalChainStyle = i;
    }

    public boolean allowedInBarrier() {
        return this.mVisibility != 8;
    }

    public void immediateConnect(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i, int i2) {
        getAnchor(type).connect(constraintWidget.getAnchor(type2), i, i2, ConstraintAnchor.Strength.STRONG, 0, true);
    }

    public void resetAnchors() {
        ConstraintWidget parent = getParent();
        if (parent != null && (parent instanceof ConstraintWidgetContainer) && ((ConstraintWidgetContainer) getParent()).handlesInternalConstraints()) {
            return;
        }
        int size = this.mAnchors.size();
        for (int i = 0; i < size; i++) {
            this.mAnchors.get(i).reset();
        }
    }

    public ConstraintAnchor getAnchor(ConstraintAnchor.Type type) {
        switch (type) {
            case LEFT:
                return this.mLeft;
            case TOP:
                return this.mTop;
            case RIGHT:
                return this.mRight;
            case BOTTOM:
                return this.mBottom;
            case BASELINE:
                return this.mBaseline;
            case CENTER:
                return this.mCenter;
            case CENTER_X:
                return this.mCenterX;
            case CENTER_Y:
                return this.mCenterY;
            case NONE:
                return null;
            default:
                throw new AssertionError(type.name());
        }
    }

    public DimensionBehaviour getHorizontalDimensionBehaviour() {
        return this.mListDimensionBehaviors[0];
    }

    public DimensionBehaviour getVerticalDimensionBehaviour() {
        return this.mListDimensionBehaviors[1];
    }

    public DimensionBehaviour getDimensionBehaviour(int i) {
        if (i == 0) {
            return getHorizontalDimensionBehaviour();
        }
        if (i == 1) {
            return getVerticalDimensionBehaviour();
        }
        return null;
    }

    public void setHorizontalDimensionBehaviour(DimensionBehaviour dimensionBehaviour) {
        this.mListDimensionBehaviors[0] = dimensionBehaviour;
        if (dimensionBehaviour == DimensionBehaviour.WRAP_CONTENT) {
            setWidth(this.mWrapWidth);
        }
    }

    public void setVerticalDimensionBehaviour(DimensionBehaviour dimensionBehaviour) {
        this.mListDimensionBehaviors[1] = dimensionBehaviour;
        if (dimensionBehaviour == DimensionBehaviour.WRAP_CONTENT) {
            setHeight(this.mWrapHeight);
        }
    }

    public boolean isInHorizontalChain() {
        if (this.mLeft.mTarget == null || this.mLeft.mTarget.mTarget != this.mLeft) {
            return this.mRight.mTarget != null && this.mRight.mTarget.mTarget == this.mRight;
        }
        return true;
    }

    public boolean isInVerticalChain() {
        if (this.mTop.mTarget == null || this.mTop.mTarget.mTarget != this.mTop) {
            return this.mBottom.mTarget != null && this.mBottom.mTarget.mTarget == this.mBottom;
        }
        return true;
    }

    private boolean isChainHead(int i) {
        int i2 = i * 2;
        if (this.mListAnchors[i2].mTarget != null) {
            ConstraintAnchor constraintAnchor = this.mListAnchors[i2].mTarget.mTarget;
            ConstraintAnchor[] constraintAnchorArr = this.mListAnchors;
            if (constraintAnchor != constraintAnchorArr[i2]) {
                int i3 = i2 + 1;
                if (constraintAnchorArr[i3].mTarget != null && this.mListAnchors[i3].mTarget.mTarget == this.mListAnchors[i3]) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:152:0x02d2  */
    /* JADX WARN: Code duplicated, block: B:153:0x02db  */
    /* JADX WARN: Code duplicated, block: B:156:0x02e1  */
    /* JADX WARN: Code duplicated, block: B:157:0x02e9  */
    /* JADX WARN: Code duplicated, block: B:160:0x0320  */
    /* JADX WARN: Code duplicated, block: B:162:0x0328  */
    /* JADX WARN: Code duplicated, block: B:163:0x0338  */
    /* JADX WARN: Code duplicated, block: B:164:0x0349  */
    /* JADX WARN: Code duplicated, block: B:167:0x0353  */
    /* JADX WARN: Code duplicated, block: B:169:? A[RETURN, SYNTHETIC] */
    public void addToSolver(LinearSystem linearSystem) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        SolverVariable solverVariable;
        int i;
        int i2;
        int i3;
        int i4;
        boolean z5;
        SolverVariable solverVariable2;
        LinearSystem linearSystem2;
        boolean z6;
        ConstraintWidget constraintWidget;
        SolverVariable solverVariableCreateObjectVariable;
        ConstraintWidget constraintWidget2;
        SolverVariable solverVariableCreateObjectVariable2;
        SolverVariable solverVariable3;
        ConstraintWidget constraintWidget3;
        int i5;
        int i6;
        boolean zIsInHorizontalChain;
        boolean zIsInVerticalChain;
        SolverVariable solverVariableCreateObjectVariable3 = linearSystem.createObjectVariable(this.mLeft);
        SolverVariable solverVariableCreateObjectVariable4 = linearSystem.createObjectVariable(this.mRight);
        SolverVariable solverVariableCreateObjectVariable5 = linearSystem.createObjectVariable(this.mTop);
        SolverVariable solverVariableCreateObjectVariable6 = linearSystem.createObjectVariable(this.mBottom);
        SolverVariable solverVariableCreateObjectVariable7 = linearSystem.createObjectVariable(this.mBaseline);
        ConstraintWidget constraintWidget4 = this.mParent;
        if (constraintWidget4 != null) {
            z = constraintWidget4 != null && constraintWidget4.mListDimensionBehaviors[0] == DimensionBehaviour.WRAP_CONTENT;
            ConstraintWidget constraintWidget5 = this.mParent;
            boolean z7 = constraintWidget5 != null && constraintWidget5.mListDimensionBehaviors[1] == DimensionBehaviour.WRAP_CONTENT;
            if (isChainHead(0)) {
                ((ConstraintWidgetContainer) this.mParent).addChain(this, 0);
                zIsInHorizontalChain = true;
            } else {
                zIsInHorizontalChain = isInHorizontalChain();
            }
            if (isChainHead(1)) {
                ((ConstraintWidgetContainer) this.mParent).addChain(this, 1);
                zIsInVerticalChain = true;
            } else {
                zIsInVerticalChain = isInVerticalChain();
            }
            if (z && this.mVisibility != 8 && this.mLeft.mTarget == null && this.mRight.mTarget == null) {
                linearSystem.addGreaterThan(linearSystem.createObjectVariable(this.mParent.mRight), solverVariableCreateObjectVariable4, 0, 1);
            }
            if (z7 && this.mVisibility != 8 && this.mTop.mTarget == null && this.mBottom.mTarget == null && this.mBaseline == null) {
                linearSystem.addGreaterThan(linearSystem.createObjectVariable(this.mParent.mBottom), solverVariableCreateObjectVariable6, 0, 1);
            }
            z2 = z7;
            z3 = zIsInHorizontalChain;
            z4 = zIsInVerticalChain;
        } else {
            z = false;
            z2 = false;
            z3 = false;
            z4 = false;
        }
        int i7 = this.mWidth;
        int i8 = this.mMinWidth;
        if (i7 < i8) {
            i7 = i8;
        }
        int i9 = this.mHeight;
        int i10 = this.mMinHeight;
        if (i9 < i10) {
            i9 = i10;
        }
        boolean z8 = this.mListDimensionBehaviors[0] != DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z9 = this.mListDimensionBehaviors[1] != DimensionBehaviour.MATCH_CONSTRAINT;
        this.mResolvedDimensionRatioSide = this.mDimensionRatioSide;
        float f = this.mDimensionRatio;
        this.mResolvedDimensionRatio = f;
        int i11 = this.mMatchConstraintDefaultWidth;
        int i12 = this.mMatchConstraintDefaultHeight;
        if (f <= 0.0f || this.mVisibility == 8) {
            solverVariable = solverVariableCreateObjectVariable7;
            i = i11;
            i2 = i7;
            i3 = i9;
            i4 = i12;
            z5 = false;
        } else {
            solverVariable = solverVariableCreateObjectVariable7;
            if (this.mListDimensionBehaviors[0] == DimensionBehaviour.MATCH_CONSTRAINT && i11 == 0) {
                i11 = 3;
            }
            if (this.mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT && i12 == 0) {
                i12 = 3;
            }
            if (this.mListDimensionBehaviors[0] == DimensionBehaviour.MATCH_CONSTRAINT && this.mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT && i11 == 3 && i12 == 3) {
                setupDimensionRatio(z, z2, z8, z9);
            } else if (this.mListDimensionBehaviors[0] == DimensionBehaviour.MATCH_CONSTRAINT && i11 == 3) {
                this.mResolvedDimensionRatioSide = 0;
                int i13 = (int) (this.mResolvedDimensionRatio * this.mHeight);
                if (this.mListDimensionBehaviors[1] != DimensionBehaviour.MATCH_CONSTRAINT) {
                    i2 = i13;
                    i3 = i9;
                    i4 = i12;
                    i = 4;
                    z5 = false;
                } else {
                    i2 = i13;
                    i = i11;
                    i3 = i9;
                    i4 = i12;
                    z5 = true;
                }
            } else if (this.mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT && i12 == 3) {
                this.mResolvedDimensionRatioSide = 1;
                if (this.mDimensionRatioSide == -1) {
                    this.mResolvedDimensionRatio = 1.0f / this.mResolvedDimensionRatio;
                }
                int i14 = (int) (this.mResolvedDimensionRatio * this.mWidth);
                if (this.mListDimensionBehaviors[0] != DimensionBehaviour.MATCH_CONSTRAINT) {
                    i3 = i14;
                    i = i11;
                    i2 = i7;
                    i4 = 4;
                    z5 = false;
                } else {
                    i3 = i14;
                    i = i11;
                    i2 = i7;
                    i4 = i12;
                    z5 = true;
                }
            }
            i = i11;
            i2 = i7;
            i3 = i9;
            i4 = i12;
            z5 = true;
        }
        int[] iArr = this.mResolvedMatchConstraintDefault;
        iArr[0] = i;
        iArr[1] = i4;
        boolean z10 = z5 && ((i6 = this.mResolvedDimensionRatioSide) == 0 || i6 == -1);
        boolean z11 = this.mListDimensionBehaviors[0] == DimensionBehaviour.WRAP_CONTENT && (this instanceof ConstraintWidgetContainer);
        boolean z12 = !this.mCenter.isConnected();
        if (this.mHorizontalResolution != 2) {
            ConstraintWidget constraintWidget6 = this.mParent;
            SolverVariable solverVariableCreateObjectVariable8 = constraintWidget6 != null ? linearSystem.createObjectVariable(constraintWidget6.mRight) : null;
            ConstraintWidget constraintWidget7 = this.mParent;
            applyConstraints(linearSystem, z, constraintWidget7 != null ? linearSystem.createObjectVariable(constraintWidget7.mLeft) : null, solverVariableCreateObjectVariable8, this.mListDimensionBehaviors[0], z11, this.mLeft, this.mRight, this.f7mX, i2, this.mMinWidth, this.mMaxDimension[0], this.mHorizontalBiasPercent, z10, z3, i, this.mMatchConstraintMinWidth, this.mMatchConstraintMaxWidth, this.mMatchConstraintPercentWidth, z12);
        }
        if (this.mVerticalResolution == 2) {
            return;
        }
        boolean z13 = this.mListDimensionBehaviors[1] == DimensionBehaviour.WRAP_CONTENT && (this instanceof ConstraintWidgetContainer);
        boolean z14 = z5 && ((i5 = this.mResolvedDimensionRatioSide) == 1 || i5 == -1);
        if (this.mBaselineDistance <= 0) {
            solverVariable2 = solverVariableCreateObjectVariable5;
            linearSystem2 = linearSystem;
        } else if (this.mBaseline.getResolutionNode().state == 1) {
            linearSystem2 = linearSystem;
            this.mBaseline.getResolutionNode().addResolvedValue(linearSystem2);
            solverVariable2 = solverVariableCreateObjectVariable5;
        } else {
            linearSystem2 = linearSystem;
            SolverVariable solverVariable4 = solverVariable;
            solverVariable2 = solverVariableCreateObjectVariable5;
            linearSystem2.addEquality(solverVariable4, solverVariable2, getBaselineDistance(), 6);
            if (this.mBaseline.mTarget != null) {
                linearSystem2.addEquality(solverVariable4, linearSystem2.createObjectVariable(this.mBaseline.mTarget), 0, 6);
                z6 = false;
            }
            constraintWidget = this.mParent;
            if (constraintWidget != null) {
                solverVariableCreateObjectVariable = linearSystem2.createObjectVariable(constraintWidget.mBottom);
            } else {
                solverVariableCreateObjectVariable = null;
            }
            constraintWidget2 = this.mParent;
            if (constraintWidget2 != null) {
                solverVariableCreateObjectVariable2 = linearSystem2.createObjectVariable(constraintWidget2.mTop);
            } else {
                solverVariableCreateObjectVariable2 = null;
            }
            solverVariable3 = solverVariable2;
            applyConstraints(linearSystem, z2, solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, this.mListDimensionBehaviors[1], z13, this.mTop, this.mBottom, this.f8mY, i3, this.mMinHeight, this.mMaxDimension[1], this.mVerticalBiasPercent, z14, z4, i4, this.mMatchConstraintMinHeight, this.mMatchConstraintMaxHeight, this.mMatchConstraintPercentHeight, z6);
            if (z5) {
                constraintWidget3 = this;
                if (constraintWidget3.mResolvedDimensionRatioSide == 1) {
                    linearSystem.addRatio(solverVariableCreateObjectVariable6, solverVariable3, solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, constraintWidget3.mResolvedDimensionRatio, 6);
                } else {
                    linearSystem.addRatio(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable6, solverVariable3, constraintWidget3.mResolvedDimensionRatio, 6);
                }
            } else {
                constraintWidget3 = this;
            }
            if (constraintWidget3.mCenter.isConnected()) {
                linearSystem.addCenterPoint(constraintWidget3, constraintWidget3.mCenter.getTarget().getOwner(), (float) Math.toRadians(constraintWidget3.mCircleConstraintAngle + 90.0f), constraintWidget3.mCenter.getMargin());
            }
        }
        z6 = z12;
        constraintWidget = this.mParent;
        if (constraintWidget != null) {
            solverVariableCreateObjectVariable = linearSystem2.createObjectVariable(constraintWidget.mBottom);
        } else {
            solverVariableCreateObjectVariable = null;
        }
        constraintWidget2 = this.mParent;
        if (constraintWidget2 != null) {
            solverVariableCreateObjectVariable2 = linearSystem2.createObjectVariable(constraintWidget2.mTop);
        } else {
            solverVariableCreateObjectVariable2 = null;
        }
        solverVariable3 = solverVariable2;
        applyConstraints(linearSystem, z2, solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, this.mListDimensionBehaviors[1], z13, this.mTop, this.mBottom, this.f8mY, i3, this.mMinHeight, this.mMaxDimension[1], this.mVerticalBiasPercent, z14, z4, i4, this.mMatchConstraintMinHeight, this.mMatchConstraintMaxHeight, this.mMatchConstraintPercentHeight, z6);
        if (z5) {
            constraintWidget3 = this;
            if (constraintWidget3.mResolvedDimensionRatioSide == 1) {
                linearSystem.addRatio(solverVariableCreateObjectVariable6, solverVariable3, solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, constraintWidget3.mResolvedDimensionRatio, 6);
            } else {
                linearSystem.addRatio(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable6, solverVariable3, constraintWidget3.mResolvedDimensionRatio, 6);
            }
        } else {
            constraintWidget3 = this;
        }
        if (constraintWidget3.mCenter.isConnected()) {
            linearSystem.addCenterPoint(constraintWidget3, constraintWidget3.mCenter.getTarget().getOwner(), (float) Math.toRadians(constraintWidget3.mCircleConstraintAngle + 90.0f), constraintWidget3.mCenter.getMargin());
        }
    }

    public void setupDimensionRatio(boolean z, boolean z2, boolean z3, boolean z4) {
        if (this.mResolvedDimensionRatioSide == -1) {
            if (z3 && !z4) {
                this.mResolvedDimensionRatioSide = 0;
            } else if (!z3 && z4) {
                this.mResolvedDimensionRatioSide = 1;
                if (this.mDimensionRatioSide == -1) {
                    this.mResolvedDimensionRatio = 1.0f / this.mResolvedDimensionRatio;
                }
            }
        }
        if (this.mResolvedDimensionRatioSide == 0 && (!this.mTop.isConnected() || !this.mBottom.isConnected())) {
            this.mResolvedDimensionRatioSide = 1;
        } else if (this.mResolvedDimensionRatioSide == 1 && (!this.mLeft.isConnected() || !this.mRight.isConnected())) {
            this.mResolvedDimensionRatioSide = 0;
        }
        if (this.mResolvedDimensionRatioSide == -1 && (!this.mTop.isConnected() || !this.mBottom.isConnected() || !this.mLeft.isConnected() || !this.mRight.isConnected())) {
            if (this.mTop.isConnected() && this.mBottom.isConnected()) {
                this.mResolvedDimensionRatioSide = 0;
            } else if (this.mLeft.isConnected() && this.mRight.isConnected()) {
                this.mResolvedDimensionRatio = 1.0f / this.mResolvedDimensionRatio;
                this.mResolvedDimensionRatioSide = 1;
            }
        }
        if (this.mResolvedDimensionRatioSide == -1) {
            if (z && !z2) {
                this.mResolvedDimensionRatioSide = 0;
            } else if (!z && z2) {
                this.mResolvedDimensionRatio = 1.0f / this.mResolvedDimensionRatio;
                this.mResolvedDimensionRatioSide = 1;
            }
        }
        if (this.mResolvedDimensionRatioSide == -1) {
            if (this.mMatchConstraintMinWidth > 0 && this.mMatchConstraintMinHeight == 0) {
                this.mResolvedDimensionRatioSide = 0;
            } else if (this.mMatchConstraintMinWidth == 0 && this.mMatchConstraintMinHeight > 0) {
                this.mResolvedDimensionRatio = 1.0f / this.mResolvedDimensionRatio;
                this.mResolvedDimensionRatioSide = 1;
            }
        }
        if (this.mResolvedDimensionRatioSide == -1 && z && z2) {
            this.mResolvedDimensionRatio = 1.0f / this.mResolvedDimensionRatio;
            this.mResolvedDimensionRatioSide = 1;
        }
    }

    /* JADX WARN: Code duplicated, block: B:105:0x0224  */
    /* JADX WARN: Code duplicated, block: B:175:0x0357  */
    /* JADX WARN: Code duplicated, block: B:185:0x0376  */
    /* JADX WARN: Code duplicated, block: B:186:0x037c  */
    private void applyConstraints(LinearSystem linearSystem, boolean z, SolverVariable solverVariable, SolverVariable solverVariable2, DimensionBehaviour dimensionBehaviour, boolean z2, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i, int i2, int i3, int i4, float f, boolean z3, boolean z4, int i5, int i6, int i7, float f2, boolean z5) {
        boolean z6;
        int iMin;
        int i8;
        int i9;
        int i10;
        int i11;
        SolverVariable solverVariableCreateObjectVariable;
        SolverVariable solverVariableCreateObjectVariable2;
        boolean z7;
        int i12;
        SolverVariable solverVariable3;
        int i13;
        int i14;
        SolverVariable solverVariable4;
        boolean z8;
        int i15;
        boolean z9;
        SolverVariable solverVariable5;
        SolverVariable solverVariable6;
        boolean z10;
        boolean z11;
        int i16;
        int i17;
        int i18;
        boolean z12;
        int i19;
        SolverVariable solverVariableCreateObjectVariable3 = linearSystem.createObjectVariable(constraintAnchor);
        SolverVariable solverVariableCreateObjectVariable4 = linearSystem.createObjectVariable(constraintAnchor2);
        SolverVariable solverVariableCreateObjectVariable5 = linearSystem.createObjectVariable(constraintAnchor.getTarget());
        SolverVariable solverVariableCreateObjectVariable6 = linearSystem.createObjectVariable(constraintAnchor2.getTarget());
        if (linearSystem.graphOptimizer && constraintAnchor.getResolutionNode().state == 1 && constraintAnchor2.getResolutionNode().state == 1) {
            if (LinearSystem.getMetrics() != null) {
                LinearSystem.getMetrics().resolvedWidgets++;
            }
            constraintAnchor.getResolutionNode().addResolvedValue(linearSystem);
            constraintAnchor2.getResolutionNode().addResolvedValue(linearSystem);
            if (z4 || !z) {
                return;
            }
            linearSystem.addGreaterThan(solverVariable2, solverVariableCreateObjectVariable4, 0, 6);
            return;
        }
        if (LinearSystem.getMetrics() != null) {
            LinearSystem.getMetrics().nonresolvedWidgets++;
        }
        boolean zIsConnected = constraintAnchor.isConnected();
        boolean zIsConnected2 = constraintAnchor2.isConnected();
        boolean zIsConnected3 = this.mCenter.isConnected();
        int i20 = zIsConnected ? 1 : 0;
        if (zIsConnected2) {
            i20++;
        }
        if (zIsConnected3) {
            i20++;
        }
        int i21 = i20;
        int i22 = z3 ? 3 : i5;
        switch (dimensionBehaviour) {
            case FIXED:
                z6 = false;
                break;
            case WRAP_CONTENT:
                z6 = false;
                break;
            case MATCH_PARENT:
                z6 = false;
                break;
            case MATCH_CONSTRAINT:
                z6 = i22 != 4;
                break;
            default:
                z6 = false;
                break;
        }
        if (this.mVisibility == 8) {
            iMin = 0;
            z6 = false;
        } else {
            iMin = i2;
        }
        if (z5) {
            if (!zIsConnected && !zIsConnected2 && !zIsConnected3) {
                linearSystem.addEquality(solverVariableCreateObjectVariable3, i);
            } else if (zIsConnected && !zIsConnected2) {
                linearSystem.addEquality(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable5, constraintAnchor.getMargin(), 6);
            }
        }
        if (z6) {
            i8 = i6 == -2 ? iMin : i6;
            if (i7 == -2) {
                i7 = iMin;
            }
            if (i8 > 0) {
                i9 = 6;
                linearSystem.addGreaterThan(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, i8, 6);
                iMin = Math.max(iMin, i8);
            } else {
                i9 = 6;
            }
            if (i7 > 0) {
                linearSystem.addLowerThan(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, i7, i9);
                iMin = Math.min(iMin, i7);
                i10 = 1;
            } else {
                i10 = 1;
            }
            if (i22 != i10) {
                int i23 = i7;
                if (i22 == 2) {
                    if (constraintAnchor.getType() == ConstraintAnchor.Type.TOP || constraintAnchor.getType() == ConstraintAnchor.Type.BOTTOM) {
                        solverVariableCreateObjectVariable = linearSystem.createObjectVariable(this.mParent.getAnchor(ConstraintAnchor.Type.TOP));
                        solverVariableCreateObjectVariable2 = linearSystem.createObjectVariable(this.mParent.getAnchor(ConstraintAnchor.Type.BOTTOM));
                    } else {
                        solverVariableCreateObjectVariable = linearSystem.createObjectVariable(this.mParent.getAnchor(ConstraintAnchor.Type.LEFT));
                        solverVariableCreateObjectVariable2 = linearSystem.createObjectVariable(this.mParent.getAnchor(ConstraintAnchor.Type.RIGHT));
                    }
                    i8 = i8;
                    iMin = iMin;
                    solverVariableCreateObjectVariable5 = solverVariableCreateObjectVariable5;
                    i11 = i23;
                    i22 = i22;
                    i21 = i21;
                    solverVariableCreateObjectVariable6 = solverVariableCreateObjectVariable6;
                    linearSystem.addConstraint(linearSystem.createRow().createRowDimensionRatio(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable, f2));
                    z7 = false;
                } else {
                    i11 = i23;
                }
                if (z7 || i21 == 2 || z3) {
                    z6 = z7;
                } else {
                    int iMax = Math.max(i8, iMin);
                    if (i11 > 0) {
                        iMax = Math.min(i11, iMax);
                        i12 = 6;
                    } else {
                        i12 = 6;
                    }
                    linearSystem.addEquality(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, iMax, i12);
                    z6 = false;
                }
            } else if (z) {
                linearSystem.addEquality(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, iMin, 6);
                i11 = i7;
            } else if (z4) {
                linearSystem.addEquality(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, iMin, 4);
                i11 = i7;
            } else {
                linearSystem.addEquality(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, iMin, 1);
                i11 = i7;
            }
            z7 = z6;
            if (z7) {
                z6 = z7;
            } else {
                z6 = z7;
            }
        } else {
            if (z2) {
                linearSystem.addEquality(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, 0, 3);
                if (i3 > 0) {
                    i19 = 6;
                    linearSystem.addGreaterThan(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, i3, 6);
                } else {
                    i19 = 6;
                }
                if (i4 < Integer.MAX_VALUE) {
                    linearSystem.addLowerThan(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, i4, i19);
                }
            } else {
                linearSystem.addEquality(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, iMin, 6);
            }
            i8 = i6;
            i22 = i22;
            i21 = i21;
            solverVariableCreateObjectVariable5 = solverVariableCreateObjectVariable5;
            solverVariableCreateObjectVariable6 = solverVariableCreateObjectVariable6;
            i11 = i7;
        }
        if (!z5 || z4) {
            if (i21 >= 2 || !z) {
                return;
            }
            linearSystem.addGreaterThan(solverVariableCreateObjectVariable3, solverVariable, 0, 6);
            linearSystem.addGreaterThan(solverVariable2, solverVariableCreateObjectVariable4, 0, 6);
            return;
        }
        if (zIsConnected || zIsConnected2 || zIsConnected3) {
            if (!zIsConnected || zIsConnected2) {
                if (zIsConnected || !zIsConnected2) {
                    SolverVariable solverVariable7 = solverVariableCreateObjectVariable6;
                    if (zIsConnected && zIsConnected2) {
                        if (z6) {
                            if (z && i3 == 0) {
                                linearSystem.addGreaterThan(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, 0, 6);
                            }
                            if (i22 == 0) {
                                if (i11 > 0 || i8 > 0) {
                                    i18 = 4;
                                    z12 = true;
                                } else {
                                    i18 = 6;
                                    z12 = false;
                                }
                                solverVariable4 = solverVariableCreateObjectVariable5;
                                linearSystem.addEquality(solverVariableCreateObjectVariable3, solverVariable4, constraintAnchor.getMargin(), i18);
                                linearSystem.addEquality(solverVariableCreateObjectVariable4, solverVariable7, -constraintAnchor2.getMargin(), i18);
                                z8 = i11 > 0 || i8 > 0;
                                z9 = z12;
                                i15 = 5;
                            } else {
                                int i24 = i22;
                                solverVariable4 = solverVariableCreateObjectVariable5;
                                if (i24 == 1) {
                                    z8 = true;
                                    i15 = 6;
                                    z9 = true;
                                } else if (i24 == 3) {
                                    int i25 = (z3 || this.mResolvedDimensionRatioSide == -1 || i11 > 0) ? 4 : 6;
                                    linearSystem.addEquality(solverVariableCreateObjectVariable3, solverVariable4, constraintAnchor.getMargin(), i25);
                                    linearSystem.addEquality(solverVariableCreateObjectVariable4, solverVariable7, -constraintAnchor2.getMargin(), i25);
                                    z8 = true;
                                    i15 = 5;
                                    z9 = true;
                                } else {
                                    z8 = false;
                                    i15 = 5;
                                    z9 = false;
                                }
                            }
                        } else {
                            solverVariable4 = solverVariableCreateObjectVariable5;
                            z8 = true;
                            i15 = 5;
                            z9 = false;
                        }
                        if (z8) {
                            solverVariable6 = solverVariable7;
                            solverVariable5 = solverVariable4;
                            solverVariable3 = solverVariableCreateObjectVariable4;
                            linearSystem.addCentering(solverVariableCreateObjectVariable3, solverVariable4, constraintAnchor.getMargin(), f, solverVariable7, solverVariableCreateObjectVariable4, constraintAnchor2.getMargin(), i15);
                            boolean z13 = constraintAnchor.mTarget.mOwner instanceof Barrier;
                            boolean z14 = constraintAnchor2.mTarget.mOwner instanceof Barrier;
                            if (z13 && !z14) {
                                z11 = z;
                                z10 = true;
                                i16 = 5;
                                i17 = 6;
                            } else if (!z13 && z14) {
                                z10 = z;
                                i16 = 6;
                                i17 = 5;
                                z11 = true;
                            }
                            if (z9) {
                                i16 = 6;
                                i17 = 6;
                            }
                            if ((z6 && z11) || z9) {
                                linearSystem.addGreaterThan(solverVariableCreateObjectVariable3, solverVariable5, constraintAnchor.getMargin(), i16);
                            }
                            if ((z6 && z10) || z9) {
                                linearSystem.addLowerThan(solverVariable3, solverVariable6, -constraintAnchor2.getMargin(), i17);
                            }
                            if (z) {
                                i13 = 0;
                                i14 = 6;
                                linearSystem.addGreaterThan(solverVariableCreateObjectVariable3, solverVariable, 0, 6);
                            } else {
                                i13 = 0;
                                i14 = 6;
                            }
                        } else {
                            solverVariable5 = solverVariable4;
                            solverVariable6 = solverVariable7;
                            solverVariable3 = solverVariableCreateObjectVariable4;
                        }
                        z10 = z;
                        z11 = z10;
                        i16 = 5;
                        i17 = 5;
                        if (z9) {
                            i16 = 6;
                            i17 = 6;
                        }
                        if (z6) {
                            linearSystem.addGreaterThan(solverVariableCreateObjectVariable3, solverVariable5, constraintAnchor.getMargin(), i16);
                        } else {
                            linearSystem.addGreaterThan(solverVariableCreateObjectVariable3, solverVariable5, constraintAnchor.getMargin(), i16);
                        }
                        if (z6) {
                            linearSystem.addLowerThan(solverVariable3, solverVariable6, -constraintAnchor2.getMargin(), i17);
                        } else {
                            linearSystem.addLowerThan(solverVariable3, solverVariable6, -constraintAnchor2.getMargin(), i17);
                        }
                        if (z) {
                            i13 = 0;
                            i14 = 6;
                            linearSystem.addGreaterThan(solverVariableCreateObjectVariable3, solverVariable, 0, 6);
                        } else {
                            i13 = 0;
                            i14 = 6;
                        }
                    } else {
                        solverVariable3 = solverVariableCreateObjectVariable4;
                        i13 = 0;
                        i14 = 6;
                    }
                } else {
                    linearSystem.addEquality(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable6, -constraintAnchor2.getMargin(), 6);
                    if (z) {
                        linearSystem.addGreaterThan(solverVariableCreateObjectVariable3, solverVariable, 0, 5);
                        solverVariable3 = solverVariableCreateObjectVariable4;
                        i13 = 0;
                        i14 = 6;
                    } else {
                        solverVariable3 = solverVariableCreateObjectVariable4;
                        i13 = 0;
                        i14 = 6;
                    }
                }
            } else if (z) {
                linearSystem.addGreaterThan(solverVariable2, solverVariableCreateObjectVariable4, 0, 5);
                solverVariable3 = solverVariableCreateObjectVariable4;
                i13 = 0;
                i14 = 6;
            } else {
                solverVariable3 = solverVariableCreateObjectVariable4;
                i13 = 0;
                i14 = 6;
            }
        } else if (z) {
            linearSystem.addGreaterThan(solverVariable2, solverVariableCreateObjectVariable4, 0, 5);
            solverVariable3 = solverVariableCreateObjectVariable4;
            i13 = 0;
            i14 = 6;
        } else {
            solverVariable3 = solverVariableCreateObjectVariable4;
            i13 = 0;
            i14 = 6;
        }
        if (z) {
            linearSystem.addGreaterThan(solverVariable2, solverVariable3, i13, i14);
        }
    }

    public void updateFromSolver(LinearSystem linearSystem) {
        int objectVariableValue = linearSystem.getObjectVariableValue(this.mLeft);
        int objectVariableValue2 = linearSystem.getObjectVariableValue(this.mTop);
        int objectVariableValue3 = linearSystem.getObjectVariableValue(this.mRight);
        int objectVariableValue4 = linearSystem.getObjectVariableValue(this.mBottom);
        int i = objectVariableValue4 - objectVariableValue2;
        if (objectVariableValue3 - objectVariableValue < 0 || i < 0 || objectVariableValue == Integer.MIN_VALUE || objectVariableValue == Integer.MAX_VALUE || objectVariableValue2 == Integer.MIN_VALUE || objectVariableValue2 == Integer.MAX_VALUE || objectVariableValue3 == Integer.MIN_VALUE || objectVariableValue3 == Integer.MAX_VALUE || objectVariableValue4 == Integer.MIN_VALUE || objectVariableValue4 == Integer.MAX_VALUE) {
            objectVariableValue4 = 0;
            objectVariableValue = 0;
            objectVariableValue2 = 0;
            objectVariableValue3 = 0;
        }
        setFrame(objectVariableValue, objectVariableValue2, objectVariableValue3, objectVariableValue4);
    }
}
