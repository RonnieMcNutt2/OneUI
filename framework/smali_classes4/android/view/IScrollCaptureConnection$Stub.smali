.class public abstract Landroid/view/IScrollCaptureConnection$Stub;
.super Landroid/os/Binder;
.source "IScrollCaptureConnection.java"

# interfaces
.implements Landroid/view/IScrollCaptureConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IScrollCaptureConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IScrollCaptureConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_close:I = 0x4

.field static final TRANSACTION_endCapture:I = 0x3

.field static final TRANSACTION_requestImage:I = 0x2

.field static final TRANSACTION_startCapture:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 63
    const-string v0, "android.view.IScrollCaptureConnection"

    invoke-virtual {p0, p0, v0}, Landroid/view/IScrollCaptureConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IScrollCaptureConnection;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 71
    if-nez p0, :cond_4

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_4
    const-string v0, "android.view.IScrollCaptureConnection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 75
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IScrollCaptureConnection;

    if-eqz v1, :cond_14

    .line 76
    move-object v1, v0

    check-cast v1, Landroid/view/IScrollCaptureConnection;

    return-object v1

    .line 78
    :cond_14
    new-instance v1, Landroid/view/IScrollCaptureConnection$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IScrollCaptureConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 87
    packed-switch p0, :pswitch_data_14

    .line 107
    const/4 v0, 0x0

    return-object v0

    .line 103
    :pswitch_5
    const-string v0, "close"

    return-object v0

    .line 99
    :pswitch_8
    const-string v0, "endCapture"

    return-object v0

    .line 95
    :pswitch_b
    const-string/jumbo v0, "requestImage"

    return-object v0

    .line 91
    :pswitch_f
    const-string/jumbo v0, "startCapture"

    return-object v0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 82
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 283
    const/4 v0, 0x3

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 114
    invoke-static {p1}, Landroid/view/IScrollCaptureConnection$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    const-string v0, "android.view.IScrollCaptureConnection"

    .line 119
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 120
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    :cond_d
    packed-switch p1, :pswitch_data_60

    .line 130
    packed-switch p1, :pswitch_data_66

    .line 168
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 126
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    return v1

    .line 163
    :pswitch_1c
    invoke-virtual {p0}, Landroid/view/IScrollCaptureConnection$Stub;->close()V

    .line 164
    goto :goto_5f

    .line 156
    :pswitch_20
    invoke-virtual {p0}, Landroid/view/IScrollCaptureConnection$Stub;->endCapture()Landroid/os/ICancellationSignal;

    move-result-object v2

    .line 157
    .local v2, "_result":Landroid/os/ICancellationSignal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 159
    goto :goto_5f

    .line 147
    .end local v2    # "_result":Landroid/os/ICancellationSignal;
    :pswitch_2b
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 148
    .local v2, "_arg0":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v2}, Landroid/view/IScrollCaptureConnection$Stub;->requestImage(Landroid/graphics/Rect;)Landroid/os/ICancellationSignal;

    move-result-object v3

    .line 150
    .local v3, "_result":Landroid/os/ICancellationSignal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 152
    goto :goto_5f

    .line 135
    .end local v2    # "_arg0":Landroid/graphics/Rect;
    .end local v3    # "_result":Landroid/os/ICancellationSignal;
    :pswitch_41
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 137
    .local v2, "_arg0":Landroid/view/Surface;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IScrollCaptureCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IScrollCaptureCallbacks;

    move-result-object v3

    .line 138
    .local v3, "_arg1":Landroid/view/IScrollCaptureCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {p0, v2, v3}, Landroid/view/IScrollCaptureConnection$Stub;->startCapture(Landroid/view/Surface;Landroid/view/IScrollCaptureCallbacks;)Landroid/os/ICancellationSignal;

    move-result-object v4

    .line 140
    .local v4, "_result":Landroid/os/ICancellationSignal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 142
    nop

    .line 171
    .end local v2    # "_arg0":Landroid/view/Surface;
    .end local v3    # "_arg1":Landroid/view/IScrollCaptureCallbacks;
    .end local v4    # "_result":Landroid/os/ICancellationSignal;
    :goto_5f
    return v1

    :pswitch_data_60
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_41
        :pswitch_2b
        :pswitch_20
        :pswitch_1c
    .end packed-switch
.end method
