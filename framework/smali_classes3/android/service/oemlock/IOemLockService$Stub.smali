.class public abstract Landroid/service/oemlock/IOemLockService$Stub;
.super Landroid/os/Binder;
.source "IOemLockService.java"

# interfaces
.implements Landroid/service/oemlock/IOemLockService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/oemlock/IOemLockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/oemlock/IOemLockService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.service.oemlock.IOemLockService"

.field static final PERMISSIONS_isDeviceOemUnlocked:[Ljava/lang/String;

.field static final PERMISSIONS_isOemUnlockAllowed:[Ljava/lang/String;

.field static final TRANSACTION_getLockName:I = 0x1

.field static final TRANSACTION_isDeviceOemUnlocked:I = 0x7

.field static final TRANSACTION_isOemUnlockAllowed:I = 0x6

.field static final TRANSACTION_isOemUnlockAllowedByCarrier:I = 0x3

.field static final TRANSACTION_isOemUnlockAllowedByUser:I = 0x5

.field static final TRANSACTION_setOemUnlockAllowedByCarrier:I = 0x2

.field static final TRANSACTION_setOemUnlockAllowedByUser:I = 0x4


# instance fields
.field private final mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 365
    const-string v0, "android.permission.READ_OEM_UNLOCK_STATE"

    const-string v1, "android.permission.OEM_UNLOCK_STATE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/service/oemlock/IOemLockService$Stub;->PERMISSIONS_isOemUnlockAllowed:[Ljava/lang/String;

    .line 371
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/oemlock/IOemLockService$Stub;->PERMISSIONS_isDeviceOemUnlocked:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    nop

    .line 63
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 62
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/service/oemlock/IOemLockService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 52
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 53
    const-string v0, "android.service.oemlock.IOemLockService"

    invoke-virtual {p0, p0, v0}, Landroid/service/oemlock/IOemLockService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 54
    if-eqz p1, :cond_d

    .line 57
    iput-object p1, p0, Landroid/service/oemlock/IOemLockService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 58
    return-void

    .line 55
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/oemlock/IOemLockService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 71
    if-nez p0, :cond_4

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_4
    const-string v0, "android.service.oemlock.IOemLockService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 75
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/oemlock/IOemLockService;

    if-eqz v1, :cond_14

    .line 76
    move-object v1, v0

    check-cast v1, Landroid/service/oemlock/IOemLockService;

    return-object v1

    .line 78
    :cond_14
    new-instance v1, Landroid/service/oemlock/IOemLockService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/oemlock/IOemLockService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 87
    packed-switch p0, :pswitch_data_22

    .line 119
    const/4 v0, 0x0

    return-object v0

    .line 115
    :pswitch_5
    const-string/jumbo v0, "isDeviceOemUnlocked"

    return-object v0

    .line 111
    :pswitch_9
    const-string/jumbo v0, "isOemUnlockAllowed"

    return-object v0

    .line 107
    :pswitch_d
    const-string/jumbo v0, "isOemUnlockAllowedByUser"

    return-object v0

    .line 103
    :pswitch_11
    const-string/jumbo v0, "setOemUnlockAllowedByUser"

    return-object v0

    .line 99
    :pswitch_15
    const-string/jumbo v0, "isOemUnlockAllowedByCarrier"

    return-object v0

    .line 95
    :pswitch_19
    const-string/jumbo v0, "setOemUnlockAllowedByCarrier"

    return-object v0

    .line 91
    :pswitch_1d
    const-string/jumbo v0, "getLockName"

    return-object v0

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_19
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

    .line 82
    return-object p0
.end method

.method protected getLockName_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 342
    iget-object v0, p0, Landroid/service/oemlock/IOemLockService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_CARRIER_OEM_UNLOCK_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 343
    return-void
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 379
    const/4 v0, 0x6

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 126
    invoke-static {p1}, Landroid/service/oemlock/IOemLockService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isDeviceOemUnlocked_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 374
    iget-object v0, p0, Landroid/service/oemlock/IOemLockService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/service/oemlock/IOemLockService$Stub;->PERMISSIONS_isDeviceOemUnlocked:[Ljava/lang/String;

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 375
    return-void
.end method

.method protected isOemUnlockAllowedByCarrier_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 352
    iget-object v0, p0, Landroid/service/oemlock/IOemLockService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_CARRIER_OEM_UNLOCK_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 353
    return-void
.end method

.method protected isOemUnlockAllowedByUser_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 362
    iget-object v0, p0, Landroid/service/oemlock/IOemLockService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USER_OEM_UNLOCK_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 363
    return-void
.end method

.method protected isOemUnlockAllowed_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 368
    iget-object v0, p0, Landroid/service/oemlock/IOemLockService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/service/oemlock/IOemLockService$Stub;->PERMISSIONS_isOemUnlockAllowed:[Ljava/lang/String;

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 369
    return-void
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

    .line 130
    const-string v0, "android.service.oemlock.IOemLockService"

    .line 131
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 132
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    :cond_d
    packed-switch p1, :pswitch_data_74

    .line 142
    packed-switch p1, :pswitch_data_7a

    .line 201
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 138
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    return v1

    .line 194
    :pswitch_1c
    invoke-virtual {p0}, Landroid/service/oemlock/IOemLockService$Stub;->isDeviceOemUnlocked()Z

    move-result v2

    .line 195
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 197
    goto :goto_73

    .line 187
    .end local v2    # "_result":Z
    :pswitch_27
    invoke-virtual {p0}, Landroid/service/oemlock/IOemLockService$Stub;->isOemUnlockAllowed()Z

    move-result v2

    .line 188
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 190
    goto :goto_73

    .line 180
    .end local v2    # "_result":Z
    :pswitch_32
    invoke-virtual {p0}, Landroid/service/oemlock/IOemLockService$Stub;->isOemUnlockAllowedByUser()Z

    move-result v2

    .line 181
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 183
    goto :goto_73

    .line 172
    .end local v2    # "_result":Z
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 173
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, v2}, Landroid/service/oemlock/IOemLockService$Stub;->setOemUnlockAllowedByUser(Z)V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    goto :goto_73

    .line 164
    .end local v2    # "_arg0":Z
    :pswitch_4b
    invoke-virtual {p0}, Landroid/service/oemlock/IOemLockService$Stub;->isOemUnlockAllowedByCarrier()Z

    move-result v2

    .line 165
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 167
    goto :goto_73

    .line 154
    .end local v2    # "_result":Z
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 156
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 157
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {p0, v2, v3}, Landroid/service/oemlock/IOemLockService$Stub;->setOemUnlockAllowedByCarrier(Z[B)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    goto :goto_73

    .line 146
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":[B
    :pswitch_68
    invoke-virtual {p0}, Landroid/service/oemlock/IOemLockService$Stub;->getLockName()Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    nop

    .line 204
    .end local v2    # "_result":Ljava/lang/String;
    :goto_73
    return v1

    :pswitch_data_74
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_68
        :pswitch_56
        :pswitch_4b
        :pswitch_3d
        :pswitch_32
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method

.method protected setOemUnlockAllowedByCarrier_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 347
    iget-object v0, p0, Landroid/service/oemlock/IOemLockService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_CARRIER_OEM_UNLOCK_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 348
    return-void
.end method

.method protected setOemUnlockAllowedByUser_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 357
    iget-object v0, p0, Landroid/service/oemlock/IOemLockService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/service/oemlock/IOemLockService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USER_OEM_UNLOCK_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 358
    return-void
.end method
