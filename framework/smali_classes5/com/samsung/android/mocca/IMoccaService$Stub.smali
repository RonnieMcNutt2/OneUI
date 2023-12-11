.class public abstract Lcom/samsung/android/mocca/IMoccaService$Stub;
.super Landroid/os/Binder;
.source "IMoccaService.java"

# interfaces
.implements Lcom/samsung/android/mocca/IMoccaService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mocca/IMoccaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mocca/IMoccaService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getSupportedTypes:I = 0x1

.field static final TRANSACTION_hasContextAvailabilityListener:I = 0x5

.field static final TRANSACTION_hasContextListener:I = 0x8

.field static final TRANSACTION_isAvailableType:I = 0x2

.field static final TRANSACTION_registerContextAvailabilityListener:I = 0x3

.field static final TRANSACTION_registerContextListener:I = 0x6

.field static final TRANSACTION_unregisterContextAvailabilityListener:I = 0x4

.field static final TRANSACTION_unregisterContextListener:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "com.samsung.android.mocca.IMoccaService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/mocca/IMoccaService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mocca/IMoccaService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 60
    if-nez p0, :cond_4

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_4
    const-string v0, "com.samsung.android.mocca.IMoccaService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/mocca/IMoccaService;

    if-eqz v1, :cond_14

    .line 65
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/mocca/IMoccaService;

    return-object v1

    .line 67
    :cond_14
    new-instance v1, Lcom/samsung/android/mocca/IMoccaService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/mocca/IMoccaService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 76
    packed-switch p0, :pswitch_data_26

    .line 112
    const/4 v0, 0x0

    return-object v0

    .line 108
    :pswitch_5
    const-string/jumbo v0, "hasContextListener"

    return-object v0

    .line 104
    :pswitch_9
    const-string/jumbo v0, "unregisterContextListener"

    return-object v0

    .line 100
    :pswitch_d
    const-string/jumbo v0, "registerContextListener"

    return-object v0

    .line 96
    :pswitch_11
    const-string/jumbo v0, "hasContextAvailabilityListener"

    return-object v0

    .line 92
    :pswitch_15
    const-string/jumbo v0, "unregisterContextAvailabilityListener"

    return-object v0

    .line 88
    :pswitch_19
    const-string/jumbo v0, "registerContextAvailabilityListener"

    return-object v0

    .line 84
    :pswitch_1d
    const-string/jumbo v0, "isAvailableType"

    return-object v0

    .line 80
    :pswitch_21
    const-string/jumbo v0, "getSupportedTypes"

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_21
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

    .line 71
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 398
    const/4 v0, 0x7

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 119
    invoke-static {p1}, Lcom/samsung/android/mocca/IMoccaService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 123
    const-string v0, "com.samsung.android.mocca.IMoccaService"

    .line 124
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 125
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    :cond_d
    packed-switch p1, :pswitch_data_d0

    .line 135
    packed-switch p1, :pswitch_data_d6

    .line 224
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 131
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    return v1

    .line 215
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/mocca/IMoccaEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mocca/IMoccaEventListener;

    move-result-object v2

    .line 216
    .local v2, "_arg0":Lcom/samsung/android/mocca/IMoccaEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, v2}, Lcom/samsung/android/mocca/IMoccaService$Stub;->hasContextListener(Lcom/samsung/android/mocca/IMoccaEventListener;)Z

    move-result v3

    .line 218
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 220
    goto/16 :goto_cf

    .line 204
    .end local v2    # "_arg0":Lcom/samsung/android/mocca/IMoccaEventListener;
    .end local v3    # "_result":Z
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/mocca/IMoccaEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mocca/IMoccaEventListener;

    move-result-object v2

    .line 206
    .restart local v2    # "_arg0":Lcom/samsung/android/mocca/IMoccaEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/mocca/IMoccaService$Stub;->unregisterContextListener(Lcom/samsung/android/mocca/IMoccaEventListener;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    goto/16 :goto_cf

    .line 190
    .end local v2    # "_arg0":Lcom/samsung/android/mocca/IMoccaEventListener;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/mocca/IMoccaEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mocca/IMoccaEventListener;

    move-result-object v2

    .line 192
    .restart local v2    # "_arg0":Lcom/samsung/android/mocca/IMoccaEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 194
    .restart local v3    # "_arg1":Ljava/lang/String;
    sget-object v4, Lcom/samsung/android/mocca/ContextParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/mocca/ContextParam;

    .line 195
    .local v4, "_arg2":Lcom/samsung/android/mocca/ContextParam;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/mocca/IMoccaService$Stub;->registerContextListener(Lcom/samsung/android/mocca/IMoccaEventListener;Ljava/lang/String;Lcom/samsung/android/mocca/ContextParam;)Z

    move-result v5

    .line 197
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 199
    goto :goto_cf

    .line 180
    .end local v2    # "_arg0":Lcom/samsung/android/mocca/IMoccaEventListener;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Lcom/samsung/android/mocca/ContextParam;
    .end local v5    # "_result":Z
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/mocca/IMoccaEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mocca/IMoccaEventListener;

    move-result-object v2

    .line 181
    .restart local v2    # "_arg0":Lcom/samsung/android/mocca/IMoccaEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {p0, v2}, Lcom/samsung/android/mocca/IMoccaService$Stub;->hasContextAvailabilityListener(Lcom/samsung/android/mocca/IMoccaEventListener;)Z

    move-result v3

    .line 183
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 185
    goto :goto_cf

    .line 169
    .end local v2    # "_arg0":Lcom/samsung/android/mocca/IMoccaEventListener;
    .end local v3    # "_result":Z
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/mocca/IMoccaEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mocca/IMoccaEventListener;

    move-result-object v2

    .line 171
    .restart local v2    # "_arg0":Lcom/samsung/android/mocca/IMoccaEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/mocca/IMoccaService$Stub;->unregisterContextAvailabilityListener(Lcom/samsung/android/mocca/IMoccaEventListener;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    goto :goto_cf

    .line 157
    .end local v2    # "_arg0":Lcom/samsung/android/mocca/IMoccaEventListener;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_98
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/mocca/IMoccaEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mocca/IMoccaEventListener;

    move-result-object v2

    .line 159
    .restart local v2    # "_arg0":Lcom/samsung/android/mocca/IMoccaEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 160
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/mocca/IMoccaService$Stub;->registerContextAvailabilityListener(Lcom/samsung/android/mocca/IMoccaEventListener;Ljava/lang/String;)Z

    move-result v4

    .line 162
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 164
    goto :goto_cf

    .line 147
    .end local v2    # "_arg0":Lcom/samsung/android/mocca/IMoccaEventListener;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v2}, Lcom/samsung/android/mocca/IMoccaService$Stub;->isAvailableType(Ljava/lang/String;)Z

    move-result v3

    .line 150
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 152
    goto :goto_cf

    .line 139
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_c4
    invoke-virtual {p0}, Lcom/samsung/android/mocca/IMoccaService$Stub;->getSupportedTypes()Ljava/util/List;

    move-result-object v2

    .line 140
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 142
    nop

    .line 227
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_cf
    return v1

    :pswitch_data_d0
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_c4
        :pswitch_b2
        :pswitch_98
        :pswitch_82
        :pswitch_6c
        :pswitch_4a
        :pswitch_33
        :pswitch_1c
    .end packed-switch
.end method
