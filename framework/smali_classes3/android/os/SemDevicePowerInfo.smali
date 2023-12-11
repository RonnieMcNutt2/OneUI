.class public Landroid/os/SemDevicePowerInfo;
.super Ljava/lang/Object;
.source "SemDevicePowerInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/SemDevicePowerInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public actualGpsTime:J

.field public aodPower:D

.field public aodTime:J

.field public batteryPerc:I

.field public btOnTime:J

.field public btScanCount:I

.field public btScanTime:J

.field public btTotalBytes:J

.field public cpIdleTime:J

.field public cpSleepTime:J

.field public gpsTime:J

.field public hrrAlwaysTime:J

.field public idlePower:D

.field public idleTime:J

.field public lcRxByte:J

.field public lcRxTime:J

.field public lcTxByte:J

.field public lcTxLevel:D

.field public lcTxTime:J

.field public mobileActiveCount:I

.field public mobileActiveTime:J

.field public mobileActiveTime5G:J

.field public mobileTotalBytes:J

.field public mobileTotalPackets:J

.field public nrRxByte:J

.field public nrRxTime:J

.field public nrTxByte:J

.field public nrTxLevel:D

.field public nrTxTime:J

.field public phoneOnTime:J

.field public phonePower:D

.field public powersharePower:J

.field public powershareTime:J

.field public psmTime:J

.field public pwlTime:J

.field public radioPower:D

