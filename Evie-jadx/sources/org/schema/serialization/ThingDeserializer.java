package org.schema.serialization;

import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;
import org.schema.ImageObject;
import org.schema.NewsArticle;
import org.schema.Organization;
import org.schema.Person;
import org.schema.Thing;
import org.schema.UnknownThing;
import org.schema.VideoObject;
import org.schema.evie.NewsChannel;
import org.schema.evie.NewsStory;
import org.schema.evie.actions.LinkAction;
import org.schema.evie.ads.MillennialMediaAd;
import org.schema.evie.topics.TopicEntity;
import org.schema.evie.topics.TopicMappedCategory;
import org.schema.evie.topics.TopicPublisher;
import org.schema.evie.yelp.YelpAd;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class ThingDeserializer implements JsonDeserializer<Thing> {
    public static final ThingDeserializer INSTANCE = new ThingDeserializer();
    private final Map<String, Class<? extends Thing>> types = new HashMap();

    private ThingDeserializer() {
        register(ImageObject.class);
        register(LinkAction.class);
        register(MillennialMediaAd.class);
        register(NewsArticle.class);
        register(NewsChannel.class);
        register(NewsStory.class);
        register(Organization.class);
        register(Person.class);
        register(VideoObject.class);
        register(TopicPublisher.class, "ev:topicPublisher");
        register(TopicMappedCategory.class, "ev:topicMappedCategory");
        register(TopicEntity.class, "ev:topicEntity");
        register(YelpAd.class);
    }

    public ThingDeserializer register(Class<? extends Thing> cls) {
        this.types.put(cls.getSimpleName(), cls);
        return this;
    }

    public ThingDeserializer register(Class<? extends Thing> cls, String str) {
        this.types.put(str, cls);
        return this;
    }

    @Override // com.google.gson.JsonDeserializer
    public Thing deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
        if (!jsonElement.isJsonObject()) {
            return null;
        }
        JsonObject asJsonObject = jsonElement.getAsJsonObject();
        if (!asJsonObject.has("@type")) {
            return null;
        }
        JsonElement jsonElement2 = asJsonObject.get("@type");
        if (!jsonElement2.isJsonPrimitive()) {
            return null;
        }
        String asString = jsonElement2.getAsString();
        if (!this.types.containsKey(asString)) {
            return null;
        }
        try {
            Class<? extends Thing> cls = this.types.get(asString);
            if (cls == null) {
                cls = UnknownThing.class;
            }
            return (Thing) jsonDeserializationContext.deserialize(jsonElement, cls);
        } catch (JsonParseException e) {
            Timber.m552d(e, "Failed to deserialize something with id %s.", asJsonObject.get("@id"));
            return null;
        }
    }
}
