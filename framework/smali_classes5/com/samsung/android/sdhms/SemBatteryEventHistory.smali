.class public Lcom/samsung/android/sdhms/SemBatteryEventHistory;
.super Ljava/lang/Object;
.source "SemBatteryEventHistory.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdhms/SemBatteryEventHistory;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLUGGED_STATE_AC:I = 0x1

.field public static final PLUGGED_STATE_NONE:I = 0x0

.field public static final PLUGGED_STATE_USB:I = 0x2

.field public static final PLUGGED_STATE_WIRELESS:I = 0x4

.field public static final POWER_SAVE_STATE_OFF:I = 0x0

.field public static final POWER_SAVE_STATE_ON:I = 0x1

.field public static final POWER_STATE_OFF:I = 0x0

.field public static final POWER_STATE_ON:I = 0x1

.field public static final PROTECT_BATTERY_STATE_OFF:I = 0x0

.field public static final PROTECT_BATTERY_STATE_ON:I = 0x1

.field public static final TYPE_BATTERY_LEVEL:I = 0x1

.field public static final TYPE_BATTERY_PLUGGED_STATE:I = 0x2

.field public static final TYPE_CURRENT_BATTERY_STATE:I = -0x1

.field public static final TYPE_POWER_SAVE_STATE:I = 0x8

.field public static final TYPE_POWER_STATE:I = 0x4

.field public static final TYPE_PROTECT_BATTERY_STATE:I = 0x10


# instance fields
.field private final eventType:I

.field private final eventValue:I

.field private updateTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 211
    new-instance v0, Lcom/samsung/android/sdhms/SemBatteryEventHistory$1;

    invoke-direct {v0}, Lcom/samsung/android/sdhms/SemBatteryEventHistory$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->updateTime:J

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->eventType:I

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->eventValue:I

    .line 206
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;->-$$Nest$fgetupdateTime(Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->updateTime:J

    .line 188
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;->-$$Nest$fgeteventType(Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->eventType:I

    .line 189
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;->-$$Nest$fgeteventValue(Lcom/samsung/android/sdhms/SemBatteryEventHistory$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->eventValue:I

    .line 190
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdhms/SemBatteryEventHistory;)V
    .registers 4
    .param p1, "copy"    # Lcom/samsung/android/sdhms/SemBatteryEventHistory;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->getUpdatedTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->updateTime:J

    .line 120
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->getType()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->eventType:I

    .line 121
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->eventValue:I

    .line 122
    return-void
.end method


# virtual methods
.method public clone()Lcom/samsung/android/sdhms/SemBatteryEventHistory;
    .registers 2

    .line 243
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 244
    :catch_7
    move-exception v0

    .line 246
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->clone()Lcom/samsung/android/sdhms/SemBatteryEventHistory;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .registers 2

    .line 140
    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->eventType:I

    return v0
.end method

.method public getUpdatedTimestamp()J
    .registers 3

    .line 130
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->updateTime:J

    return-wide v0
.end method

.method public getValue()I
    .registers 2

    .line 150
    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->eventValue:I

    return v0
.end method

.method public shiftTimestamp(J)V
    .registers 5
    .param p1, "time"    # J

    .line 196
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->updateTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->updateTime:J

    .line 197
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 232
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->updateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 233
    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->eventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryEventHistory;->eventValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    return-void
.end method
