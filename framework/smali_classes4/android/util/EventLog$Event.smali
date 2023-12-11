.class public final Landroid/util/EventLog$Event;
.super Ljava/lang/Object;
.source "EventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/EventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation


# static fields
.field private static final FLOAT_TYPE:B = 0x4t

.field private static final HEADER_SIZE_OFFSET:I = 0x2

.field private static final INT_TYPE:B = 0x0t

.field private static final LENGTH_OFFSET:I = 0x0

.field private static final LIST_TYPE:B = 0x3t

.field private static final LONG_TYPE:B = 0x1t

.field private static final NANOSECONDS_OFFSET:I = 0x10

.field private static final PROCESS_OFFSET:I = 0x4

.field private static final SECONDS_OFFSET:I = 0xc

.field private static final STRING_TYPE:B = 0x2t

.field private static final TAG_LENGTH:I = 0x4

.field private static final THREAD_OFFSET:I = 0x8

.field private static final UID_OFFSET:I = 0x18

.field private static final V1_PAYLOAD_START:I = 0x14


# instance fields
.field private final mBuffer:Ljava/nio/ByteBuffer;

.field private mLastWtf:Ljava/lang/Exception;


# direct methods
.method constructor <init>([B)V
    .registers 4
    .param p1, "data"    # [B

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    .line 92
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 93
    return-void
.end method

.method private decodeObject()Ljava/lang/Object;
    .registers 7

    .line 183
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 184
    .local v0, "type":B
    packed-switch v0, :pswitch_data_8a

    .line 214
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown entry type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :pswitch_22
    iget-object v1, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 207
    :pswitch_2d
    iget-object v1, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 208
    .local v1, "length":I
    if-gez v1, :cond_37

    add-int/lit16 v1, v1, 0x100

    .line 209
    :cond_37
    new-array v2, v1, [Ljava/lang/Object;

    .line 210
    .local v2, "array":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3a
    if-ge v3, v1, :cond_45

    invoke-direct {p0}, Landroid/util/EventLog$Event;->decodeObject()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 211
    .end local v3    # "i":I
    :cond_45
    return-object v2

    .line 196
    .end local v1    # "length":I
    .end local v2    # "array":[Ljava/lang/Object;
    :pswitch_46
    :try_start_46
    iget-object v1, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 197
    .restart local v1    # "length":I
    iget-object v2, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 198
    .local v2, "start":I
    iget-object v3, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    add-int v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 199
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v2, v1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_66
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_46 .. :try_end_66} :catch_67

    return-object v3

    .line 200
    .end local v1    # "length":I
    .end local v2    # "start":I
    :catch_67
    move-exception v1

    .line 201
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "EventLog"

    const-string v3, "UTF-8 is not supported"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    iput-object v1, p0, Landroid/util/EventLog$Event;->mLastWtf:Ljava/lang/Exception;

    .line 203
    const/4 v2, 0x0

    return-object v2

    .line 189
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :pswitch_73
    iget-object v1, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 186
    :pswitch_7e
    iget-object v1, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_73
        :pswitch_46
        :pswitch_2d
        :pswitch_22
    .end packed-switch
.end method

.method private static encodeObject(Ljava/lang/Object;)[B
    .registers 7
    .param p0, "object"    # Ljava/lang/Object;

    .line 219
    const/4 v0, 0x0

    if-nez p0, :cond_6

    .line 220
    new-array v0, v0, [B

    return-object v0

    .line 222
    :cond_6
    instance-of v1, p0, Ljava/lang/Integer;

    const/4 v2, 0x5

    if-eqz v1, :cond_2b

    .line 223
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 224
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 225
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/lang/Integer;

    .line 226
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 223
    return-object v0

    .line 228
    :cond_2b
    instance-of v1, p0, Ljava/lang/Long;

    if-eqz v1, :cond_52

    .line 229
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 230
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 231
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/lang/Long;

    .line 232
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 229
    return-object v0

    .line 234
    :cond_52
    instance-of v1, p0, Ljava/lang/Float;

    if-eqz v1, :cond_77

    .line 235
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 236
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 237
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/lang/Float;

    .line 238
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 235
    return-object v0

    .line 240
    :cond_77
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_a9

    .line 241
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 244
    .local v1, "string":Ljava/lang/String;
    :try_start_7e
    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_84
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7e .. :try_end_84} :catch_85

    .line 247
    .local v0, "bytes":[B
    goto :goto_88

    .line 245
    .end local v0    # "bytes":[B
    :catch_85
    move-exception v3

    .line 246
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    new-array v0, v0, [B

    .line 248
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "bytes":[B
    :goto_88
    array-length v3, v0

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 249
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 250
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    array-length v3, v0

    .line 251
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 252
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 253
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 248
    return-object v2

    .line 254
    .end local v0    # "bytes":[B
    .end local v1    # "string":Ljava/lang/String;
    :cond_a9
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_fe

    .line 255
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    .line 256
    .local v0, "objects":[Ljava/lang/Object;
    array-length v1, v0

    const/16 v2, 0xff

    if-gt v1, v2, :cond_f6

    .line 259
    array-length v1, v0

    new-array v1, v1, [[B

    .line 260
    .local v1, "bytes":[[B
    const/4 v2, 0x0

    .line 261
    .local v2, "totalLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_ba
    array-length v4, v0

    if-ge v3, v4, :cond_cc

    .line 262
    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/util/EventLog$Event;->encodeObject(Ljava/lang/Object;)[B

    move-result-object v4

    aput-object v4, v1, v3

    .line 263
    aget-object v4, v1, v3

    array-length v4, v4

    add-int/2addr v2, v4

    .line 261
    add-int/lit8 v3, v3, 0x1

    goto :goto_ba

    .line 265
    .end local v3    # "i":I
    :cond_cc
    add-int/lit8 v3, v2, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 266
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 267
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    array-length v4, v0

    int-to-byte v4, v4

    .line 268
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 269
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e6
    array-length v5, v0

    if-ge v4, v5, :cond_f1

    .line 270
    aget-object v5, v1, v4

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 269
    add-int/lit8 v4, v4, 0x1

    goto :goto_e6

    .line 272
    .end local v4    # "i":I
    :cond_f1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    return-object v4

    .line 257
    .end local v1    # "bytes":[[B
    .end local v2    # "totalLength":I
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    :cond_f6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Object array too long"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 274
    .end local v0    # "objects":[Ljava/lang/Object;
    :cond_fe
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown object type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromBytes([B)Landroid/util/EventLog$Event;
    .registers 2
    .param p0, "data"    # [B

    .line 280
    new-instance v0, Landroid/util/EventLog$Event;

    invoke-direct {v0, p0}, Landroid/util/EventLog$Event;-><init>([B)V

    return-object v0
.end method

.method private getHeaderSize()I
    .registers 3

    .line 131
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    .line 132
    .local v0, "length":I
    if-eqz v0, :cond_a

    .line 133
    return v0

    .line 135
    :cond_a
    const/16 v1, 0x14

    return v1
.end method


# virtual methods
.method public clearError()V
    .registers 2

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/EventLog$Event;->mLastWtf:Ljava/lang/Exception;

    .line 305
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 314
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 315
    :cond_4
    if-eqz p1, :cond_25

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_25

    .line 316
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/util/EventLog$Event;

    .line 317
    .local v0, "other":Landroid/util/EventLog$Event;
    iget-object v1, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v2, v0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1

    .line 315
    .end local v0    # "other":Landroid/util/EventLog$Event;
    :cond_25
    :goto_25
    const/4 v0, 0x0

    return v0
.end method

.method public getBytes()[B
    .registers 3

    .line 285
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 286
    .local v0, "bytes":[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized getData()Ljava/lang/Object;
    .registers 6

    monitor-enter p0

    .line 140
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0}, Landroid/util/EventLog$Event;->getHeaderSize()I

    move-result v1

    .line 141
    .local v1, "offset":I
    iget-object v2, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 142
    add-int/lit8 v2, v1, 0x4

    iget-object v3, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_19} :catch_4d
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_19} :catch_2c
    .catchall {:try_start_2 .. :try_end_19} :catchall_2a

    if-lt v2, v3, :cond_1d

    .line 144
    monitor-exit p0

    return-object v0

    .line 146
    :cond_1d
    :try_start_1d
    iget-object v2, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, 0x4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 147
    invoke-direct {p0}, Landroid/util/EventLog$Event;->decodeObject()Ljava/lang/Object;

    move-result-object v0
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_28} :catch_4d
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1d .. :try_end_28} :catch_2c
    .catchall {:try_start_1d .. :try_end_28} :catchall_2a

    monitor-exit p0

    return-object v0

    .line 139
    .end local v1    # "offset":I
    .end local p0    # "this":Landroid/util/EventLog$Event;
    :catchall_2a
    move-exception v0

    goto :goto_6e

    .line 152
    :catch_2c
    move-exception v1

    .line 153
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    :try_start_2d
    const-string v2, "EventLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Truncated entry payload: tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/util/EventLog$Event;->getTag()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    iput-object v1, p0, Landroid/util/EventLog$Event;->mLastWtf:Ljava/lang/Exception;
    :try_end_4b
    .catchall {:try_start_2d .. :try_end_4b} :catchall_2a

    .line 155
    monitor-exit p0

    return-object v0

    .line 148
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    :catch_4d
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4e
    const-string v2, "EventLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal entry payload: tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/util/EventLog$Event;->getTag()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    iput-object v1, p0, Landroid/util/EventLog$Event;->mLastWtf:Ljava/lang/Exception;
    :try_end_6c
    .catchall {:try_start_4e .. :try_end_6c} :catchall_2a

    .line 151
    monitor-exit p0

    return-object v0

    .line 139
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_6e
    monitor-exit p0

    throw v0
.end method

.method public getLastError()Ljava/lang/Exception;
    .registers 2

    .line 295
    iget-object v0, p0, Landroid/util/EventLog$Event;->mLastWtf:Ljava/lang/Exception;

    return-object v0
.end method

.method public getProcessId()I
    .registers 3

    .line 97
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getTag()I
    .registers 3

    .line 127
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Landroid/util/EventLog$Event;->getHeaderSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getThreadId()I
    .registers 3

    .line 116
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getTimeNanos()J
    .registers 5

    .line 121
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr v0, v2

    iget-object v2, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    .line 122
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 121
    return-wide v0
.end method

.method public getUid()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 107
    :try_start_0
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 108
    :catch_9
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, -0x1

    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 327
    iget-object v0, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public withNewData(Ljava/lang/Object;)Landroid/util/EventLog$Event;
    .registers 9
    .param p1, "object"    # Ljava/lang/Object;

    .line 165
    invoke-static {p1}, Landroid/util/EventLog$Event;->encodeObject(Ljava/lang/Object;)[B

    move-result-object v0

    .line 166
    .local v0, "payload":[B
    array-length v1, v0

    const v2, 0xfffb

    if-gt v1, v2, :cond_35

    .line 169
    invoke-direct {p0}, Landroid/util/EventLog$Event;->getHeaderSize()I

    move-result v1

    .line 170
    .local v1, "headerLength":I
    add-int/lit8 v2, v1, 0x4

    array-length v3, v0

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 172
    .local v2, "newBytes":[B
    iget-object v3, p0, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    add-int/lit8 v4, v1, 0x4

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    add-int/lit8 v3, v1, 0x4

    array-length v4, v0

    invoke-static {v0, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    new-instance v3, Landroid/util/EventLog$Event;

    invoke-direct {v3, v2}, Landroid/util/EventLog$Event;-><init>([B)V

    .line 177
    .local v3, "result":Landroid/util/EventLog$Event;
    iget-object v4, v3, Landroid/util/EventLog$Event;->mBuffer:Ljava/nio/ByteBuffer;

    array-length v6, v0

    add-int/lit8 v6, v6, 0x4

    int-to-short v6, v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 178
    return-object v3

    .line 167
    .end local v1    # "headerLength":I
    .end local v2    # "newBytes":[B
    .end local v3    # "result":Landroid/util/EventLog$Event;
    :cond_35
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Payload too long"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
