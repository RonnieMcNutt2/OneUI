.class public abstract Landroid/os/ISystemConfig$Stub;
.super Landroid/os/Binder;
.source "ISystemConfig.java"

# interfaces
.implements Landroid/os/ISystemConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ISystemConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ISystemConfig$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getDefaultVrComponents:I = 0x6

.field static final TRANSACTION_getDisabledUntilUsedPreinstalledCarrierApps:I = 0x1

.field static final TRANSACTION_getDisabledUntilUsedPreinstalledCarrierAssociatedAppEntries:I = 0x3

.field static final TRANSACTION_getDisabledUntilUsedPreinstalledCarrierAssociatedApps:I = 0x2

.field static final TRANSACTION_getEnabledComponentOverrides:I = 0x5

.field static final TRANSACTION_getSystemPermissionUids:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    const-string v0, "android.os.ISystemConfig"

    invoke-virtual {p0, p0, v0}, Landroid/os/ISystemConfig$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/ISystemConfig;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 63
    if-nez p0, :cond_4

    .line 64
    const/4 v0, 0x0

    return-object v0

    .line 66
    :cond_4
    const-string v0, "android.os.ISystemConfig"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 67
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/ISystemConfig;

    if-eqz v1, :cond_14

    .line 68
    move-object v1, v0

    check-cast v1, Landroid/os/ISystemConfig;

    return-object v1

    .line 70
    :cond_14
    new-instance v1, Landroid/os/ISystemConfig$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/ISystemConfig$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 79
    packed-switch p0, :pswitch_data_18

    .line 107
    const/4 v0, 0x0

    return-object v0

    .line 103
    :pswitch_5
    const-string v0, "getDefaultVrComponents"

    return-object v0

    .line 99
    :pswitch_8
    const-string v0, "getEnabledComponentOverrides"

    return-object v0

    .line 95
    :pswitch_b
    const-string/jumbo v0, "getSystemPermissionUids"

    return-object v0

    .line 91
    :pswitch_f
    const-string v0, "getDisabledUntilUsedPreinstalledCarrierAssociatedAppEntries"

    return-object v0

    .line 87
    :pswitch_12
    const-string v0, "getDisabledUntilUsedPreinstalledCarrierAssociatedApps"

    return-object v0

    .line 83
    :pswitch_15
    const-string v0, "getDisabledUntilUsedPreinstalledCarrierApps"

    return-object v0

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 74
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 324
    const/4 v0, 0x5

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 114
    invoke-static {p1}, Landroid/os/ISystemConfig$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 118
    const-string v0, "android.os.ISystemConfig"

    .line 119
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 120
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    :cond_d
    packed-switch p1, :pswitch_data_6e

    .line 130
    packed-switch p1, :pswitch_data_74

    .line 182
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 126
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    return v1

    .line 175
    :pswitch_1c
    invoke-virtual {p0}, Landroid/os/ISystemConfig$Stub;->getDefaultVrComponents()Ljava/util/List;

    move-result-object v2

    .line 176
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 178
    goto :goto_6c

    .line 166
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, v2}, Landroid/os/ISystemConfig$Stub;->getEnabledComponentOverrides(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 169
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 171
    goto :goto_6c

    .line 156
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 157
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {p0, v2}, Landroid/os/ISystemConfig$Stub;->getSystemPermissionUids(Ljava/lang/String;)[I

    move-result-object v3

    .line 159
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 161
    goto :goto_6c

    .line 148
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":[I
    :pswitch_4b
    invoke-virtual {p0}, Landroid/os/ISystemConfig$Stub;->getDisabledUntilUsedPreinstalledCarrierAssociatedAppEntries()Ljava/util/Map;

    move-result-object v2

    .line 149
    .local v2, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 151
    goto :goto_6c

    .line 141
    .end local v2    # "_result":Ljava/util/Map;
    :pswitch_56
    invoke-virtual {p0}, Landroid/os/ISystemConfig$Stub;->getDisabledUntilUsedPreinstalledCarrierAssociatedApps()Ljava/util/Map;

    move-result-object v2

    .line 142
    .restart local v2    # "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 144
    goto :goto_6c

    .line 134
    .end local v2    # "_result":Ljava/util/Map;
    :pswitch_61
    invoke-virtual {p0}, Landroid/os/ISystemConfig$Stub;->getDisabledUntilUsedPreinstalledCarrierApps()Ljava/util/List;

    move-result-object v2

    .line 135
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 137
    nop

    .line 185
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
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
        :pswitch_56
        :pswitch_4b
        :pswitch_39
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
