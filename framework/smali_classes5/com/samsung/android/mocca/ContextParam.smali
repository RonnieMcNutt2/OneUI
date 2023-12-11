.class public final Lcom/samsung/android/mocca/ContextParam;
.super Ljava/lang/Object;
.source "ContextParam.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/mocca/ContextParam;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ContextParam"

.field private static final serialVersionUID:J = -0x29ff85766cacdf38L


# instance fields
.field private final mParams:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 94
    new-instance v0, Lcom/samsung/android/mocca/ContextParam$1;

    invoke-direct {v0}, Lcom/samsung/android/mocca/ContextParam$1;-><init>()V

    sput-object v0, Lcom/samsung/android/mocca/ContextParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mocca/ContextParam;->mParams:Landroid/util/ArrayMap;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "param"    # Landroid/os/Bundle;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mocca/ContextParam;->mParams:Landroid/util/ArrayMap;

    .line 57
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 58
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 59
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 60
    .local v3, "value":Ljava/lang/Object;
    iget-object v4, p0, Lcom/samsung/android/mocca/ContextParam;->mParams:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    goto :goto_12

    .line 62
    :cond_28
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mocca/ContextParam;->mParams:Landroid/util/ArrayMap;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 66
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_22

    .line 67
    iget-object v2, p0, Lcom/samsung/android/mocca/ContextParam;->mParams:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 69
    .end local v1    # "i":I
    :cond_22
    return-void
.end method

.method static synthetic lambda$writeToParcel$0(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Object;

    .line 78
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 80
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public getByte(Ljava/lang/String;)B
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mocca/ContextParam;->mParams:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 136
    :catch_d
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    return v1
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    .line 350
    iget-object v0, p0, Lcom/samsung/android/mocca/ContextParam;->mParams:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 351
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    new-array v1, v1, [B

    return-object v1

    .line 354
    :cond_c
    :try_start_c
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_38

    .line 355
    .local v1, "valueOut":Ljava/io/ByteArrayOutputStream;
    :try_start_11
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_2e

    .line 357
    .local v2, "os":Ljava/io/ObjectOutputStream;
    :try_start_16
    invoke-virtual {v2, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 358
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_24

    .line 359
    :try_start_1d
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_2e

    :try_start_20
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_38

    .line 358
    return-object v3

    .line 353
    :catchall_24
    move-exception v3

    :try_start_25
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_2d

    :catchall_29
    move-exception v4

    :try_start_2a
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "obj":Ljava/lang/Object;
    .end local v1    # "valueOut":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "this":Lcom/samsung/android/mocca/ContextParam;
    .end local p1    # "key":Ljava/lang/String;
    :goto_2d
    throw v3
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2e

    .end local v2    # "os":Ljava/io/ObjectOutputStream;
    .restart local v0    # "obj":Ljava/lang/Object;
    .restart local v1    # "valueOut":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Lcom/samsung/android/mocca/ContextParam;
    .restart local p1    # "key":Ljava/lang/String;
    :catchall_2e
    move-exception v2

    :try_start_2f
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_37

    :catchall_33
    move-exception v3

    :try_start_34
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "obj":Ljava/lang/Object;
    .end local p0    # "this":Lcom/samsung/android/mocca/ContextParam;
    .end local p1    # "key":Ljava/lang/String;
    :goto_37
    throw v2
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_38} :catch_38

    .line 359
    .end local v1    # "valueOut":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "obj":Ljava/lang/Object;
    .restart local p0    # "this":Lcom/samsung/android/mocca/ContextParam;
    .restart local p1    # "key":Ljava/lang/String;
    :catch_38
    move-exception v1

    .line 360
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getByteArray - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ContextParam"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    const/4 v2, 0x0

    return-object v2
.end method

.method public getChar(Ljava/lang/String;)C
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mocca/ContextParam;->mParams:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 162
    :catch_d
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    return v1
.end method

.method public getDouble(Ljava/lang/String;)D
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mocca/ContextParam;->mParams:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_c} :catch_d

    return-wide v0

    .line 292
    :catch_d
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/RuntimeException;
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public getFloat(Ljava/lang/String;)F
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mocca/ContextParam;->mParams:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 266
    :catch_d
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    return v1
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mocca/ContextParam;->mParams:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 214
    :catch_d
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    return v1
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mocca/ContextParam;->mParams:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_c} :catch_d

    return-wide v0

    .line 240
    :catch_d
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/RuntimeException;
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public getShort(Ljava/lang/String;)S
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mocca/ContextParam;->mParams:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 188
    :catch_d
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    return v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mocca/ContextParam;->mParams:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 318
    :catch_9
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/ClassCastException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public isEmpty()Z
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/samsung/android/mocca/ContextParam;->mParams:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public putByte(Ljava/lang/String;B)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # B

    .line 123
    iget-object v0, p0, Lcom/samsung/android/mocca/ContextParam;->mParams:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-void
