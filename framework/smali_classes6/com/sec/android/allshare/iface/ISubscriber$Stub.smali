.class public abstract Lcom/sec/android/allshare/iface/ISubscriber$Stub;
.super Landroid/os/Binder;
.source "ISubscriber.java"

# interfaces
.implements Lcom/sec/android/allshare/iface/ISubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/iface/ISubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/iface/ISubscriber$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getCaptionFilePathFromURI:I = 0x6

.field static final TRANSACTION_getServiceVersion:I = 0x5

.field static final TRANSACTION_requestCVAsync:I = 0x1

.field static final TRANSACTION_requestCVSync:I = 0x2

.field static final TRANSACTION_subscribeEvent:I = 0x3

.field static final TRANSACTION_unsubscribeEvent:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 74
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 75
    const-string v0, "com.sec.android.allshare.iface.ISubscriber"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/allshare/iface/ISubscriber$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/allshare/iface/ISubscriber;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 83
    if-nez p0, :cond_4

    .line 84
    const/4 v0, 0x0

    return-object v0

    .line 86
    :cond_4
    const-string v0, "com.sec.android.allshare.iface.ISubscriber"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 87
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/android/allshare/iface/ISubscriber;

    if-eqz v1, :cond_14

    .line 88
    move-object v1, v0

    check-cast v1, Lcom/sec/android/allshare/iface/ISubscriber;

    return-object v1

    .line 90
    :cond_14
    new-instance v1, Lcom/sec/android/allshare/iface/ISubscriber$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/android/allshare/iface/ISubscriber$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 99
    packed-switch p0, :pswitch_data_18

    .line 127
    const/4 v0, 0x0

    return-object v0

    .line 123
    :pswitch_5
    const-string v0, "getCaptionFilePathFromURI"

    return-object v0

    .line 119
    :pswitch_8
    const-string v0, "getServiceVersion"

    return-object v0

    .line 115
    :pswitch_b
    const-string v0, "unsubscribeEvent"

    return-object v0

    .line 111
    :pswitch_e
    const-string v0, "subscribeEvent"

    return-object v0

    .line 107
    :pswitch_11
    const-string v0, "requestCVSync"

    return-object v0

    .line 103
    :pswitch_14
    const-string v0, "requestCVAsync"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
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

    .line 94
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 381
    const/4 v0, 0x5

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 134
    invoke-static {p1}, Lcom/sec/android/allshare/iface/ISubscriber$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 138
    const-string v0, "com.sec.android.allshare.iface.ISubscriber"

    .line 139
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 140
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    :cond_d
    packed-switch p1, :pswitch_data_9e

    .line 150
    packed-switch p1, :pswitch_data_a4

    .line 218
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 146
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    return v1

    .line 209
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, v2}, Lcom/sec/android/allshare/iface/ISubscriber$Stub;->getCaptionFilePathFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    goto :goto_9d

    .line 201
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_2e
    invoke-virtual {p0}, Lcom/sec/android/allshare/iface/ISubscriber$Stub;->getServiceVersion()Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    goto :goto_9d

    .line 191
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Lcom/sec/android/allshare/iface/CVMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/allshare/iface/CVMessage;

    .line 194
    .local v3, "_arg1":Lcom/sec/android/allshare/iface/CVMessage;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {p0, v2, v3}, Lcom/sec/android/allshare/iface/ISubscriber$Stub;->unsubscribeEvent(Ljava/lang/String;Lcom/sec/android/allshare/iface/CVMessage;)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    goto :goto_9d

    .line 179
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/sec/android/allshare/iface/CVMessage;
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 181
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Lcom/sec/android/allshare/iface/CVMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/allshare/iface/CVMessage;

    .line 182
    .restart local v3    # "_arg1":Lcom/sec/android/allshare/iface/CVMessage;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, v2, v3}, Lcom/sec/android/allshare/iface/ISubscriber$Stub;->subscribeEvent(Ljava/lang/String;Lcom/sec/android/allshare/iface/CVMessage;)Z

    move-result v4

    .line 184
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 186
    goto :goto_9d

    .line 167
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v4    # "_result":Z
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 169
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Lcom/sec/android/allshare/iface/CVMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/allshare/iface/CVMessage;

    .line 170
    .restart local v3    # "_arg1":Lcom/sec/android/allshare/iface/CVMessage;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, v2, v3}, Lcom/sec/android/allshare/iface/ISubscriber$Stub;->requestCVSync(Ljava/lang/String;Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;

    move-result-object v4

    .line 172
    .local v4, "_result":Lcom/sec/android/allshare/iface/CVMessage;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 174
    goto :goto_9d

    .line 155
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v4    # "_result":Lcom/sec/android/allshare/iface/CVMessage;
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 157
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Lcom/sec/android/allshare/iface/CVMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/allshare/iface/CVMessage;

    .line 158
    .restart local v3    # "_arg1":Lcom/sec/android/allshare/iface/CVMessage;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, v2, v3}, Lcom/sec/android/allshare/iface/ISubscriber$Stub;->requestCVAsync(Ljava/lang/String;Lcom/sec/android/allshare/iface/CVMessage;)Z

    move-result v4

    .line 160
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 162
    nop

    .line 221
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v4    # "_result":Z
    :goto_9d
    return v1

    :pswitch_data_9e
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_83
        :pswitch_69
        :pswitch_4f
        :pswitch_39
        :pswitch_2e
        :pswitch_1c
    .end packed-switch
.end method
