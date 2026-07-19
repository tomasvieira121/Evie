package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.ArrayRow;
import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.SolverVariable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class Chain {
    static void applyChainConstraints(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, int i) {
        int i2;
        int i3;
        ChainHead[] chainHeadArr;
        if (i == 0) {
            int i4 = constraintWidgetContainer.mHorizontalChainsSize;
            chainHeadArr = constraintWidgetContainer.mHorizontalChainsArray;
            i3 = i4;
            i2 = 0;
        } else {
            i2 = 2;
            i3 = constraintWidgetContainer.mVerticalChainsSize;
            chainHeadArr = constraintWidgetContainer.mVerticalChainsArray;
        }
        for (int i5 = 0; i5 < i3; i5++) {
            ChainHead chainHead = chainHeadArr[i5];
            chainHead.define();
            if (constraintWidgetContainer.optimizeFor(4)) {
                if (!Optimizer.applyChainOptimized(constraintWidgetContainer, linearSystem, i, i2, chainHead)) {
                    applyChainConstraints(constraintWidgetContainer, linearSystem, i, i2, chainHead);
                }
            } else {
                applyChainConstraints(constraintWidgetContainer, linearSystem, i, i2, chainHead);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:87:0x0164  */
    static void applyChainConstraints(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, int i, int i2, ChainHead chainHead) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        int i3;
        int i4;
        ConstraintAnchor constraintAnchor;
        SolverVariable solverVariable;
        SolverVariable solverVariable2;
        ConstraintAnchor constraintAnchor2;
        SolverVariable solverVariable3;
        SolverVariable solverVariable4;
        SolverVariable solverVariable5;
        float f;
        int size;
        float f2;
        int i5;
        int i6;
        ConstraintWidget constraintWidget = chainHead.mFirst;
        ConstraintWidget constraintWidget2 = chainHead.mLast;
        ConstraintWidget constraintWidget3 = chainHead.mFirstVisibleWidget;
        ConstraintWidget constraintWidget4 = chainHead.mLastVisibleWidget;
        ConstraintWidget constraintWidget5 = chainHead.mHead;
        float f3 = chainHead.mTotalWeight;
        ConstraintWidget constraintWidget6 = chainHead.mFirstMatchConstraintWidget;
        ConstraintWidget constraintWidget7 = chainHead.mLastMatchConstraintWidget;
        boolean z5 = constraintWidgetContainer.mListDimensionBehaviors[i] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (i == 0) {
            z = constraintWidget5.mHorizontalChainStyle == 0;
            z2 = constraintWidget5.mHorizontalChainStyle == 1;
            z3 = constraintWidget5.mHorizontalChainStyle == 2;
            z4 = false;
        } else {
            z = constraintWidget5.mVerticalChainStyle == 0;
            z2 = constraintWidget5.mVerticalChainStyle == 1;
            z3 = constraintWidget5.mVerticalChainStyle == 2;
            z4 = false;
        }
        while (true) {
            ConstraintWidget constraintWidget8 = null;
            if (z4) {
                break;
            }
            ConstraintAnchor constraintAnchor3 = constraintWidget.mListAnchors[i2];
            int i7 = (z5 || z3) ? 1 : 4;
            int margin = constraintAnchor3.getMargin();
            int margin2 = (constraintAnchor3.mTarget == null || constraintWidget == constraintWidget) ? margin : margin + constraintAnchor3.mTarget.getMargin();
            if (!z3 || constraintWidget == constraintWidget || constraintWidget == constraintWidget3) {
                i5 = (z && z5) ? 4 : i7;
            } else {
                i5 = 6;
            }
            if (constraintAnchor3.mTarget != null) {
                if (constraintWidget == constraintWidget3) {
                    linearSystem.addGreaterThan(constraintAnchor3.mSolverVariable, constraintAnchor3.mTarget.mSolverVariable, margin2, 5);
                } else {
                    linearSystem.addGreaterThan(constraintAnchor3.mSolverVariable, constraintAnchor3.mTarget.mSolverVariable, margin2, 6);
                }
                linearSystem.addEquality(constraintAnchor3.mSolverVariable, constraintAnchor3.mTarget.mSolverVariable, margin2, i5);
            } else {
                constraintWidget5 = constraintWidget5;
                z = z;
            }
            if (z5) {
                if (constraintWidget.getVisibility() == 8 || constraintWidget.mListDimensionBehaviors[i] != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    i6 = 0;
                } else {
                    i6 = 0;
                    linearSystem.addGreaterThan(constraintWidget.mListAnchors[i2 + 1].mSolverVariable, constraintWidget.mListAnchors[i2].mSolverVariable, 0, 5);
                }
                linearSystem.addGreaterThan(constraintWidget.mListAnchors[i2].mSolverVariable, constraintWidgetContainer.mListAnchors[i2].mSolverVariable, i6, 6);
            }
            ConstraintAnchor constraintAnchor4 = constraintWidget.mListAnchors[i2 + 1].mTarget;
            if (constraintAnchor4 != null) {
                ConstraintWidget constraintWidget9 = constraintAnchor4.mOwner;
                if (constraintWidget9.mListAnchors[i2].mTarget != null && constraintWidget9.mListAnchors[i2].mTarget.mOwner == constraintWidget) {
                    constraintWidget8 = constraintWidget9;
                }
            }
            if (constraintWidget8 != null) {
                constraintWidget = constraintWidget8;
                z4 = z4;
            } else {
                z4 = true;
            }
            f3 = f3;
            z = z;
            constraintWidget5 = constraintWidget5;
        }
        ConstraintWidget constraintWidget10 = constraintWidget5;
        float f4 = f3;
        boolean z6 = z;
        if (constraintWidget4 != null) {
            int i8 = i2 + 1;
            if (constraintWidget2.mListAnchors[i8].mTarget != null) {
                ConstraintAnchor constraintAnchor5 = constraintWidget4.mListAnchors[i8];
                linearSystem.addLowerThan(constraintAnchor5.mSolverVariable, constraintWidget2.mListAnchors[i8].mTarget.mSolverVariable, -constraintAnchor5.getMargin(), 5);
            }
        }
        if (z5) {
            int i9 = i2 + 1;
            linearSystem.addGreaterThan(constraintWidgetContainer.mListAnchors[i9].mSolverVariable, constraintWidget2.mListAnchors[i9].mSolverVariable, constraintWidget2.mListAnchors[i9].getMargin(), 6);
        }
        ArrayList<ConstraintWidget> arrayList = chainHead.mWeightedMatchConstraintsWidgets;
        if (arrayList != null && (size = arrayList.size()) > 1) {
            float f5 = (!chainHead.mHasUndefinedWeights || chainHead.mHasComplexMatchWeights) ? f4 : chainHead.mWidgetsMatchCount;
            float f6 = 0.0f;
            ConstraintWidget constraintWidget11 = null;
            int i10 = 0;
            float f7 = 0.0f;
            while (i10 < size) {
                ConstraintWidget constraintWidget12 = arrayList.get(i10);
                float f8 = constraintWidget12.mWeight[i];
                if (f8 < f6) {
                    if (chainHead.mHasComplexMatchWeights) {
                        linearSystem.addEquality(constraintWidget12.mListAnchors[i2 + 1].mSolverVariable, constraintWidget12.mListAnchors[i2].mSolverVariable, 0, 4);
                    } else {
                        f8 = 1.0f;
                        f2 = 0.0f;
                    }
                    arrayList = arrayList;
                    size = size;
                    i10++;
                    size = size;
                    arrayList = arrayList;
                    f6 = 0.0f;
                } else {
                    f2 = 0.0f;
                }
                if (f8 == f2) {
                    linearSystem.addEquality(constraintWidget12.mListAnchors[i2 + 1].mSolverVariable, constraintWidget12.mListAnchors[i2].mSolverVariable, 0, 6);
                    arrayList = arrayList;
                    size = size;
                } else {
                    if (constraintWidget11 != null) {
                        SolverVariable solverVariable6 = constraintWidget11.mListAnchors[i2].mSolverVariable;
                        int i11 = i2 + 1;
                        SolverVariable solverVariable7 = constraintWidget11.mListAnchors[i11].mSolverVariable;
                        SolverVariable solverVariable8 = constraintWidget12.mListAnchors[i2].mSolverVariable;
                        SolverVariable solverVariable9 = constraintWidget12.mListAnchors[i11].mSolverVariable;
                        ArrayRow arrayRowCreateRow = linearSystem.createRow();
                        arrayRowCreateRow.createRowEqualMatchDimensions(f7, f5, f8, solverVariable6, solverVariable7, solverVariable8, solverVariable9);
                        linearSystem.addConstraint(arrayRowCreateRow);
                    }
                    f7 = f8;
                    constraintWidget11 = constraintWidget12;
                }
                i10++;
                size = size;
                arrayList = arrayList;
                f6 = 0.0f;
            }
        }
        if (constraintWidget3 != null && (constraintWidget3 == constraintWidget4 || z3)) {
            ConstraintAnchor constraintAnchor6 = constraintWidget.mListAnchors[i2];
            int i12 = i2 + 1;
            ConstraintAnchor constraintAnchor7 = constraintWidget2.mListAnchors[i12];
            SolverVariable solverVariable10 = constraintWidget.mListAnchors[i2].mTarget != null ? constraintWidget.mListAnchors[i2].mTarget.mSolverVariable : null;
            SolverVariable solverVariable11 = constraintWidget2.mListAnchors[i12].mTarget != null ? constraintWidget2.mListAnchors[i12].mTarget.mSolverVariable : null;
            if (constraintWidget3 == constraintWidget4) {
                constraintAnchor6 = constraintWidget3.mListAnchors[i2];
                constraintAnchor7 = constraintWidget3.mListAnchors[i12];
            }
            if (solverVariable10 != null && solverVariable11 != null) {
                if (i == 0) {
                    f = constraintWidget10.mHorizontalBiasPercent;
                } else {
                    f = constraintWidget10.mVerticalBiasPercent;
                }
                linearSystem.addCentering(constraintAnchor6.mSolverVariable, solverVariable10, constraintAnchor6.getMargin(), f, solverVariable11, constraintAnchor7.mSolverVariable, constraintAnchor7.getMargin(), 5);
            }
        } else if (!z6 || constraintWidget3 == null) {
            int i13 = 8;
            if (z2 && constraintWidget3 != null) {
                boolean z7 = chainHead.mWidgetsMatchCount > 0 && chainHead.mWidgetsCount == chainHead.mWidgetsMatchCount;
                ConstraintWidget constraintWidget13 = constraintWidget3;
                ConstraintWidget constraintWidget14 = constraintWidget13;
                while (constraintWidget13 != null) {
                    ConstraintWidget constraintWidget15 = constraintWidget13.mNextChainWidget[i];
                    while (constraintWidget15 != null && constraintWidget15.getVisibility() == i13) {
                        constraintWidget15 = constraintWidget15.mNextChainWidget[i];
                    }
                    if (constraintWidget13 == constraintWidget3 || constraintWidget13 == constraintWidget4 || constraintWidget15 == null) {
                        constraintWidget14 = constraintWidget14;
                        i4 = 8;
                    } else {
                        ConstraintWidget constraintWidget16 = constraintWidget15 == constraintWidget4 ? null : constraintWidget15;
                        ConstraintAnchor constraintAnchor8 = constraintWidget13.mListAnchors[i2];
                        SolverVariable solverVariable12 = constraintAnchor8.mSolverVariable;
                        if (constraintAnchor8.mTarget != null) {
                            SolverVariable solverVariable13 = constraintAnchor8.mTarget.mSolverVariable;
                        }
                        int i14 = i2 + 1;
                        SolverVariable solverVariable14 = constraintWidget14.mListAnchors[i14].mSolverVariable;
                        int margin3 = constraintAnchor8.getMargin();
                        int margin4 = constraintWidget13.mListAnchors[i14].getMargin();
                        if (constraintWidget16 != null) {
                            constraintAnchor = constraintWidget16.mListAnchors[i2];
                            solverVariable = constraintAnchor.mSolverVariable;
                            solverVariable2 = constraintAnchor.mTarget != null ? constraintAnchor.mTarget.mSolverVariable : null;
                        } else {
                            constraintAnchor = constraintWidget13.mListAnchors[i14].mTarget;
                            solverVariable = constraintAnchor != null ? constraintAnchor.mSolverVariable : null;
                            solverVariable2 = constraintWidget13.mListAnchors[i14].mSolverVariable;
                        }
                        int margin5 = constraintAnchor != null ? margin4 + constraintAnchor.getMargin() : margin4;
                        int margin6 = constraintWidget14 != null ? margin3 + constraintWidget14.mListAnchors[i14].getMargin() : margin3;
                        int i15 = z7 ? 6 : 4;
                        if (solverVariable12 == null || solverVariable14 == null || solverVariable == null || solverVariable2 == null) {
                            i4 = 8;
                        } else {
                            i4 = 8;
                            linearSystem.addCentering(solverVariable12, solverVariable14, margin6, 0.5f, solverVariable, solverVariable2, margin5, i15);
                        }
                        constraintWidget15 = constraintWidget16;
                    }
                    if (constraintWidget13.getVisibility() == i4) {
                        constraintWidget13 = constraintWidget14;
                    }
                    constraintWidget14 = constraintWidget13;
                    i13 = 8;
                    constraintWidget13 = constraintWidget15;
                }
                ConstraintAnchor constraintAnchor9 = constraintWidget3.mListAnchors[i2];
                ConstraintAnchor constraintAnchor10 = constraintWidget.mListAnchors[i2].mTarget;
                int i16 = i2 + 1;
                ConstraintAnchor constraintAnchor11 = constraintWidget4.mListAnchors[i16];
                ConstraintAnchor constraintAnchor12 = constraintWidget2.mListAnchors[i16].mTarget;
                if (constraintAnchor10 == null) {
                    i3 = 5;
                } else if (constraintWidget3 != constraintWidget4) {
                    i3 = 5;
                    linearSystem.addEquality(constraintAnchor9.mSolverVariable, constraintAnchor10.mSolverVariable, constraintAnchor9.getMargin(), 5);
                } else {
                    i3 = 5;
                    if (constraintAnchor12 != null) {
                        linearSystem.addCentering(constraintAnchor9.mSolverVariable, constraintAnchor10.mSolverVariable, constraintAnchor9.getMargin(), 0.5f, constraintAnchor11.mSolverVariable, constraintAnchor12.mSolverVariable, constraintAnchor11.getMargin(), 5);
                    }
                }
                if (constraintAnchor12 != null && constraintWidget3 != constraintWidget4) {
                    linearSystem.addEquality(constraintAnchor11.mSolverVariable, constraintAnchor12.mSolverVariable, -constraintAnchor11.getMargin(), i3);
                }
            }
        } else {
            boolean z8 = chainHead.mWidgetsMatchCount > 0 && chainHead.mWidgetsCount == chainHead.mWidgetsMatchCount;
            ConstraintWidget constraintWidget17 = constraintWidget3;
            ConstraintWidget constraintWidget18 = constraintWidget17;
            while (constraintWidget17 != null) {
                ConstraintWidget constraintWidget19 = constraintWidget17.mNextChainWidget[i];
                while (constraintWidget19 != null && constraintWidget19.getVisibility() == 8) {
                    constraintWidget19 = constraintWidget19.mNextChainWidget[i];
                }
                if (constraintWidget19 != null || constraintWidget17 == constraintWidget4) {
                    ConstraintAnchor constraintAnchor13 = constraintWidget17.mListAnchors[i2];
                    SolverVariable solverVariable15 = constraintAnchor13.mSolverVariable;
                    SolverVariable solverVariable16 = constraintAnchor13.mTarget != null ? constraintAnchor13.mTarget.mSolverVariable : null;
                    if (constraintWidget18 != constraintWidget17) {
                        solverVariable16 = constraintWidget18.mListAnchors[i2 + 1].mSolverVariable;
                    } else if (constraintWidget17 == constraintWidget3 && constraintWidget18 == constraintWidget17) {
                        solverVariable16 = constraintWidget.mListAnchors[i2].mTarget != null ? constraintWidget.mListAnchors[i2].mTarget.mSolverVariable : null;
                    }
                    int margin7 = constraintAnchor13.getMargin();
                    int i17 = i2 + 1;
                    int margin8 = constraintWidget17.mListAnchors[i17].getMargin();
                    if (constraintWidget19 != null) {
                        constraintAnchor2 = constraintWidget19.mListAnchors[i2];
                        solverVariable3 = constraintAnchor2.mSolverVariable;
                        solverVariable4 = constraintWidget17.mListAnchors[i17].mSolverVariable;
                    } else {
                        constraintAnchor2 = constraintWidget2.mListAnchors[i17].mTarget;
                        solverVariable3 = constraintAnchor2 != null ? constraintAnchor2.mSolverVariable : null;
                        solverVariable4 = constraintWidget17.mListAnchors[i17].mSolverVariable;
                    }
                    if (constraintAnchor2 != null) {
                        margin8 += constraintAnchor2.getMargin();
                    }
                    if (constraintWidget18 != null) {
                        margin7 += constraintWidget18.mListAnchors[i17].getMargin();
                    }
                    if (solverVariable15 != null && solverVariable16 != null && solverVariable3 != null && solverVariable4 != null) {
                        linearSystem.addCentering(solverVariable15, solverVariable16, constraintWidget17 == constraintWidget3 ? constraintWidget3.mListAnchors[i2].getMargin() : margin7, 0.5f, solverVariable3, solverVariable4, constraintWidget17 == constraintWidget4 ? constraintWidget4.mListAnchors[i17].getMargin() : margin8, z8 ? 6 : 4);
                    }
                }
                if (constraintWidget17.getVisibility() != 8) {
                    constraintWidget18 = constraintWidget17;
                }
                constraintWidget17 = constraintWidget19;
            }
        }
        if ((z6 || z2) && constraintWidget3 != null) {
            ConstraintAnchor constraintAnchor14 = constraintWidget3.mListAnchors[i2];
            int i18 = i2 + 1;
            ConstraintAnchor constraintAnchor15 = constraintWidget4.mListAnchors[i18];
            SolverVariable solverVariable17 = constraintAnchor14.mTarget != null ? constraintAnchor14.mTarget.mSolverVariable : null;
            SolverVariable solverVariable18 = constraintAnchor15.mTarget != null ? constraintAnchor15.mTarget.mSolverVariable : null;
            if (constraintWidget2 != constraintWidget4) {
                ConstraintAnchor constraintAnchor16 = constraintWidget2.mListAnchors[i18];
                solverVariable5 = constraintAnchor16.mTarget != null ? constraintAnchor16.mTarget.mSolverVariable : null;
            } else {
                solverVariable5 = solverVariable18;
            }
            if (constraintWidget3 == constraintWidget4) {
                constraintAnchor14 = constraintWidget3.mListAnchors[i2];
                constraintAnchor15 = constraintWidget3.mListAnchors[i18];
            }
            if (solverVariable17 == null || solverVariable5 == null) {
                return;
            }
            int margin9 = constraintAnchor14.getMargin();
            if (constraintWidget4 != null) {
                constraintWidget2 = constraintWidget4;
            }
            linearSystem.addCentering(constraintAnchor14.mSolverVariable, solverVariable17, margin9, 0.5f, solverVariable5, constraintAnchor15.mSolverVariable, constraintWidget2.mListAnchors[i18].getMargin(), 5);
        }
    }
}
