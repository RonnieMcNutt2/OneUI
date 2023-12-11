.class public final Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;
.super Ljava/lang/Object;
.source "BatteryStatsHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VarintParceler"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readLongArray(Landroid/os/Parcel;[J)V
    .registers 13
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "values"    # [J

    .line 2242
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2243
    .local v0, "in":I
    const/4 v1, 0x4

    .line 2244
    .local v1, "available":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    array-length v3, p2

    if-ge v2, v3, :cond_38

    .line 2245
    const-wide/16 v3, 0x0

    .line 2247
    .local v3, "result":J
    const/4 v5, 0x0

    .local v5, "shift":I
    :goto_c
    const/16 v6, 0x40

    if-ge v5, v6, :cond_2b

    .line 2248
    if-nez v1, :cond_17

    .line 2249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2250
    const/4 v1, 0x4

    .line 2252
    :cond_17
    int-to-byte v7, v0

    .line 2253
    .local v7, "b":B
    shr-int/lit8 v0, v0, 0x8

    .line 2254
    add-int/lit8 v1, v1, -0x1

    .line 2256
    and-int/lit8 v8, v7, 0x7f

    int-to-long v8, v8

    shl-long/2addr v8, v5

    or-long/2addr v3, v8

    .line 2257
    and-int/lit16 v8, v7, 0x80

    if-nez v8, :cond_28

    .line 2258
    aput-wide v3, p2, v2

    .line 2259
    goto :goto_2b

    .line 2247
    .end local v7    # "b":B
    :cond_28
    add-int/lit8 v5, v5, 0x7

    goto :goto_c

    .line 2262
    :cond_2b
    :goto_2b
    if-ge v5, v6, :cond_30

    .line 2244
    .end local v3    # "result":J
    .end local v5    # "shift":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 2263
    .restart local v3    # "result":J
    .restart local v5    # "shift":I
    :cond_30
    new-instance v6, Landroid/os/ParcelFormatException;

    const-string v7, "Invalid varint format"

    invoke-direct {v6, v7}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2266
    .end local v2    # "i":I
    .end local v3    # "result":J
    .end local v5    # "shift":I
    :cond_38
    return-void
.end method

.method public writeLongArray(Landroid/os/Parcel;[J)V
    .registers 14
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "values"    # [J

    .line 2211
    const/4 v0, 0x0

    .line 2212
    .local v0, "out":I
    const/4 v1, 0x0

    .line 2213
    .local v1, "shift":I
    array-length v2, p2

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_34

    aget-wide v4, p2, v3

    .line 2214
    .local v4, "value":J
    const/4 v6, 0x0

    .line 2215
    .local v6, "done":Z
    :goto_9
    if-nez v6, :cond_31

    .line 2217
    const-wide/16 v7, -0x80

    and-long/2addr v7, v4

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_18

    .line 2218
    long-to-int v7, v4

    int-to-byte v7, v7

    .line 2219
    .local v7, "b":B
    const/4 v6, 0x1

    goto :goto_20

    .line 2221
    .end local v7    # "b":B
    :cond_18
    long-to-int v7, v4

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 2222
    .restart local v7    # "b":B
    const/4 v8, 0x7

    ushr-long/2addr v4, v8

    .line 2224
    :goto_20
    const/16 v8, 0x20

    if-ne v1, v8, :cond_29

    .line 2225
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2226
    const/4 v1, 0x0

    .line 2227
    const/4 v0, 0x0

    .line 2229
    :cond_29
    and-int/lit16 v8, v7, 0xff

    shl-int/2addr v8, v1

    or-int/2addr v0, v8

    .line 2230
    nop

    .end local v7    # "b":B
    add-int/lit8 v1, v1, 0x8

    .line 2231
    goto :goto_9

    .line 2213
    .end local v4    # "value":J
    .end local v6    # "done":Z
    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2233
    :cond_34
    if-eqz v1, :cond_39

    .line 2234
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2236
    :cond_39
    return-void
.end method
