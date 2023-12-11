.class Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;
.super Ljava/lang/Object;
.source "WallpaperExtraBundleHelper.java"


# static fields
.field private static final CHARSET_UTF_8:Ljava/lang/String; = "UTF-8"

.field private static final JSON_INDENT:Ljava/lang/String; = "  "

.field private static final JSON_VALUE_TYPE_DELIMITER:Ljava/lang/String; = "|"

.field private static final JSON_VALUE_TYPE_PREFIX_BOOLEAN:Ljava/lang/String; = "B"

.field private static final JSON_VALUE_TYPE_PREFIX_BUNDLE:Ljava/lang/String; = "BD"

.field private static final JSON_VALUE_TYPE_PREFIX_DOUBLE:Ljava/lang/String; = "D"

.field private static final JSON_VALUE_TYPE_PREFIX_FLOAT:Ljava/lang/String; = "F"

.field private static final JSON_VALUE_TYPE_PREFIX_INTEGER:Ljava/lang/String; = "I"

.field private static final JSON_VALUE_TYPE_PREFIX_LONG:Ljava/lang/String; = "L"

.field private static final JSON_VALUE_TYPE_PREFIX_STRING:Ljava/lang/String; = "S"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    const-class v0, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private determineDataTypePrefix(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 197
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 198
    const-string v0, "S"

    return-object v0

    .line 199
    :cond_7
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    .line 200
    const-string v0, "B"

    return-object v0

    .line 201
    :cond_e
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_15

    .line 202
    const-string v0, "I"

    return-object v0

    .line 203
    :cond_15
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1c

    .line 204
    const-string v0, "L"

    return-object v0

    .line 205
    :cond_1c
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_23

    .line 206
    const-string v0, "F"

    return-object v0

    .line 207
    :cond_23
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_2a

    .line 208
    const-string v0, "D"

    return-object v0

    .line 209
    :cond_2a
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_31

    .line 210
    const-string v0, "BD"

    return-object v0

    .line 212
    :cond_31
    const/4 v0, 0x0

    return-object v0
.end method

.method private putJsonObjectFieldsToBundle(Landroid/util/JsonReader;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "reader"    # Landroid/util/JsonReader;
    .param p2, "resultBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 136
    :goto_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 137
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "jsonValue":Ljava/lang/String;
    invoke-direct {p0, p2, v0, v1}, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;->putValueToBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 140
    .local v2, "valueObject":Ljava/lang/Object;
    if-nez v2, :cond_35

    .line 141
    sget-object v3, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "putJsonObjectFieldsToBundle: failed to decode value. key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    goto :goto_3

    .line 144
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "jsonValue":Ljava/lang/String;
    .end local v2    # "valueObject":Ljava/lang/Object;
    :cond_35
    goto :goto_3

    .line 145
    :cond_36
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 146
    return-void
.end method

.method private putValueToBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "jsonValue"    # Ljava/lang/String;

    .line 149
    const/4 v0, 0x0

    if-eqz p1, :cond_ef

    if-eqz p2, :cond_ef

    if-nez p3, :cond_9

    goto/16 :goto_ef

    .line 153
    :cond_9
    const-string/jumbo v1, "|"

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 154
    .local v1, "delimiterIndex":I
    if-gez v1, :cond_2c

    .line 155
    sget-object v2, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "putValueToBundle : type delimiter is absent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return v0

    .line 159
    :cond_2c
    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "typePrefix":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "strTypeValue":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_f0

    :cond_42
    goto :goto_89

    :sswitch_43
    const-string v4, "BD"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    const/4 v4, 0x6

    goto :goto_8a

    :sswitch_4d
    const-string v4, "S"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    move v4, v0

    goto :goto_8a

    :sswitch_57
    const-string v4, "L"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    const/4 v4, 0x3

    goto :goto_8a

    :sswitch_61
    const-string v4, "I"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    const/4 v4, 0x2

    goto :goto_8a

    :sswitch_6b
    const-string v4, "F"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    const/4 v4, 0x4

    goto :goto_8a

    :sswitch_75
    const-string v4, "D"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    const/4 v4, 0x5

    goto :goto_8a

    :sswitch_7f
    const-string v4, "B"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    move v4, v5

    goto :goto_8a

    :goto_89
    const/4 v4, -0x1

    :goto_8a
    packed-switch v4, :pswitch_data_10e

    .line 191
    sget-object v4, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "putValueToBundle: unexpected data type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return v0

    .line 187
    :pswitch_a7
    invoke-virtual {p0, v3}, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;->convertJsonToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 188
    return v5

    .line 183
    :pswitch_af
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {p1, p2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 184
    return v5

    .line 179
    :pswitch_bb
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 180
    return v5

    .line 175
    :pswitch_c7
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p1, p2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 176
    return v5

    .line 171
    :pswitch_d3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 172
    return v5

    .line 167
    :pswitch_df
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 168
    return v5

    .line 163
    :pswitch_eb
    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return v5

    .line 150
    .end local v1    # "delimiterIndex":I
    .end local v2    # "typePrefix":Ljava/lang/String;
    .end local v3    # "strTypeValue":Ljava/lang/String;
    :cond_ef
    :goto_ef
    return v0

    :sswitch_data_f0
    .sparse-switch
        0x42 -> :sswitch_7f
        0x44 -> :sswitch_75
        0x46 -> :sswitch_6b
        0x49 -> :sswitch_61
        0x4c -> :sswitch_57
        0x53 -> :sswitch_4d
        0x842 -> :sswitch_43
    .end sparse-switch

    :pswitch_data_10e
    .packed-switch 0x0
        :pswitch_eb
        :pswitch_df
        :pswitch_d3
        :pswitch_c7
        :pswitch_bb
        :pswitch_af
        :pswitch_a7
    .end packed-switch
.end method

.method private writeBundleToJson(Landroid/os/Bundle;Landroid/util/JsonWriter;)V
    .registers 11
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "writer"    # Landroid/util/JsonWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 109
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 110
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 111
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 112
    .local v3, "value":Ljava/lang/Object;
    if-nez v3, :cond_3d

    .line 113
    sget-object v4, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeBundleToJson: the value of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is null. skipping.."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    goto :goto_b

    .line 117
    :cond_3d
    invoke-direct {p0, v3}, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;->determineDataTypePrefix(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, "typePrefix":Ljava/lang/String;
    if-nez v4, :cond_75

    .line 119
    sget-object v5, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "writeBundleToJson: unsupported value type : key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", skipping.."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    goto :goto_b

    .line 122
    :cond_75
    invoke-virtual {p2, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 124
    const-string v5, "BD"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_88

    .line 125
    move-object v5, v3

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {p0, v5}, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;->convertBundleToJson(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    .local v5, "stringValue":Ljava/lang/String;
    goto :goto_8c

    .line 127
    .end local v5    # "stringValue":Ljava/lang/String;
    :cond_88
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 129
    .restart local v5    # "stringValue":Ljava/lang/String;
    :goto_8c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 130
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "typePrefix":Ljava/lang/String;
    .end local v5    # "stringValue":Ljava/lang/String;
    goto/16 :goto_b

    .line 131
    :cond_a9
    invoke-virtual {p2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 132
    return-void
.end method


# virtual methods
.method public convertBundleToJson(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 8
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 87
    const-string v0, "UTF-8"

    const-string v1, "convertBundleToJson : e="

    if-nez p1, :cond_8

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 91
    :cond_8
    :try_start_8
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 92
    .local v2, "outStream":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Landroid/util/JsonWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 93
    .local v3, "writer":Landroid/util/JsonWriter;
    const-string v4, "  "

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->setIndent(Ljava/lang/String;)V

    .line 94
    invoke-direct {p0, p1, v3}, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;->writeBundleToJson(Landroid/os/Bundle;Landroid/util/JsonWriter;)V

    .line 95
    invoke-virtual {v3}, Landroid/util/JsonWriter;->close()V

    .line 96
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 98
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_2e} :catch_47
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_2e} :catch_2f

    return-object v4

    .line 101
    .end local v2    # "outStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "writer":Landroid/util/JsonWriter;
    :catch_2f
    move-exception v0

    .line 102
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 99
    .end local v0    # "e":Ljava/io/IOException;
    :catch_47
    move-exception v0

    .line 100
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    nop

    .line 104
    :goto_5f
    const-string v0, ""

    return-object v0
.end method

.method public convertJsonToBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 8
    .param p1, "jsonStr"    # Ljava/lang/String;

    .line 68
    const-string v0, "convertJsonToBundle : e="

    const-string v1, "UTF-8"

    if-nez p1, :cond_8

    .line 69
    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_8
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v2, "resultBundle":Landroid/os/Bundle;
    :try_start_d
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 74
    .local v3, "inputStream":Ljava/io/ByteArrayInputStream;
    new-instance v4, Landroid/util/JsonReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v4

    .line 75
    .local v1, "reader":Landroid/util/JsonReader;
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;->putJsonObjectFieldsToBundle(Landroid/util/JsonReader;Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {v1}, Landroid/util/JsonReader;->close()V

    .line 77
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_2a} :catch_43
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_2a} :catch_2b

    .end local v1    # "reader":Landroid/util/JsonReader;
    .end local v3    # "inputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_5a

    .line 80
    :catch_2b
    move-exception v1

    .line 81
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 78
    .end local v1    # "e":Ljava/io/IOException;
    :catch_43
    move-exception v1

    .line 79
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v3, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_5a
    nop

    .line 83
    :goto_5b
    return-object v2
.end method
