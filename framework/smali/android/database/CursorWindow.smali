.class public Landroid/database/CursorWindow;
.super Landroid/database/sqlite/SQLiteClosable;
.source "CursorWindow.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/database/CursorWindow;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATS_TAG:Ljava/lang/String; = "CursorWindowStats"

.field private static sCursorWindowSize:I


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mFilledRows:I

.field private final mName:Ljava/lang/String;

.field private mStartPos:I

.field private mTotalRows:I

.field public mWindowPtr:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    const/4 v0, -0x1

    sput v0, Landroid/database/CursorWindow;->sCursorWindowSize:I

    .line 725
    new-instance v0, Landroid/database/CursorWindow$1;

    invoke-direct {v0}, Landroid/database/CursorWindow$1;-><init>()V

    sput-object v0, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "source"    # Landroid/os/Parcel;

    .line 182
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 64
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 184
    invoke-static {p1}, Landroid/database/CursorWindow;->nativeCreateFromParcel(Landroid/os/Parcel;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    .line 185
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_27

    .line 188
    invoke-static {v1, v2}, Landroid/database/CursorWindow;->nativeGetName(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    .line 189
    const-string v1, "CursorWindow.close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 190
    return-void

    .line 186
    :cond_27
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/database/CursorWindow-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/database/CursorWindow;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 132
    invoke-static {}, Landroid/database/CursorWindow;->getCursorWindowSize()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;J)V

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "windowSizeBytes"    # J

    .line 150
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 64
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 151
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_39

    .line 154
    const/4 v3, 0x0

    iput v3, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 155
    iput v3, p0, Landroid/database/CursorWindow;->mTotalRows:I

    .line 156
    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1e

    move-object v3, p1

    goto :goto_20

    :cond_1e
    const-string v3, "<unnamed>"

    :goto_20
    iput-object v3, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    .line 157
    long-to-int v4, p2

    invoke-static {v3, v4}, Landroid/database/CursorWindow;->nativeCreate(Ljava/lang/String;I)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    .line 158
    cmp-long v1, v3, v1

    if-eqz v1, :cond_33

    .line 161
    const-string v1, "CursorWindow.close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 162
    return-void

    .line 159
    :cond_33
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 152
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Window size cannot be less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Z)V
    .registers 4
    .param p1, "localWindow"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 179
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method private dispose()V
    .registers 6

    .line 205
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_7

    .line 206
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 208
    :cond_7
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_14

    .line 209
    invoke-static {v0, v1}, Landroid/database/CursorWindow;->nativeDispose(J)V

    .line 210
    iput-wide v2, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    .line 212
    :cond_14
    return-void
.end method

.method private static getCursorWindowSize()I
    .registers 2

    .line 764
    sget v0, Landroid/database/CursorWindow;->sCursorWindowSize:I

    if-gez v0, :cond_13

    .line 767
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    sput v0, Landroid/database/CursorWindow;->sCursorWindowSize:I

    .line 770
    :cond_13
    sget v0, Landroid/database/CursorWindow;->sCursorWindowSize:I

    return v0
.end method

