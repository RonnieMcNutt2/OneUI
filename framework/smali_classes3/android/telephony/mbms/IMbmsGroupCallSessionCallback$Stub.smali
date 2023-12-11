.class public abstract Landroid/telephony/mbms/IMbmsGroupCallSessionCallback$Stub;
.super Landroid/os/Binder;
.source "IMbmsGroupCallSessionCallback.java"

# interfaces
.implements Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/IMbmsGroupCallSessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onAvailableSaisUpdated:I = 0x2

.field static final TRANSACTION_onError:I = 0x1

.field static final TRANSACTION_onMiddlewareReady:I = 0x4

.field static final TRANSACTION_onServiceInterfaceAvailable:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "android.telephony.mbms.IMbmsGroupCallSessionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_4

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_4
    const-string v0, "android.telephony.mbms.IMbmsGroupCallSessionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;

    if-eqz v1, :cond_14

    .line 47
    move-object v1, v0

    check-cast v1, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;

    return-object v1

    .line 49
    :cond_14
    new-instance v1, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 58
    packed-switch p0, :pswitch_data_16

    .line 78
    const/4 v0, 0x0

    return-object v0

    .line 74
    :pswitch_5
    const-string/jumbo v0, "onMiddlewareReady"

    return-object v0

    .line 70
    :pswitch_9
    const-string/jumbo v0, "onServiceInterfaceAvailable"

    return-object v0

    .line 66
    :pswitch_d
    const-string/jumbo v0, "onAvailableSaisUpdated"

    return-object v0

    .line 62
    :pswitch_11
    const-string/jumbo v0, "onError"

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

    .line 53
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 219
    const/4 v0, 0x3

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 85
    invoke-static {p1}, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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
    const-string v0, "android.telephony.mbms.IMbmsGroupCallSessionCallback"

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
    packed-switch p1, :pswitch_data_56

    .line 101
    packed-switch p1, :pswitch_data_5c

    .line 141
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 97
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return v1

    .line 136
    :pswitch_1c
    invoke-virtual {p0}, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback$Stub;->onMiddlewareReady()V

    .line 137
    goto :goto_55

    .line 127
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 130
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, v2, v3}, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback$Stub;->onServiceInterfaceAvailable(Ljava/lang/String;I)V

    .line 132
    goto :goto_55

    .line 116
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_2f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 117
    .local v2, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v3

    .line 119
    .local v3, "_arg0":Ljava/util/List;
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v4

    .line 120
    .local v4, "_arg1":Ljava/util/List;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, v3, v4}, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback$Stub;->onAvailableSaisUpdated(Ljava/util/List;Ljava/util/List;)V

    .line 122
    goto :goto_55

    .line 106
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "_arg0":Ljava/util/List;
    .end local v4    # "_arg1":Ljava/util/List;
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 108
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 110
    invoke-virtual {p0, v2, v3}, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback$Stub;->onError(ILjava/lang/String;)V

    .line 111
    nop

    .line 144
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :goto_55
    return v1

    :pswitch_data_56
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_46
        :pswitch_2f
        :pswitch_20
        :pswitch_1c
    .end packed-switch
.end method
