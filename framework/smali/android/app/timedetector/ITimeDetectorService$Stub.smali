.class public abstract Landroid/app/timedetector/ITimeDetectorService$Stub;
.super Landroid/os/Binder;
.source "ITimeDetectorService.java"

# interfaces
.implements Landroid/app/timedetector/ITimeDetectorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/timedetector/ITimeDetectorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/timedetector/ITimeDetectorService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addListener:I = 0x2

.field static final TRANSACTION_confirmTime:I = 0x6

.field static final TRANSACTION_getCapabilitiesAndConfig:I = 0x1

.field static final TRANSACTION_getTimeState:I = 0x5

.field static final TRANSACTION_latestNetworkTime:I = 0xb

.field static final TRANSACTION_removeListener:I = 0x3

.field static final TRANSACTION_setManualTime:I = 0x7

.field static final TRANSACTION_suggestExternalTime:I = 0x8

.field static final TRANSACTION_suggestManualTime:I = 0x9

.field static final TRANSACTION_suggestTelephonyTime:I = 0xa

.field static final TRANSACTION_updateConfiguration:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 74
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 75
    const-string v0, "android.app.timedetector.ITimeDetectorService"

    invoke-virtual {p0, p0, v0}, Landroid/app/timedetector/ITimeDetectorService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/timedetector/ITimeDetectorService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 83
    if-nez p0, :cond_4

    .line 84
    const/4 v0, 0x0

    return-object v0

    .line 86
    :cond_4
    const-string v0, "android.app.timedetector.ITimeDetectorService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 87
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/timedetector/ITimeDetectorService;

    if-eqz v1, :cond_14

    .line 88
    move-object v1, v0

    check-cast v1, Landroid/app/timedetector/ITimeDetectorService;

    return-object v1

    .line 90
    :cond_14
    new-instance v1, Landroid/app/timedetector/ITimeDetectorService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/timedetector/ITimeDetectorService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 99
    packed-switch p0, :pswitch_data_2e

    .line 147
    const/4 v0, 0x0

    return-object v0

    .line 143
    :pswitch_5
    const-string/jumbo v0, "latestNetworkTime"

    return-object v0

    .line 139
    :pswitch_9
    const-string/jumbo v0, "suggestTelephonyTime"

    return-object v0

    .line 135
    :pswitch_d
    const-string/jumbo v0, "suggestManualTime"

    return-object v0

    .line 131
    :pswitch_11
    const-string/jumbo v0, "suggestExternalTime"

    return-object v0

    .line 127
    :pswitch_15
    const-string/jumbo v0, "setManualTime"

    return-object v0

    .line 123
    :pswitch_19
    const-string v0, "confirmTime"

    return-object v0

    .line 119
    :pswitch_1c
    const-string v0, "getTimeState"

    return-object v0

    .line 115
    :pswitch_1f
    const-string/jumbo v0, "updateConfiguration"

    return-object v0

    .line 111
    :pswitch_23
    const-string/jumbo v0, "removeListener"

    return-object v0

    .line 107
    :pswitch_27
    const-string v0, "addListener"

    return-object v0

    .line 103
    :pswitch_2a
    const-string v0, "getCapabilitiesAndConfig"

    return-object v0

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1c
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

    .line 94
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 489
    const/16 v0, 0xa

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 154
    invoke-static {p1}, Landroid/app/timedetector/ITimeDetectorService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 158
    const-string v0, "android.app.timedetector.ITimeDetectorService"

    .line 159
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 160
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    :cond_d
    packed-switch p1, :pswitch_data_e2

    .line 170
    packed-switch p1, :pswitch_data_e8

    .line 271
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 166
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    return v1

    .line 264
    :pswitch_1c
    invoke-virtual {p0}, Landroid/app/timedetector/ITimeDetectorService$Stub;->latestNetworkTime()Landroid/app/time/UnixEpochTime;

    move-result-object v2

    .line 265
    .local v2, "_result":Landroid/app/time/UnixEpochTime;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 267
    goto/16 :goto_e1

    .line 256
    .end local v2    # "_result":Landroid/app/time/UnixEpochTime;
    :pswitch_28
    sget-object v2, Landroid/app/timedetector/TelephonyTimeSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/timedetector/TelephonyTimeSuggestion;

    .line 257
    .local v2, "_arg0":Landroid/app/timedetector/TelephonyTimeSuggestion;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {p0, v2}, Landroid/app/timedetector/ITimeDetectorService$Stub;->suggestTelephonyTime(Landroid/app/timedetector/TelephonyTimeSuggestion;)V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    goto/16 :goto_e1

    .line 246
    .end local v2    # "_arg0":Landroid/app/timedetector/TelephonyTimeSuggestion;
    :pswitch_3b
    sget-object v2, Landroid/app/timedetector/ManualTimeSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/timedetector/ManualTimeSuggestion;

    .line 247
    .local v2, "_arg0":Landroid/app/timedetector/ManualTimeSuggestion;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, v2}, Landroid/app/timedetector/ITimeDetectorService$Stub;->suggestManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)Z

    move-result v3

    .line 249
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 251
    goto/16 :goto_e1

    .line 237
    .end local v2    # "_arg0":Landroid/app/timedetector/ManualTimeSuggestion;
    .end local v3    # "_result":Z
    :pswitch_52
    sget-object v2, Landroid/app/time/ExternalTimeSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/time/ExternalTimeSuggestion;

    .line 238
    .local v2, "_arg0":Landroid/app/time/ExternalTimeSuggestion;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {p0, v2}, Landroid/app/timedetector/ITimeDetectorService$Stub;->suggestExternalTime(Landroid/app/time/ExternalTimeSuggestion;)V

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    goto/16 :goto_e1

    .line 227
    .end local v2    # "_arg0":Landroid/app/time/ExternalTimeSuggestion;
    :pswitch_65
    sget-object v2, Landroid/app/timedetector/ManualTimeSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/timedetector/ManualTimeSuggestion;

    .line 228
    .local v2, "_arg0":Landroid/app/timedetector/ManualTimeSuggestion;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, v2}, Landroid/app/timedetector/ITimeDetectorService$Stub;->setManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)Z

    move-result v3

    .line 230
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 232
    goto :goto_e1

    .line 217
    .end local v2    # "_arg0":Landroid/app/timedetector/ManualTimeSuggestion;
    .end local v3    # "_result":Z
    :pswitch_7b
    sget-object v2, Landroid/app/time/UnixEpochTime;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/time/UnixEpochTime;

    .line 218
    .local v2, "_arg0":Landroid/app/time/UnixEpochTime;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {p0, v2}, Landroid/app/timedetector/ITimeDetectorService$Stub;->confirmTime(Landroid/app/time/UnixEpochTime;)Z

    move-result v3

    .line 220
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 222
    goto :goto_e1

    .line 209
    .end local v2    # "_arg0":Landroid/app/time/UnixEpochTime;
    .end local v3    # "_result":Z
    :pswitch_91
    invoke-virtual {p0}, Landroid/app/timedetector/ITimeDetectorService$Stub;->getTimeState()Landroid/app/time/TimeState;

    move-result-object v2

    .line 210
    .local v2, "_result":Landroid/app/time/TimeState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 212
    goto :goto_e1

    .line 200
    .end local v2    # "_result":Landroid/app/time/TimeState;
    :pswitch_9c
    sget-object v2, Landroid/app/time/TimeConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/time/TimeConfiguration;

    .line 201
    .local v2, "_arg0":Landroid/app/time/TimeConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {p0, v2}, Landroid/app/timedetector/ITimeDetectorService$Stub;->updateConfiguration(Landroid/app/time/TimeConfiguration;)Z

    move-result v3

    .line 203
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 205
    goto :goto_e1

    .line 191
    .end local v2    # "_arg0":Landroid/app/time/TimeConfiguration;
    .end local v3    # "_result":Z
    :pswitch_b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/time/ITimeDetectorListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/time/ITimeDetectorListener;

    move-result-object v2

    .line 192
    .local v2, "_arg0":Landroid/app/time/ITimeDetectorListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, v2}, Landroid/app/timedetector/ITimeDetectorService$Stub;->removeListener(Landroid/app/time/ITimeDetectorListener;)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    goto :goto_e1

    .line 182
    .end local v2    # "_arg0":Landroid/app/time/ITimeDetectorListener;
    :pswitch_c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/time/ITimeDetectorListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/time/ITimeDetectorListener;

    move-result-object v2

    .line 183
    .restart local v2    # "_arg0":Landroid/app/time/ITimeDetectorListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {p0, v2}, Landroid/app/timedetector/ITimeDetectorService$Stub;->addListener(Landroid/app/time/ITimeDetectorListener;)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    goto :goto_e1

    .line 174
    .end local v2    # "_arg0":Landroid/app/time/ITimeDetectorListener;
    :pswitch_d6
    invoke-virtual {p0}, Landroid/app/timedetector/ITimeDetectorService$Stub;->getCapabilitiesAndConfig()Landroid/app/time/TimeCapabilitiesAndConfig;

    move-result-object v2

    .line 175
    .local v2, "_result":Landroid/app/time/TimeCapabilitiesAndConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 177
    nop

    .line 274
    .end local v2    # "_result":Landroid/app/time/TimeCapabilitiesAndConfig;
    :goto_e1
    return v1

    :pswitch_data_e2
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_d6
        :pswitch_c4
        :pswitch_b2
        :pswitch_9c
        :pswitch_91
        :pswitch_7b
        :pswitch_65
        :pswitch_52
        :pswitch_3b
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method
