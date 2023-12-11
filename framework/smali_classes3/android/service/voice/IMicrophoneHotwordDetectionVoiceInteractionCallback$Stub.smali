.class public abstract Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback$Stub;
.super Landroid/os/Binder;
.source "IMicrophoneHotwordDetectionVoiceInteractionCallback.java"

# interfaces
.implements Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onDetected:I = 0x1

.field static final TRANSACTION_onHotwordDetectionServiceFailure:I = 0x2

.field static final TRANSACTION_onRejected:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    const-string v0, "android.service.voice.IMicrophoneHotwordDetectionVoiceInteractionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 46
    if-nez p0, :cond_4

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_4
    const-string v0, "android.service.voice.IMicrophoneHotwordDetectionVoiceInteractionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 50
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    if-eqz v1, :cond_14

    .line 51
    move-object v1, v0

    check-cast v1, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    return-object v1

    .line 53
    :cond_14
    new-instance v1, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 62
    packed-switch p0, :pswitch_data_12

    .line 78
    const/4 v0, 0x0

    return-object v0

    .line 74
    :pswitch_5
    const-string/jumbo v0, "onRejected"

    return-object v0

    .line 70
    :pswitch_9
    const-string/jumbo v0, "onHotwordDetectionServiceFailure"

    return-object v0

    .line 66
    :pswitch_d
    const-string/jumbo v0, "onDetected"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 57
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 201
    const/4 v0, 0x2

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 85
    invoke-static {p1}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 89
    const-string v0, "android.service.voice.IMicrophoneHotwordDetectionVoiceInteractionCallback"

    .line 90
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 91
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    :cond_d
    packed-switch p1, :pswitch_data_5a

    .line 101
    packed-switch p1, :pswitch_data_60

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 97
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return v1

    .line 126
    :pswitch_1c
    sget-object v2, Landroid/service/voice/HotwordRejectedResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/voice/HotwordRejectedResult;

    .line 127
    .local v2, "_arg0":Landroid/service/voice/HotwordRejectedResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, v2}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback$Stub;->onRejected(Landroid/service/voice/HotwordRejectedResult;)V

    .line 129
    goto :goto_59

    .line 118
    .end local v2    # "_arg0":Landroid/service/voice/HotwordRejectedResult;
    :pswitch_2b
    sget-object v2, Landroid/service/voice/HotwordDetectionServiceFailure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/voice/HotwordDetectionServiceFailure;

    .line 119
    .local v2, "_arg0":Landroid/service/voice/HotwordDetectionServiceFailure;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    invoke-virtual {p0, v2}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback$Stub;->onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V

    .line 121
    goto :goto_59

    .line 106
    .end local v2    # "_arg0":Landroid/service/voice/HotwordDetectionServiceFailure;
    :pswitch_3a
    sget-object v2, Landroid/service/voice/HotwordDetectedResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/voice/HotwordDetectedResult;

    .line 108
    .local v2, "_arg0":Landroid/service/voice/HotwordDetectedResult;
    sget-object v3, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioFormat;

    .line 110
    .local v3, "_arg1":Landroid/media/AudioFormat;
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 111
    .local v4, "_arg2":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback$Stub;->onDetected(Landroid/service/voice/HotwordDetectedResult;Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;)V

    .line 113
    nop

    .line 136
    .end local v2    # "_arg0":Landroid/service/voice/HotwordDetectedResult;
    .end local v3    # "_arg1":Landroid/media/AudioFormat;
    .end local v4    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :goto_59
    return v1

    :pswitch_data_5a
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
