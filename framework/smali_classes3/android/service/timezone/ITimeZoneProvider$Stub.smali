.class public abstract Landroid/service/timezone/ITimeZoneProvider$Stub;
.super Landroid/os/Binder;
.source "ITimeZoneProvider.java"

# interfaces
.implements Landroid/service/timezone/ITimeZoneProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/timezone/ITimeZoneProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/timezone/ITimeZoneProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_startUpdates:I = 0x1

.field static final TRANSACTION_stopUpdates:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string v0, "android.service.timezone.ITimeZoneProvider"

    invoke-virtual {p0, p0, v0}, Landroid/service/timezone/ITimeZoneProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/timezone/ITimeZoneProvider;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 36
    if-nez p0, :cond_4

    .line 37
    const/4 v0, 0x0

    return-object v0

    .line 39
    :cond_4
    const-string v0, "android.service.timezone.ITimeZoneProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/timezone/ITimeZoneProvider;

    if-eqz v1, :cond_14

    .line 41
    move-object v1, v0

    check-cast v1, Landroid/service/timezone/ITimeZoneProvider;

    return-object v1

    .line 43
    :cond_14
    new-instance v1, Landroid/service/timezone/ITimeZoneProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/timezone/ITimeZoneProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 52
    packed-switch p0, :pswitch_data_e

    .line 64
    const/4 v0, 0x0

    return-object v0

    .line 60
    :pswitch_5
    const-string/jumbo v0, "stopUpdates"

    return-object v0

    .line 56
    :pswitch_9
    const-string/jumbo v0, "startUpdates"

    return-object v0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 47
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 71
    invoke-static {p1}, Landroid/service/timezone/ITimeZoneProvider$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    move/from16 v0, p1

    const-string v1, "android.service.timezone.ITimeZoneProvider"

    .line 76
    .local v1, "descriptor":Ljava/lang/String;
    const/4 v2, 0x1

    if-lt v0, v2, :cond_12

    const v3, 0xffffff

    if-gt v0, v3, :cond_12

    .line 77
    move-object/from16 v3, p2

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_14

    .line 76
    :cond_12
    move-object/from16 v3, p2

    .line 79
    :goto_14
    packed-switch v0, :pswitch_data_48

    .line 87
    move-object/from16 v4, p3

    packed-switch v0, :pswitch_data_4e

    .line 108
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 83
    :pswitch_21
    move-object/from16 v4, p3

    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    return v2

    .line 103
    :pswitch_27
    invoke-virtual/range {p0 .. p0}, Landroid/service/timezone/ITimeZoneProvider$Stub;->stopUpdates()V

    .line 104
    goto :goto_47

    .line 92
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/service/timezone/ITimeZoneProviderManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/timezone/ITimeZoneProviderManager;

    move-result-object v5

    .line 94
    .local v5, "_arg0":Landroid/service/timezone/ITimeZoneProviderManager;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 96
    .local v12, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 97
    .local v14, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 98
    move-object/from16 v6, p0

    move-object v7, v5

    move-wide v8, v12

    move-wide v10, v14

    invoke-virtual/range {v6 .. v11}, Landroid/service/timezone/ITimeZoneProvider$Stub;->startUpdates(Landroid/service/timezone/ITimeZoneProviderManager;JJ)V

    .line 99
    nop

    .line 111
    .end local v5    # "_arg0":Landroid/service/timezone/ITimeZoneProviderManager;
    .end local v12    # "_arg1":J
    .end local v14    # "_arg2":J
    :goto_47
    return v2

    :pswitch_data_48
    .packed-switch 0x5f4e5446
        :pswitch_21
    .end packed-switch

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_27
    .end packed-switch
.end method
