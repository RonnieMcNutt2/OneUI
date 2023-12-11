.class public abstract Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback$Stub;
.super Landroid/os/Binder;
.source "ISharedConnectivityCallback.java"

# interfaces
.implements Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onHotspotNetworkConnectionStatusChanged:I = 0x2

.field static final TRANSACTION_onHotspotNetworksUpdated:I = 0x1

.field static final TRANSACTION_onKnownNetworkConnectionStatusChanged:I = 0x4

.field static final TRANSACTION_onKnownNetworksUpdated:I = 0x3

.field static final TRANSACTION_onSharedConnectivitySettingsChanged:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "android.net.wifi.sharedconnectivity.service.ISharedConnectivityCallback"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 45
    if-nez p0, :cond_4

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_4
    const-string v0, "android.net.wifi.sharedconnectivity.service.ISharedConnectivityCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;

    if-eqz v1, :cond_14

    .line 50
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;

    return-object v1

    .line 52
    :cond_14
    new-instance v1, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 61
    packed-switch p0, :pswitch_data_1a

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 81
    :pswitch_5
    const-string/jumbo v0, "onSharedConnectivitySettingsChanged"

    return-object v0

    .line 77
    :pswitch_9
    const-string/jumbo v0, "onKnownNetworkConnectionStatusChanged"

    return-object v0

    .line 73
    :pswitch_d
    const-string/jumbo v0, "onKnownNetworksUpdated"

    return-object v0

    .line 69
    :pswitch_11
    const-string/jumbo v0, "onHotspotNetworkConnectionStatusChanged"

    return-object v0

    .line 65
    :pswitch_15
    const-string/jumbo v0, "onHotspotNetworksUpdated"

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

    .line 56
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 241
    const/4 v0, 0x4

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 92
    invoke-static {p1}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 96
    const-string v0, "android.net.wifi.sharedconnectivity.service.ISharedConnectivityCallback"

    .line 97
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 98
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    :cond_d
    packed-switch p1, :pswitch_data_64

    .line 108
    packed-switch p1, :pswitch_data_6a

    .line 152
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 104
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v1

    .line 145
    :pswitch_1c
    sget-object v2, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    .line 146
    .local v2, "_arg0":Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, v2}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback$Stub;->onSharedConnectivitySettingsChanged(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;)V

    .line 148
    goto :goto_63

    .line 137
    .end local v2    # "_arg0":Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;
    :pswitch_2b
    sget-object v2, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;

    .line 138
    .local v2, "_arg0":Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {p0, v2}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback$Stub;->onKnownNetworkConnectionStatusChanged(Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;)V

    .line 140
    goto :goto_63

    .line 129
    .end local v2    # "_arg0":Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;
    :pswitch_3a
    sget-object v2, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 130
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, v2}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback$Stub;->onKnownNetworksUpdated(Ljava/util/List;)V

    .line 132
    goto :goto_63

    .line 121
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;>;"
    :pswitch_47
    sget-object v2, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;

    .line 122
    .local v2, "_arg0":Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {p0, v2}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback$Stub;->onHotspotNetworkConnectionStatusChanged(Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;)V

    .line 124
    goto :goto_63

    .line 113
    .end local v2    # "_arg0":Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;
    :pswitch_56
    sget-object v2, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 114
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    invoke-virtual {p0, v2}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback$Stub;->onHotspotNetworksUpdated(Ljava/util/List;)V

    .line 116
    nop

    .line 155
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;>;"
    :goto_63
    return v1

    :pswitch_data_64
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_56
        :pswitch_47
        :pswitch_3a
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
