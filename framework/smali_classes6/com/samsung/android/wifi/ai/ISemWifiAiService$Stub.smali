.class public abstract Lcom/samsung/android/wifi/ai/ISemWifiAiService$Stub;
.super Landroid/os/Binder;
.source "ISemWifiAiService.java"

# interfaces
.implements Lcom/samsung/android/wifi/ai/ISemWifiAiService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/ai/ISemWifiAiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/ai/ISemWifiAiService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_serviceTypeQuery:I = 0x1

.field static final TRANSACTION_toggleDebugMode:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "com.samsung.android.wifi.ai.ISemWifiAiService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/wifi/ai/ISemWifiAiService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/ai/ISemWifiAiService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 39
    if-nez p0, :cond_4

    .line 40
    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_4
    const-string v0, "com.samsung.android.wifi.ai.ISemWifiAiService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 43
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/wifi/ai/ISemWifiAiService;

    if-eqz v1, :cond_14

    .line 44
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/wifi/ai/ISemWifiAiService;

    return-object v1

    .line 46
    :cond_14
    new-instance v1, Lcom/samsung/android/wifi/ai/ISemWifiAiService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/wifi/ai/ISemWifiAiService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 55
    packed-switch p0, :pswitch_data_c

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 63
    :pswitch_5
    const-string v0, "toggleDebugMode"

    return-object v0

    .line 59
    :pswitch_8
    const-string v0, "serviceTypeQuery"

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 50
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 74
    invoke-static {p1}, Lcom/samsung/android/wifi/ai/ISemWifiAiService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    const-string v0, "com.samsung.android.wifi.ai.ISemWifiAiService"

    .line 79
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 80
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    :cond_d
    packed-switch p1, :pswitch_data_4a

    .line 90
    packed-switch p1, :pswitch_data_50

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 86
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    return v1

    .line 109
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 110
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 111
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ai/ISemWifiAiService$Stub;->toggleDebugMode(Z)V

    .line 112
    goto :goto_49

    .line 95
    .end local v2    # "_arg0":Z
    :pswitch_27
    const/4 v2, 0x7

    const/16 v3, 0x3c

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const-class v3, [[F

    invoke-virtual {p2, v3, v2}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    .line 97
    .local v2, "_arg0":[[F
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 101
    .local v4, "_arg2":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 102
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 103
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/wifi/ai/ISemWifiAiService$Stub;->serviceTypeQuery([[F[Ljava/lang/String;[II)V

    .line 104
    nop

    .line 119
    .end local v2    # "_arg0":[[F
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_arg2":[I
    .end local v5    # "_arg3":I
    :goto_49
    return v1

    :pswitch_data_4a
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
