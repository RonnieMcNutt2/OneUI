.class public Lcom/samsung/android/hardware/context/SemContextAttribute;
.super Ljava/lang/Object;
.source "SemContextAttribute.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextAttribute;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAttribute:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 62
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAttribute;->mAttribute:Landroid/os/Bundle;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAttribute;->mAttribute:Landroid/os/Bundle;

    .line 90
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;->readFromParcel(Landroid/os/Parcel;)V

    .line 91
    return-void
.end method

.method static getDefaultAttribute(I)Lcom/samsung/android/hardware/context/SemContextAttribute;
    .registers 2
    .param p0, "service"    # I

    .line 96
    sparse-switch p0, :sswitch_data_80

    .line 156
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .local v0, "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto/16 :goto_7f

    .line 153
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :sswitch_a
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;-><init>()V

    .line 154
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto/16 :goto_7f

    .line 150
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :sswitch_11
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;-><init>()V

    .line 151
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto/16 :goto_7f

    .line 147
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :sswitch_18
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityCalibrationAttribute;-><init>()V

    .line 148
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto/16 :goto_7f

    .line 141
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :sswitch_1f
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextCarryingDetectionAttribute;-><init>()V

    .line 142
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_7f

    .line 144
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :sswitch_25
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextInterruptedGyroAttribute;-><init>()V

    .line 145
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_7f

    .line 138
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :sswitch_2b
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;-><init>()V

    .line 139
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_7f

    .line 135
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :sswitch_31
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;-><init>()V

    .line 136
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_7f

    .line 132
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :sswitch_37
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableModeAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableModeAttribute;-><init>()V

    .line 133
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_7f

    .line 129
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :sswitch_3d
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSedentaryTimerAttribute;-><init>()V

    .line 130
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_7f

    .line 126
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :sswitch_43
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitorAttribute;-><init>()V

    .line 127
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_7f

    .line 122
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :sswitch_49
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;-><init>()V

    .line 124
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_7f

    .line 119
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :sswitch_4f
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlertAttribute;-><init>()V

    .line 120
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_7f

    .line 116
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :sswitch_55
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;-><init>()V

    .line 117
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_7f

    .line 113
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :sswitch_5b
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityLocationLoggingAttribute;-><init>()V

    .line 114
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_7f

    .line 110
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :sswitch_61
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextShakeMotionAttribute;-><init>()V

    .line 111
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_7f

    .line 107
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :sswitch_67
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAutoRotationAttribute;-><init>()V

    .line 108
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_7f

    .line 104
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :sswitch_6d
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextStepCountAlertAttribute;-><init>()V

    .line 105
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_7f

    .line 101
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :sswitch_73
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;-><init>()V

    .line 102
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    goto :goto_7f

    .line 98
    .end local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    :sswitch_79
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;-><init>()V

    .line 99
    .restart local v0    # "attribute":Lcom/samsung/android/hardware/context/SemContextAttribute;
    nop

    .line 159
    :goto_7f
    return-object v0

    :sswitch_data_80
    .sparse-switch
        0x1 -> :sswitch_79
        0x2 -> :sswitch_73
        0x3 -> :sswitch_6d
        0x6 -> :sswitch_67
        0xc -> :sswitch_61
        0x18 -> :sswitch_5b
        0x1b -> :sswitch_55
        0x1c -> :sswitch_4f
        0x1e -> :sswitch_49
        0x21 -> :sswitch_43
        0x23 -> :sswitch_3d
        0x24 -> :sswitch_37
        0x27 -> :sswitch_31
        0x2f -> :sswitch_2b
        0x30 -> :sswitch_25
        0x33 -> :sswitch_1f
        0x35 -> :sswitch_18
        0x36 -> :sswitch_11
        0x38 -> :sswitch_a
    .end sparse-switch
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 215
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAttribute;->mAttribute:Landroid/os/Bundle;

    .line 216
    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .registers 2

    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method public describeContents()I
    .registers 2

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public getAttribute(I)Landroid/os/Bundle;
    .registers 4
    .param p1, "service"    # I

    .line 180
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextAttribute;->mAttribute:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x0

    return-object v1

    .line 182
    :cond_e
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextAttribute;->mAttribute:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method public setAttribute(ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "service"    # I
    .param p2, "attribute"    # Landroid/os/Bundle;

    .line 193
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAttribute;->mAttribute:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 194
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 205
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAttribute;->mAttribute:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 206
    return-void
.end method
