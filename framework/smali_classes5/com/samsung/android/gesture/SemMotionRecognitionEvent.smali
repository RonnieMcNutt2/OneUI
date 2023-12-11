.class public Lcom/samsung/android/gesture/SemMotionRecognitionEvent;
.super Ljava/lang/Object;
.source "SemMotionRecognitionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BLOW:I = 0x42

.field public static final BOUNCE:I = 0x2e

.field public static final BT_SHARING_RECEIVE_NOT_READY:I = 0x29

.field public static final BT_SHARING_RECEIVE_READY:I = 0x28

.field public static final BT_SHARING_SEND_PAUSE:I = 0x2b

.field public static final BT_SHARING_SEND_START:I = 0x2a

.field public static final BT_SHARING_SEND_STOP:I = 0x2c

.field public static final CALLPOSE_L:I = 0x4c

.field public static final CALLPOSE_NONE:I = 0x64

.field public static final CALLPOSE_R:I = 0x4d

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/gesture/SemMotionRecognitionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIRECT_CALL:I = 0x44

.field public static final DIRECT_CALL_LEFT:I = 0x65

.field public static final DIRECT_CALL_RIGHT:I = 0x66

.field public static final FLAT:I = 0x47

.field public static final FLIP_SCREEN_DOWN:I = 0xa

.field public static final FLIP_SCREEN_UP:I = 0x56

.field public static final LOCK_EXECUTE_APP:I = 0x45

.field public static final LOCK_EXECUTE_CAMERA_L:I = 0x49

.field public static final LOCK_EXECUTE_CAMERA_R:I = 0x4a

.field public static final MAX:I = 0x74

.field public static final NONE:I = 0x0

.field public static final NOT_ELEVATOR:I = 0x72

.field public static final ONE_TAPPING_GYRO:I = 0x3e

.field public static final ONE_TIPPING_GYRO:I = 0x40

.field public static final OUT_OF_ELEVATOR:I = 0x73

.field public static final PANNING_GYRO:I = 0x3d

.field public static final ROTATE_0:I = 0x1c

.field public static final ROTATE_180:I = 0x1e

.field public static final ROTATE_270:I = 0x1f

.field public static final ROTATE_90:I = 0x1d

.field public static final ROTATE_HORIZONTAL:I = 0x2d

.field public static final ROTATE_START:I = 0x20

.field public static final ROTATE_STOP:I = 0x21

.field public static final ROTATION_AXIS_X:I = 0x5e

.field public static final ROTATION_AXIS_Y:I = 0x5f

.field public static final ROTATION_AXIS_Z:I = 0x60

.field public static final SCREEN_UP_STEADY:I = 0x63

.field public static final SHAKE:I = 0x22

.field public static final SHAKE_START:I = 0x23

.field public static final SHAKE_STOP:I = 0x24

.field public static final SHORT_SHAKE:I = 0x25

.field public static final SHORT_SHAKE_START:I = 0x26

.field public static final SHORT_SHAKE_STOP:I = 0x27

.field public static final SMART_ALERT:I = 0x43

.field public static final SMART_ALERT_SETTING:I = 0x62

.field public static final SMART_RELAY:I = 0x71

.field public static final SMART_SCROLL_CAMERA_OFF:I = 0x6f

.field public static final SMART_SCROLL_CAMERA_ON:I = 0x70

.field public static final SMART_SCROLL_TILT_DOWN_START:I = 0x68

.field public static final SMART_SCROLL_TILT_DOWN_START_LAND:I = 0x6c

.field public static final SMART_SCROLL_TILT_FACE_IN_STOP:I = 0x69

.field public static final SMART_SCROLL_TILT_FACE_IN_STOP_LAND:I = 0x6d

.field public static final SMART_SCROLL_TILT_FACE_OUT_STOP:I = 0x6a

.field public static final SMART_SCROLL_TILT_FACE_OUT_STOP_LAND:I = 0x6e

.field public static final SMART_SCROLL_TILT_UP_START:I = 0x67

.field public static final SMART_SCROLL_TILT_UP_START_LAND:I = 0x6b

.field public static final SNAP1_X_NEGATIVE:I = 0x30

.field public static final SNAP1_X_POSITIVE:I = 0x2f

.field public static final SNAP1_Y_NEGATIVE:I = 0x32

.field public static final SNAP1_Y_POSITIVE:I = 0x31

.field public static final SNAP1_Z_NEGATIVE:I = 0x34

.field public static final SNAP1_Z_POSITIVE:I = 0x33

.field public static final SNAP2_X_NEGATIVE:I = 0x36

.field public static final SNAP2_X_POSITIVE:I = 0x35

.field public static final SNAP2_Y_NEGATIVE:I = 0x38

.field public static final SNAP2_Y_POSITIVE:I = 0x37

