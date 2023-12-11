.class public Landroid/os/HwBlob;
.super Ljava/lang/Object;
.source "HwBlob.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HwBlob"

.field private static final sNativeRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 450
    invoke-static {}, Landroid/os/HwBlob;->native_init()J

    move-result-wide v6

    .line 452
    .local v6, "freeFunction":J
    new-instance v8, Llibcore/util/NativeAllocationRegistry;

    .line 453
    const-class v0, Landroid/os/HwBlob;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-wide/16 v4, 0x80

    move-object v0, v8

    move-wide v2, v6

    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v8, Landroid/os/HwBlob;->sNativeRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 456
    .end local v6    # "freeFunction":J
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .param p1, "size"    # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-direct {p0, p1}, Landroid/os/HwBlob;->native_setup(I)V

    .line 40
    sget-object v0, Landroid/os/HwBlob;->sNativeRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/os/HwBlob;->mNativeContext:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 43
    return-void
.end method

.method private static final native native_init()J
.end method

.method private final native native_setup(I)V
.end method

.method public static wrapArray([Z)[Ljava/lang/Boolean;
    .registers 5
    .param p0, "array"    # [Z

    .line 346
    array-length v0, p0

    .line 347
    .local v0, "n":I
    new-array v1, v0, [Ljava/lang/Boolean;

    .line 348
    .local v1, "wrappedArray":[Ljava/lang/Boolean;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v0, :cond_11

    .line 349
    aget-boolean v3, p0, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 348
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 351
    .end local v2    # "i":I
    :cond_11
    return-object v1
.end method

.method public static wrapArray([B)[Ljava/lang/Byte;
    .registers 5
    .param p0, "array"    # [B

    .line 376
    array-length v0, p0

    .line 377
    .local v0, "n":I
    new-array v1, v0, [Ljava/lang/Byte;

    .line 378
    .local v1, "wrappedArray":[Ljava/lang/Byte;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v0, :cond_11

    .line 379
    aget-byte v3, p0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    .line 378
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 381
    .end local v2    # "i":I
    :cond_11
    return-object v1
.end method

.method public static wrapArray([D)[Ljava/lang/Double;
    .registers 6
    .param p0, "array"    # [D

    .line 436
    array-length v0, p0

    .line 437
    .local v0, "n":I
    new-array v1, v0, [Ljava/lang/Double;

    .line 438
    .local v1, "wrappedArray":[Ljava/lang/Double;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v0, :cond_11

    .line 439
    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    .line 438
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 441
    .end local v2    # "i":I
    :cond_11
    return-object v1
.end method

.method public static wrapArray([F)[Ljava/lang/Float;
    .registers 5
    .param p0, "array"    # [F

    .line 421
    array-length v0, p0

    .line 422
    .local v0, "n":I
    new-array v1, v0, [Ljava/lang/Float;

    .line 423
    .local v1, "wrappedArray":[Ljava/lang/Float;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v0, :cond_11

    .line 424
    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    .line 423
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 426
    .end local v2    # "i":I
    :cond_11
    return-object v1
.end method

.method public static wrapArray([I)[Ljava/lang/Integer;
    .registers 5
    .param p0, "array"    # [I

    .line 406
    array-length v0, p0

    .line 407
    .local v0, "n":I
    new-array v1, v0, [Ljava/lang/Integer;

    .line 408
    .local v1, "wrappedArray":[Ljava/lang/Integer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v0, :cond_11

    .line 409
    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 408
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 411
    .end local v2    # "i":I
    :cond_11
    return-object v1
.end method

.method public static wrapArray([J)[Ljava/lang/Long;
    .registers 6
    .param p0, "array"    # [J

    .line 361
    array-length v0, p0

    .line 362
    .local v0, "n":I
    new-array v1, v0, [Ljava/lang/Long;

    .line 363
    .local v1, "wrappedArray":[Ljava/lang/Long;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v0, :cond_11

    .line 364
    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 363
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 366
    .end local v2    # "i":I
    :cond_11
    return-object v1
.end method

.method public static wrapArray([S)[Ljava/lang/Short;
    .registers 5
    .param p0, "array"    # [S

    .line 391
    array-length v0, p0

    .line 392
    .local v0, "n":I
    new-array v1, v0, [Ljava/lang/Short;

    .line 393
    .local v1, "wrappedArray":[Ljava/lang/Short;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v0, :cond_11

    .line 394
    aget-short v3, p0, v2

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    .line 393
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 396
    .end local v2    # "i":I
    :cond_11
    return-object v1
.end method


# virtual methods
.method public final native copyToBoolArray(J[ZI)V
.end method

.method public final native copyToDoubleArray(J[DI)V
.end method

.method public final native copyToFloatArray(J[FI)V
.end method

.method public final native copyToInt16Array(J[SI)V
.end method

.method public final native copyToInt32Array(J[II)V
.end method

.method public final native copyToInt64Array(J[JI)V
.end method

.method public final native copyToInt8Array(J[BI)V
.end method

.method public final native getBool(J)Z
.end method

.method public final native getDouble(J)D
.end method

.method public final native getFieldHandle(J)J
.end method

.method public final native getFloat(J)F
.end method

.method public final native getInt16(J)S
.end method

.method public final native getInt32(J)I
.end method

.method public final native getInt64(J)J
.end method

.method public final native getInt8(J)B
.end method

.method public final native getString(J)Ljava/lang/String;
.end method

.method public final native handle()J
.end method

.method public final native putBlob(JLandroid/os/HwBlob;)V
.end method

.method public final native putBool(JZ)V
.end method

.method public final native putBoolArray(J[Z)V
.end method

.method public final native putDouble(JD)V
.end method

.method public final native putDoubleArray(J[D)V
.end method

.method public final native putFloat(JF)V
.end method

.method public final native putFloatArray(J[F)V
.end method

.method public final putHidlMemory(JLandroid/os/HidlMemory;)V
    .registers 8
    .param p1, "offset"    # J
    .param p3, "mem"    # Landroid/os/HidlMemory;

    .line 329
    const-wide/16 v0, 0x0

    add-long/2addr v0, p1

    invoke-virtual {p3}, Landroid/os/HidlMemory;->getHandle()Landroid/os/NativeHandle;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/HwBlob;->putNativeHandle(JLandroid/os/NativeHandle;)V

    .line 330
    const-wide/16 v0, 0x10

    add-long/2addr v0, p1

    invoke-virtual {p3}, Landroid/os/HidlMemory;->getSize()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 331
    const-wide/16 v0, 0x18

    add-long/2addr v0, p1

    invoke-virtual {p3}, Landroid/os/HidlMemory;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 332
    return-void
.end method

.method public final native putInt16(JS)V
.end method

.method public final native putInt16Array(J[S)V
.end method

.method public final native putInt32(JI)V
.end method

.method public final native putInt32Array(J[I)V
.end method

.method public final native putInt64(JJ)V
.end method

.method public final native putInt64Array(J[J)V
.end method

.method public final native putInt8(JB)V
.end method

.method public final native putInt8Array(J[B)V
.end method

.method public final native putNativeHandle(JLandroid/os/NativeHandle;)V
.end method

.method public final native putString(JLjava/lang/String;)V
.end method
