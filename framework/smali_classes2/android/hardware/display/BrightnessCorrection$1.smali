.class Landroid/hardware/display/BrightnessCorrection$1;
.super Ljava/lang/Object;
.source "BrightnessCorrection.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/BrightnessCorrection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/display/BrightnessCorrection;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/BrightnessCorrection;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 126
    .local v0, "type":I
    packed-switch v0, :pswitch_data_e

    .line 130
    const/4 v1, 0x0

    return-object v1

    .line 128
    :pswitch_9
    invoke-static {p1}, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;->readFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/BrightnessCorrection;

    move-result-object v1

    return-object v1

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 123
    invoke-virtual {p0, p1}, Landroid/hardware/display/BrightnessCorrection$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/BrightnessCorrection;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/display/BrightnessCorrection;
    .registers 3
    .param p1, "size"    # I

    .line 134
    new-array v0, p1, [Landroid/hardware/display/BrightnessCorrection;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 123
    invoke-virtual {p0, p1}, Landroid/hardware/display/BrightnessCorrection$1;->newArray(I)[Landroid/hardware/display/BrightnessCorrection;

    move-result-object p1

    return-object p1
.end method
