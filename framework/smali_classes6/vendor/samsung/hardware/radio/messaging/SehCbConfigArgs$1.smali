.class Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs$1;
.super Ljava/lang/Object;
.source "SehCbConfigArgs.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 24
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs$1;->createFromParcel(Landroid/os/Parcel;)Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 27
    new-instance v0, Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;-><init>()V

    .line 28
    .local v0, "_aidl_out":Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;
    invoke-virtual {v0, p1}, Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;->readFromParcel(Landroid/os/Parcel;)V

    .line 29
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 24
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs$1;->newArray(I)[Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 33
    new-array v0, p1, [Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;

    return-object v0
.end method