.field public screenAutoBrightnessTime:[J

.field public screenBrightnessTime:[J

.field public screenHighBrightnessTime:J

.field public screenOffCoulombCounter:I

.field public screenOffDischarge:I

.field public screenOffTime:J

.field public screenOffUptime:J

.field public screenOnCoulombCounter:I

.field public screenOnCount:I

.field public screenOnDischarge:I

.field public screenOnGpsTime:J

.field public screenOnTime:J

.field public screenPower:D

.field public signalStrengthTime:[J

.field public spkCallLevel:J

.field public spkCallTime:J

.field public spkMediaLevel:J

.field public spkMediaTime:J

.field public subAodTime:J

.field public subHrrAlwaysTime:J

.field public subScreenAutoBrightnessTime:[J

.field public subScreenBrightnessTime:[J

.field public subScreenHighBrightnessTime:J

.field public subScreenOffDischarge:I

.field public subScreenOnDischarge:I

.field public subScreenOnTime:J

.field public totalPower:D

.field public uptime:J

.field public wifiOnTime:J

.field public wifiPower:D

.field public wifiScanCount:I

.field public wifiScanTime:J

.field public wifiTotalBytes:J

.field public wifiTotalPackets:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 451
    new-instance v0, Landroid/os/SemDevicePowerInfo$1;

    invoke-direct {v0}, Landroid/os/SemDevicePowerInfo$1;-><init>()V

    sput-object v0, Landroid/os/SemDevicePowerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x5

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/os/SemDevicePowerInfo;->screenBrightnessTime:[J

    .line 54
    new-array v1, v0, [J

    iput-object v1, p0, Landroid/os/SemDevicePowerInfo;->screenAutoBrightnessTime:[J

    .line 56
    new-array v1, v0, [J

    iput-object v1, p0, Landroid/os/SemDevicePowerInfo;->subScreenBrightnessTime:[J

    .line 57
    new-array v0, v0, [J

    iput-object v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenAutoBrightnessTime:[J

    .line 59
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/os/SemDevicePowerInfo;->signalStrengthTime:[J

    .line 99
    invoke-virtual {p0}, Landroid/os/SemDevicePowerInfo;->reset()V

    .line 100
    return-void
.end method

.method public constructor <init>(D)V
    .registers 5
    .param p1, "totalPower"    # D

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x5

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/os/SemDevicePowerInfo;->screenBrightnessTime:[J

    .line 54
    new-array v1, v0, [J

    iput-object v1, p0, Landroid/os/SemDevicePowerInfo;->screenAutoBrightnessTime:[J

    .line 56
    new-array v1, v0, [J

    iput-object v1, p0, Landroid/os/SemDevicePowerInfo;->subScreenBrightnessTime:[J

    .line 57
    new-array v0, v0, [J

    iput-object v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenAutoBrightnessTime:[J

    .line 59
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/os/SemDevicePowerInfo;->signalStrengthTime:[J

    .line 103
    invoke-virtual {p0}, Landroid/os/SemDevicePowerInfo;->reset()V

    .line 104
    iput-wide p1, p0, Landroid/os/SemDevicePowerInfo;->totalPower:D

    .line 105
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x5

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/os/SemDevicePowerInfo;->screenBrightnessTime:[J

    .line 54
    new-array v1, v0, [J

    iput-object v1, p0, Landroid/os/SemDevicePowerInfo;->screenAutoBrightnessTime:[J

    .line 56
    new-array v1, v0, [J

    iput-object v1, p0, Landroid/os/SemDevicePowerInfo;->subScreenBrightnessTime:[J

    .line 57
    new-array v1, v0, [J

    iput-object v1, p0, Landroid/os/SemDevicePowerInfo;->subScreenAutoBrightnessTime:[J

    .line 59
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v1

    new-array v1, v1, [J

    iput-object v1, p0, Landroid/os/SemDevicePowerInfo;->signalStrengthTime:[J

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->totalPower:D

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->screenPower:D

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->aodPower:D

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->phonePower:D

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->wifiPower:D

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->idlePower:D

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->idleTime:J

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->radioPower:D

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/SemDevicePowerInfo;->batteryPerc:I

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/SemDevicePowerInfo;->screenOnCount:I

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->screenOnTime:J

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->subScreenOnTime:J

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->screenOffTime:J

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/SemDevicePowerInfo;->screenOnDischarge:I

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/SemDevicePowerInfo;->screenOffDischarge:I

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/SemDevicePowerInfo;->subScreenOnDischarge:I

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/SemDevicePowerInfo;->subScreenOffDischarge:I

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/SemDevicePowerInfo;->screenOnCoulombCounter:I

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/SemDevicePowerInfo;->screenOffCoulombCounter:I

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->uptime:J

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->screenOffUptime:J

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->phoneOnTime:J

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->aodTime:J

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->subAodTime:J

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->psmTime:J

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->pwlTime:J

    .line 396
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b9
    if-ge v1, v0, :cond_c6

    .line 397
    iget-object v2, p0, Landroid/os/SemDevicePowerInfo;->screenBrightnessTime:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 396
    add-int/lit8 v1, v1, 0x1

    goto :goto_b9

    .line 399
    .end local v1    # "i":I
    :cond_c6
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_c7
    if-ge v1, v0, :cond_d4

    .line 400
    iget-object v2, p0, Landroid/os/SemDevicePowerInfo;->screenAutoBrightnessTime:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 399
    add-int/lit8 v1, v1, 0x1

    goto :goto_c7

    .line 402
    .end local v1    # "i":I
    :cond_d4
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->screenHighBrightnessTime:J

    .line 403
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_db
    if-ge v1, v0, :cond_e8

    .line 404
    iget-object v2, p0, Landroid/os/SemDevicePowerInfo;->subScreenBrightnessTime:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 403
    add-int/lit8 v1, v1, 0x1

    goto :goto_db

    .line 406
    .end local v1    # "i":I
    :cond_e8
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_e9
    if-ge v1, v0, :cond_f6

    .line 407
    iget-object v2, p0, Landroid/os/SemDevicePowerInfo;->subScreenAutoBrightnessTime:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 406
    add-int/lit8 v1, v1, 0x1

    goto :goto_e9

    .line 409
    .end local v1    # "i":I
    :cond_f6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenHighBrightnessTime:J

    .line 410
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_fd
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v1

    if-ge v0, v1, :cond_10e

    .line 411
    iget-object v1, p0, Landroid/os/SemDevicePowerInfo;->signalStrengthTime:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_fd

    .line 413
    .end local v0    # "i":I
    :cond_10e
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileTotalBytes:J

    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileTotalPackets:J

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveTime:J

    .line 416
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveTime5G:J

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveCount:I

    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiTotalBytes:J

    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiTotalPackets:J

    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiOnTime:J

    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiScanTime:J

    .line 422
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->wifiScanCount:I

    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->btTotalBytes:J

    .line 424
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->btOnTime:J

    .line 425
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->btScanTime:J

    .line 426
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->btScanCount:I

    .line 427
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->gpsTime:J

    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->actualGpsTime:J

    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnGpsTime:J

    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->powershareTime:J

    .line 431
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->powersharePower:J

    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkCallTime:J

    .line 433
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkCallLevel:J

    .line 434
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkMediaTime:J

    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkMediaLevel:J

    .line 436
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->hrrAlwaysTime:J

    .line 437
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->cpSleepTime:J

    .line 438
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->cpIdleTime:J

    .line 439
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    .line 440
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    .line 441
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrRxTime:J

    .line 442
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrTxByte:J

    .line 443
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrRxByte:J

    .line 444
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    .line 445
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    .line 446
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcRxTime:J

    .line 447
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcTxByte:J

    .line 448
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcRxByte:J

    .line 449
    return-void
.end method


# virtual methods
.method public addDelta(Landroid/os/SemDevicePowerInfo;)V
    .registers 16
    .param p1, "delta"    # Landroid/os/SemDevicePowerInfo;

    .line 279
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->totalPower:D

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->totalPower:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->totalPower:D

    .line 280
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenPower:D

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->screenPower:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenPower:D

    .line 281
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->aodPower:D

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->aodPower:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->aodPower:D

    .line 282
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->phonePower:D

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->phonePower:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->phonePower:D

    .line 283
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiPower:D

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->wifiPower:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiPower:D

    .line 284
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->idlePower:D

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->idlePower:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->idlePower:D

    .line 285
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->idleTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->idleTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->idleTime:J

    .line 286
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->radioPower:D

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->radioPower:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->radioPower:D

    .line 287
    iget v0, p0, Landroid/os/SemDevicePowerInfo;->batteryPerc:I

    iget v1, p1, Landroid/os/SemDevicePowerInfo;->batteryPerc:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->batteryPerc:I

    .line 288
    iget v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnCount:I

    iget v1, p1, Landroid/os/SemDevicePowerInfo;->screenOnCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnCount:I

    .line 289
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->screenOnTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnTime:J

    .line 290
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenOnTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->subScreenOnTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenOnTime:J

    .line 291
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->screenOffTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffTime:J

    .line 292
    iget v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnDischarge:I

    iget v1, p1, Landroid/os/SemDevicePowerInfo;->screenOnDischarge:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnDischarge:I

    .line 293
    iget v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffDischarge:I

    iget v1, p1, Landroid/os/SemDevicePowerInfo;->screenOffDischarge:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffDischarge:I

    .line 294
    iget v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenOnDischarge:I

    iget v1, p1, Landroid/os/SemDevicePowerInfo;->subScreenOnDischarge:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenOnDischarge:I

    .line 295
    iget v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenOffDischarge:I

    iget v1, p1, Landroid/os/SemDevicePowerInfo;->subScreenOffDischarge:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenOffDischarge:I

    .line 296
    iget v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnCoulombCounter:I

    iget v1, p1, Landroid/os/SemDevicePowerInfo;->screenOnCoulombCounter:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnCoulombCounter:I

    .line 297
    iget v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffCoulombCounter:I

    iget v1, p1, Landroid/os/SemDevicePowerInfo;->screenOffCoulombCounter:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffCoulombCounter:I

    .line 298
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->uptime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->uptime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->uptime:J

    .line 299
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffUptime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->screenOffUptime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffUptime:J

    .line 300
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->phoneOnTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->phoneOnTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->phoneOnTime:J

    .line 301
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->aodTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->aodTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->aodTime:J

    .line 302
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->subAodTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->subAodTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->subAodTime:J

    .line 303
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->psmTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->psmTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->psmTime:J

    .line 304
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->pwlTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->pwlTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->pwlTime:J

    .line 305
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b7
    const/4 v1, 0x5

    if-ge v0, v1, :cond_e9

    .line 306
    iget-object v1, p0, Landroid/os/SemDevicePowerInfo;->screenBrightnessTime:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Landroid/os/SemDevicePowerInfo;->screenBrightnessTime:[J

    aget-wide v4, v4, v0

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 307
    iget-object v1, p0, Landroid/os/SemDevicePowerInfo;->screenAutoBrightnessTime:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Landroid/os/SemDevicePowerInfo;->screenAutoBrightnessTime:[J

    aget-wide v4, v4, v0

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 308
    iget-object v1, p0, Landroid/os/SemDevicePowerInfo;->subScreenBrightnessTime:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Landroid/os/SemDevicePowerInfo;->subScreenBrightnessTime:[J

    aget-wide v4, v4, v0

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 309
    iget-object v1, p0, Landroid/os/SemDevicePowerInfo;->subScreenAutoBrightnessTime:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Landroid/os/SemDevicePowerInfo;->subScreenAutoBrightnessTime:[J

    aget-wide v4, v4, v0

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_b7

    .line 311
    .end local v0    # "i":I
    :cond_e9
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenHighBrightnessTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->screenHighBrightnessTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenHighBrightnessTime:J

    .line 312
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenHighBrightnessTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->subScreenHighBrightnessTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenHighBrightnessTime:J

    .line 313
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_f8
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v1

    if-ge v0, v1, :cond_10c

    .line 314
    iget-object v1, p0, Landroid/os/SemDevicePowerInfo;->signalStrengthTime:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Landroid/os/SemDevicePowerInfo;->signalStrengthTime:[J

    aget-wide v4, v4, v0

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_f8

    .line 316
    .end local v0    # "i":I
    :cond_10c
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileTotalBytes:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->mobileTotalBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileTotalBytes:J

    .line 317
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileTotalPackets:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->mobileTotalPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileTotalPackets:J

    .line 318
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->mobileActiveTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveTime:J

    .line 319
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveTime5G:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->mobileActiveTime5G:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveTime5G:J

    .line 320
    iget v0, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveCount:I

    iget v1, p1, Landroid/os/SemDevicePowerInfo;->mobileActiveCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveCount:I

    .line 321
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiTotalBytes:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->wifiTotalBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiTotalBytes:J

    .line 322
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiTotalPackets:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->wifiTotalPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiTotalPackets:J

    .line 323
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiOnTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->wifiOnTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiOnTime:J

    .line 324
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiScanTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->wifiScanTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiScanTime:J

    .line 325
    iget v0, p0, Landroid/os/SemDevicePowerInfo;->wifiScanCount:I

    iget v1, p1, Landroid/os/SemDevicePowerInfo;->wifiScanCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->wifiScanCount:I

    .line 326
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->btTotalBytes:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->btTotalBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->btTotalBytes:J

    .line 327
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->btOnTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->btOnTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->btOnTime:J

    .line 328
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->btScanTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->btScanTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->btScanTime:J

    .line 329
    iget v0, p0, Landroid/os/SemDevicePowerInfo;->btScanCount:I

    iget v1, p1, Landroid/os/SemDevicePowerInfo;->btScanCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->btScanCount:I

    .line 330
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->gpsTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->gpsTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->gpsTime:J

    .line 331
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->actualGpsTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->actualGpsTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->actualGpsTime:J

    .line 332
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnGpsTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->screenOnGpsTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnGpsTime:J

    .line 333
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->powershareTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->powershareTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->powershareTime:J

    .line 334
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->powersharePower:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->powersharePower:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->powersharePower:J

    .line 335
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkCallTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->spkCallTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkCallTime:J

    .line 336
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkCallLevel:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->spkCallLevel:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkCallLevel:J

    .line 337
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkMediaTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->spkMediaTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkMediaTime:J

    .line 338
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkMediaLevel:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->spkMediaLevel:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkMediaLevel:J

    .line 339
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->hrrAlwaysTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->hrrAlwaysTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->hrrAlwaysTime:J

    .line 340
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->subHrrAlwaysTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->subHrrAlwaysTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->subHrrAlwaysTime:J

    .line 341
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->cpSleepTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->cpSleepTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->cpSleepTime:J

    .line 342
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->cpIdleTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->cpIdleTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->cpIdleTime:J

    .line 343
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    .line 345
    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    add-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const-wide/16 v8, 0x0

    if-eqz v4, :cond_1eb

    .line 346
    iget-wide v4, p0, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    long-to-double v10, v0

    mul-double/2addr v4, v10

    iget-wide v10, p1, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    long-to-double v12, v2

    mul-double/2addr v10, v12

    add-double/2addr v4, v10

    add-long/2addr v0, v2

    long-to-double v0, v0

    div-double/2addr v4, v0

    iput-wide v4, p0, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    goto :goto_1ed

    .line 349
    :cond_1eb
    iput-wide v8, p0, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    .line 352
    :goto_1ed
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrRxTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->nrRxTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrRxTime:J

    .line 353
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrTxByte:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->nrTxByte:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrTxByte:J

    .line 354
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrRxByte:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->nrRxByte:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrRxByte:J

    .line 355
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    .line 357
    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    add-long v4, v0, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_220

    .line 358
    iget-wide v4, p0, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    long-to-double v6, v0

    mul-double/2addr v4, v6

    iget-wide v6, p1, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    long-to-double v8, v2

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    add-long/2addr v0, v2

    long-to-double v0, v0

    div-double/2addr v4, v0

    iput-wide v4, p0, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    goto :goto_222

    .line 361
    :cond_220
    iput-wide v8, p0, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    .line 364
    :goto_222
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcRxTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->lcRxTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcRxTime:J

    .line 365
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcTxByte:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->lcTxByte:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcTxByte:J

    .line 366
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcRxByte:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->lcRxByte:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcRxByte:J

    .line 367
    return-void
.end method

.method public describeContents()I
    .registers 2

    .line 465
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .registers 8

    .line 202
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->totalPower:D

    .line 203
    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenPower:D

    .line 204
    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->aodPower:D

    .line 205
    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->phonePower:D

    .line 206
    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiPower:D

    .line 207
    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->idlePower:D

    .line 208
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->idleTime:J

    .line 209
    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->radioPower:D

    .line 210
    const/4 v4, 0x0

    iput v4, p0, Landroid/os/SemDevicePowerInfo;->batteryPerc:I

    .line 211
    iput v4, p0, Landroid/os/SemDevicePowerInfo;->screenOnCount:I

    .line 212
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->screenOnTime:J

    .line 213
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->subScreenOnTime:J

    .line 214
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->screenOffTime:J

    .line 215
    iput v4, p0, Landroid/os/SemDevicePowerInfo;->screenOnDischarge:I

    .line 216
    iput v4, p0, Landroid/os/SemDevicePowerInfo;->screenOffDischarge:I

    .line 217
    iput v4, p0, Landroid/os/SemDevicePowerInfo;->subScreenOnDischarge:I

    .line 218
    iput v4, p0, Landroid/os/SemDevicePowerInfo;->subScreenOffDischarge:I

    .line 219
    iput v4, p0, Landroid/os/SemDevicePowerInfo;->screenOnCoulombCounter:I

    .line 220
    iput v4, p0, Landroid/os/SemDevicePowerInfo;->screenOffCoulombCounter:I

    .line 221
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->uptime:J

    .line 222
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->screenOffUptime:J

    .line 223
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->phoneOnTime:J

    .line 224
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->aodTime:J

    .line 225
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->subAodTime:J

    .line 226
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->psmTime:J

    .line 227
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->pwlTime:J

    .line 228
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3a
    const/4 v6, 0x5

    if-ge v5, v6, :cond_50

    .line 229
    iget-object v6, p0, Landroid/os/SemDevicePowerInfo;->screenBrightnessTime:[J

    aput-wide v2, v6, v5

    .line 230
    iget-object v6, p0, Landroid/os/SemDevicePowerInfo;->screenAutoBrightnessTime:[J

    aput-wide v2, v6, v5

    .line 231
    iget-object v6, p0, Landroid/os/SemDevicePowerInfo;->subScreenBrightnessTime:[J

    aput-wide v2, v6, v5

    .line 232
    iget-object v6, p0, Landroid/os/SemDevicePowerInfo;->subScreenAutoBrightnessTime:[J

    aput-wide v2, v6, v5

    .line 228
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    .line 234
    .end local v5    # "i":I
    :cond_50
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->screenHighBrightnessTime:J

    .line 235
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->subScreenHighBrightnessTime:J

    .line 236
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_55
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v6

    if-ge v5, v6, :cond_62

    .line 237
    iget-object v6, p0, Landroid/os/SemDevicePowerInfo;->signalStrengthTime:[J

    aput-wide v2, v6, v5

    .line 236
    add-int/lit8 v5, v5, 0x1

    goto :goto_55

    .line 239
    .end local v5    # "i":I
    :cond_62
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->mobileTotalBytes:J

    .line 240
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->mobileTotalPackets:J

    .line 241
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveTime:J

    .line 242
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveTime5G:J

    .line 243
    iput v4, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveCount:I

    .line 244
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->wifiTotalBytes:J

    .line 245
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->wifiTotalPackets:J

    .line 246
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->wifiOnTime:J

    .line 247
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->wifiScanTime:J

    .line 248
    iput v4, p0, Landroid/os/SemDevicePowerInfo;->wifiScanCount:I

    .line 249
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->btTotalBytes:J

    .line 250
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->btOnTime:J

    .line 251
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->btScanTime:J

    .line 252
    iput v4, p0, Landroid/os/SemDevicePowerInfo;->btScanCount:I

    .line 253
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->gpsTime:J

    .line 254
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->actualGpsTime:J

    .line 255
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->screenOnGpsTime:J

    .line 256
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->powershareTime:J

    .line 257
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->powersharePower:J

    .line 258
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->spkCallTime:J

    .line 259
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->spkCallLevel:J

    .line 260
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->spkMediaTime:J

    .line 261
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->spkMediaLevel:J

    .line 262
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->hrrAlwaysTime:J

    .line 263
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->subHrrAlwaysTime:J

    .line 264
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->cpSleepTime:J

    .line 265
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->cpIdleTime:J

    .line 266
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    .line 267
    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    .line 268
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->nrRxTime:J

    .line 269
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->nrTxByte:J

    .line 270
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->nrRxByte:J

    .line 271
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    .line 272
    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    .line 273
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->lcRxTime:J

    .line 274
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->lcTxByte:J

    .line 275
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->lcRxByte:J

    .line 276
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 110
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "power = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/SemDevicePowerInfo;->totalPower:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, ", screenPower = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/SemDevicePowerInfo;->screenPower:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, ", idlePower = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/SemDevicePowerInfo;->idlePower:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, ", percent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/SemDevicePowerInfo;->batteryPerc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, ", screenOnTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/SemDevicePowerInfo;->screenOnTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, ", screenOffTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/SemDevicePowerInfo;->screenOffTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, ", uptime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/SemDevicePowerInfo;->screenOffUptime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, ", screenOffUptime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/SemDevicePowerInfo;->screenOffUptime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 118
    const-string v1, ", AOD = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/SemDevicePowerInfo;->aodTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, ", powerSave = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/SemDevicePowerInfo;->psmTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, ", wakelock time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/SemDevicePowerInfo;->pwlTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(Landroid/os/SemDevicePowerInfo;)V
    .registers 6
    .param p1, "info"    # Landroid/os/SemDevicePowerInfo;

    .line 125
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->totalPower:D

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->totalPower:D

    .line 126
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->screenPower:D

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenPower:D

    .line 127
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->aodPower:D

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->aodPower:D

    .line 128
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->phonePower:D

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->phonePower:D

    .line 129
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->wifiPower:D

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiPower:D

    .line 130
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->idlePower:D

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->idlePower:D

    .line 131
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->idleTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->idleTime:J

    .line 132
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->radioPower:D

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->radioPower:D

    .line 133
    iget v0, p1, Landroid/os/SemDevicePowerInfo;->batteryPerc:I

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->batteryPerc:I

    .line 134
    iget v0, p1, Landroid/os/SemDevicePowerInfo;->screenOnCount:I

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnCount:I

    .line 135
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->screenOnTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnTime:J

    .line 136
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->subScreenOnTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenOnTime:J

    .line 137
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->screenOffTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffTime:J

    .line 138
    iget v0, p1, Landroid/os/SemDevicePowerInfo;->screenOnDischarge:I

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnDischarge:I

    .line 139
    iget v0, p1, Landroid/os/SemDevicePowerInfo;->screenOffDischarge:I

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffDischarge:I

    .line 140
    iget v0, p1, Landroid/os/SemDevicePowerInfo;->subScreenOnDischarge:I

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenOnDischarge:I

    .line 141
    iget v0, p1, Landroid/os/SemDevicePowerInfo;->subScreenOffDischarge:I

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenOffDischarge:I

    .line 142
    iget v0, p1, Landroid/os/SemDevicePowerInfo;->screenOnCoulombCounter:I

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnCoulombCounter:I

    .line 143
    iget v0, p1, Landroid/os/SemDevicePowerInfo;->screenOffCoulombCounter:I

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffCoulombCounter:I

    .line 144
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->uptime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->uptime:J

    .line 145
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->screenOffUptime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffUptime:J

    .line 146
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->phoneOnTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->phoneOnTime:J

    .line 147
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->aodTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->aodTime:J

    .line 148
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->subAodTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->subAodTime:J

    .line 149
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->psmTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->psmTime:J

    .line 150
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->pwlTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->pwlTime:J

    .line 151
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_69
    const/4 v1, 0x5

    if-ge v0, v1, :cond_8f

    .line 152
    iget-object v1, p0, Landroid/os/SemDevicePowerInfo;->screenBrightnessTime:[J

    iget-object v2, p1, Landroid/os/SemDevicePowerInfo;->screenBrightnessTime:[J

    aget-wide v2, v2, v0

    aput-wide v2, v1, v0

    .line 153
    iget-object v1, p0, Landroid/os/SemDevicePowerInfo;->screenAutoBrightnessTime:[J

    iget-object v2, p1, Landroid/os/SemDevicePowerInfo;->screenAutoBrightnessTime:[J

    aget-wide v2, v2, v0

    aput-wide v2, v1, v0

    .line 154
    iget-object v1, p0, Landroid/os/SemDevicePowerInfo;->subScreenBrightnessTime:[J

    iget-object v2, p1, Landroid/os/SemDevicePowerInfo;->subScreenBrightnessTime:[J

    aget-wide v2, v2, v0

    aput-wide v2, v1, v0

    .line 155
    iget-object v1, p0, Landroid/os/SemDevicePowerInfo;->subScreenAutoBrightnessTime:[J

    iget-object v2, p1, Landroid/os/SemDevicePowerInfo;->subScreenAutoBrightnessTime:[J

    aget-wide v2, v2, v0

    aput-wide v2, v1, v0

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_69

    .line 157
    .end local v0    # "i":I
    :cond_8f
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->screenHighBrightnessTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenHighBrightnessTime:J

    .line 158
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->subScreenHighBrightnessTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenHighBrightnessTime:J

    .line 159
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_98
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v1

    if-ge v0, v1, :cond_a9

    .line 160
    iget-object v1, p0, Landroid/os/SemDevicePowerInfo;->signalStrengthTime:[J

    iget-object v2, p1, Landroid/os/SemDevicePowerInfo;->signalStrengthTime:[J

    aget-wide v2, v2, v0

    aput-wide v2, v1, v0

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_98

    .line 162
    .end local v0    # "i":I
    :cond_a9
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->mobileTotalBytes:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileTotalBytes:J

    .line 163
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->mobileTotalPackets:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileTotalPackets:J

    .line 164
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->mobileActiveTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveTime:J

    .line 165
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->mobileActiveTime5G:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveTime5G:J

    .line 166
    iget v0, p1, Landroid/os/SemDevicePowerInfo;->mobileActiveCount:I

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveCount:I

    .line 167
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->wifiTotalBytes:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiTotalBytes:J

    .line 168
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->wifiTotalPackets:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiTotalPackets:J

    .line 169
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->wifiOnTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiOnTime:J

    .line 170
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->wifiScanTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiScanTime:J

    .line 171
    iget v0, p1, Landroid/os/SemDevicePowerInfo;->wifiScanCount:I

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->wifiScanCount:I

    .line 172
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->btTotalBytes:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->btTotalBytes:J

    .line 173
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->btOnTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->btOnTime:J

    .line 174
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->btScanTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->btScanTime:J

    .line 175
    iget v0, p1, Landroid/os/SemDevicePowerInfo;->btScanCount:I

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->btScanCount:I

    .line 176
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->gpsTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->gpsTime:J

    .line 177
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->actualGpsTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->actualGpsTime:J

    .line 178
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->screenOnGpsTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnGpsTime:J

    .line 179
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->powershareTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->powershareTime:J

    .line 180
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->powersharePower:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->powersharePower:J

    .line 181
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->spkCallTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkCallTime:J

    .line 182
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->spkCallLevel:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkCallLevel:J

    .line 183
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->spkMediaTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkMediaTime:J

    .line 184
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->spkMediaLevel:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkMediaLevel:J

    .line 185
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->hrrAlwaysTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->hrrAlwaysTime:J

    .line 186
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->subHrrAlwaysTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->subHrrAlwaysTime:J

    .line 187
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->cpSleepTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->cpSleepTime:J

    .line 188
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->cpIdleTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->cpIdleTime:J

    .line 189
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    .line 190
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    .line 191
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->nrRxTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrRxTime:J

    .line 192
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->nrTxByte:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrTxByte:J

    .line 193
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->nrRxByte:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrRxByte:J

    .line 194
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    .line 195
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    .line 196
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->lcRxTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcRxTime:J

    .line 197
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->lcTxByte:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcTxByte:J

    .line 198
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->lcRxByte:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcRxByte:J

    .line 199
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 470
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->totalPower:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 471
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenPower:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 472
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->aodPower:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 473
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->phonePower:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 474
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiPower:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 475
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->idlePower:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 476
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->idleTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 477
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->radioPower:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 478
    iget v0, p0, Landroid/os/SemDevicePowerInfo;->batteryPerc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    iget v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 481
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenOnTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 482
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 483
    iget v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnDischarge:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    iget v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffDischarge:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    iget v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenOnDischarge:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    iget v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenOffDischarge:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    iget v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnCoulombCounter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    iget v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffCoulombCounter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->uptime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 490
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffUptime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 491
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->phoneOnTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 492
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->aodTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 493
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->subAodTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 494
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->psmTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 495
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->pwlTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 496
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_83
    const/4 v1, 0x5

    if-ge v0, v1, :cond_90

    .line 497
    iget-object v1, p0, Landroid/os/SemDevicePowerInfo;->screenBrightnessTime:[J

    aget-wide v1, v1, v0

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 496
    add-int/lit8 v0, v0, 0x1

    goto :goto_83

    .line 499
    .end local v0    # "i":I
    :cond_90
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_91
    if-ge v0, v1, :cond_9d

    .line 500
    iget-object v2, p0, Landroid/os/SemDevicePowerInfo;->screenAutoBrightnessTime:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 499
    add-int/lit8 v0, v0, 0x1

    goto :goto_91

    .line 502
    .end local v0    # "i":I
    :cond_9d
    iget-wide v2, p0, Landroid/os/SemDevicePowerInfo;->screenHighBrightnessTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 503
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_a3
    if-ge v0, v1, :cond_af

    .line 504
    iget-object v2, p0, Landroid/os/SemDevicePowerInfo;->subScreenBrightnessTime:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 503
    add-int/lit8 v0, v0, 0x1

    goto :goto_a3

    .line 506
    .end local v0    # "i":I
    :cond_af
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_b0
    if-ge v0, v1, :cond_bc

    .line 507
    iget-object v2, p0, Landroid/os/SemDevicePowerInfo;->subScreenAutoBrightnessTime:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 506
    add-int/lit8 v0, v0, 0x1

    goto :goto_b0

    .line 509
    .end local v0    # "i":I
    :cond_bc
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenHighBrightnessTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 510
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_c2
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v1

    if-ge v0, v1, :cond_d2

    .line 511
    iget-object v1, p0, Landroid/os/SemDevicePowerInfo;->signalStrengthTime:[J

    aget-wide v1, v1, v0

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 510
    add-int/lit8 v0, v0, 0x1

    goto :goto_c2

    .line 513
    .end local v0    # "i":I
    :cond_d2
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileTotalBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 514
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileTotalPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 515
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 516
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveTime5G:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 517
    iget v0, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiTotalBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 519
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiTotalPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 520
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiOnTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 521
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiScanTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 522
    iget v0, p0, Landroid/os/SemDevicePowerInfo;->wifiScanCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->btTotalBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 524
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->btOnTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 525
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->btScanTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 526
    iget v0, p0, Landroid/os/SemDevicePowerInfo;->btScanCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->gpsTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 528
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->actualGpsTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 529
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnGpsTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 530
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->powershareTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 531
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->powersharePower:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 532
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkCallTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 533
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkCallLevel:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 534
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkMediaTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 535
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkMediaLevel:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 536
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->hrrAlwaysTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 537
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->cpSleepTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 538
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->cpIdleTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 539
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 540
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 541
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrRxTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 542
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrTxByte:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 543
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrRxByte:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 544
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 545
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 546
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcRxTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 547
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcTxByte:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 548
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcRxByte:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 549
    return-void
.end method