.end method

.method public putByteArray(Ljava/lang/String;[B)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 332
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_2e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_2e

    .line 333
    .local v0, "valueIn":Ljava/io/ByteArrayInputStream;
    :try_start_5
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_24

    .line 335
    .local v1, "ois":Ljava/io/ObjectInputStream;
    :try_start_a
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 336
    .local v2, "obj":Ljava/lang/Object;
    iget-object v3, p0, Lcom/samsung/android/mocca/ContextParam;->mParams:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_1a

    .line 337
    .end local v2    # "obj":Ljava/lang/Object;
    :try_start_13
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_24

    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    :try_start_16
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_2e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_19} :catch_2e

    .line 339
    .end local v0    # "valueIn":Ljava/io/ByteArrayInputStream;
    goto :goto_4c

    .line 331
    .restart local v0    # "valueIn":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    :catchall_1a
    move-exception v2

    :try_start_1b
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_23

    :catchall_1f
    move-exception v3

    :try_start_20
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "valueIn":Ljava/io/ByteArrayInputStream;
    .end local p0    # "this":Lcom/samsung/android/mocca/ContextParam;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":[B
    :goto_23
    throw v2
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_24

    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .restart local v0    # "valueIn":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "this":Lcom/samsung/android/mocca/ContextParam;
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "value":[B
    :catchall_24
    move-exception v1

    :try_start_25
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_2d

    :catchall_29
    move-exception v2

    :try_start_2a
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/samsung/android/mocca/ContextParam;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":[B
    :goto_2d
    throw v1
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2e} :catch_2e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2a .. :try_end_2e} :catch_2e

    .line 337
    .end local v0    # "valueIn":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "this":Lcom/samsung/android/mocca/ContextParam;
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "value":[B
    :catch_2e
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "putByteArray - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContextParam"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4c
    return-void
.end method

.method public putChar(Ljava/lang/String;C)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # C

    .line 149
    iget-object v0, p0, Lcom/samsung/android/mocca/ContextParam;->mParams:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 279
    iget-object v0, p0, Lcom/samsung/android/mocca/ContextParam;->mParams:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 253
    iget-object v0, p0, Lcom/samsung/android/mocca/ContextParam;->mParams:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 201
    iget-object v0, p0, Lcom/samsung/android/mocca/ContextParam;->mParams:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 227
    iget-object v0, p0, Lcom/samsung/android/mocca/ContextParam;->mParams:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    return-void
.end method

.method public putShort(Ljava/lang/String;S)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # S

    .line 175
    iget-object v0, p0, Lcom/samsung/android/mocca/ContextParam;->mParams:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 305
    iget-object v0, p0, Lcom/samsung/android/mocca/ContextParam;->mParams:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 76
    iget-object v0, p0, Lcom/samsung/android/mocca/ContextParam;->mParams:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v0, p0, Lcom/samsung/android/mocca/ContextParam;->mParams:Landroid/util/ArrayMap;

    new-instance v1, Lcom/samsung/android/mocca/ContextParam$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/samsung/android/mocca/ContextParam$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 81
    return-void
.end method
