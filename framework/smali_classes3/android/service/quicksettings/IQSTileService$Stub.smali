.class public abstract Landroid/service/quicksettings/IQSTileService$Stub;
.super Landroid/os/Binder;
.source "IQSTileService.java"

# interfaces
.implements Landroid/service/quicksettings/IQSTileService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quicksettings/IQSTileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/quicksettings/IQSTileService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.service.quicksettings.IQSTileService"

.field static final TRANSACTION_onClick:I = 0x5

.field static final TRANSACTION_onStartListening:I = 0x3

.field static final TRANSACTION_onStopListening:I = 0x4

.field static final TRANSACTION_onTileAdded:I = 0x1

.field static final TRANSACTION_onTileRemoved:I = 0x2

.field static final TRANSACTION_onUnlockComplete:I = 0x6

.field static final TRANSACTION_semGetDetailView:I = 0xb

.field static final TRANSACTION_semGetDetailViewSettingButtonName:I = 0x8

.field static final TRANSACTION_semGetDetailViewTitle:I = 0x7

.field static final TRANSACTION_semGetSettingsIntent:I = 0xc

.field static final TRANSACTION_semIsToggleButtonChecked:I = 0xa

.field static final TRANSACTION_semIsToggleButtonExists:I = 0x9

.field static final TRANSACTION_semSetToggleButtonChecked:I = 0xd


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 68
    const-string v0, "android.service.quicksettings.IQSTileService"

    invoke-virtual {p0, p0, v0}, Landroid/service/quicksettings/IQSTileService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/quicksettings/IQSTileService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 76
    if-nez p0, :cond_4

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_4
    const-string v0, "android.service.quicksettings.IQSTileService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 80
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/quicksettings/IQSTileService;

    if-eqz v1, :cond_14

    .line 81
    move-object v1, v0

    check-cast v1, Landroid/service/quicksettings/IQSTileService;

    return-object v1

    .line 83
    :cond_14
    new-instance v1, Landroid/service/quicksettings/IQSTileService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/quicksettings/IQSTileService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 92
    packed-switch p0, :pswitch_data_3a

    .line 148
    const/4 v0, 0x0

    return-object v0

    .line 144
    :pswitch_5
    const-string/jumbo v0, "semSetToggleButtonChecked"

    return-object v0

    .line 140
    :pswitch_9
    const-string/jumbo v0, "semGetSettingsIntent"

    return-object v0

    .line 136
    :pswitch_d
    const-string/jumbo v0, "semGetDetailView"

    return-object v0

    .line 132
    :pswitch_11
    const-string/jumbo v0, "semIsToggleButtonChecked"

    return-object v0

    .line 128
    :pswitch_15
    const-string/jumbo v0, "semIsToggleButtonExists"

    return-object v0

    .line 124
    :pswitch_19
    const-string/jumbo v0, "semGetDetailViewSettingButtonName"

    return-object v0

    .line 120
    :pswitch_1d
    const-string/jumbo v0, "semGetDetailViewTitle"

    return-object v0

    .line 116
    :pswitch_21
    const-string/jumbo v0, "onUnlockComplete"

    return-object v0

    .line 112
    :pswitch_25
    const-string/jumbo v0, "onClick"

    return-object v0

    .line 108
    :pswitch_29
    const-string/jumbo v0, "onStopListening"

    return-object v0

    .line 104
    :pswitch_2d
    const-string/jumbo v0, "onStartListening"

    return-object v0

    .line 100
    :pswitch_31
    const-string/jumbo v0, "onTileRemoved"

    return-object v0

    .line 96
    :pswitch_35
    const-string/jumbo v0, "onTileAdded"

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

    .line 87
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 518
    const/16 v0, 0xc

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 155
    invoke-static {p1}, Landroid/service/quicksettings/IQSTileService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 159
    const-string v0, "android.service.quicksettings.IQSTileService"

    .line 160
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 161
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    :cond_d
    packed-switch p1, :pswitch_data_b4

    .line 171
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_ba

    .line 277
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 167
    :pswitch_19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    return v1

    .line 269
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 270
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {p0, v2}, Landroid/service/quicksettings/IQSTileService$Stub;->semSetToggleButtonChecked(Z)V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    goto/16 :goto_b3

    .line 261
    .end local v2    # "_arg0":Z
    :pswitch_2c
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSTileService$Stub;->semGetSettingsIntent()Landroid/content/Intent;

    move-result-object v2

    .line 262
    .local v2, "_result":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 264
    goto/16 :goto_b3

    .line 254
    .end local v2    # "_result":Landroid/content/Intent;
    :pswitch_38
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSTileService$Stub;->semGetDetailView()Landroid/widget/RemoteViews;

    move-result-object v2

    .line 255
    .local v2, "_result":Landroid/widget/RemoteViews;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 257
    goto/16 :goto_b3

    .line 247
    .end local v2    # "_result":Landroid/widget/RemoteViews;
    :pswitch_44
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSTileService$Stub;->semIsToggleButtonChecked()Z

    move-result v2

    .line 248
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 250
    goto :goto_b3

    .line 240
    .end local v2    # "_result":Z
    :pswitch_4f
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSTileService$Stub;->semIsToggleButtonExists()Z

    move-result v2

    .line 241
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 243
    goto :goto_b3

    .line 227
    .end local v2    # "_result":Z
    :pswitch_5a
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSTileService$Stub;->semGetDetailViewSettingButtonName()Ljava/lang/CharSequence;

    move-result-object v3

    .line 228
    .local v3, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    if-eqz v3, :cond_6a

    .line 230
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    invoke-static {v3, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_b3

    .line 234
    :cond_6a
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    goto :goto_b3

    .line 214
    .end local v3    # "_result":Ljava/lang/CharSequence;
    :pswitch_6e
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSTileService$Stub;->semGetDetailViewTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 215
    .restart local v3    # "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    if-eqz v3, :cond_7e

    .line 217
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    invoke-static {v3, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_b3

    .line 221
    :cond_7e
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    goto :goto_b3

    .line 208
    .end local v3    # "_result":Ljava/lang/CharSequence;
    :pswitch_82
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSTileService$Stub;->onUnlockComplete()V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    goto :goto_b3

    .line 200
    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 201
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {p0, v2}, Landroid/service/quicksettings/IQSTileService$Stub;->onClick(Landroid/os/IBinder;)V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    goto :goto_b3

    .line 193
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_97
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSTileService$Stub;->onStopListening()V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    goto :goto_b3

    .line 187
    :pswitch_9e
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSTileService$Stub;->onStartListening()V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    goto :goto_b3

    .line 181
    :pswitch_a5
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSTileService$Stub;->onTileRemoved()V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    goto :goto_b3

    .line 175
    :pswitch_ac
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSTileService$Stub;->onTileAdded()V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    nop

    .line 280
    :goto_b3
    return v1

    :pswitch_data_b4
    .packed-switch 0x5f4e5446
        :pswitch_19
    .end packed-switch

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_ac
        :pswitch_a5
        :pswitch_9e
        :pswitch_97
        :pswitch_89
        :pswitch_82
        :pswitch_6e
        :pswitch_5a
        :pswitch_4f
        :pswitch_44
        :pswitch_38
        :pswitch_2c
        :pswitch_1d
    .end packed-switch
.end method
