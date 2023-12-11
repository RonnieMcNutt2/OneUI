.class public Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextDeviceActivityDetectorAttribute.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemContextDeviceActivityDetectorAttribute"


# instance fields
.field private mActivity:I

.field private mDuration:I

.field private mNeedsRequestToUpdate:Z

.field private mPosture:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mActivity:I

    .line 55
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mDuration:I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mPosture:I

    .line 57
    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mNeedsRequestToUpdate:Z

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->setAttribute()V

    .line 64
    return-void
.end method

.method public constructor <init>(IIZ)V
    .registers 6
    .param p1, "activity"    # I
    .param p2, "duration"    # I
    .param p3, "needsRequestToUpdate"    # Z

    .line 87
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mActivity:I

    .line 55
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mDuration:I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mPosture:I

    .line 57
    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mNeedsRequestToUpdate:Z

    .line 88
    const v0, 0xff00

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mPosture:I

    .line 89
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mDuration:I

    .line 90
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mActivity:I

    .line 91
    iput-boolean p3, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mNeedsRequestToUpdate:Z

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemContextDeviceActivityDetectorAttribute activity, posture : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mActivity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mPosture:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemContextDeviceActivityDetectorAttribute"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->setAttribute()V

    .line 94
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 70
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mActivity:I

    .line 55
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mDuration:I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mPosture:I

    .line 57
    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mNeedsRequestToUpdate:Z

    .line 71
    return-void
.end method

.method private setAttribute()V
    .registers 9

    .line 124
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 125
    .local v0, "attribute":Landroid/os/Bundle;
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mActivity:I

    const/4 v2, 0x0

    const-string v3, "duration"

    const-string/jumbo v4, "trigger_type"

    const/4 v5, 0x2

    if-ne v1, v5, :cond_1c

    iget-boolean v6, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mNeedsRequestToUpdate:Z

    if-nez v6, :cond_1c

    .line 126
    const/4 v1, 0x3

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_38

    .line 128
    :cond_1c
    const/4 v6, 0x1

    if-ne v1, v5, :cond_2a

    iget-boolean v7, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mNeedsRequestToUpdate:Z

    if-ne v7, v6, :cond_2a

    .line 129
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_38

    .line 131
    :cond_2a
    if-ne v1, v6, :cond_46

    iget-boolean v1, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mNeedsRequestToUpdate:Z

    if-ne v1, v6, :cond_46

    .line 132
    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 133
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mDuration:I

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    :goto_38
    const-string/jumbo v1, "posture"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mPosture:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    const/16 v1, 0x36

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 140
    return-void

    .line 135
    :cond_46
    const-string v1, "SemContextDeviceActivityDetectorAttribute"

    const-string v2, "The attribute is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .registers 7

    .line 105
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mActivity:I

    const/4 v1, 0x0

    const-string v2, "SemContextDeviceActivityDetectorAttribute"

    const/4 v3, 0x1

    if-lt v0, v3, :cond_67

    const/4 v4, 0x2

    if-le v0, v4, :cond_c

    goto :goto_67

    .line 112
    :cond_c
    if-ne v0, v3, :cond_12

    iget-boolean v5, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mNeedsRequestToUpdate:Z

    if-eqz v5, :cond_18

    :cond_12
    if-ne v0, v4, :cond_49

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mDuration:I

    if-lez v0, :cond_49

    .line 114
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This option is NOT supported, activity : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mActivity:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", duration : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mDuration:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", request : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mNeedsRequestToUpdate:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return v1

    .line 118
    :cond_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SemContextDeviceActivityDetector checkAttribute : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mActivity:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;->mDuration:I

    if-ltz v0, :cond_66

    move v1, v3

    :cond_66
    return v1

    .line 107
    :cond_67
    :goto_67
    const-string v0, "SemContextDeviceActivityDetector activity is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return v1
.end method
