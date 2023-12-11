.class public abstract Lcom/android/internal/os/IBinaryTransparencyService$Stub;
.super Landroid/os/Binder;
.source "IBinaryTransparencyService.java"

# interfaces
.implements Lcom/android/internal/os/IBinaryTransparencyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/IBinaryTransparencyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/IBinaryTransparencyService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_collectAllApexInfo:I = 0x3

.field static final TRANSACTION_collectAllSilentInstalledMbaInfo:I = 0x5

.field static final TRANSACTION_collectAllUpdatedPreloadInfo:I = 0x4

.field static final TRANSACTION_getSignedImageInfo:I = 0x1

.field static final TRANSACTION_recordMeasurementsForAllPackages:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 48
    const-string v0, "com.android.internal.os.IBinaryTransparencyService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/os/IBinaryTransparencyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IBinaryTransparencyService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 56
    if-nez p0, :cond_4

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_4
    const-string v0, "com.android.internal.os.IBinaryTransparencyService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/os/IBinaryTransparencyService;

    if-eqz v1, :cond_14

    .line 61
    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/IBinaryTransparencyService;

    return-object v1

    .line 63
    :cond_14
    new-instance v1, Lcom/android/internal/os/IBinaryTransparencyService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/os/IBinaryTransparencyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 72
    packed-switch p0, :pswitch_data_16

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 92
    :pswitch_5
    const-string v0, "collectAllSilentInstalledMbaInfo"

    return-object v0

    .line 88
    :pswitch_8
    const-string v0, "collectAllUpdatedPreloadInfo"

    return-object v0

    .line 84
    :pswitch_b
    const-string v0, "collectAllApexInfo"

    return-object v0

    .line 80
    :pswitch_e
    const-string/jumbo v0, "recordMeasurementsForAllPackages"

    return-object v0

    .line 76
    :pswitch_12
    const-string/jumbo v0, "getSignedImageInfo"

    return-object v0

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_12
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 67
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 281
    const/4 v0, 0x4

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 103
    invoke-static {p1}, Lcom/android/internal/os/IBinaryTransparencyService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 107
    const-string v0, "com.android.internal.os.IBinaryTransparencyService"

    .line 108
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 109
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    :cond_d
    packed-switch p1, :pswitch_data_6e

    .line 119
    packed-switch p1, :pswitch_data_74

    .line 166
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 115
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    return v1

    .line 157
    :pswitch_1c
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 158
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, v2}, Lcom/android/internal/os/IBinaryTransparencyService$Stub;->collectAllSilentInstalledMbaInfo(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v3

    .line 160
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 162
    goto :goto_6c

    .line 147
    .end local v2    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;>;"
    :pswitch_32
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 148
    .restart local v2    # "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v2}, Lcom/android/internal/os/IBinaryTransparencyService$Stub;->collectAllUpdatedPreloadInfo(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v3

    .line 150
    .restart local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 152
    goto :goto_6c

    .line 137
    .end local v2    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;>;"
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 138
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {p0, v2}, Lcom/android/internal/os/IBinaryTransparencyService$Stub;->collectAllApexInfo(Z)Ljava/util/List;

    move-result-object v3

    .line 140
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 142
    goto :goto_6c

    .line 130
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;>;"
    :pswitch_5a
    invoke-virtual {p0}, Lcom/android/internal/os/IBinaryTransparencyService$Stub;->recordMeasurementsForAllPackages()V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    goto :goto_6c

    .line 123
    :pswitch_61
    invoke-virtual {p0}, Lcom/android/internal/os/IBinaryTransparencyService$Stub;->getSignedImageInfo()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    nop

    .line 169
    .end local v2    # "_result":Ljava/lang/String;
    :goto_6c
    return v1

    nop

    :pswitch_data_6e
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_61
        :pswitch_5a
        :pswitch_48
        :pswitch_32
        :pswitch_1c
    .end packed-switch
.end method