.field public static final SNAP2_Z_NEGATIVE:I = 0x3a

.field public static final SNAP2_Z_POSITIVE:I = 0x39

.field public static final SNAP_LEFT:I = 0x3b

.field public static final SNAP_RIGHT:I = 0x3c

.field public static final SNAP_X_NEGATIVE:I = 0x3

.field public static final SNAP_X_POSITIVE:I = 0x2

.field public static final SNAP_Y_NEGATIVE:I = 0x5

.field public static final SNAP_Y_POSITIVE:I = 0x4

.field public static final SNAP_Z_NEGATIVE:I = 0x7

.field public static final SNAP_Z_POSITIVE:I = 0x6

.field public static final SPEAKER_PHONE_OFF:I = 0x9

.field public static final SPEAKER_PHONE_ON:I = 0x8

.field public static final TILT:I = 0x48

.field public static final TILT_BACK:I = 0x17

.field public static final TILT_DOWN_LEVEL_1:I = 0x51

.field public static final TILT_DOWN_LEVEL_1_LAND:I = 0x5a

.field public static final TILT_DOWN_LEVEL_2:I = 0x52

.field public static final TILT_DOWN_LEVEL_2_LAND:I = 0x5b

.field public static final TILT_DOWN_LEVEL_3:I = 0x53

.field public static final TILT_DOWN_LEVEL_3_LAND:I = 0x5c

.field public static final TILT_FRONT:I = 0x16

.field public static final TILT_FRONT_BACK_END:I = 0x18

.field public static final TILT_LANDSCAPE_LEFT_LEVEL_1:I = 0x11

.field public static final TILT_LANDSCAPE_LEFT_LEVEL_2:I = 0x12

.field public static final TILT_LANDSCAPE_LEFT_RIGHT_STOP:I = 0x15

.field public static final TILT_LANDSCAPE_RIGHT_LEVEL_1:I = 0x13

.field public static final TILT_LANDSCAPE_RIGHT_LEVEL_2:I = 0x14

.field public static final TILT_LEFT:I = 0x19

.field public static final TILT_LEFT_RIGHT_END:I = 0x1b

.field public static final TILT_LEVEL_FLAT:I = 0x55

.field public static final TILT_LEVEL_ZERO:I = 0x54

.field public static final TILT_LEVEL_ZERO_LAND:I = 0x5d

.field public static final TILT_PORTRAIT_BACK:I = 0xc

.field public static final TILT_PORTRAIT_FRONT:I = 0xb

.field public static final TILT_PORTRAIT_FRONT_BACK_STOP:I = 0xd

.field public static final TILT_PORTRAIT_LEFT:I = 0xe

.field public static final TILT_PORTRAIT_LEFT_RIGHT_STOP:I = 0x10

.field public static final TILT_PORTRAIT_RIGHT:I = 0xf

.field public static final TILT_RIGHT:I = 0x1a

.field public static final TILT_TO_UNLOCK:I = 0x4b

.field public static final TILT_TO_UNLOCK_LAND:I = 0x61

.field public static final TILT_UP_LEVEL_1:I = 0x4e

.field public static final TILT_UP_LEVEL_1_LAND:I = 0x57

.field public static final TILT_UP_LEVEL_2:I = 0x4f

.field public static final TILT_UP_LEVEL_2_LAND:I = 0x58

.field public static final TILT_UP_LEVEL_3:I = 0x50

.field public static final TILT_UP_LEVEL_3_LAND:I = 0x59

.field public static final TWO_TAPPING:I = 0x1

.field public static final TWO_TAPPING_GYRO:I = 0x3f

.field public static final TWO_TIPPING_GYRO:I = 0x41

.field public static final VOLUMEDOWN:I = 0x46


# instance fields
.field private motion:I

.field private panningDx:I

.field private panningDxImage:I

.field private panningDy:I

.field private panningDyImage:I

.field private panningDz:I

.field private panningDzImage:I

.field private tilt:I

.field private walkingStatus:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1317
    new-instance v0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent$1;

    invoke-direct {v0}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent$1;-><init>()V

    sput-object v0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 922
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->motion:I

    .line 923
    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDx:I

    .line 924
    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDy:I

    .line 925
    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDz:I

    .line 926
    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDxImage:I

    .line 927
    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDyImage:I

    .line 928
    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDzImage:I

    .line 929
    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->walkingStatus:I

    .line 930
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 938
    invoke-virtual {p0, p1}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 939
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 1274
    const/4 v0, 0x0

    return v0
.end method

.method public getMotion()I
    .registers 2

    .line 947
    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->motion:I

    return v0
.end method

.method public getPanningDx()I
    .registers 2

    .line 1020
    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDx:I

    return v0
.end method

.method public getPanningDxImage()I
    .registers 2

    .line 1111
    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDxImage:I

    return v0
