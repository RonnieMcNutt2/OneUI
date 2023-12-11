.class Landroid/location/IGeocodeProvider$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGeocodeProvider.java"

# interfaces
.implements Landroid/location/IGeocodeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IGeocodeProvider$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Landroid/location/IGeocodeProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 144
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 147
    iget-object v0, p0, Landroid/location/IGeocodeProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getFromLocation(DDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V
    .registers 12
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "maxResults"    # I
    .param p6, "params"    # Landroid/location/GeocoderParams;
    .param p7, "listener"    # Landroid/location/IGeocodeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Landroid/location/IGeocodeProvider$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 157
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v1, "android.location.IGeocodeProvider"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 159
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 160
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    const/4 v1, 0x0

    invoke-virtual {v0, p6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 162
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 163
    iget-object v1, p0, Landroid/location/IGeocodeProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_29

    .line 166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 167
    nop

    .line 168
    return-void

    .line 166
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 167
    throw v1
.end method

.method public getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V
    .registers 29
    .param p1, "locationName"    # Ljava/lang/String;
    .param p2, "lowerLeftLatitude"    # D
    .param p4, "lowerLeftLongitude"    # D
    .param p6, "upperRightLatitude"    # D
    .param p8, "upperRightLongitude"    # D
    .param p10, "maxResults"    # I
    .param p11, "params"    # Landroid/location/GeocoderParams;
    .param p12, "listener"    # Landroid/location/IGeocodeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    invoke-virtual/range {p0 .. p0}, Landroid/location/IGeocodeProvider$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 173
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "android.location.IGeocodeProvider"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 174
    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    move-wide/from16 v3, p2

    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_5f

    .line 176
    move-wide/from16 v5, p4

    :try_start_19
    invoke-virtual {v1, v5, v6}, Landroid/os/Parcel;->writeDouble(D)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_5b

    .line 177
    move-wide/from16 v7, p6

    :try_start_1e
    invoke-virtual {v1, v7, v8}, Landroid/os/Parcel;->writeDouble(D)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_57

    .line 178
    move-wide/from16 v9, p8

    :try_start_23
    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeDouble(D)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_53

    .line 179
    move/from16 v11, p10

    :try_start_28
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_4f

    .line 180
    const/4 v0, 0x0

    move-object/from16 v12, p11

    :try_start_2e
    invoke-virtual {v1, v12, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_4b

    .line 181
    move-object/from16 v13, p12

    :try_start_33
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_47

    .line 182
    move-object/from16 v14, p0

    :try_start_38
    iget-object v0, v14, Landroid/location/IGeocodeProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v15, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-interface {v0, v3, v1, v15, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_45

    .line 185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 186
    nop

    .line 187
    return-void

    .line 185
    :catchall_45
    move-exception v0

    goto :goto_6e

    :catchall_47
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_6e

    :catchall_4b
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_6c

    :catchall_4f
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_6a

    :catchall_53
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_68

    :catchall_57
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_66

    :catchall_5b
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_64

    :catchall_5f
    move-exception v0

    move-object/from16 v14, p0

    move-wide/from16 v5, p4

    :goto_64
    move-wide/from16 v7, p6

    :goto_66
    move-wide/from16 v9, p8

    :goto_68
    move/from16 v11, p10

    :goto_6a
    move-object/from16 v12, p11

    :goto_6c
    move-object/from16 v13, p12

    :goto_6e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 186
    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 151
    const-string v0, "android.location.IGeocodeProvider"

    return-object v0
.end method
