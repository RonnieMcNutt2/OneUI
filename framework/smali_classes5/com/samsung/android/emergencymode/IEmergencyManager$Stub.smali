.class public abstract Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;
.super Landroid/os/Binder;
.source "IEmergencyManager.java"

# interfaces
.implements Lcom/samsung/android/emergencymode/IEmergencyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/emergencymode/IEmergencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/emergencymode/IEmergencyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addAppToLauncher:I = 0xd

.field static final TRANSACTION_checkInvalidBroadcast:I = 0x6

.field static final TRANSACTION_checkInvalidProcess:I = 0x5

.field static final TRANSACTION_checkModeType:I = 0xe

.field static final TRANSACTION_checkValidIntentAction:I = 0x4

.field static final TRANSACTION_checkValidPackage:I = 0x3

.field static final TRANSACTION_getEmergencyState:I = 0x2

.field static final TRANSACTION_isEmergencyMode:I = 0x1

.field static final TRANSACTION_isModifying:I = 0xb

.field static final TRANSACTION_isScreenOn:I = 0x8

.field static final TRANSACTION_isUserPackageBlocked:I = 0xa

.field static final TRANSACTION_needMobileDataBlock:I = 0x7

.field static final TRANSACTION_setLocationProviderEnabled:I = 0xc

.field static final TRANSACTION_setUserPackageBlocked:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 76
    const-string v0, "com.samsung.android.emergencymode.IEmergencyManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/emergencymode/IEmergencyManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 84
    if-nez p0, :cond_4

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 87
    :cond_4
    const-string v0, "com.samsung.android.emergencymode.IEmergencyManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 88
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-eqz v1, :cond_14

    .line 89
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/emergencymode/IEmergencyManager;

    return-object v1

    .line 91
    :cond_14
    new-instance v1, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 100
    packed-switch p0, :pswitch_data_38

    .line 160
    const/4 v0, 0x0

    return-object v0

    .line 156
    :pswitch_5
    const-string v0, "checkModeType"

    return-object v0

    .line 152
    :pswitch_8
    const-string v0, "addAppToLauncher"

    return-object v0

    .line 148
    :pswitch_b
    const-string/jumbo v0, "setLocationProviderEnabled"

    return-object v0

    .line 144
    :pswitch_f
    const-string/jumbo v0, "isModifying"

    return-object v0

    .line 140
    :pswitch_13
    const-string/jumbo v0, "isUserPackageBlocked"

    return-object v0

    .line 136
    :pswitch_17
    const-string/jumbo v0, "setUserPackageBlocked"

    return-object v0

    .line 132
    :pswitch_1b
    const-string/jumbo v0, "isScreenOn"

    return-object v0

    .line 128
    :pswitch_1f
    const-string/jumbo v0, "needMobileDataBlock"

    return-object v0

    .line 124
    :pswitch_23
    const-string v0, "checkInvalidBroadcast"

    return-object v0

    .line 120
    :pswitch_26
    const-string v0, "checkInvalidProcess"

    return-object v0

    .line 116
    :pswitch_29
    const-string v0, "checkValidIntentAction"

    return-object v0

    .line 112
    :pswitch_2c
    const-string v0, "checkValidPackage"

    return-object v0

    .line 108
    :pswitch_2f
    const-string/jumbo v0, "getEmergencyState"

    return-object v0

    .line 104
    :pswitch_33
    const-string/jumbo v0, "isEmergencyMode"

    return-object v0

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_33
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 95
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 600
    const/16 v0, 0xd

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 167
    invoke-static {p1}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 171
    const-string v0, "com.samsung.android.emergencymode.IEmergencyManager"

    .line 172
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 173
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    :cond_d
    packed-switch p1, :pswitch_data_102

    .line 183
    packed-switch p1, :pswitch_data_108

    .line 317
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 179
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    return v1

    .line 308
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 309
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {p0, v2}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->checkModeType(I)Z

    move-result v3

    .line 311
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 313
    goto/16 :goto_101

    .line 296
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 299
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 300
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->addAppToLauncher(Ljava/lang/String;Z)Z

    move-result v4

    .line 301
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 303
    goto/16 :goto_101

    .line 287
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 288
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 289
    invoke-virtual {p0, v2}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->setLocationProviderEnabled(Z)V

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    goto/16 :goto_101

    .line 279
    .end local v2    # "_arg0":Z
    :pswitch_55
    invoke-virtual {p0}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->isModifying()Z

    move-result v2

    .line 280
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 282
    goto/16 :goto_101

    .line 272
    .end local v2    # "_result":Z
    :pswitch_61
    invoke-virtual {p0}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->isUserPackageBlocked()Z

    move-result v2

    .line 273
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 275
    goto/16 :goto_101

    .line 264
    .end local v2    # "_result":Z
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 265
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    invoke-virtual {p0, v2}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->setUserPackageBlocked(Z)V

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    goto/16 :goto_101

    .line 256
    .end local v2    # "_arg0":Z
    :pswitch_7c
    invoke-virtual {p0}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->isScreenOn()Z

    move-result v2

    .line 257
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 259
    goto/16 :goto_101

    .line 249
    .end local v2    # "_result":Z
    :pswitch_88
    invoke-virtual {p0}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->needMobileDataBlock()Z

    move-result v2

    .line 250
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 252
    goto :goto_101

    .line 238
    .end local v2    # "_result":Z
    :pswitch_93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 242
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->checkInvalidBroadcast(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 243
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 245
    goto :goto_101

    .line 228
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 229
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    invoke-virtual {p0, v2}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->checkInvalidProcess(Ljava/lang/String;)Z

    move-result v3

    .line 231
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 233
    goto :goto_101

    .line 216
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 218
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->checkValidIntentAction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 221
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 223
    goto :goto_101

    .line 202
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 204
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 206
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 207
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->checkValidPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    .line 209
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 211
    goto :goto_101

    .line 194
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_eb
    invoke-virtual {p0}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->getEmergencyState()I

    move-result v2

    .line 195
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    goto :goto_101

    .line 187
    .end local v2    # "_result":I
    :pswitch_f6
    invoke-virtual {p0}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->isEmergencyMode()Z

    move-result v2

    .line 188
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 190
    nop

    .line 320
    .end local v2    # "_result":Z
    :goto_101
    return v1

    :pswitch_data_102
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_108
    .packed-switch 0x1
        :pswitch_f6
        :pswitch_eb
        :pswitch_d1
        :pswitch_bb
        :pswitch_a9
        :pswitch_93
        :pswitch_88
        :pswitch_7c
        :pswitch_6d
        :pswitch_61
        :pswitch_55
        :pswitch_46
        :pswitch_2f
        :pswitch_1c
    .end packed-switch
.end method