.end method

.method public getPanningDy()I
    .registers 2

    .line 1030
    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDy:I

    return v0
.end method

.method public getPanningDyImage()I
    .registers 2

    .line 1122
    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDyImage:I

    return v0
.end method

.method public getPanningDz()I
    .registers 2

    .line 1040
    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDz:I

    return v0
.end method

.method public getPanningDzImage()I
    .registers 2

    .line 1132
    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDzImage:I

    return v0
.end method

.method public getSmartMotion()I
    .registers 2

    .line 1050
    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDz:I

    return v0
.end method

.method public getTilt()I
    .registers 2

    .line 1060
    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->tilt:I

    return v0
.end method

.method public getWalkingStatus()I
    .registers 2

    .line 1070
    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->walkingStatus:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 1301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->motion:I

    .line 1302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDx:I

    .line 1303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDy:I

    .line 1304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDz:I

    .line 1305
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDxImage:I

    .line 1306
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDyImage:I

    .line 1307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDzImage:I

    .line 1308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->tilt:I

    .line 1309
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->walkingStatus:I

    .line 1310
    return-void
.end method

.method public setMotion(I)V
    .registers 3
    .param p1, "m"    # I

    .line 957
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->motion:I

    .line 958
    if-ltz p1, :cond_b

    const/16 v0, 0x74

    if-gt p1, v0, :cond_b

    .line 959
    iput p1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->motion:I

    .line 961
    :cond_b
    return-void
.end method

.method public setPanningDx(I)V
    .registers 2
    .param p1, "dx"    # I

    .line 970
    iput p1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDx:I

    .line 971
    return-void
.end method

.method public setPanningDxImage(I)V
    .registers 2
    .param p1, "dx"    # I

    .line 1080
    iput p1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDxImage:I

    .line 1081
    return-void
.end method

.method public setPanningDy(I)V
    .registers 2
    .param p1, "dy"    # I

    .line 980
    iput p1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDy:I

    .line 981
    return-void
.end method

.method public setPanningDyImage(I)V
    .registers 2
    .param p1, "dy"    # I

    .line 1090
    iput p1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDyImage:I

    .line 1091
    return-void
.end method

.method public setPanningDz(I)V
    .registers 2
    .param p1, "dz"    # I

    .line 990
    iput p1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDz:I

    .line 991
    return-void
.end method

.method public setPanningDzImage(I)V
    .registers 2
    .param p1, "dz"    # I

    .line 1100
    iput p1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDzImage:I

    .line 1101
    return-void
.end method

.method public setTilt(I)V
    .registers 2
    .param p1, "t"    # I

    .line 1000
    iput p1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->tilt:I

    .line 1001
    return-void
.end method

.method public setWalkingStatus(I)V
    .registers 2
    .param p1, "ws"    # I

    .line 1010
    iput p1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->walkingStatus:I

    .line 1011
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->motion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1144
    .local v0, "string":Ljava/lang/String;
    iget v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->motion:I

    sparse-switch v1, :sswitch_data_11a

    goto/16 :goto_115

    .line 1152
    :sswitch_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MAX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_115

    .line 1156
    :sswitch_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "OUT_OF_ELEVATOR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_115

    .line 1155
    :sswitch_4a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NOT_ELEVATOR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_115

    .line 1153
    :sswitch_5f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SMART_RELAY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_115

    .line 1150
    :sswitch_74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DIRECT_CALL_RIGHT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_115

    .line 1149
    :sswitch_89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DIRECT_CALL_LEFT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_115

    .line 1154
    :sswitch_9e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SCREEN_UP_STEADY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_115

    .line 1147
    :sswitch_b2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "FLIP_SCREEN_UP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_115

    .line 1151
    :sswitch_c6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "FLAT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_115

    .line 1148
    :sswitch_da
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SMART_ALERT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_115

    .line 1146
    :sswitch_ee
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "FLIP_SCREEN_DOWN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_115

    .line 1145
    :sswitch_102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1264
    :goto_115
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1265
    return-object v0

    :sswitch_data_11a
    .sparse-switch
        0x0 -> :sswitch_102
        0xa -> :sswitch_ee
        0x43 -> :sswitch_da
        0x47 -> :sswitch_c6
        0x56 -> :sswitch_b2
        0x63 -> :sswitch_9e
        0x65 -> :sswitch_89
        0x66 -> :sswitch_74
        0x71 -> :sswitch_5f
        0x72 -> :sswitch_4a
        0x73 -> :sswitch_35
        0x74 -> :sswitch_20
    .end sparse-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1283
    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->motion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1284
    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1285
    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1286
    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDz:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1287
    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDxImage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1288
    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDyImage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1289
    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->panningDzImage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1290
    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->tilt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1291
    iget v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->walkingStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1292
    return-void
.end method