.method private static native nativeAllocRow(J)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativeClear(J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativeCopyStringToBuffer(JIILandroid/database/CharArrayBuffer;)V
.end method

.method private static native nativeCreate(Ljava/lang/String;I)J
.end method

.method private static native nativeCreateFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeFreeLastRow(J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativeGetBlob(JII)[B
.end method

.method private static native nativeGetDouble(JII)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativeGetLong(JII)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativeGetName(J)Ljava/lang/String;
.end method

.method private static native nativeGetNumRows(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativeGetString(JII)Ljava/lang/String;
.end method

.method private static native nativeGetType(JII)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativePutBlob(J[BII)Z
.end method

.method private static native nativePutDouble(JDII)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativePutLong(JJII)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativePutNull(JII)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativePutString(JLjava/lang/String;II)Z
.end method

.method private static native nativeSetNumColumns(JI)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Landroid/database/CursorWindow;
    .registers 2
    .param p0, "p"    # Landroid/os/Parcel;

    .line 737
    sget-object v0, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/CursorWindow;

    return-object v0
.end method


# virtual methods
.method public allocRow()Z
    .registers 3

    .line 306
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 308
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1}, Landroid/database/CursorWindow;->nativeAllocRow(J)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 310
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 308
    return v0

    .line 310
    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 311
    throw v0
.end method

.method public clear()V
    .registers 3

    .line 231
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 233
    const/4 v0, 0x0

    :try_start_4
    iput v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 234
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1}, Landroid/database/CursorWindow;->nativeClear(J)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    .line 236
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 237
    nop

    .line 238
    return-void

    .line 236
    :catchall_10
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 237
    throw v0
.end method

.method public copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V
    .registers 7
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "buffer"    # Landroid/database/CharArrayBuffer;

    .line 514
    if-eqz p3, :cond_18

    .line 517
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 519
    :try_start_5
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v2, p1, v2

    invoke-static {v0, v1, v2, p2, p3}, Landroid/database/CursorWindow;->nativeCopyStringToBuffer(JIILandroid/database/CharArrayBuffer;)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_13

    .line 521
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 522
    nop

    .line 523
    return-void

    .line 521
    :catchall_13
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 522
    throw v0

    .line 515
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CharArrayBuffer should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public describeContents()I
    .registers 2

    .line 741
    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 195
    :try_start_0
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_7

    .line 196
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 198
    :cond_7
    invoke-direct {p0}, Landroid/database/CursorWindow;->dispose()V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_f

    .line 200
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 201
    nop

    .line 202
    return-void

    .line 200
    :catchall_f
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 201
    throw v0
.end method

.method public freeLastRow()V
    .registers 3

    .line 318
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 320
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1}, Landroid/database/CursorWindow;->nativeFreeLastRow(J)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    .line 322
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 323
    nop

    .line 324
    return-void

    .line 322
    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 323
    throw v0
.end method

.method public getBlob(II)[B
    .registers 6
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 439
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 441
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v2, p1, v2

    invoke-static {v0, v1, v2, p2}, Landroid/database/CursorWindow;->nativeGetBlob(JII)[B

    move-result-object v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    .line 443
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 441
    return-object v0

    .line 443
    :catchall_11
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 444
    throw v0
.end method

.method public getDouble(II)D
    .registers 6
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 580
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 582
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v2, p1, v2

    invoke-static {v0, v1, v2, p2}, Landroid/database/CursorWindow;->nativeGetDouble(JII)D

    move-result-wide v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    .line 584
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 582
    return-wide v0

    .line 584
    :catchall_11
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 585
    throw v0
.end method

.method public getFilledRows()I
    .registers 2

    .line 808
    iget v0, p0, Landroid/database/CursorWindow;->mFilledRows:I

    return v0
.end method

.method public getFloat(II)F
    .registers 5
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 633
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getDouble(II)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getInt(II)I
    .registers 5
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 617
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(II)J
    .registers 6
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 548
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 550
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v2, p1, v2

    invoke-static {v0, v1, v2, p2}, Landroid/database/CursorWindow;->nativeGetLong(JII)J

    move-result-wide v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    .line 552
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 550
    return-wide v0

    .line 552
    :catchall_11
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 553
    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 219
    iget-object v0, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumRows()I
    .registers 3

    .line 272
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 274
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1}, Landroid/database/CursorWindow;->nativeGetNumRows(J)I

    move-result v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 276
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 274
    return v0

    .line 276
    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 277
    throw v0
.end method

.method public getShort(II)S
    .registers 5
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 601
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getStartPosition()I
    .registers 2

    .line 250
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    return v0
.end method

.method public getString(II)Ljava/lang/String;
    .registers 6
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 474
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 476
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v2, p1, v2

    invoke-static {v0, v1, v2, p2}, Landroid/database/CursorWindow;->nativeGetString(JII)Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    .line 478
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 476
    return-object v0

    .line 478
    :catchall_11
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 479
    throw v0
.end method

.method public getTotalRows()I
    .registers 2

    .line 789
    iget v0, p0, Landroid/database/CursorWindow;->mTotalRows:I

    return v0
.end method

.method public getType(II)I
    .registers 6
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 409
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 411
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v2, p1, v2

    invoke-static {v0, v1, v2, p2}, Landroid/database/CursorWindow;->nativeGetType(JII)I

    move-result v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    .line 413
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 411
    return v0

    .line 413
    :catchall_11
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 414
    throw v0
.end method

.method public isBlob(II)Z
    .registers 5
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 352
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    .line 353
    .local v0, "type":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_c

    if-nez v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v1, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v1, 0x1

    :goto_d
    return v1
.end method

.method public isFloat(II)Z
    .registers 5
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 381
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isLong(II)Z
    .registers 5
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 367
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public isNull(II)Z
    .registers 4
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 337
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isString(II)Z
    .registers 5
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 396
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    .line 397
    .local v0, "type":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    if-nez v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v1, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v1, 0x1

    :goto_d
    return v1
.end method

.method protected onAllReferencesReleased()V
    .registers 1

    .line 760
    invoke-direct {p0}, Landroid/database/CursorWindow;->dispose()V

    .line 761
    return-void
.end method

.method public putBlob([BII)Z
    .registers 7
    .param p1, "value"    # [B
    .param p2, "row"    # I
    .param p3, "column"    # I

    .line 646
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 648
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v2, p2, v2

    invoke-static {v0, v1, p1, v2, p3}, Landroid/database/CursorWindow;->nativePutBlob(J[BII)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    .line 650
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 648
    return v0

    .line 650
    :catchall_11
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 651
    throw v0
.end method

.method public putDouble(DII)Z
    .registers 11
    .param p1, "value"    # D
    .param p3, "row"    # I
    .param p4, "column"    # I

    .line 701
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 703
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v4, p3, v2

    move-wide v2, p1

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/database/CursorWindow;->nativePutDouble(JDII)Z

    move-result v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    .line 705
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 703
    return v0

    .line 705
    :catchall_13
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 706
    throw v0
.end method

.method public putLong(JII)Z
    .registers 11
    .param p1, "value"    # J
    .param p3, "row"    # I
    .param p4, "column"    # I

    .line 682
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 684
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v4, p3, v2

    move-wide v2, p1

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/database/CursorWindow;->nativePutLong(JJII)Z

    move-result v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    .line 686
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 684
    return v0

    .line 686
    :catchall_13
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 687
    throw v0
.end method

.method public putNull(II)Z
    .registers 6
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 717
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 719
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v2, p1, v2

    invoke-static {v0, v1, v2, p2}, Landroid/database/CursorWindow;->nativePutNull(JII)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    .line 721
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 719
    return v0

    .line 721
    :catchall_11
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 722
    throw v0
.end method

.method public putString(Ljava/lang/String;II)Z
    .registers 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "row"    # I
    .param p3, "column"    # I

    .line 664
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 666
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v2, p2, v2

    invoke-static {v0, v1, p1, v2, p3}, Landroid/database/CursorWindow;->nativePutString(JLjava/lang/String;II)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    .line 668
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 666
    return v0

    .line 668
    :catchall_11
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 669
    throw v0
.end method

.method public setFilledRows(I)V
    .registers 2
    .param p1, "rows"    # I

    .line 798
    iput p1, p0, Landroid/database/CursorWindow;->mFilledRows:I

    .line 799
    return-void
.end method

.method public setNumColumns(I)Z
    .registers 4
    .param p1, "columnNum"    # I

    .line 292
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 294
    :try_start_3
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1, p1}, Landroid/database/CursorWindow;->nativeSetNumColumns(JI)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 296
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 294
    return v0

    .line 296
    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 297
    throw v0
.end method

.method public setStartPosition(I)V
    .registers 2
    .param p1, "pos"    # I

    .line 263
    iput p1, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 264
    return-void
.end method

.method public setTotalRows(I)V
    .registers 2
    .param p1, "rows"    # I

    .line 779
    iput p1, p0, Landroid/database/CursorWindow;->mTotalRows:I

    .line 780
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/database/CursorWindow;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 745
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 747
    :try_start_3
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 748
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1, p1}, Landroid/database/CursorWindow;->nativeWriteToParcel(JLandroid/os/Parcel;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_19

    .line 750
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 751
    nop

    .line 753
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_18

    .line 754
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 756
    :cond_18
    return-void

    .line 750
    :catchall_19
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 751
    throw v0
.end method
