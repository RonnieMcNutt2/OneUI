.class public final Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
.super Ljava/lang/Object;
.source "SemCompanionDeviceBatteryInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mBatteryLevel:I

.field private mBatteryStatus:I

.field private mDeviceName:Ljava/lang/String;

.field private mDeviceType:I

.field private mExtraBatteryLevelCradle:I

.field private mExtraBatteryLevelLeft:I

.field private mExtraBatteryLevelRight:I

.field private mExtraBatteryStatusCradle:I

.field private mExtraBatteryStatusLeft:I

.field private mExtraBatteryStatusRight:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 288
    new-instance v0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mBatteryLevel:I

    .line 17
    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelLeft:I

    .line 18
    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelRight:I

    .line 19
    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelCradle:I

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mBatteryStatus:I

    .line 21
    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusLeft:I

    .line 22
    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusRight:I

    .line 23
    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusCradle:I

    .line 304
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mBatteryLevel:I

    .line 17
    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelLeft:I

    .line 18
    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelRight:I

    .line 19
    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelCradle:I

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mBatteryStatus:I

    .line 21
    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusLeft:I

    .line 22
    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusRight:I

    .line 23
    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusCradle:I

    .line 307
    invoke-virtual {p0, p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 308
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 347
    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBatteryLevel()I
    .registers 2

    .line 106
    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mBatteryLevel:I

    return v0
.end method

.method public getBatteryStatus()I
    .registers 2

    .line 130
    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mBatteryStatus:I

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()I
    .registers 2

    .line 78
    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mDeviceType:I

    return v0
.end method

.method public getExtraBatteryLevelCradle()I
    .registers 2

    .line 189
    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelCradle:I

    return v0
.end method

.method public getExtraBatteryLevelLeft()I
    .registers 2

    .line 153
    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelLeft:I

    return v0
.end method

.method public getExtraBatteryLevelRight()I
    .registers 2

    .line 171
    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelRight:I

    return v0
.end method

.method public getExtraBatteryStatusCradle()I
    .registers 2

    .line 268
    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusCradle:I

    return v0
.end method

.method public getExtraBatteryStatusLeft()I
    .registers 2

    .line 212
    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusLeft:I

    return v0
.end method

.method public getExtraBatteryStatusRight()I
    .registers 2

    .line 240
    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusRight:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mAddress:Ljava/lang/String;

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mDeviceName:Ljava/lang/String;

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mDeviceType:I

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mBatteryLevel:I

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelLeft:I

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelRight:I

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelCradle:I

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mBatteryStatus:I

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusLeft:I

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusRight:I

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusCradle:I

    .line 340
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "address"    # Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mAddress:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setBatteryLevel(I)V
    .registers 2
    .param p1, "batteryLevel"    # I

    .line 116
    iput p1, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mBatteryLevel:I

    .line 117
    return-void
.end method

.method public setBatteryStatus(I)V
    .registers 2
    .param p1, "batteryStatus"    # I

    .line 144
    iput p1, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mBatteryStatus:I

    .line 145
    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .registers 2
    .param p1, "deviceName"    # Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mDeviceName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setDeviceType(I)V
    .registers 2
    .param p1, "deviceType"    # I

    .line 96
    iput p1, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mDeviceType:I

    .line 97
    return-void
.end method

.method public setExtraBatteryLevelCradle(I)V
    .registers 2
    .param p1, "batteryLevel"    # I

    .line 198
    iput p1, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelCradle:I

    .line 199
    return-void
.end method

.method public setExtraBatteryLevelLeft(I)V
    .registers 2
    .param p1, "batteryLevel"    # I

    .line 162
    iput p1, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelLeft:I

    .line 163
    return-void
.end method

.method public setExtraBatteryLevelRight(I)V
    .registers 2
    .param p1, "batteryLevel"    # I

    .line 180
    iput p1, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelRight:I

    .line 181
    return-void
.end method

.method public setExtraBatteryStatusCradle(I)V
    .registers 2
    .param p1, "batteryStatus"    # I

    .line 282
    iput p1, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusCradle:I

    .line 283
    return-void
.end method

.method public setExtraBatteryStatusLeft(I)V
    .registers 2
    .param p1, "batteryStatus"    # I

    .line 226
    iput p1, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusLeft:I

    .line 227
    return-void
.end method

.method public setExtraBatteryStatusRight(I)V
    .registers 2
    .param p1, "batteryStatus"    # I

    .line 254
    iput p1, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusRight:I

    .line 255
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 312
    iget-object v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 314
    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mDeviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mBatteryLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelLeft:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelRight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryLevelCradle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mBatteryStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusLeft:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusRight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget v0, p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->mExtraBatteryStatusCradle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    return-void
.end method
