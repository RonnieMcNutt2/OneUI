.class public Lcom/samsung/android/wifi/SemWifiConfiguration;
.super Ljava/lang/Object;
.source "SemWifiConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/SemWifiConfiguration$SemNetworkDisableReason;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/wifi/SemWifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISABLED_ASSOCIATION_REJECTED:I = 0x3

.field public static final DISABLED_AUTHENTICATION_CA_CERTIFICATION_ERROR:I = 0xb

.field public static final DISABLED_AUTHENTICATION_FAILURE:I = 0x2

.field public static final DISABLED_CAPTIVE_PORTAL:I = 0x5

.field public static final DISABLED_DHCP_FAILED:I = 0x4

.field public static final DISABLED_NONE:I = 0x0

.field public static final DISABLED_PERMANENTLY_NO_INTERNET:I = 0x7

.field public static final DISABLED_PERMANENTLY_NO_INTERNET_INITIAL:I = 0x8

.field public static final DISABLED_REASON_MAX:I = 0xc

.field public static final DISABLED_SUSPICIOUS_NETWORK:I = 0x1

.field public static final DISABLED_TEMPORARY_ELE_DETECTION:I = 0x9

.field public static final DISABLED_TEMPORARY_NO_INTERNET:I = 0x6

.field public static final DISABLED_TEMPORARY_SILENT_ROAMING:I = 0xa

.field public static final networkDisableReasonStrings:[Ljava/lang/String;


# instance fields
.field public altNetworkTargetRssi:I

.field public configKey:Ljava/lang/String;

.field public creationTime:J

.field public disableTimeByEle:J

.field public disableTimeByWcm:J

.field public isCaptivePortal:Z

.field public isLockDown:Z

.field public isNoInternetAccessExpected:Z

.field public networkDisableReason:I

.field public networkScore:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 168
    const-string v0, "DISABLED_NONE"

    const-string v1, "DISABLED_SUSPICIOUS_NETWORK"

    const-string v2, "DISABLED_AUTHENTICATION_FAILURE"

    const-string v3, "DISABLED_ASSOCIATION_REJECTED"

    const-string v4, "DISABLED_DHCP_FAILED"

    const-string v5, "DISABLED_CAPTIVE_PORTAL"

    const-string v6, "DISABLED_TEMPORARY_NO_INTERNET"

    const-string v7, "DISABLED_PERMANENTLY_NO_INTERNET"

    const-string v8, "DISABLED_PERMANENTLY_NO_INTERNET_INITIAL"

    const-string v9, "DISABLED_TEMPORARY_ELE_DETECTION"

    const-string v10, "DISABLED_TEMPORARY_SILENT_ROAMING"

    const-string v11, "DISABLED_AUTHENTICATION_CA_CERTIFICATION_ERROR"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReasonStrings:[Ljava/lang/String;

    .line 352
    new-instance v0, Lcom/samsung/android/wifi/SemWifiConfiguration$1;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemWifiConfiguration$1;-><init>()V

    sput-object v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/wifi/SemWifiConfiguration;)V
    .registers 4
    .param p1, "source"    # Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iget-object v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    .line 326
    iget v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    iput v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    .line 327
    iget-boolean v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    .line 328
    iget-boolean v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    .line 329
    iget-boolean v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    .line 330
    iget-wide v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    .line 331
    iget-wide v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    .line 332
    iget v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->altNetworkTargetRssi:I

    iput v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->altNetworkTargetRssi:I

    .line 333
    iget v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    iput v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    .line 334
    iget-wide v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->creationTime:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->creationTime:J

    .line 335
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "configKey"    # Ljava/lang/String;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    .line 210
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    .line 211
    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    .line 212
    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    .line 213
    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    .line 214
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    .line 215
    iput-wide v1, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    .line 216
    iput v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->altNetworkTargetRssi:I

    .line 217
    iput v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    .line 218
    iput-wide v1, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->creationTime:J

    .line 219
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 321
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 302
    instance-of v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    .line 303
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 304
    .local v0, "other":Lcom/samsung/android/wifi/SemWifiConfiguration;
    invoke-virtual {p0, v0}, Lcom/samsung/android/wifi/SemWifiConfiguration;->matches(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 305
    return v1

    .line 306
    :cond_f
    iget v2, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    iget v3, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    if-eq v2, v3, :cond_16

    .line 307
    return v1

    .line 308
    :cond_16
    iget-boolean v2, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    iget-boolean v3, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    if-eq v2, v3, :cond_1d

    .line 309
    return v1

    .line 310
    :cond_1d
    iget-boolean v2, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    iget-boolean v3, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    if-eq v2, v3, :cond_24

    .line 311
    return v1

    .line 312
    :cond_24
    iget v2, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    iget v3, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    if-eq v2, v3, :cond_2b

    .line 313
    return v1

    .line 315
    :cond_2b
    iget-boolean v2, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    iget-boolean v3, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    if-ne v2, v3, :cond_32

    const/4 v1, 0x1

    :cond_32
    return v1

    .line 317
    .end local v0    # "other":Lcom/samsung/android/wifi/SemWifiConfiguration;
    :cond_33
    return v1
.end method

.method public getNetworkScore()I
    .registers 2

    .line 228
    iget v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 297
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCaptivePortal()Z
    .registers 2

    .line 237
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    return v0
.end method

.method public isLockDown()Z
    .registers 2

    .line 256
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    return v0
.end method

.method public isNoInternetAccessExpected()Z
    .registers 2

    .line 247
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    return v0
.end method

.method public matches(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z
    .registers 4
    .param p1, "other"    # Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 264
    if-nez p1, :cond_4

    .line 265
    const/4 v0, 0x0

    return v0

    .line 267
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    iget-boolean v1, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    if-eqz v1, :cond_19

    .line 275
    const-string v1, " locked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_19
    iget-boolean v1, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    if-eqz v1, :cond_26

    .line 278
    const-string v1, " captivePortal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_26
    iget-boolean v1, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    if-eqz v1, :cond_33

    .line 281
    const-string v1, " NoInternetAccessExpected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_33
    iget v1, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    if-ltz v1, :cond_7d

    const/16 v3, 0xc

    if-ge v1, v3, :cond_7d

    .line 284
    const-string v1, " disableReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReasonStrings:[Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    aget-object v3, v3, v4

    .line 285
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    iget-wide v3, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5d

    const-string v1, " disableTimeByWcm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 287
    :cond_5d
    iget-wide v3, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6e

    const-string v1, " disableTimeByEle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 288
    :cond_6e
    iget v1, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->altNetworkTargetRssi:I

    if-eqz v1, :cond_7d

    const-string v1, " altNetworkTargetRssi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->altNetworkTargetRssi:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 290
    :cond_7d
    const-string v1, " networkScore: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    const-string v1, " cTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->creationTime:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 339
    iget-object v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 340
    iget v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 342
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 343
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 344
    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 345
    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 346
    iget v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->altNetworkTargetRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    iget v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->creationTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 349
    return-void
.end method
