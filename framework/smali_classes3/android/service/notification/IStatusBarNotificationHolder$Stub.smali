.class public abstract Landroid/service/notification/IStatusBarNotificationHolder$Stub;
.super Landroid/os/Binder;
.source "IStatusBarNotificationHolder.java"

# interfaces
.implements Landroid/service/notification/IStatusBarNotificationHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/IStatusBarNotificationHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/IStatusBarNotificationHolder$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.service.notification.IStatusBarNotificationHolder"

.field static final TRANSACTION_get:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 27
    const-string v0, "android.service.notification.IStatusBarNotificationHolder"

    invoke-virtual {p0, p0, v0}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/notification/IStatusBarNotificationHolder;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 35
    if-nez p0, :cond_4

    .line 36
    const/4 v0, 0x0

    return-object v0

    .line 38
    :cond_4
    const-string v0, "android.service.notification.IStatusBarNotificationHolder"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 39
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/notification/IStatusBarNotificationHolder;

    if-eqz v1, :cond_14

    .line 40
    move-object v1, v0

    check-cast v1, Landroid/service/notification/IStatusBarNotificationHolder;

    return-object v1

    .line 42
    :cond_14
    new-instance v1, Landroid/service/notification/IStatusBarNotificationHolder$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/notification/IStatusBarNotificationHolder$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 51
    packed-switch p0, :pswitch_data_8

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 55
    :pswitch_5
    const-string v0, "get"

    return-object v0

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 46
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 66
    invoke-static {p1}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 70
    const-string v0, "android.service.notification.IStatusBarNotificationHolder"

    .line 71
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 72
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    :cond_d
    packed-switch p1, :pswitch_data_28

    .line 82
    packed-switch p1, :pswitch_data_2e

    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 78
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    return v1

    .line 86
    :pswitch_1c
    invoke-virtual {p0}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;->get()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 87
    .local v2, "_result":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 89
    nop

    .line 96
    .end local v2    # "_result":Landroid/service/notification/StatusBarNotification;
    return v1

    :pswitch_data_28
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_1c
    .end packed-switch
.end method
