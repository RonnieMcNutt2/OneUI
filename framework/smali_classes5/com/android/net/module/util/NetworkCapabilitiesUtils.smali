.class public final Lcom/android/net/module/util/NetworkCapabilitiesUtils;
.super Ljava/lang/Object;
.source "NetworkCapabilitiesUtils.java"


# static fields
.field private static final DISPLAY_TRANSPORT_PRIORITIES:[I

.field private static final FORCE_RESTRICTED_CAPABILITIES:J

.field public static final RESTRICTED_CAPABILITIES:J

.field public static final UNRESTRICTED_CAPABILITIES:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 64
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_36

    sput-object v0, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->DISPLAY_TRANSPORT_PRIORITIES:[I

    .line 91
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_48

    invoke-static {v0}, Lcom/android/net/module/util/BitUtils;->packBitList([I)J

    move-result-wide v0

    sput-wide v0, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->RESTRICTED_CAPABILITIES:J

    .line 111
    const/16 v0, 0x16

    const/16 v1, 0x1a

    const/16 v2, 0x1d

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Lcom/android/net/module/util/BitUtils;->packBitList([I)J

    move-result-wide v0

    sput-wide v0, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->FORCE_RESTRICTED_CAPABILITIES:J

    .line 121
    const/4 v0, 0x1

    const/4 v1, 0x6

    const/16 v2, 0xc

    const/4 v3, 0x0

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Lcom/android/net/module/util/BitUtils;->packBitList([I)J

    move-result-wide v0

    sput-wide v0, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->UNRESTRICTED_CAPABILITIES:J

    return-void

    nop

    :array_36
    .array-data 4
        0x4
        0x0
        0x5
        0x2
        0x1
        0x3
        0x8
    .end array-data

    :array_48
    .array-data 4
        0x1f
        0x5
        0x2
        0xa
        0x1d
        0x3
        0x7
        0x4
        0x17
        0x8
        0x1b
        0x1e
        0x9
        0x21
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDisplayTransport([I)I
    .registers 7
    .param p0, "transports"    # [I

    .line 137
    sget-object v0, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->DISPLAY_TRANSPORT_PRIORITIES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_13

    aget v4, v0, v3

    .line 138
    .local v4, "transport":I
    invoke-static {p0, v4}, Lcom/android/net/module/util/CollectionUtils;->contains([II)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 139
    return v4

    .line 137
    .end local v4    # "transport":I
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 143
    :cond_13
    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1a

    .line 149
    aget v0, p0, v2

    return v0

    .line 147
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No transport in the provided array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inferRestrictedCapability(Landroid/net/NetworkCapabilities;)Z
    .registers 8
    .param p0, "nc"    # Landroid/net/NetworkCapabilities;

    .line 164
    sget-wide v0, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->FORCE_RESTRICTED_CAPABILITIES:J

    invoke-static {v0, v1}, Lcom/android/net/module/util/BitUtils;->unpackBits(J)[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    const/4 v4, 0x1

    if-ge v3, v1, :cond_18

    aget v5, v0, v3

    .line 165
    .local v5, "capability":I
    invoke-virtual {p0, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 166
    return v4

    .line 164
    .end local v5    # "capability":I
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 172
    :cond_18
    sget-wide v0, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->UNRESTRICTED_CAPABILITIES:J

    invoke-static {v0, v1}, Lcom/android/net/module/util/BitUtils;->unpackBits(J)[I

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_20
    if-ge v3, v1, :cond_2e

    aget v5, v0, v3

    .line 173
    .restart local v5    # "capability":I
    invoke-virtual {p0, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 174
    return v2

    .line 172
    .end local v5    # "capability":I
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 179
    :cond_2e
    sget-wide v0, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->RESTRICTED_CAPABILITIES:J

    invoke-static {v0, v1}, Lcom/android/net/module/util/BitUtils;->unpackBits(J)[I

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_36
    if-ge v3, v1, :cond_44

    aget v5, v0, v3

    .line 180
    .restart local v5    # "capability":I
    invoke-virtual {p0, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 181
    return v4

    .line 179
    .end local v5    # "capability":I
    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 184
    :cond_44
    return v2
.end method
