.class public Landroid/os/SystemProperties;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SystemProperties$Handle;
    }
.end annotation


# static fields
.field public static final PROP_NAME_MAX:I = 0x7fffffff

.field public static final PROP_VALUE_MAX:I = 0x5b

.field private static final TAG:Ljava/lang/String; = "SystemProperties"

.field private static final TRACK_KEY_ACCESS:Z

.field private static final sChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRoReads:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/MutableInt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$smnative_get(J)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->native_get(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smnative_get_boolean(JZ)Z
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/os/SystemProperties;->native_get_boolean(JZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnative_get_int(JI)I
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/os/SystemProperties;->native_get_int(JI)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnative_get_long(JJ)J
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/os/SystemProperties;->native_get_long(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/os/SystemProperties;->sChangeCallbacks:Ljava/util/ArrayList;

    .line 74
    const/4 v0, 0x0

    sput-object v0, Landroid/os/SystemProperties;->sRoReads:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    return-void
.end method

.method public static addChangeCallback(Ljava/lang/Runnable;)V
    .registers 3
    .param p0, "callback"    # Ljava/lang/Runnable;

    .line 247
    sget-object v0, Landroid/os/SystemProperties;->sChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 248
    :try_start_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_c

    .line 249
    invoke-static {}, Landroid/os/SystemProperties;->native_add_change_callback()V

    .line 251
    :cond_c
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    monitor-exit v0

    .line 253
    return-void

    .line 252
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private static callChangeCallbacks()V
    .registers 7

    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    sget-object v1, Landroid/os/SystemProperties;->sChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 275
    :try_start_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_c

    .line 276
    monitor-exit v1

    return-void

    .line 278
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v2

    .line 279
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_3d

    .line 280
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 282
    .local v1, "token":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    :try_start_18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_38

    if-ge v3, v4, :cond_33

    .line 284
    :try_start_1e
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_28

    .line 289
    goto :goto_30

    .line 285
    :catchall_28
    move-exception v4

    .line 288
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_29
    const-string v5, "SystemProperties"

    const-string v6, "Exception in SystemProperties change callback"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_38

    .line 282
    .end local v4    # "t":Ljava/lang/Throwable;
    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 292
    .end local v3    # "i":I
    :cond_33
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 293
    nop

    .line 294
    return-void

    .line 292
    :catchall_38
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 293
    throw v3

    .line 279
    .end local v1    # "token":J
    :catchall_3d
    move-exception v2

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v2
.end method

.method public static varargs digestOf([Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "keys"    # [Ljava/lang/String;

    .line 313
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 315
    :try_start_3
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 316
    .local v0, "digest":Ljava/security/MessageDigest;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_3c

    aget-object v3, p0, v2

    .line 317
    .local v3, "key":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 318
    .local v4, "item":Ljava/lang/String;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 316
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "item":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 320
    :cond_3c
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Llibcore/util/HexEncoding;->encodeToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1
    :try_end_48
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_48} :catch_49

    return-object v1

    .line 321
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :catch_49
    move-exception v0

    .line 322
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static find(Ljava/lang/String;)Landroid/os/SystemProperties$Handle;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;

    .line 337
    invoke-static {p0}, Landroid/os/SystemProperties;->native_find(Ljava/lang/String;)J

    move-result-wide v0

    .line 338
    .local v0, "nativeHandle":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_c

    .line 339
    return-object v3

    .line 341
    :cond_c
    new-instance v2, Landroid/os/SystemProperties$Handle;

    invoke-direct {v2, v0, v1, v3}, Landroid/os/SystemProperties$Handle;-><init>(JLandroid/os/SystemProperties$Handle-IA;)V

    return-object v2
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "key"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 149
    invoke-static {p0}, Landroid/os/SystemProperties;->native_get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 165
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->native_get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .registers 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 215
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->native_get_boolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .registers 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 180
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->native_get_int(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLong(Ljava/lang/String;J)J
    .registers 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 195
    invoke-static {p0, p1, p2}, Landroid/os/SystemProperties;->native_get_long(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static native native_add_change_callback()V
.end method

.method private static native native_find(Ljava/lang/String;)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native native_get(J)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native_get(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "key"    # Ljava/lang/String;

    .line 103
    const-string v0, ""

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->native_get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native native_get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native native_get_boolean(JZ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native native_get_boolean(Ljava/lang/String;Z)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native native_get_int(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native native_get_int(Ljava/lang/String;I)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native native_get_long(JJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native native_get_long(Ljava/lang/String;J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native native_report_sysprop_change()V
.end method

.method private static native native_set(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static onKeyAccess(Ljava/lang/String;)V
    .registers 1
    .param p0, "key"    # Ljava/lang/String;

    .line 78
    return-void
.end method

.method public static removeChangeCallback(Ljava/lang/Runnable;)V
    .registers 3
    .param p0, "callback"    # Ljava/lang/Runnable;

    .line 263
    sget-object v0, Landroid/os/SystemProperties;->sChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 264
    :try_start_3
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 265
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 267
    :cond_c
    monitor-exit v0

    .line 268
    return-void

    .line 267
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public static reportSyspropChanged()V
    .registers 0

    .line 302
    invoke-static {}, Landroid/os/SystemProperties;->native_report_sysprop_change()V

    .line 303
    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .line 229
    if-eqz p1, :cond_45

    const-string/jumbo v0, "ro."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_45

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x5b

    if-gt v0, v1, :cond_17

    goto :goto_45

    .line 231
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "value of system property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is longer than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_45
    :goto_45
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->native_set(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method
