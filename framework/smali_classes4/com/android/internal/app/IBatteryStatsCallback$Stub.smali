.class public abstract Lcom/android/internal/app/IBatteryStatsCallback$Stub;
.super Landroid/os/Binder;
.source "IBatteryStatsCallback.java"

# interfaces
.implements Lcom/android/internal/app/IBatteryStatsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IBatteryStatsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IBatteryStatsCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_notifyNetworkStatsUpdated:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string v0, "com.android.internal.app.IBatteryStatsCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IBatteryStatsCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStatsCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 36
    if-nez p0, :cond_4

    .line 37
    const/4 v0, 0x0

    return-object v0

    .line 39
    :cond_4
    const-string v0, "com.android.internal.app.IBatteryStatsCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/app/IBatteryStatsCallback;

    if-eqz v1, :cond_14

    .line 41
    move-object v1, v0

    check-cast v1, Lcom/android/internal/app/IBatteryStatsCallback;

    return-object v1

    .line 43
    :cond_14
    new-instance v1, Lcom/android/internal/app/IBatteryStatsCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IBatteryStatsCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 52
    packed-switch p0, :pswitch_data_a

    .line 60
    const/4 v0, 0x0

    return-object v0

    .line 56
    :pswitch_5
    const-string/jumbo v0, "notifyNetworkStatsUpdated"

    return-object v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
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

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 67
    invoke-static {p1}, Lcom/android/internal/app/IBatteryStatsCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 71
    const-string v0, "com.android.internal.app.IBatteryStatsCallback"

    .line 72
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 73
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    :cond_d
    packed-switch p1, :pswitch_data_2a

    .line 83
    packed-switch p1, :pswitch_data_30

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 79
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    return v1

    .line 88
    :pswitch_1c
    sget-object v2, Landroid/os/SemSimpleNetworkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 89
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/SemSimpleNetworkStats;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 90
    invoke-virtual {p0, v2}, Lcom/android/internal/app/IBatteryStatsCallback$Stub;->notifyNetworkStatsUpdated(Ljava/util/List;)V

    .line 91
    nop

    .line 98
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/SemSimpleNetworkStats;>;"
    return v1

    :pswitch_data_2a
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_1c
    .end packed-switch
.end method
