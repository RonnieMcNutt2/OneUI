.class public abstract Landroid/hardware/ISerialManager$Stub;
.super Landroid/os/Binder;
.source "ISerialManager.java"

# interfaces
.implements Landroid/hardware/ISerialManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ISerialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ISerialManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.ISerialManager"

.field static final TRANSACTION_getSerialPorts:I = 0x1

.field static final TRANSACTION_openSerialPort:I = 0x2


# instance fields
.field private final mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    nop

    .line 43
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 42
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/ISerialManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "android.hardware.ISerialManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/ISerialManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    if-eqz p1, :cond_d

    .line 37
    iput-object p1, p0, Landroid/hardware/ISerialManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 38
    return-void

    .line 35
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/ISerialManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 51
    if-nez p0, :cond_4

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_4
    const-string v0, "android.hardware.ISerialManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/ISerialManager;

    if-eqz v1, :cond_14

    .line 56
    move-object v1, v0

    check-cast v1, Landroid/hardware/ISerialManager;

    return-object v1

    .line 58
    :cond_14
    new-instance v1, Landroid/hardware/ISerialManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/ISerialManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 67
    packed-switch p0, :pswitch_data_c

    .line 79
    const/4 v0, 0x0

    return-object v0

    .line 75
    :pswitch_5
    const-string/jumbo v0, "openSerialPort"

    return-object v0

    .line 71
    :pswitch_9
    const-string v0, "getSerialPorts"

    return-object v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
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

    .line 195
    const/4 v0, 0x1

    return v0
.end method

.method protected getSerialPorts_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Landroid/hardware/ISerialManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/ISerialManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/ISerialManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.SERIAL_PORT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 186
    return-void
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 86
    invoke-static {p1}, Landroid/hardware/ISerialManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 90
    const-string v0, "android.hardware.ISerialManager"

    .line 91
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 92
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    :cond_d
    packed-switch p1, :pswitch_data_3a

    .line 102
    packed-switch p1, :pswitch_data_40

    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 98
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    return v1

    .line 114
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {p0, v2}, Landroid/hardware/ISerialManager$Stub;->openSerialPort(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 117
    .local v3, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 119
    goto :goto_39

    .line 106
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_2e
    invoke-virtual {p0}, Landroid/hardware/ISerialManager$Stub;->getSerialPorts()[Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 109
    nop

    .line 126
    .end local v2    # "_result":[Ljava/lang/String;
    :goto_39
    return v1

    :pswitch_data_3a
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_1c
    .end packed-switch
.end method

.method protected openSerialPort_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Landroid/hardware/ISerialManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/ISerialManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/ISerialManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.SERIAL_PORT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 191
    return-void
.end method
