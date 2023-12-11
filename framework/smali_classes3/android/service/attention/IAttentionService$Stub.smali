.class public abstract Landroid/service/attention/IAttentionService$Stub;
.super Landroid/os/Binder;
.source "IAttentionService.java"

# interfaces
.implements Landroid/service/attention/IAttentionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/attention/IAttentionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/attention/IAttentionService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_cancelAttentionCheck:I = 0x2

.field static final TRANSACTION_checkAttention:I = 0x1

.field static final TRANSACTION_onStartProximityUpdates:I = 0x3

.field static final TRANSACTION_onStopProximityUpdates:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    const-string v0, "android.service.attention.IAttentionService"

    invoke-virtual {p0, p0, v0}, Landroid/service/attention/IAttentionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/attention/IAttentionService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 46
    if-nez p0, :cond_4

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_4
    const-string v0, "android.service.attention.IAttentionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 50
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/attention/IAttentionService;

    if-eqz v1, :cond_14

    .line 51
    move-object v1, v0

    check-cast v1, Landroid/service/attention/IAttentionService;

    return-object v1

    .line 53
    :cond_14
    new-instance v1, Landroid/service/attention/IAttentionService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/attention/IAttentionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 62
    packed-switch p0, :pswitch_data_14

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 78
    :pswitch_5
    const-string/jumbo v0, "onStopProximityUpdates"

    return-object v0

    .line 74
    :pswitch_9
    const-string/jumbo v0, "onStartProximityUpdates"

    return-object v0

    .line 70
    :pswitch_d
    const-string v0, "cancelAttentionCheck"

    return-object v0

    .line 66
    :pswitch_10
    const-string v0, "checkAttention"

    return-object v0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 57
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 213
    const/4 v0, 0x3

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 89
    invoke-static {p1}, Landroid/service/attention/IAttentionService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    const-string v0, "android.service.attention.IAttentionService"

    .line 94
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 95
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    :cond_d
    packed-switch p1, :pswitch_data_4e

    .line 105
    packed-switch p1, :pswitch_data_54

    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 101
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    return v1

    .line 133
    :pswitch_1c
    invoke-virtual {p0}, Landroid/service/attention/IAttentionService$Stub;->onStopProximityUpdates()V

    .line 134
    goto :goto_4d

    .line 126
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/attention/IProximityUpdateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/attention/IProximityUpdateCallback;

    move-result-object v2

    .line 127
    .local v2, "_arg0":Landroid/service/attention/IProximityUpdateCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, v2}, Landroid/service/attention/IAttentionService$Stub;->onStartProximityUpdates(Landroid/service/attention/IProximityUpdateCallback;)V

    .line 129
    goto :goto_4d

    .line 118
    .end local v2    # "_arg0":Landroid/service/attention/IProximityUpdateCallback;
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/attention/IAttentionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/attention/IAttentionCallback;

    move-result-object v2

    .line 119
    .local v2, "_arg0":Landroid/service/attention/IAttentionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    invoke-virtual {p0, v2}, Landroid/service/attention/IAttentionService$Stub;->cancelAttentionCheck(Landroid/service/attention/IAttentionCallback;)V

    .line 121
    goto :goto_4d

    .line 110
    .end local v2    # "_arg0":Landroid/service/attention/IAttentionCallback;
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/attention/IAttentionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/attention/IAttentionCallback;

    move-result-object v2

    .line 111
    .restart local v2    # "_arg0":Landroid/service/attention/IAttentionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-virtual {p0, v2}, Landroid/service/attention/IAttentionService$Stub;->checkAttention(Landroid/service/attention/IAttentionCallback;)V

    .line 113
    nop

    .line 141
    .end local v2    # "_arg0":Landroid/service/attention/IAttentionCallback;
    :goto_4d
    return v1

    :pswitch_data_4e
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_2f
        :pswitch_20
        :pswitch_1c
    .end packed-switch
.end method
