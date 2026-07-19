package com.evie.models.config;

/* JADX INFO: loaded from: classes.dex */
public class ExperimentData {
    private String checksum;
    private String experimentId;
    private String groupId;

    protected boolean canEqual(Object obj) {
        return obj instanceof ExperimentData;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ExperimentData)) {
            return false;
        }
        ExperimentData experimentData = (ExperimentData) obj;
        if (!experimentData.canEqual(this)) {
            return false;
        }
        String experimentId = getExperimentId();
        String experimentId2 = experimentData.getExperimentId();
        if (experimentId != null ? !experimentId.equals(experimentId2) : experimentId2 != null) {
            return false;
        }
        String groupId = getGroupId();
        String groupId2 = experimentData.getGroupId();
        if (groupId != null ? !groupId.equals(groupId2) : groupId2 != null) {
            return false;
        }
        String checksum = getChecksum();
        String checksum2 = experimentData.getChecksum();
        return checksum != null ? checksum.equals(checksum2) : checksum2 == null;
    }

    public int hashCode() {
        String experimentId = getExperimentId();
        int iHashCode = experimentId == null ? 43 : experimentId.hashCode();
        String groupId = getGroupId();
        int iHashCode2 = ((iHashCode + 59) * 59) + (groupId == null ? 43 : groupId.hashCode());
        String checksum = getChecksum();
        return (iHashCode2 * 59) + (checksum != null ? checksum.hashCode() : 43);
    }

    public String toString() {
        return "ExperimentData(experimentId=" + getExperimentId() + ", groupId=" + getGroupId() + ", checksum=" + getChecksum() + ")";
    }

    public String getExperimentId() {
        return this.experimentId;
    }

    public String getGroupId() {
        return this.groupId;
    }

    public String getChecksum() {
        return this.checksum;
    }
}
