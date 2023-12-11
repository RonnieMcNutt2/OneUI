.class public abstract Lcom/android/ims/internal/IImsVideoCallCallback$Stub;
.super Landroid/os/Binder;
.source "IImsVideoCallCallback.java"

# interfaces
.implements Lcom/android/ims/internal/IImsVideoCallCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsVideoCallCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsVideoCallCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsVideoCallCallback"

.field static final TRANSACTION_changeCallDataUsage:I = 0x5

.field static final TRANSACTION_changeCameraCapabilities:I = 0x6

.field static final TRANSACTION_changePeerDimensions:I = 0x4

.field static final TRANSACTION_changeVideoQuality:I = 0x7

.field static final TRANSACTION_handleCallSessionEvent:I = 0x3

.field static final TRANSACTION_receiveSessionModifyRequest:I = 0x1

.field static final TRANSACTION_receiveSessionModifyResponse:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    const-string v0, "com.android.ims.internal.IImsVideoCallCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsVideoCallCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 62
    if-nez p0, :cond_4

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_4
    const-string v0, "com.android.ims.internal.IImsVideoCallCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/ims/internal/IImsVideoCallCallback;

    if-eqz v1, :cond_14

    .line 67
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/IImsVideoCallCallback;

    return-object v1

    .line 69
    :cond_14
    new-instance v1, Lcom/android/ims/internal/IImsVideoCallCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 78
    packed-switch p0, :pswitch_data_1c

    .line 110
    const/4 v0, 0x0

    return-object v0

    .line 106
    :pswitch_5
    const-string v0, "changeVideoQuality"

    return-object v0

    .line 102
    :pswitch_8
    const-string v0, "changeCameraCapabilities"

    return-object v0

    .line 98
    :pswitch_b
    const-string v0, "changeCallDataUsage"

    return-object v0

    .line 94
    :pswitch_e
    const-string v0, "changePeerDimensions"

    return-object v0

    .line 90
    :pswitch_11
    const-string v0, "handleCallSessionEvent"

    return-object v0

    .line 86
    :pswitch_14
    const-string/jumbo v0, "receiveSessionModifyResponse"

    return-object v0

    .line 82
    :pswitch_18
    const-string/jumbo v0, "receiveSessionModifyRequest"

    return-object v0

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 73
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 318
    const/4 v0, 0x6

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 117
    invoke-static {p1}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 121
    const-string v0, "com.android.ims.internal.IImsVideoCallCallback"

    .line 122
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 123
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    :cond_d
    packed-switch p1, :pswitch_data_86

    .line 133
    packed-switch p1, :pswitch_data_8c

    .line 199
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 129
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    return v1

    .line 192
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 193
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub;->changeVideoQuality(I)V

    .line 195
    goto :goto_85

    .line 184
    .end local v2    # "_arg0":I
    :pswitch_27
    sget-object v2, Landroid/telecom/VideoProfile$CameraCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/VideoProfile$CameraCapabilities;

    .line 185
    .local v2, "_arg0":Landroid/telecom/VideoProfile$CameraCapabilities;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    .line 187
    goto :goto_85

    .line 176
    .end local v2    # "_arg0":Landroid/telecom/VideoProfile$CameraCapabilities;
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 177
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub;->changeCallDataUsage(J)V

    .line 179
    goto :goto_85

    .line 166
    .end local v2    # "_arg0":J
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 168
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 169
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub;->changePeerDimensions(II)V

    .line 171
    goto :goto_85

    .line 158
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 159
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub;->handleCallSessionEvent(I)V

    .line 161
    goto :goto_85

    .line 146
    .end local v2    # "_arg0":I
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 148
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/VideoProfile;

    .line 150
    .local v3, "_arg1":Landroid/telecom/VideoProfile;
    sget-object v4, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/VideoProfile;

    .line 151
    .local v4, "_arg2":Landroid/telecom/VideoProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 153
    goto :goto_85

    .line 138
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telecom/VideoProfile;
    .end local v4    # "_arg2":Landroid/telecom/VideoProfile;
    :pswitch_76
    sget-object v2, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/VideoProfile;

    .line 139
    .local v2, "_arg0":Landroid/telecom/VideoProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 141
    nop

    .line 202
    .end local v2    # "_arg0":Landroid/telecom/VideoProfile;
    :goto_85
    return v1

    :pswitch_data_86
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_76
        :pswitch_5b
        :pswitch_50
        :pswitch_41
        :pswitch_36
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
