.class public abstract Landroid/service/quicksettings/IQSService$Stub;
.super Landroid/os/Binder;
.source "IQSService.java"

# interfaces
.implements Landroid/service/quicksettings/IQSService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quicksettings/IQSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/quicksettings/IQSService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.service.quicksettings.IQSService"

.field static final TRANSACTION_getTile:I = 0x1

.field static final TRANSACTION_isLocked:I = 0x7

.field static final TRANSACTION_isSecure:I = 0x8

.field static final TRANSACTION_onDialogHidden:I = 0xa

.field static final TRANSACTION_onShowDialog:I = 0x4

.field static final TRANSACTION_onStartActivity:I = 0x5

.field static final TRANSACTION_onStartSuccessful:I = 0xb

.field static final TRANSACTION_semFireToggleStateChanged:I = 0xd

.field static final TRANSACTION_semUpdateDetailView:I = 0xc

.field static final TRANSACTION_startActivity:I = 0x6

.field static final TRANSACTION_startUnlockAndRun:I = 0x9

.field static final TRANSACTION_updateQsTile:I = 0x2

.field static final TRANSACTION_updateStatusIcon:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 65
    const-string v0, "android.service.quicksettings.IQSService"

    invoke-virtual {p0, p0, v0}, Landroid/service/quicksettings/IQSService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/quicksettings/IQSService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 73
    if-nez p0, :cond_4

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_4
    const-string v0, "android.service.quicksettings.IQSService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 77
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/quicksettings/IQSService;

    if-eqz v1, :cond_14

    .line 78
    move-object v1, v0

    check-cast v1, Landroid/service/quicksettings/IQSService;

    return-object v1

    .line 80
    :cond_14
    new-instance v1, Landroid/service/quicksettings/IQSService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/quicksettings/IQSService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 89
    packed-switch p0, :pswitch_data_3a

    .line 145
    const/4 v0, 0x0

    return-object v0

    .line 141
    :pswitch_5
    const-string/jumbo v0, "semFireToggleStateChanged"

    return-object v0

    .line 137
    :pswitch_9
    const-string/jumbo v0, "semUpdateDetailView"

    return-object v0

    .line 133
    :pswitch_d
    const-string/jumbo v0, "onStartSuccessful"

    return-object v0

    .line 129
    :pswitch_11
    const-string/jumbo v0, "onDialogHidden"

    return-object v0

    .line 125
    :pswitch_15
    const-string/jumbo v0, "startUnlockAndRun"

    return-object v0

    .line 121
    :pswitch_19
    const-string/jumbo v0, "isSecure"

    return-object v0

    .line 117
    :pswitch_1d
    const-string/jumbo v0, "isLocked"

    return-object v0

    .line 113
    :pswitch_21
    const-string/jumbo v0, "startActivity"

    return-object v0

    .line 109
    :pswitch_25
    const-string/jumbo v0, "onStartActivity"

    return-object v0

    .line 105
    :pswitch_29
    const-string/jumbo v0, "onShowDialog"

    return-object v0

    .line 101
    :pswitch_2d
    const-string/jumbo v0, "updateStatusIcon"

    return-object v0

    .line 97
    :pswitch_31
    const-string/jumbo v0, "updateQsTile"

    return-object v0

    .line 93
    :pswitch_35
    const-string/jumbo v0, "getTile"

    return-object v0

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
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

    .line 84
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 545
    const/16 v0, 0xc

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 152
    invoke-static {p1}, Landroid/service/quicksettings/IQSService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    const-string v0, "android.service.quicksettings.IQSService"

    .line 157
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 158
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    :cond_d
    packed-switch p1, :pswitch_data_fc

    .line 168
    packed-switch p1, :pswitch_data_102

    .line 298
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 164
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    return v1

    .line 286
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 288
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 290
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 291
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 292
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/quicksettings/IQSService$Stub;->semFireToggleStateChanged(Landroid/os/IBinder;ZZ)V

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    goto/16 :goto_fb

    .line 277
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Z
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 278
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-virtual {p0, v2}, Landroid/service/quicksettings/IQSService$Stub;->semUpdateDetailView(Landroid/os/IBinder;)V

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    goto/16 :goto_fb

    .line 268
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 269
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {p0, v2}, Landroid/service/quicksettings/IQSService$Stub;->onStartSuccessful(Landroid/os/IBinder;)V

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    goto/16 :goto_fb

    .line 259
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 260
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {p0, v2}, Landroid/service/quicksettings/IQSService$Stub;->onDialogHidden(Landroid/os/IBinder;)V

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    goto/16 :goto_fb

    .line 250
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 251
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {p0, v2}, Landroid/service/quicksettings/IQSService$Stub;->startUnlockAndRun(Landroid/os/IBinder;)V

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    goto/16 :goto_fb

    .line 242
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_6f
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSService$Stub;->isSecure()Z

    move-result v2

    .line 243
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 245
    goto/16 :goto_fb

    .line 235
    .end local v2    # "_result":Z
    :pswitch_7b
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSService$Stub;->isLocked()Z

    move-result v2

    .line 236
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 238
    goto/16 :goto_fb

    .line 225
    .end local v2    # "_result":Z
    :pswitch_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 227
    .local v2, "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 228
    .local v3, "_arg1":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, v2, v3}, Landroid/service/quicksettings/IQSService$Stub;->startActivity(Landroid/os/IBinder;Landroid/app/PendingIntent;)V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    goto :goto_fb

    .line 216
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/app/PendingIntent;
    :pswitch_9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 217
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 218
    invoke-virtual {p0, v2}, Landroid/service/quicksettings/IQSService$Stub;->onStartActivity(Landroid/os/IBinder;)V

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    goto :goto_fb

    .line 207
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 208
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, v2}, Landroid/service/quicksettings/IQSService$Stub;->onShowDialog(Landroid/os/IBinder;)V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    goto :goto_fb

    .line 194
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 196
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Icon;

    .line 198
    .local v3, "_arg1":Landroid/graphics/drawable/Icon;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 200
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/quicksettings/IQSService$Stub;->updateStatusIcon(Landroid/os/IBinder;Landroid/graphics/drawable/Icon;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    goto :goto_fb

    .line 183
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/graphics/drawable/Icon;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_d3
    sget-object v2, Landroid/service/quicksettings/Tile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/quicksettings/Tile;

    .line 185
    .local v2, "_arg0":Landroid/service/quicksettings/Tile;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 186
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, v2, v3}, Landroid/service/quicksettings/IQSService$Stub;->updateQsTile(Landroid/service/quicksettings/Tile;Landroid/os/IBinder;)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    goto :goto_fb

    .line 173
    .end local v2    # "_arg0":Landroid/service/quicksettings/Tile;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :pswitch_e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 174
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, v2}, Landroid/service/quicksettings/IQSService$Stub;->getTile(Landroid/os/IBinder;)Landroid/service/quicksettings/Tile;

    move-result-object v3

    .line 176
    .local v3, "_result":Landroid/service/quicksettings/Tile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 178
    nop

    .line 301
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Landroid/service/quicksettings/Tile;
    :goto_fb
    return v1

    :pswitch_data_fc
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x1
        :pswitch_e9
        :pswitch_d3
        :pswitch_b9
        :pswitch_ab
        :pswitch_9d
        :pswitch_87
        :pswitch_7b
        :pswitch_6f
        :pswitch_60
        :pswitch_51
        :pswitch_42
        :pswitch_33
        :pswitch_1c
    .end packed-switch
.end method
