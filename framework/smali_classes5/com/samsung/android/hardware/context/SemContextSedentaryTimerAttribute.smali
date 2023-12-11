.class public Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextSedentaryTimerAttribute.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemContextSedentaryTimerAttribute"


# instance fields
.field private mAlertCount:I

.field private mDeviceType:I

.field private mDuration:I

.field private mEndTime:I

.field private mStartTime:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDeviceType:I

    .line 55
    const/16 v1, 0xe10

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDuration:I

    .line 56
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mAlertCount:I

    .line 57
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mStartTime:I

    .line 58
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mEndTime:I

    .line 64
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->setAttribute()V

    .line 65
    return-void
.end method

.method public constructor <init>(IIIII)V
    .registers 8
    .param p1, "deviceType"    # I
    .param p2, "duration"    # I
    .param p3, "alertCount"    # I
    .param p4, "startTime"    # I
    .param p5, "endTime"    # I

    .line 95
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDeviceType:I

    .line 55
    const/16 v1, 0xe10

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDuration:I

    .line 56
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mAlertCount:I

    .line 57
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mStartTime:I

    .line 58
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mEndTime:I

    .line 96
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDeviceType:I

    .line 97
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDuration:I

    .line 98
    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mAlertCount:I

    .line 99
    iput p4, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mStartTime:I

    .line 100
    iput p5, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mEndTime:I

    .line 101
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->setAttribute()V

    .line 102
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "src"    # Landroid/os/Parcel;

    .line 71
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDeviceType:I

    .line 55
    const/16 v1, 0xe10

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDuration:I

    .line 56
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mAlertCount:I

    .line 57
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mStartTime:I

    .line 58
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mEndTime:I

    .line 72
    return-void
.end method

.method private setAttribute()V
    .registers 4

    .line 135
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 136
    .local v0, "attribute":Landroid/os/Bundle;
    const-string v1, "device_type"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDeviceType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    const-string v1, "duration"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    const-string v1, "alert_count"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mAlertCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    const-string/jumbo v1, "start_time"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mStartTime:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    const-string v1, "end_time"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mEndTime:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    const/16 v1, 0x23

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 142
    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .registers 6

    .line 110
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDeviceType:I

    const/4 v1, 0x0

    const-string v2, "SemContextSedentaryTimerAttribute"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_11

    const/4 v4, 0x2

    if-eq v0, v4, :cond_11

    .line 112
    const-string v0, "The device type is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return v1

    .line 115
    :cond_11
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mDuration:I

    if-gez v0, :cond_1b

    .line 116
    const-string v0, "The duration is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return v1

    .line 119
    :cond_1b
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mAlertCount:I

    if-gez v0, :cond_25

    .line 120
    const-string v0, "The alert count is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return v1

    .line 123
    :cond_25
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mStartTime:I

    if-gez v0, :cond_2f

    .line 124
    const-string v0, "The start time is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return v1

    .line 127
    :cond_2f
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;->mEndTime:I

    if-gez v0, :cond_39

    .line 128
    const-string v0, "The end time is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return v1

    .line 131
    :cond_39
    return v3
.end method
