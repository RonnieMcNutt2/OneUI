.class public abstract Landroid/media/IMediaRouter2Manager$Stub;
.super Landroid/os/Binder;
.source "IMediaRouter2Manager.java"

# interfaces
.implements Landroid/media/IMediaRouter2Manager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaRouter2Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaRouter2Manager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_notifyDiscoveryPreferenceChanged:I = 0x4

.field static final TRANSACTION_notifyRequestFailed:I = 0x7

.field static final TRANSACTION_notifyRouteListingPreferenceChange:I = 0x5

.field static final TRANSACTION_notifyRoutesUpdated:I = 0x6

.field static final TRANSACTION_notifySessionCreated:I = 0x1

.field static final TRANSACTION_notifySessionReleased:I = 0x3

.field static final TRANSACTION_notifySessionUpdated:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "android.media.IMediaRouter2Manager"

    invoke-virtual {p0, p0, v0}, Landroid/media/IMediaRouter2Manager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouter2Manager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 51
    if-nez p0, :cond_4

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_4
    const-string v0, "android.media.IMediaRouter2Manager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/IMediaRouter2Manager;

    if-eqz v1, :cond_14

    .line 56
    move-object v1, v0

    check-cast v1, Landroid/media/IMediaRouter2Manager;

    return-object v1

    .line 58
    :cond_14
    new-instance v1, Landroid/media/IMediaRouter2Manager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IMediaRouter2Manager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 67
    packed-switch p0, :pswitch_data_1a

    .line 99
    const/4 v0, 0x0

    return-object v0

    .line 95
    :pswitch_5
    const-string v0, "notifyRequestFailed"

    return-object v0

    .line 91
    :pswitch_8
    const-string v0, "notifyRoutesUpdated"

    return-object v0

    .line 87
    :pswitch_b
    const-string v0, "notifyRouteListingPreferenceChange"

    return-object v0

    .line 83
    :pswitch_e
    const-string v0, "notifyDiscoveryPreferenceChanged"

    return-object v0

    .line 79
    :pswitch_11
    const-string v0, "notifySessionReleased"

    return-object v0

    .line 75
    :pswitch_14
    const-string v0, "notifySessionUpdated"

    return-object v0

    .line 71
    :pswitch_17
    const-string v0, "notifySessionCreated"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
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

    .line 62
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 309
    const/4 v0, 0x6

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 106
    invoke-static {p1}, Landroid/media/IMediaRouter2Manager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    const-string v0, "android.media.IMediaRouter2Manager"

    .line 111
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 112
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    :cond_d
    packed-switch p1, :pswitch_data_90

    .line 122
    packed-switch p1, :pswitch_data_96

    .line 190
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 118
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    return v1

    .line 181
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 183
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 184
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v2, v3}, Landroid/media/IMediaRouter2Manager$Stub;->notifyRequestFailed(II)V

    .line 186
    goto :goto_8f

    .line 173
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2b
    sget-object v2, Landroid/media/MediaRoute2Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 174
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, v2}, Landroid/media/IMediaRouter2Manager$Stub;->notifyRoutesUpdated(Ljava/util/List;)V

    .line 176
    goto :goto_8f

    .line 163
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/media/RouteListingPreference;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/RouteListingPreference;

    .line 166
    .local v3, "_arg1":Landroid/media/RouteListingPreference;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, v2, v3}, Landroid/media/IMediaRouter2Manager$Stub;->notifyRouteListingPreferenceChange(Ljava/lang/String;Landroid/media/RouteListingPreference;)V

    .line 168
    goto :goto_8f

    .line 153
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/media/RouteListingPreference;
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 155
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/media/RouteDiscoveryPreference;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/RouteDiscoveryPreference;

    .line 156
    .local v3, "_arg1":Landroid/media/RouteDiscoveryPreference;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, v2, v3}, Landroid/media/IMediaRouter2Manager$Stub;->notifyDiscoveryPreferenceChanged(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V

    .line 158
    goto :goto_8f

    .line 145
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/media/RouteDiscoveryPreference;
    :pswitch_5e
    sget-object v2, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RoutingSessionInfo;

    .line 146
    .local v2, "_arg0":Landroid/media/RoutingSessionInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, v2}, Landroid/media/IMediaRouter2Manager$Stub;->notifySessionReleased(Landroid/media/RoutingSessionInfo;)V

    .line 148
    goto :goto_8f

    .line 137
    .end local v2    # "_arg0":Landroid/media/RoutingSessionInfo;
    :pswitch_6d
    sget-object v2, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RoutingSessionInfo;

    .line 138
    .restart local v2    # "_arg0":Landroid/media/RoutingSessionInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {p0, v2}, Landroid/media/IMediaRouter2Manager$Stub;->notifySessionUpdated(Landroid/media/RoutingSessionInfo;)V

    .line 140
    goto :goto_8f

    .line 127
    .end local v2    # "_arg0":Landroid/media/RoutingSessionInfo;
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 129
    .local v2, "_arg0":I
    sget-object v3, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/RoutingSessionInfo;

    .line 130
    .local v3, "_arg1":Landroid/media/RoutingSessionInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, v2, v3}, Landroid/media/IMediaRouter2Manager$Stub;->notifySessionCreated(ILandroid/media/RoutingSessionInfo;)V

    .line 132
    nop

    .line 193
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/media/RoutingSessionInfo;
    :goto_8f
    return v1

    :pswitch_data_90
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_7c
        :pswitch_6d
        :pswitch_5e
        :pswitch_4b
        :pswitch_38
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
