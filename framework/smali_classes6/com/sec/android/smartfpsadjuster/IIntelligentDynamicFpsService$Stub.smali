.class public abstract Lcom/sec/android/smartfpsadjuster/IIntelligentDynamicFpsService$Stub;
.super Landroid/os/Binder;
.source "IIntelligentDynamicFpsService.java"

# interfaces
.implements Lcom/sec/android/smartfpsadjuster/IIntelligentDynamicFpsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/smartfpsadjuster/IIntelligentDynamicFpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/smartfpsadjuster/IIntelligentDynamicFpsService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_cameraPolicyChange:I = 0x3

.field static final TRANSACTION_cameraPolicyStart:I = 0x1

.field static final TRANSACTION_cameraPolicyStop:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "com.sec.android.smartfpsadjuster.IIntelligentDynamicFpsService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/smartfpsadjuster/IIntelligentDynamicFpsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/smartfpsadjuster/IIntelligentDynamicFpsService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 45
    if-nez p0, :cond_4

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_4
    const-string v0, "com.sec.android.smartfpsadjuster.IIntelligentDynamicFpsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/android/smartfpsadjuster/IIntelligentDynamicFpsService;

    if-eqz v1, :cond_14

    .line 50
    move-object v1, v0

    check-cast v1, Lcom/sec/android/smartfpsadjuster/IIntelligentDynamicFpsService;

    return-object v1

    .line 52
    :cond_14
    new-instance v1, Lcom/sec/android/smartfpsadjuster/IIntelligentDynamicFpsService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/android/smartfpsadjuster/IIntelligentDynamicFpsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 61
    packed-switch p0, :pswitch_data_e

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 73
    :pswitch_5
    const-string v0, "cameraPolicyChange"

    return-object v0

    .line 69
    :pswitch_8
    const-string v0, "cameraPolicyStop"

    return-object v0

    .line 65
    :pswitch_b
    const-string v0, "cameraPolicyStart"

    return-object v0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
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

    .line 203
    const/4 v0, 0x2

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 84
    invoke-static {p1}, Lcom/sec/android/smartfpsadjuster/IIntelligentDynamicFpsService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 88
    const-string v0, "com.sec.android.smartfpsadjuster.IIntelligentDynamicFpsService"

    .line 89
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 90
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    :cond_d
    packed-switch p1, :pswitch_data_3e

    .line 100
    packed-switch p1, :pswitch_data_44

    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 96
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return v1

    .line 117
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 118
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 119
    invoke-virtual {p0, v2}, Lcom/sec/android/smartfpsadjuster/IIntelligentDynamicFpsService$Stub;->cameraPolicyChange(I)I

    move-result v3

    .line 120
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    goto :goto_3c

    .line 110
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_2e
    invoke-virtual {p0}, Lcom/sec/android/smartfpsadjuster/IIntelligentDynamicFpsService$Stub;->cameraPolicyStop()V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    goto :goto_3c

    .line 104
    :pswitch_35
    invoke-virtual {p0}, Lcom/sec/android/smartfpsadjuster/IIntelligentDynamicFpsService$Stub;->cameraPolicyStart()V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    nop

    .line 129
    :goto_3c
    return v1

    nop

    :pswitch_data_3e
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_35
        :pswitch_2e
        :pswitch_1c
    .end packed-switch
.end method
