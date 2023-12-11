.class public abstract Lcom/android/internal/telecom/ICallStreamingService$Stub;
.super Landroid/os/Binder;
.source "ICallStreamingService.java"

# interfaces
.implements Lcom/android/internal/telecom/ICallStreamingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ICallStreamingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ICallStreamingService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onCallStreamingStarted:I = 0x2

.field static final TRANSACTION_onCallStreamingStateChanged:I = 0x4

.field static final TRANSACTION_onCallStreamingStopped:I = 0x3

.field static final TRANSACTION_setStreamingCallAdapter:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "com.android.internal.telecom.ICallStreamingService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/ICallStreamingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ICallStreamingService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_4
    const-string v0, "com.android.internal.telecom.ICallStreamingService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telecom/ICallStreamingService;

    if-eqz v1, :cond_14

    .line 53
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telecom/ICallStreamingService;

    return-object v1

    .line 55
    :cond_14
    new-instance v1, Lcom/android/internal/telecom/ICallStreamingService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/ICallStreamingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 64
    packed-switch p0, :pswitch_data_16

    .line 84
    const/4 v0, 0x0

    return-object v0

    .line 80
    :pswitch_5
    const-string/jumbo v0, "onCallStreamingStateChanged"

    return-object v0

    .line 76
    :pswitch_9
    const-string/jumbo v0, "onCallStreamingStopped"

    return-object v0

    .line 72
    :pswitch_d
    const-string/jumbo v0, "onCallStreamingStarted"

    return-object v0

    .line 68
    :pswitch_11
    const-string/jumbo v0, "setStreamingCallAdapter"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 59
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 215
    const/4 v0, 0x3

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 91
    invoke-static {p1}, Lcom/android/internal/telecom/ICallStreamingService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    const-string v0, "com.android.internal.telecom.ICallStreamingService"

    .line 96
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 97
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    :cond_d
    packed-switch p1, :pswitch_data_4a

    .line 107
    packed-switch p1, :pswitch_data_50

    .line 140
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 103
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    return v1

    .line 133
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 134
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ICallStreamingService$Stub;->onCallStreamingStateChanged(I)V

    .line 136
    goto :goto_49

    .line 127
    .end local v2    # "_arg0":I
    :pswitch_27
    invoke-virtual {p0}, Lcom/android/internal/telecom/ICallStreamingService$Stub;->onCallStreamingStopped()V

    .line 128
    goto :goto_49

    .line 120
    :pswitch_2b
    sget-object v2, Landroid/telecom/StreamingCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/StreamingCall;

    .line 121
    .local v2, "_arg0":Landroid/telecom/StreamingCall;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 122
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ICallStreamingService$Stub;->onCallStreamingStarted(Landroid/telecom/StreamingCall;)V

    .line 123
    goto :goto_49

    .line 112
    .end local v2    # "_arg0":Landroid/telecom/StreamingCall;
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telecom/IStreamingCallAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IStreamingCallAdapter;

    move-result-object v2

    .line 113
    .local v2, "_arg0":Lcom/android/internal/telecom/IStreamingCallAdapter;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 114
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ICallStreamingService$Stub;->setStreamingCallAdapter(Lcom/android/internal/telecom/IStreamingCallAdapter;)V

    .line 115
    nop

    .line 143
    .end local v2    # "_arg0":Lcom/android/internal/telecom/IStreamingCallAdapter;
    :goto_49
    return v1

    :pswitch_data_4a
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_2b
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
