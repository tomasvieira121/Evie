package com.voxel.launcher3.util;

import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class StringFilter {

    /* JADX INFO: renamed from: com.voxel.launcher3.util.StringFilter$1 */
    static class C11391 extends StringFilter {
        @Override // com.voxel.launcher3.util.StringFilter
        public boolean matches(String str) {
            return true;
        }
    }

    public abstract boolean matches(String str);

    /* synthetic */ StringFilter(C11391 c11391) {
        this();
    }

    private StringFilter() {
    }

    /* JADX INFO: renamed from: of */
    public static StringFilter m536of(final Set<String> set) {
        return new StringFilter() { // from class: com.voxel.launcher3.util.StringFilter.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(null);
            }

            @Override // com.voxel.launcher3.util.StringFilter
            public boolean matches(String str) {
                return set.contains(str);
            }
        };
    }
}
