package com.evie.models.topics.data;

import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.google.gson.annotations.JsonAdapter;
import java.util.Collections;
import java.util.List;
import org.schema.Thing;
import org.schema.serialization.AlwaysListTypeAdapterFactory;

/* JADX INFO: loaded from: classes.dex */
public class TopicDetailsResult {

    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<Thing> topics = Collections.emptyList();

    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<TopicId> follows = Collections.emptyList();

    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<TopicId> blocks = Collections.emptyList();

    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<Thing> objects = Collections.emptyList();

    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<SideScreenContentTile> tiles = Collections.emptyList();

    protected boolean canEqual(Object obj) {
        return obj instanceof TopicDetailsResult;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TopicDetailsResult)) {
            return false;
        }
        TopicDetailsResult topicDetailsResult = (TopicDetailsResult) obj;
        if (!topicDetailsResult.canEqual(this)) {
            return false;
        }
        List<Thing> topics = getTopics();
        List<Thing> topics2 = topicDetailsResult.getTopics();
        if (topics != null ? !topics.equals(topics2) : topics2 != null) {
            return false;
        }
        List<TopicId> follows = getFollows();
        List<TopicId> follows2 = topicDetailsResult.getFollows();
        if (follows != null ? !follows.equals(follows2) : follows2 != null) {
            return false;
        }
        List<TopicId> blocks = getBlocks();
        List<TopicId> blocks2 = topicDetailsResult.getBlocks();
        if (blocks != null ? !blocks.equals(blocks2) : blocks2 != null) {
            return false;
        }
        List<Thing> objects = getObjects();
        List<Thing> objects2 = topicDetailsResult.getObjects();
        if (objects != null ? !objects.equals(objects2) : objects2 != null) {
            return false;
        }
        List<SideScreenContentTile> tiles = getTiles();
        List<SideScreenContentTile> tiles2 = topicDetailsResult.getTiles();
        return tiles != null ? tiles.equals(tiles2) : tiles2 == null;
    }

    public int hashCode() {
        List<Thing> topics = getTopics();
        int iHashCode = topics == null ? 43 : topics.hashCode();
        List<TopicId> follows = getFollows();
        int iHashCode2 = ((iHashCode + 59) * 59) + (follows == null ? 43 : follows.hashCode());
        List<TopicId> blocks = getBlocks();
        int iHashCode3 = (iHashCode2 * 59) + (blocks == null ? 43 : blocks.hashCode());
        List<Thing> objects = getObjects();
        int iHashCode4 = (iHashCode3 * 59) + (objects == null ? 43 : objects.hashCode());
        List<SideScreenContentTile> tiles = getTiles();
        return (iHashCode4 * 59) + (tiles != null ? tiles.hashCode() : 43);
    }

    public String toString() {
        return "TopicDetailsResult(topics=" + getTopics() + ", follows=" + getFollows() + ", blocks=" + getBlocks() + ", objects=" + getObjects() + ", tiles=" + getTiles() + ")";
    }

    public List<Thing> getTopics() {
        return this.topics;
    }

    public List<TopicId> getFollows() {
        return this.follows;
    }

    public List<TopicId> getBlocks() {
        return this.blocks;
    }

    public List<Thing> getObjects() {
        return this.objects;
    }

    public List<SideScreenContentTile> getTiles() {
        return this.tiles;
    }
}
