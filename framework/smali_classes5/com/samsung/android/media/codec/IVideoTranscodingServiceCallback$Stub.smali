.class public abstract Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IVideoTranscodingServiceCallback.java"

# interfaces
.implements Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onCompleted:I = 0x4

.field static final TRANSACTION_onError:I = 0x5

.field static final TRANSACTION_onProgressChanged:I = 0x3

.field static final TRANSACTION_onReady:I = 0x1

.field static final TRANSACTION_onStarted:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 63
    const-string v0, "com.samsung.android.media.codec.IVideoTranscodingServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 71
    if-nez p0, :cond_4

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_4
    const-string v0, "com.samsung.android.media.codec.IVideoTranscodingServiceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 75
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;

    if-eqz v1, :cond_14

    .line 76
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;

    return-object v1

    .line 78
    :cond_14
    new-instance v1, Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 87
    packed-switch p0, :pswitch_data_1a

    .line 111
    const/4 v0, 0x0

    return-object v0

    .line 107
    :pswitch_5
    const-string/jumbo v0, "onError"

    return-object v0

    .line 103
    :pswitch_9
    const-string/jumbo v0, "onCompleted"

    return-object v0

    .line 99
    :pswitch_d
    const-string/jumbo v0, "onProgressChanged"

    return-object v0

    .line 95
    :pswitch_11
    const-string/jumbo v0, "onStarted"

    return-object v0

    .line 91
    :pswitch_15
    const-string/jumbo v0, "onReady"

    return-object v0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
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

    .line 291
    const/4 v0, 0x4

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 118
    invoke-static {p1}, Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 122
    const-string v0, "com.samsung.android.media.codec.IVideoTranscodingServiceCallback"

    .line 123
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 124
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    :cond_d
    packed-switch p1, :pswitch_data_48

    .line 134
    packed-switch p1, :pswitch_data_4e

    .line 171
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 130
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    return v1

    .line 165
    :pswitch_1c
    invoke-virtual {p0}, Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback$Stub;->onError()V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    goto :goto_46

    .line 159
    :pswitch_23
    invoke-virtual {p0}, Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback$Stub;->onCompleted()V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    goto :goto_46

    .line 151
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 152
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, v2}, Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback$Stub;->onProgressChanged(I)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    goto :goto_46

    .line 144
    .end local v2    # "_arg0":I
    :pswitch_38
    invoke-virtual {p0}, Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback$Stub;->onStarted()V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    goto :goto_46

    .line 138
    :pswitch_3f
    invoke-virtual {p0}, Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback$Stub;->onReady()V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    nop

    .line 174
    :goto_46
    return v1

    nop

    :pswitch_data_48
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_38
        :pswitch_2a
        :pswitch_23
        :pswitch_1c
    .end packed-switch
.end method
