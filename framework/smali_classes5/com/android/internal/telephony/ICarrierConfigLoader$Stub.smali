.class public abstract Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;
.super Landroid/os/Binder;
.source "ICarrierConfigLoader.java"

# interfaces
.implements Lcom/android/internal/telephony/ICarrierConfigLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ICarrierConfigLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ICarrierConfigLoader$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ICarrierConfigLoader"

.field static final TRANSACTION_getConfigForSubId:I = 0x1

.field static final TRANSACTION_getConfigForSubIdWithFeature:I = 0x2

.field static final TRANSACTION_getConfigSubsetForSubIdWithFeature:I = 0x7

.field static final TRANSACTION_getDefaultCarrierServicePackageName:I = 0x6

.field static final TRANSACTION_notifyConfigChangedForSubId:I = 0x4

.field static final TRANSACTION_overrideConfig:I = 0x3

.field static final TRANSACTION_updateConfigForPhoneId:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 48
    const-string v0, "com.android.internal.telephony.ICarrierConfigLoader"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ICarrierConfigLoader;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 56
    if-nez p0, :cond_4

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_4
    const-string v0, "com.android.internal.telephony.ICarrierConfigLoader"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/ICarrierConfigLoader;

    if-eqz v1, :cond_14

    .line 61
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/ICarrierConfigLoader;

    return-object v1

    .line 63
    :cond_14
    new-instance v1, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 72
    packed-switch p0, :pswitch_data_22

    .line 104
    const/4 v0, 0x0

    return-object v0

    .line 100
    :pswitch_5
    const-string/jumbo v0, "getConfigSubsetForSubIdWithFeature"

    return-object v0

    .line 96
    :pswitch_9
    const-string/jumbo v0, "getDefaultCarrierServicePackageName"

    return-object v0

    .line 92
    :pswitch_d
    const-string/jumbo v0, "updateConfigForPhoneId"

    return-object v0

    .line 88
    :pswitch_11
    const-string/jumbo v0, "notifyConfigChangedForSubId"

    return-object v0

    .line 84
    :pswitch_15
    const-string/jumbo v0, "overrideConfig"

    return-object v0

    .line 80
    :pswitch_19
    const-string/jumbo v0, "getConfigForSubIdWithFeature"

    return-object v0

    .line 76
    :pswitch_1d
    const-string/jumbo v0, "getConfigForSubId"

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

    .line 67
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 371
    const/4 v0, 0x6

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 111
    invoke-static {p1}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    const-string v0, "com.android.internal.telephony.ICarrierConfigLoader"

    .line 116
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 117
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    :cond_d
    packed-switch p1, :pswitch_data_b2

    .line 127
    packed-switch p1, :pswitch_data_b8

    .line 213
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 123
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    return v1

    .line 198
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 200
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 205
    .local v5, "_arg3":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->getConfigSubsetForSubIdWithFeature(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v6

    .line 207
    .local v6, "_result":Landroid/os/PersistableBundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 209
    goto/16 :goto_b0

    .line 190
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":[Ljava/lang/String;
    .end local v6    # "_result":Landroid/os/PersistableBundle;
    :pswitch_3b
    invoke-virtual {p0}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->getDefaultCarrierServicePackageName()Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    goto :goto_b0

    .line 180
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 182
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 183
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->updateConfigForPhoneId(ILjava/lang/String;)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    goto :goto_b0

    .line 171
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 172
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->notifyConfigChangedForSubId(I)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    goto :goto_b0

    .line 158
    .end local v2    # "_arg0":I
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 160
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 162
    .local v3, "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 163
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->overrideConfig(ILandroid/os/PersistableBundle;Z)V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    goto :goto_b0

    .line 144
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    .end local v4    # "_arg2":Z
    :pswitch_80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 146
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->getConfigForSubIdWithFeature(ILjava/lang/String;Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v5

    .line 151
    .local v5, "_result":Landroid/os/PersistableBundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 153
    goto :goto_b0

    .line 132
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Landroid/os/PersistableBundle;
    :pswitch_9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 134
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 135
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->getConfigForSubId(ILjava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v4

    .line 137
    .local v4, "_result":Landroid/os/PersistableBundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 139
    nop

    .line 216
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/PersistableBundle;
    :goto_b0
    return v1

    nop

    :pswitch_data_b2
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_9a
        :pswitch_80
        :pswitch_66
        :pswitch_58
        :pswitch_46
        :pswitch_3b
        :pswitch_1c
    .end packed-switch
.end method
