.class public final Lcom/samsung/android/wifi/SemWifiApClientDetails$DeviceType;
.super Ljava/lang/Object;
.source "SemWifiApClientDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemWifiApClientDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceType"
.end annotation


# static fields
.field public static final DEVICE_TYPE_FLIP:I = 0x6

.field public static final DEVICE_TYPE_FOLD:I = 0x2

.field public static final DEVICE_TYPE_LAPTOP:I = 0x9

.field public static final DEVICE_TYPE_MOBILE:I = 0x1

.field public static final DEVICE_TYPE_SPEAKER:I = 0x5

.field public static final DEVICE_TYPE_TABLET:I = 0x3

.field public static final DEVICE_TYPE_TV:I = 0x4

.field public static final DEVICE_TYPE_UNDEFINE:I = 0x0

.field public static final DEVICE_TYPE_VST:I = 0x8

.field public static final DEVICE_TYPE_WATCH:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceTypeAsString(I)Ljava/lang/String;
    .registers 2
    .param p0, "deviceType"    # I

    .line 463
    packed-switch p0, :pswitch_data_22

    .line 483
    const-string v0, "DEVICE_TYPE_UNDEFINE"

    return-object v0

    .line 481
    :pswitch_6
    const-string v0, "DEVICE_TYPE_LAPTOP"

    return-object v0

    .line 479
    :pswitch_9
    const-string v0, "DEVICE_TYPE_VST"

    return-object v0

    .line 477
    :pswitch_c
    const-string v0, "DEVICE_TYPE_WATCH"

    return-object v0

    .line 475
    :pswitch_f
    const-string v0, "DEVICE_TYPE_FLIP"

    return-object v0

    .line 473
    :pswitch_12
    const-string v0, "DEVICE_TYPE_SPEAKER"

    return-object v0

    .line 471
    :pswitch_15
    const-string v0, "DEVICE_TYPE_TV"

    return-object v0

    .line 469
    :pswitch_18
    const-string v0, "DEVICE_TYPE_TABLET"

    return-object v0

    .line 467
    :pswitch_1b
    const-string v0, "DEVICE_TYPE_FOLD"

    return-object v0

    .line 465
    :pswitch_1e
    const-string v0, "DEVICE_TYPE_MOBILE"

    return-object v0

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static isValidDeviceType(I)Z
    .registers 2
    .param p0, "deviceType"    # I

    .line 488
    packed-switch p0, :pswitch_data_8

    .line 500
    const/4 v0, 0x0

    return v0

    .line 498
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
