.class public abstract Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub;
.super Landroid/os/Binder;
.source "ITvInteractiveAppManagerCallback.java"

# interfaces
.implements Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onInteractiveAppServiceAdded:I = 0x1

.field static final TRANSACTION_onInteractiveAppServiceRemoved:I = 0x2

.field static final TRANSACTION_onInteractiveAppServiceUpdated:I = 0x3

.field static final TRANSACTION_onStateChanged:I = 0x5

.field static final TRANSACTION_onTvInteractiveAppServiceInfoUpdated:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppManagerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_4
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppManagerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;

    if-eqz v1, :cond_14

    .line 53
    move-object v1, v0

    check-cast v1, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;

    return-object v1

    .line 55
    :cond_14
    new-instance v1, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 64
    packed-switch p0, :pswitch_data_14

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 84
    :pswitch_5
    const-string v0, "onStateChanged"

    return-object v0

    .line 80
    :pswitch_8
    const-string v0, "onTvInteractiveAppServiceInfoUpdated"

    return-object v0

    .line 76
    :pswitch_b
    const-string v0, "onInteractiveAppServiceUpdated"

    return-object v0

    .line 72
    :pswitch_e
    const-string v0, "onInteractiveAppServiceRemoved"

    return-object v0

    .line 68
    :pswitch_11
    const-string v0, "onInteractiveAppServiceAdded"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
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

    .line 59
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 253
    const/4 v0, 0x4

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 95
    invoke-static {p1}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppManagerCallback"

    .line 100
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 101
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    :cond_d
    packed-switch p1, :pswitch_data_64

    .line 111
    packed-switch p1, :pswitch_data_6a

    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 107
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    return v1

    .line 148
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 152
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 154
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 155
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub;->onStateChanged(Ljava/lang/String;III)V

    .line 157
    goto :goto_63

    .line 140
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_33
    sget-object v2, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;

    .line 141
    .local v2, "_arg0":Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub;->onTvInteractiveAppServiceInfoUpdated(Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;)V

    .line 143
    goto :goto_63

    .line 132
    .end local v2    # "_arg0":Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub;->onInteractiveAppServiceUpdated(Ljava/lang/String;)V

    .line 135
    goto :goto_63

    .line 124
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 125
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub;->onInteractiveAppServiceRemoved(Ljava/lang/String;)V

    .line 127
    goto :goto_63

    .line 116
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 117
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub;->onInteractiveAppServiceAdded(Ljava/lang/String;)V

    .line 119
    nop

    .line 164
    .end local v2    # "_arg0":Ljava/lang/String;
    :goto_63
    return v1

    :pswitch_data_64
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_58
        :pswitch_4d
        :pswitch_42
        :pswitch_33
        :pswitch_1c
    .end packed-switch
.end method
