.class public Lcom/android/server/vcn/repackaged/util/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHashedSubscriptionGroup(Landroid/os/ParcelUuid;)Ljava/lang/String;
    .registers 2
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .line 33
    if-nez p0, :cond_4

    .line 34
    const/4 v0, 0x0

    return-object v0

    .line 37
    :cond_4
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
