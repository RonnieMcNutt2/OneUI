.class Landroid/os/vibrator/VibrationEffectSegment$1;
.super Ljava/lang/Object;
.source "VibrationEffectSegment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/vibrator/VibrationEffectSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/vibrator/VibrationEffectSegment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/vibrator/VibrationEffectSegment;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_2e

    .line 206
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected vibration event type token in parcel."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :pswitch_f
    new-instance v0, Landroid/os/vibrator/SemHapticSegment;

    invoke-direct {v0, p1}, Landroid/os/vibrator/SemHapticSegment;-><init>(Landroid/os/Parcel;)V

    return-object v0

    .line 196
    :pswitch_15
    new-instance v0, Landroid/os/vibrator/RampSegment;

    invoke-direct {v0, p1}, Landroid/os/vibrator/RampSegment;-><init>(Landroid/os/Parcel;)V

    return-object v0

    .line 194
    :pswitch_1b
    new-instance v0, Landroid/os/vibrator/StepSegment;

    invoke-direct {v0, p1}, Landroid/os/vibrator/StepSegment;-><init>(Landroid/os/Parcel;)V

    return-object v0

    .line 200
    :pswitch_21
    new-instance v0, Landroid/os/vibrator/PrimitiveSegment;

    invoke-direct {v0, p1}, Landroid/os/vibrator/PrimitiveSegment;-><init>(Landroid/os/Parcel;)V

    return-object v0

    .line 198
    :pswitch_27
    new-instance v0, Landroid/os/vibrator/PrebakedSegment;

    invoke-direct {v0, p1}, Landroid/os/vibrator/PrebakedSegment;-><init>(Landroid/os/Parcel;)V

    return-object v0

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_27
        :pswitch_21
        :pswitch_1b
        :pswitch_15
        :pswitch_f
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 189
    invoke-virtual {p0, p1}, Landroid/os/vibrator/VibrationEffectSegment$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/vibrator/VibrationEffectSegment;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/os/vibrator/VibrationEffectSegment;
    .registers 3
    .param p1, "size"    # I

    .line 213
    new-array v0, p1, [Landroid/os/vibrator/VibrationEffectSegment;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 189
    invoke-virtual {p0, p1}, Landroid/os/vibrator/VibrationEffectSegment$1;->newArray(I)[Landroid/os/vibrator/VibrationEffectSegment;

    move-result-object p1

    return-object p1
.end method
