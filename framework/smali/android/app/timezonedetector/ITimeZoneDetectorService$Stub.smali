.class public abstract Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;
.super Landroid/os/Binder;
.source "ITimeZoneDetectorService.java"

# interfaces
.implements Landroid/app/timezonedetector/ITimeZoneDetectorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/timezonedetector/ITimeZoneDetectorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addListener:I = 0x2

.field static final TRANSACTION_confirmTimeZone:I = 0x6

.field static final TRANSACTION_getCapabilitiesAndConfig:I = 0x1

.field static final TRANSACTION_getTimeZoneState:I = 0x5

.field static final TRANSACTION_removeListener:I = 0x3

.field static final TRANSACTION_setManualTimeZone:I = 0x7

.field static final TRANSACTION_suggestManualTimeZone:I = 0x8

.field static final TRANSACTION_suggestTelephonyTimeZone:I = 0x9

.field static final TRANSACTION_updateConfiguration:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 68
    const-string v0, "android.app.timezonedetector.ITimeZoneDetectorService"

    invoke-virtual {p0, p0, v0}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/timezonedetector/ITimeZoneDetectorService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 76
    if-nez p0, :cond_4

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_4
    const-string v0, "android.app.timezonedetector.ITimeZoneDetectorService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 80
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/timezonedetector/ITimeZoneDetectorService;

    if-eqz v1, :cond_14

    .line 81
    move-object v1, v0

    check-cast v1, Landroid/app/timezonedetector/ITimeZoneDetectorService;

    return-object v1

    .line 83
    :cond_14
    new-instance v1, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 92
    packed-switch p0, :pswitch_data_26

    .line 132
    const/4 v0, 0x0

    return-object v0

    .line 128
    :pswitch_5
    const-string/jumbo v0, "suggestTelephonyTimeZone"

    return-object v0

    .line 124
    :pswitch_9
    const-string/jumbo v0, "suggestManualTimeZone"

    return-object v0

    .line 120
    :pswitch_d
    const-string/jumbo v0, "setManualTimeZone"

    return-object v0

    .line 116
    :pswitch_11
    const-string v0, "confirmTimeZone"

    return-object v0

    .line 112
    :pswitch_14
    const-string v0, "getTimeZoneState"

    return-object v0

    .line 108
    :pswitch_17
    const-string/jumbo v0, "updateConfiguration"

    return-object v0

    .line 104
    :pswitch_1b
    const-string/jumbo v0, "removeListener"

    return-object v0

    .line 100
    :pswitch_1f
    const-string v0, "addListener"

    return-object v0

    .line 96
    :pswitch_22
    const-string v0, "getCapabilitiesAndConfig"

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_22
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_14
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

    .line 424
    const/16 v0, 0x8

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 139
    invoke-static {p1}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 143
    const-string v0, "android.app.timezonedetector.ITimeZoneDetectorService"

    .line 144
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 145
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    :cond_d
    packed-switch p1, :pswitch_data_c0

    .line 155
    packed-switch p1, :pswitch_data_c6

    .line 240
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 151
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    return v1

    .line 232
    :pswitch_1c
    sget-object v2, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    .line 233
    .local v2, "_arg0":Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {p0, v2}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;->suggestTelephonyTimeZone(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    goto/16 :goto_be

    .line 222
    .end local v2    # "_arg0":Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    :pswitch_2f
    sget-object v2, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

    .line 223
    .local v2, "_arg0":Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, v2}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;->suggestManualTimeZone(Landroid/app/timezonedetector/ManualTimeZoneSuggestion;)Z

    move-result v3

    .line 225
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 227
    goto/16 :goto_be

    .line 212
    .end local v2    # "_arg0":Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    .end local v3    # "_result":Z
    :pswitch_46
    sget-object v2, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

    .line 213
    .restart local v2    # "_arg0":Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {p0, v2}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;->setManualTimeZone(Landroid/app/timezonedetector/ManualTimeZoneSuggestion;)Z

    move-result v3

    .line 215
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 217
    goto :goto_be

    .line 202
    .end local v2    # "_arg0":Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    .end local v3    # "_result":Z
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, v2}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;->confirmTimeZone(Ljava/lang/String;)Z

    move-result v3

    .line 205
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 207
    goto :goto_be

    .line 194
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_6e
    invoke-virtual {p0}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;->getTimeZoneState()Landroid/app/time/TimeZoneState;

    move-result-object v2

    .line 195
    .local v2, "_result":Landroid/app/time/TimeZoneState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 197
    goto :goto_be

    .line 185
    .end local v2    # "_result":Landroid/app/time/TimeZoneState;
    :pswitch_79
    sget-object v2, Landroid/app/time/TimeZoneConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/time/TimeZoneConfiguration;

    .line 186
    .local v2, "_arg0":Landroid/app/time/TimeZoneConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, v2}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;->updateConfiguration(Landroid/app/time/TimeZoneConfiguration;)Z

    move-result v3

    .line 188
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 190
    goto :goto_be

    .line 176
    .end local v2    # "_arg0":Landroid/app/time/TimeZoneConfiguration;
    .end local v3    # "_result":Z
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/time/ITimeZoneDetectorListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/time/ITimeZoneDetectorListener;

    move-result-object v2

    .line 177
    .local v2, "_arg0":Landroid/app/time/ITimeZoneDetectorListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-virtual {p0, v2}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;->removeListener(Landroid/app/time/ITimeZoneDetectorListener;)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    goto :goto_be

    .line 167
    .end local v2    # "_arg0":Landroid/app/time/ITimeZoneDetectorListener;
    :pswitch_a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/time/ITimeZoneDetectorListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/time/ITimeZoneDetectorListener;

    move-result-object v2

    .line 168
    .restart local v2    # "_arg0":Landroid/app/time/ITimeZoneDetectorListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, v2}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;->addListener(Landroid/app/time/ITimeZoneDetectorListener;)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    goto :goto_be

    .line 159
    .end local v2    # "_arg0":Landroid/app/time/ITimeZoneDetectorListener;
    :pswitch_b3
    invoke-virtual {p0}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;->getCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object v2

    .line 160
    .local v2, "_result":Landroid/app/time/TimeZoneCapabilitiesAndConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 162
    nop

    .line 243
    .end local v2    # "_result":Landroid/app/time/TimeZoneCapabilitiesAndConfig;
    :goto_be
    return v1

    nop

    :pswitch_data_c0
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_b3
        :pswitch_a1
        :pswitch_8f
        :pswitch_79
        :pswitch_6e
        :pswitch_5c
        :pswitch_46
        :pswitch_2f
        :pswitch_1c
    .end packed-switch
.end method
