.class public abstract Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;
.super Landroid/os/Binder;
.source "ISuspendControlServiceInternal.java"

# interfaces
.implements Landroid/system/suspend/internal/ISuspendControlServiceInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/suspend/internal/ISuspendControlServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_enableAutosuspend:I = 0x1

.field static final TRANSACTION_forceSuspend:I = 0x2

.field static final TRANSACTION_getSuspendStats:I = 0x5

.field static final TRANSACTION_getWakeLockStats:I = 0x3

.field static final TRANSACTION_getWakeupStats:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 57
    sget-object v0, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/system/suspend/internal/ISuspendControlServiceInternal;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 65
    if-nez p0, :cond_4

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_4
    sget-object v0, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 69
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    if-eqz v1, :cond_14

    .line 70
    move-object v1, v0

    check-cast v1, Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    return-object v1

    .line 72
    :cond_14
    new-instance v1, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 76
    return-object p0
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

    .line 80
    sget-object v0, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 81
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 82
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    :cond_d
    packed-switch p1, :pswitch_data_58

    .line 92
    packed-switch p1, :pswitch_data_5e

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 88
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    return v1

    .line 126
    :pswitch_1c
    invoke-virtual {p0}, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->getSuspendStats()Landroid/system/suspend/internal/SuspendInfo;

    move-result-object v2

    .line 127
    .local v2, "_result":Landroid/system/suspend/internal/SuspendInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 129
    goto :goto_57

    .line 119
    .end local v2    # "_result":Landroid/system/suspend/internal/SuspendInfo;
    :pswitch_27
    invoke-virtual {p0}, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->getWakeupStats()[Landroid/system/suspend/internal/WakeupInfo;

    move-result-object v2

    .line 120
    .local v2, "_result":[Landroid/system/suspend/internal/WakeupInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 122
    goto :goto_57

    .line 112
    .end local v2    # "_result":[Landroid/system/suspend/internal/WakeupInfo;
    :pswitch_32
    invoke-virtual {p0}, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->getWakeLockStats()[Landroid/system/suspend/internal/WakeLockInfo;

    move-result-object v2

    .line 113
    .local v2, "_result":[Landroid/system/suspend/internal/WakeLockInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 115
    goto :goto_57

    .line 105
    .end local v2    # "_result":[Landroid/system/suspend/internal/WakeLockInfo;
    :pswitch_3d
    invoke-virtual {p0}, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->forceSuspend()Z

    move-result v2

    .line 106
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    goto :goto_57

    .line 97
    .end local v2    # "_result":Z
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 98
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->enableAutosuspend(Landroid/os/IBinder;)Z

    move-result v3

    .line 99
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    nop

    .line 136
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :goto_57
    return v1

    :pswitch_data_58
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_48
        :pswitch_3d
        :pswitch_32
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
