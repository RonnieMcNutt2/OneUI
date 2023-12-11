.class public Landroid/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final HUNDRED_DAY_FIELD_LEN:I = 0x13

.field public static final MIN_USE_DATE_OF_TIMEZONE:Ljava/time/Instant;

.field public static final NANOS_PER_MS:J = 0xf4240L

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field public static final sDumpDateFormat:Ljava/text/SimpleDateFormat;

.field private static sFormatStr:[C

.field private static final sFormatSync:Ljava/lang/Object;

.field private static final sLoggingFormat:Ljava/text/SimpleDateFormat;

.field private static sTmpFormatStr:[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 47
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/util/TimeUtils;->sLoggingFormat:Ljava/text/SimpleDateFormat;

    .line 51
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/util/TimeUtils;->sDumpDateFormat:Ljava/text/SimpleDateFormat;

    .line 77
    nop

    .line 78
    const-wide v0, 0x16806b5bc00L

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    sput-object v0, Landroid/util/TimeUtils;->MIN_USE_DATE_OF_TIMEZONE:Ljava/time/Instant;

    .line 179
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    .line 180
    const/16 v0, 0x1d

    new-array v1, v0, [C

    sput-object v1, Landroid/util/TimeUtils;->sFormatStr:[C

    .line 181
    new-array v0, v0, [C

    sput-object v0, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accumField(IIZI)I
    .registers 6
    .param p0, "amt"    # I
    .param p1, "suffix"    # I
    .param p2, "always"    # Z
    .param p3, "zeropad"    # I

    .line 184
    const/16 v0, 0x3e7

    if-le p0, v0, :cond_f

    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "num":I
    :goto_5
    if-eqz p0, :cond_c

    .line 187
    add-int/lit8 v0, v0, 0x1

    .line 188
    div-int/lit8 p0, p0, 0xa

    goto :goto_5

    .line 190
    :cond_c
    add-int v1, v0, p1

    return v1

    .line 192
    .end local v0    # "num":I
    :cond_f
    const/16 v0, 0x63

    if-gt p0, v0, :cond_30

    if-eqz p2, :cond_19

    const/4 v0, 0x3

    if-lt p3, v0, :cond_19

    goto :goto_30

    .line 195
    :cond_19
    const/16 v0, 0x9

    if-gt p0, v0, :cond_2d

    if-eqz p2, :cond_23

    const/4 v0, 0x2

    if-lt p3, v0, :cond_23

    goto :goto_2d

    .line 198
    :cond_23
    if-nez p2, :cond_2a

    if-lez p0, :cond_28

    goto :goto_2a

    .line 202
    :cond_28
    const/4 v0, 0x0

    return v0

    .line 199
    :cond_2a
    :goto_2a
    add-int/lit8 v0, p1, 0x1

    return v0

    .line 196
    :cond_2d
    :goto_2d
    add-int/lit8 v0, p1, 0x2

    return v0

    .line 193
    :cond_30
    :goto_30
    add-int/lit8 v0, p1, 0x3

    return v0
.end method

.method public static dumpTime(Ljava/io/PrintWriter;J)V
    .registers 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "time"    # J

    .line 430
    sget-object v0, Landroid/util/TimeUtils;->sDumpDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method public static dumpTimeWithDelta(Ljava/io/PrintWriter;JJ)V
    .registers 7
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "time"    # J
    .param p3, "now"    # J

    .line 461
    sget-object v0, Landroid/util/TimeUtils;->sDumpDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 462
    cmp-long v0, p1, p3

    if-nez v0, :cond_18

    .line 463
    const-string v0, " (now)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_25

    .line 465
    :cond_18
    const-string v0, " ("

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 466
    invoke-static {p1, p2, p3, p4, p0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 467
    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 469
    :goto_25
    return-void
.end method

.method public static formatDuration(J)Ljava/lang/String;
    .registers 7
    .param p0, "duration"    # J

    .line 344
    sget-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, p1, v1}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v2

    .line 346
    .local v2, "len":I
    new-instance v3, Ljava/lang/String;

    sget-object v4, Landroid/util/TimeUtils;->sFormatStr:[C

    invoke-direct {v3, v4, v1, v2}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0

    return-object v3

    .line 347
    .end local v2    # "len":I
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public static formatDuration(JJLjava/io/PrintWriter;)V
    .registers 8
    .param p0, "time"    # J
    .param p2, "now"    # J
    .param p4, "pw"    # Ljava/io/PrintWriter;

    .line 367
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_c

    .line 368
    const-string v0, "--"

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 369
    return-void

    .line 371
    :cond_c
    sub-long v0, p0, p2

    const/4 v2, 0x0

    invoke-static {v0, v1, p4, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 372
    return-void
.end method

.method public static formatDuration(JJLjava/lang/StringBuilder;)V
    .registers 8
    .param p0, "time"    # J
    .param p2, "now"    # J
    .param p4, "sb"    # Ljava/lang/StringBuilder;

    .line 358
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_c

    .line 359
    const-string v0, "--"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    return-void

    .line 362
    :cond_c
    sub-long v0, p0, p2

    const/4 v2, 0x0

    invoke-static {v0, v1, p4, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;I)V

    .line 363
    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;)V
    .registers 4
    .param p0, "duration"    # J
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 353
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 354
    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;I)V
    .registers 9
    .param p0, "duration"    # J
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "fieldLen"    # I

    .line 335
    sget-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    .line 336
    :try_start_3
    invoke-static {p0, p1, p3}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v1

    .line 337
    .local v1, "len":I
    new-instance v2, Ljava/lang/String;

    sget-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 338
    .end local v1    # "len":I
    monitor-exit v0

    .line 339
    return-void

    .line 338
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;)V
    .registers 7
    .param p0, "duration"    # J
    .param p2, "builder"    # Ljava/lang/StringBuilder;

    .line 318
    sget-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    .line 319
    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, p1, v1}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v2

    .line 320
    .local v2, "len":I
    sget-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    invoke-virtual {p2, v3, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 321
    nop

    .end local v2    # "len":I
    monitor-exit v0

    .line 322
    return-void

    .line 321
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;I)V
    .registers 8
    .param p0, "duration"    # J
    .param p2, "builder"    # Ljava/lang/StringBuilder;
    .param p3, "fieldLen"    # I

    .line 326
    sget-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    .line 327
    :try_start_3
    invoke-static {p0, p1, p3}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v1

    .line 328
    .local v1, "len":I
    sget-object v2, Landroid/util/TimeUtils;->sFormatStr:[C

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 329
    nop

    .end local v1    # "len":I
    monitor-exit v0

    .line 330
    return-void

    .line 329
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private static formatDurationLocked(JI)I
    .registers 30
    .param p0, "duration"    # J
    .param p2, "fieldLen"    # I

    .line 246
    move-wide/from16 v0, p0

    move/from16 v2, p2

    sget-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    array-length v3, v3

    if-ge v3, v2, :cond_d

    .line 247
    new-array v3, v2, [C

    sput-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    .line 250
    :cond_d
    sget-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    .line 252
    .local v3, "formatStr":[C
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    const/16 v7, 0x20

    if-nez v6, :cond_29

    .line 253
    const/4 v4, 0x0

    .line 254
    .local v4, "pos":I
    add-int/lit8 v2, v2, -0x1

    .line 255
    .end local p2    # "fieldLen":I
    .local v2, "fieldLen":I
    :goto_1a
    if-ge v4, v2, :cond_22

    .line 256
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .local v5, "pos":I
    aput-char v7, v3, v4

    move v4, v5

    goto :goto_1a

    .line 258
    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    :cond_22
    const/16 v5, 0x30

    aput-char v5, v3, v4

    .line 259
    add-int/lit8 v5, v4, 0x1

    return v5

    .line 263
    .end local v2    # "fieldLen":I
    .end local v4    # "pos":I
    .restart local p2    # "fieldLen":I
    :cond_29
    cmp-long v4, v0, v4

    if-lez v4, :cond_31

    .line 264
    const/16 v4, 0x2b

    move v10, v4

    .local v4, "prefix":C
    goto :goto_35

    .line 266
    .end local v4    # "prefix":C
    :cond_31
    const/16 v4, 0x2d

    .line 267
    .restart local v4    # "prefix":C
    neg-long v0, v0

    move v10, v4

    .line 270
    .end local v4    # "prefix":C
    .end local p0    # "duration":J
    .local v0, "duration":J
    .local v10, "prefix":C
    :goto_35
    const-wide/16 v4, 0x3e8

    rem-long v8, v0, v4

    long-to-int v11, v8

    .line 271
    .local v11, "millis":I
    div-long v4, v0, v4

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 272
    .local v4, "seconds":I
    const/4 v5, 0x0

    .local v5, "days":I
    const/4 v6, 0x0

    .local v6, "hours":I
    const/4 v8, 0x0

    .line 274
    .local v8, "minutes":I
    const v9, 0x15180

    if-lt v4, v9, :cond_50

    .line 275
    div-int v5, v4, v9

    .line 276
    mul-int/2addr v9, v5

    sub-int/2addr v4, v9

    move v12, v5

    goto :goto_51

    .line 274
    :cond_50
    move v12, v5

    .line 278
    .end local v5    # "days":I
    .local v12, "days":I
    :goto_51
    const/16 v5, 0xe10

    if-lt v4, v5, :cond_5c

    .line 279
    div-int/lit16 v6, v4, 0xe10

    .line 280
    mul-int/lit16 v5, v6, 0xe10

    sub-int/2addr v4, v5

    move v13, v6

    goto :goto_5d

    .line 278
    :cond_5c
    move v13, v6

    .line 282
    .end local v6    # "hours":I
    .local v13, "hours":I
    :goto_5d
    const/16 v5, 0x3c

    if-lt v4, v5, :cond_69

    .line 283
    div-int/lit8 v8, v4, 0x3c

    .line 284
    mul-int/lit8 v5, v8, 0x3c

    sub-int/2addr v4, v5

    move v14, v4

    move v15, v8

    goto :goto_6b

    .line 282
    :cond_69
    move v14, v4

    move v15, v8

    .line 287
    .end local v4    # "seconds":I
    .end local v8    # "minutes":I
    .local v14, "seconds":I
    .local v15, "minutes":I
    :goto_6b
    const/4 v4, 0x0

    .line 289
    .local v4, "pos":I
    const/16 v16, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_a8

    .line 290
    invoke-static {v12, v6, v8, v8}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v5

    .line 291
    .local v5, "myLen":I
    if-lez v5, :cond_7a

    move v8, v6

    :cond_7a
    invoke-static {v13, v6, v8, v9}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v5, v8

    .line 292
    if-lez v5, :cond_83

    move v8, v6

    goto :goto_84

    :cond_83
    const/4 v8, 0x0

    :goto_84
    invoke-static {v15, v6, v8, v9}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v5, v8

    .line 293
    if-lez v5, :cond_8d

    move v8, v6

    goto :goto_8e

    :cond_8d
    const/4 v8, 0x0

    :goto_8e
    invoke-static {v14, v6, v8, v9}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v5, v8

    .line 294
    if-lez v5, :cond_98

    move/from16 v8, v16

    goto :goto_99

    :cond_98
    const/4 v8, 0x0

    :goto_99
    invoke-static {v11, v9, v6, v8}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v8, v6

    add-int/2addr v5, v8

    .line 295
    :goto_9f
    if-ge v5, v2, :cond_a8

    .line 296
    aput-char v7, v3, v4

    .line 297
    add-int/lit8 v4, v4, 0x1

    .line 298
    add-int/lit8 v5, v5, 0x1

    goto :goto_9f

    .line 302
    .end local v5    # "myLen":I
    :cond_a8
    aput-char v10, v3, v4

    .line 303
    add-int/lit8 v17, v4, 0x1

    .line 305
    .end local v4    # "pos":I
    .local v17, "pos":I
    move/from16 v8, v17

    .line 306
    .local v8, "start":I
    if-eqz v2, :cond_b2

    move v4, v6

    goto :goto_b3

    :cond_b2
    const/4 v4, 0x0

    :goto_b3
    move/from16 v18, v4

    .line 307
    .local v18, "zeropad":Z
    const/16 v7, 0x64

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v4, v3

    move v5, v12

    move/from16 v21, v6

    move v6, v7

    move/from16 v7, v17

    move/from16 v22, v8

    const/16 v23, 0x0

    .end local v8    # "start":I
    .local v22, "start":I
    move/from16 v8, v19

    move/from16 v19, v9

    move/from16 v9, v20

    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v9

    .line 308
    .end local v17    # "pos":I
    .local v9, "pos":I
    const/16 v6, 0x68

    move/from16 v8, v22

    .end local v22    # "start":I
    .restart local v8    # "start":I
    if-eq v9, v8, :cond_d9

    move/from16 v17, v21

    goto :goto_db

    :cond_d9
    move/from16 v17, v23

    :goto_db
    if-eqz v18, :cond_e0

    move/from16 v20, v19

    goto :goto_e2

    :cond_e0
    move/from16 v20, v23

    :goto_e2
    move-object v4, v3

    move v5, v13

    move v7, v9

    move/from16 v24, v8

    .end local v8    # "start":I
    .local v24, "start":I
    move/from16 v8, v17

    move/from16 v17, v9

    .end local v9    # "pos":I
    .restart local v17    # "pos":I
    move/from16 v9, v20

    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v9

    .line 309
    .end local v17    # "pos":I
    .restart local v9    # "pos":I
    const/16 v6, 0x6d

    move/from16 v8, v24

    .end local v24    # "start":I
    .restart local v8    # "start":I
    if-eq v9, v8, :cond_fa

    move/from16 v17, v21

    goto :goto_fc

    :cond_fa
    move/from16 v17, v23

    :goto_fc
    if-eqz v18, :cond_101

    move/from16 v20, v19

    goto :goto_103

    :cond_101
    move/from16 v20, v23

    :goto_103
    move-object v4, v3

    move v5, v15

    move v7, v9

    move/from16 v25, v8

    .end local v8    # "start":I
    .local v25, "start":I
    move/from16 v8, v17

    move/from16 v17, v9

    .end local v9    # "pos":I
    .restart local v17    # "pos":I
    move/from16 v9, v20

    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v9

    .line 310
    .end local v17    # "pos":I
    .restart local v9    # "pos":I
    const/16 v6, 0x73

    move/from16 v8, v25

    .end local v25    # "start":I
    .restart local v8    # "start":I
    if-eq v9, v8, :cond_119

    goto :goto_11b

    :cond_119
    move/from16 v21, v23

    :goto_11b
    if-eqz v18, :cond_11e

    goto :goto_120

    :cond_11e
    move/from16 v19, v23

    :goto_120
    move-object v4, v3

    move v5, v14

    move v7, v9

    move/from16 v26, v8

    .end local v8    # "start":I
    .local v26, "start":I
    move/from16 v8, v21

    move/from16 v17, v9

    .end local v9    # "pos":I
    .restart local v17    # "pos":I
    move/from16 v9, v19

    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v9

    .line 311
    .end local v17    # "pos":I
    .restart local v9    # "pos":I
    const/16 v6, 0x6d

    const/4 v8, 0x1

    if-eqz v18, :cond_139

    move/from16 v7, v26

    .end local v26    # "start":I
    .local v7, "start":I
    if-eq v9, v7, :cond_13b

    goto :goto_13d

    .end local v7    # "start":I
    .restart local v26    # "start":I
    :cond_139
    move/from16 v7, v26

    .end local v26    # "start":I
    .restart local v7    # "start":I
    :cond_13b
    move/from16 v16, v23

    :goto_13d
    move-object v4, v3

    move v5, v11

    move/from16 v17, v7

    .end local v7    # "start":I
    .local v17, "start":I
    move v7, v9

    move/from16 v19, v9

    .end local v9    # "pos":I
    .local v19, "pos":I
    move/from16 v9, v16

    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v4

    .line 312
    .end local v19    # "pos":I
    .restart local v4    # "pos":I
    const/16 v5, 0x73

    aput-char v5, v3, v4

    .line 313
    add-int/lit8 v5, v4, 0x1

    return v5
.end method

.method public static formatForLogging(J)Ljava/lang/String;
    .registers 4
    .param p0, "millis"    # J

    .line 417
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_a

    .line 418
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 420
    :cond_a
    sget-object v0, Landroid/util/TimeUtils;->sLoggingFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatRealtime(J)Ljava/lang/String;
    .registers 4
    .param p0, "time"    # J

    .line 381
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Landroid/util/TimeUtils;->formatTime(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatTime(JJ)Ljava/lang/String;
    .registers 9
    .param p0, "time"    # J
    .param p2, "referenceTime"    # J

    .line 386
    sub-long v0, p0, p2

    .line 387
    .local v0, "diff":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_26

    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 390
    :cond_26
    cmp-long v2, v0, v2

    if-gez v2, :cond_49

    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-long v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms ago)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 393
    :cond_49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (now)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static formatUptime(J)Ljava/lang/String;
    .registers 4
    .param p0, "time"    # J

    .line 376
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Landroid/util/TimeUtils;->formatTime(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIcuTimeZone(IZJLjava/lang/String;)Landroid/icu/util/TimeZone;
    .registers 14
    .param p0, "offsetMillis"    # I
    .param p1, "isDst"    # Z
    .param p2, "whenMillis"    # J
    .param p4, "countryIso"    # Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    if-nez p4, :cond_4

    .line 102
    return-object v0

    .line 105
    :cond_4
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v7

    .line 107
    .local v7, "bias":Landroid/icu/util/TimeZone;
    invoke-static {}, Lcom/android/i18n/timezone/TimeZoneFinder;->getInstance()Lcom/android/i18n/timezone/TimeZoneFinder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/android/i18n/timezone/TimeZoneFinder;->lookupCountryTimeZones(Ljava/lang/String;)Lcom/android/i18n/timezone/CountryTimeZones;

    move-result-object v8

    .line 108
    .local v8, "countryTimeZones":Lcom/android/i18n/timezone/CountryTimeZones;
    if-nez v8, :cond_13

    .line 109
    return-object v0

    .line 111
    :cond_13
    move-object v1, v8

    move-wide v2, p2

    move-object v4, v7

    move v5, p0

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/i18n/timezone/CountryTimeZones;->lookupByOffsetWithBias(JLandroid/icu/util/TimeZone;IZ)Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;

    move-result-object v1

    .line 113
    .local v1, "offsetResult":Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;
    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v0

    :cond_22
    return-object v0
.end method

.method public static getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;
    .registers 7
    .param p0, "offset"    # I
    .param p1, "dst"    # Z
    .param p2, "when"    # J
    .param p4, "country"    # Ljava/lang/String;

    .line 88
    invoke-static {p0, p1, p2, p3, p4}, Landroid/util/TimeUtils;->getIcuTimeZone(IZJLjava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    .line 91
    .local v0, "icuTimeZone":Landroid/icu/util/TimeZone;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return-object v1
.end method

.method public static getTimeZoneDatabaseVersion()Ljava/lang/String;
    .registers 1

    .line 166
    invoke-static {}, Lcom/android/i18n/timezone/ZoneInfoDb;->getInstance()Lcom/android/i18n/timezone/ZoneInfoDb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/i18n/timezone/ZoneInfoDb;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeZoneIdsForCountryCode(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p0, "countryCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 129
    if-eqz p0, :cond_41

    .line 132
    invoke-static {}, Lcom/android/i18n/timezone/TimeZoneFinder;->getInstance()Lcom/android/i18n/timezone/TimeZoneFinder;

    move-result-object v0

    .line 133
    .local v0, "timeZoneFinder":Lcom/android/i18n/timezone/TimeZoneFinder;
    nop

    .line 134
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/timezone/TimeZoneFinder;->lookupCountryTimeZones(Ljava/lang/String;)Lcom/android/i18n/timezone/CountryTimeZones;

    move-result-object v1

    .line 135
    .local v1, "countryTimeZones":Lcom/android/i18n/timezone/CountryTimeZones;
    if-nez v1, :cond_13

    .line 136
    const/4 v2, 0x0

    return-object v2

    .line 139
    :cond_13
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v2, "timeZoneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Lcom/android/i18n/timezone/CountryTimeZones;->getTimeZoneMappings()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    .line 141
    .local v4, "timeZoneMapping":Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;
    sget-object v5, Landroid/util/TimeUtils;->MIN_USE_DATE_OF_TIMEZONE:Ljava/time/Instant;

    invoke-virtual {v4, v5}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->isShownInPickerAt(Ljava/time/Instant;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 142
    invoke-virtual {v4}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->getTimeZoneId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    .end local v4    # "timeZoneMapping":Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;
    :cond_3b
    goto :goto_20

    .line 145
    :cond_3c
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 130
    .end local v0    # "timeZoneFinder":Lcom/android/i18n/timezone/TimeZoneFinder;
    .end local v1    # "countryTimeZones":Lcom/android/i18n/timezone/CountryTimeZones;
    .end local v2    # "timeZoneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_41
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "countryCode == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isTimeBetween(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/LocalTime;)Z
    .registers 4
    .param p0, "reference"    # Ljava/time/LocalTime;
    .param p1, "start"    # Ljava/time/LocalTime;
    .param p2, "end"    # Ljava/time/LocalTime;

    .line 444
    invoke-virtual {p0, p1}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, p2}, Ljava/time/LocalTime;->isAfter(Ljava/time/LocalTime;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 446
    :cond_c
    invoke-virtual {p0, p2}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0, p1}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1, p2}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 448
    :cond_1e
    invoke-virtual {p0, p2}, Ljava/time/LocalTime;->isAfter(Ljava/time/LocalTime;)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0, p1}, Ljava/time/LocalTime;->isAfter(Ljava/time/LocalTime;)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p1, p2}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 449
    :cond_30
    const/4 v0, 0x0

    return v0

    .line 451
    :cond_32
    const/4 v0, 0x1

    return v0
.end method

.method public static logTimeOfDay(J)Ljava/lang/String;
    .registers 10
    .param p0, "millis"    # J

    .line 406
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 407
    .local v6, "c":Ljava/util/Calendar;
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1e

    .line 408
    invoke-virtual {v6, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 409
    const-string v7, "%tm-%td %tH:%tM:%tS.%tL"

    move-object v0, v6

    move-object v1, v6

    move-object v2, v6

    move-object v3, v6

    move-object v4, v6

    move-object v5, v6

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 411
    :cond_1e
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static printFieldLocked([CICIZI)I
    .registers 11
    .param p0, "formatStr"    # [C
    .param p1, "amt"    # I
    .param p2, "suffix"    # C
    .param p3, "pos"    # I
    .param p4, "always"    # Z
    .param p5, "zeropad"    # I

    .line 207
    if-nez p4, :cond_4

    if-lez p1, :cond_64

    .line 208
    :cond_4
    move v0, p3

    .line 209
    .local v0, "startPos":I
    const/16 v1, 0x3e7

    if-le p1, v1, :cond_2d

    .line 210
    const/4 v1, 0x0

    .line 211
    .local v1, "tmp":I
    :goto_a
    if-eqz p1, :cond_1d

    sget-object v2, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    array-length v3, v2

    if-ge v1, v3, :cond_1d

    .line 212
    rem-int/lit8 v3, p1, 0xa

    .line 213
    .local v3, "dig":I
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    aput-char v4, v2, v1

    .line 214
    add-int/lit8 v1, v1, 0x1

    .line 215
    div-int/lit8 p1, p1, 0xa

    .line 216
    .end local v3    # "dig":I
    goto :goto_a

    .line 217
    :cond_1d
    add-int/lit8 v1, v1, -0x1

    .line 218
    :goto_1f
    if-ltz v1, :cond_2c

    .line 219
    sget-object v2, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    aget-char v2, v2, v1

    aput-char v2, p0, p3

    .line 220
    add-int/lit8 p3, p3, 0x1

    .line 221
    add-int/lit8 v1, v1, -0x1

    goto :goto_1f

    .line 223
    .end local v1    # "tmp":I
    :cond_2c
    goto :goto_60

    .line 224
    :cond_2d
    if-eqz p4, :cond_32

    const/4 v1, 0x3

    if-ge p5, v1, :cond_36

    :cond_32
    const/16 v1, 0x63

    if-le p1, v1, :cond_42

    .line 225
    :cond_36
    div-int/lit8 v1, p1, 0x64

    .line 226
    .local v1, "dig":I
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    .line 227
    add-int/lit8 p3, p3, 0x1

    .line 228
    mul-int/lit8 v2, v1, 0x64

    sub-int/2addr p1, v2

    .line 230
    .end local v1    # "dig":I
    :cond_42
    if-eqz p4, :cond_47

    const/4 v1, 0x2

    if-ge p5, v1, :cond_4d

    :cond_47
    const/16 v1, 0x9

    if-gt p1, v1, :cond_4d

    if-eq v0, p3, :cond_59

    .line 231
    :cond_4d
    div-int/lit8 v1, p1, 0xa

    .line 232
    .restart local v1    # "dig":I
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    .line 233
    add-int/lit8 p3, p3, 0x1

    .line 234
    mul-int/lit8 v2, v1, 0xa

    sub-int/2addr p1, v2

    .line 236
    .end local v1    # "dig":I
    :cond_59
    add-int/lit8 v1, p1, 0x30

    int-to-char v1, v1

    aput-char v1, p0, p3

    .line 237
    add-int/lit8 p3, p3, 0x1

    .line 239
    :goto_60
    aput-char p2, p0, p3

    .line 240
    add-int/lit8 p3, p3, 0x1

    .line 242
    .end local v0    # "startPos":I
    :cond_64
    return p3
.end method
