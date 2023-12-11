.class public abstract Landroid/location/provider/ILocationProviderManager$Stub;
.super Landroid/os/Binder;
.source "ILocationProviderManager.java"

# interfaces
.implements Landroid/location/provider/ILocationProviderManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/provider/ILocationProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/provider/ILocationProviderManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onFlushComplete:I = 0x6

.field static final TRANSACTION_onInitialize:I = 0x1

.field static final TRANSACTION_onReportLocation:I = 0x4

.field static final TRANSACTION_onReportLocations:I = 0x5

.field static final TRANSACTION_onSetAllowed:I = 0x2

.field static final TRANSACTION_onSetProperties:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "android.location.provider.ILocationProviderManager"

    invoke-virtual {p0, p0, v0}, Landroid/location/provider/ILocationProviderManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/provider/ILocationProviderManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 51
    if-nez p0, :cond_4

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_4
    const-string v0, "android.location.provider.ILocationProviderManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/location/provider/ILocationProviderManager;

    if-eqz v1, :cond_14

    .line 56
    move-object v1, v0

    check-cast v1, Landroid/location/provider/ILocationProviderManager;

    return-object v1

    .line 58
    :cond_14
    new-instance v1, Landroid/location/provider/ILocationProviderManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/provider/ILocationProviderManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 67
    packed-switch p0, :pswitch_data_18

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 91
    :pswitch_5
    const-string v0, "onFlushComplete"

    return-object v0

    .line 87
    :pswitch_8
    const-string v0, "onReportLocations"

    return-object v0

    .line 83
    :pswitch_b
    const-string v0, "onReportLocation"

    return-object v0

    .line 79
    :pswitch_e
    const-string v0, "onSetProperties"

    return-object v0

    .line 75
    :pswitch_11
    const-string v0, "onSetAllowed"

    return-object v0

    .line 71
    :pswitch_14
    const-string v0, "onInitialize"

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

    .line 62
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 298
    const/4 v0, 0x5

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 102
    invoke-static {p1}, Landroid/location/provider/ILocationProviderManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 106
    const-string v0, "android.location.provider.ILocationProviderManager"

    .line 107
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 108
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    :cond_d
    packed-switch p1, :pswitch_data_80

    .line 118
    packed-switch p1, :pswitch_data_86

    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 114
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return v1

    .line 171
    :pswitch_1c
    invoke-virtual {p0}, Landroid/location/provider/ILocationProviderManager$Stub;->onFlushComplete()V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    goto :goto_7f

    .line 163
    :pswitch_23
    sget-object v2, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 164
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v2}, Landroid/location/provider/ILocationProviderManager$Stub;->onReportLocations(Ljava/util/List;)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    goto :goto_7f

    .line 154
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    :pswitch_33
    sget-object v2, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    .line 155
    .local v2, "_arg0":Landroid/location/Location;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {p0, v2}, Landroid/location/provider/ILocationProviderManager$Stub;->onReportLocation(Landroid/location/Location;)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    goto :goto_7f

    .line 145
    .end local v2    # "_arg0":Landroid/location/Location;
    :pswitch_45
    sget-object v2, Landroid/location/provider/ProviderProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/provider/ProviderProperties;

    .line 146
    .local v2, "_arg0":Landroid/location/provider/ProviderProperties;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, v2}, Landroid/location/provider/ILocationProviderManager$Stub;->onSetProperties(Landroid/location/provider/ProviderProperties;)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    goto :goto_7f

    .line 136
    .end local v2    # "_arg0":Landroid/location/provider/ProviderProperties;
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 137
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, v2}, Landroid/location/provider/ILocationProviderManager$Stub;->onSetAllowed(Z)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    goto :goto_7f

    .line 123
    .end local v2    # "_arg0":Z
    :pswitch_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 125
    .restart local v2    # "_arg0":Z
    sget-object v3, Landroid/location/provider/ProviderProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/provider/ProviderProperties;

    .line 127
    .local v3, "_arg1":Landroid/location/provider/ProviderProperties;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {p0, v2, v3, v4}, Landroid/location/provider/ILocationProviderManager$Stub;->onInitialize(ZLandroid/location/provider/ProviderProperties;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    nop

    .line 180
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Landroid/location/provider/ProviderProperties;
    .end local v4    # "_arg2":Ljava/lang/String;
    :goto_7f
    return v1

    :pswitch_data_80
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_65
        :pswitch_57
        :pswitch_45
        :pswitch_33
        :pswitch_23
        :pswitch_1c
    .end packed-switch
.end method
