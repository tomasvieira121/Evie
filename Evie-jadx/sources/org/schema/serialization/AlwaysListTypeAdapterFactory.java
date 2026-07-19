package org.schema.serialization;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.google.gson.stream.MalformedJsonException;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class AlwaysListTypeAdapterFactory<E> implements TypeAdapterFactory {
    private AlwaysListTypeAdapterFactory() {
    }

    @Override // com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        if (List.class.isAssignableFrom(typeToken.getRawType())) {
            return new AlwaysListTypeAdapter(gson.getAdapter(TypeToken.get(resolveTypeArgument(typeToken.getType())))).nullSafe();
        }
        return null;
    }

    private static Type resolveTypeArgument(Type type) {
        if (!(type instanceof ParameterizedType)) {
            return Object.class;
        }
        return ((ParameterizedType) type).getActualTypeArguments()[0];
    }

    private static final class AlwaysListTypeAdapter<E> extends TypeAdapter<List<E>> {
        private final TypeAdapter<E> elementTypeAdapter;

        private AlwaysListTypeAdapter(TypeAdapter<E> typeAdapter) {
            this.elementTypeAdapter = typeAdapter;
        }

        @Override // com.google.gson.TypeAdapter
        public void write(JsonWriter jsonWriter, List<E> list) throws IOException {
            jsonWriter.beginArray();
            Iterator<E> it = list.iterator();
            while (it.hasNext()) {
                this.elementTypeAdapter.write(jsonWriter, it.next());
            }
            jsonWriter.endArray();
        }

        @Override // com.google.gson.TypeAdapter
        /* JADX INFO: renamed from: read */
        public List<E> read2(JsonReader jsonReader) throws IOException {
            ArrayList arrayList = new ArrayList();
            JsonToken jsonTokenPeek = jsonReader.peek();
            switch (jsonTokenPeek) {
                case BEGIN_ARRAY:
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        arrayList.add(this.elementTypeAdapter.read2(jsonReader));
                    }
                    jsonReader.endArray();
                    return arrayList;
                case BEGIN_OBJECT:
                case STRING:
                case NUMBER:
                case BOOLEAN:
                    arrayList.add(this.elementTypeAdapter.read2(jsonReader));
                    return arrayList;
                case NULL:
                    throw new AssertionError("Must never happen: check if the type adapter configured with .nullSafe()");
                case NAME:
                case END_ARRAY:
                case END_OBJECT:
                case END_DOCUMENT:
                    throw new MalformedJsonException("Unexpected token: " + jsonTokenPeek);
                default:
                    throw new AssertionError("Must never happen: " + jsonTokenPeek);
            }
        }
    }
}
