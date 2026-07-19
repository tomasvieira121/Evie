package com.evie.models.topics.data;

import com.google.gson.annotations.JsonAdapter;
import java.util.Collections;
import java.util.List;
import org.schema.serialization.AlwaysListTypeAdapterFactory;

/* JADX INFO: loaded from: classes.dex */
public class GetFollowsResult {

    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<TopicId> follows = Collections.emptyList();

    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<TopicId> blocks = Collections.emptyList();

    public List<TopicId> getFollows() {
        return this.follows;
    }

    public List<TopicId> getBlocks() {
        return this.blocks;
    }
}
