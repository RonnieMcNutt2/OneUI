.class public abstract Lcom/android/internal/view/IDragAndDropPermissions$Stub;
.super Landroid/os/Binder;
.source "IDragAndDropPermissions.java"

# interfaces
.implements Lcom/android/internal/view/IDragAndDropPermissions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IDragAndDropPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IDragAndDropPermissions$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IDragAndDropPermissions"

.field static final TRANSACTION_getFlags:I = 0x4

.field static final TRANSACTION_release:I = 0x3

.field static final TRANSACTION_take:I = 0x1

.field static final TRANSACTION_takeTransient:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 39
    const-string v0, "com.android.internal.view.IDragAndDropPermissions"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IDragAndDropPermissions$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IDragAndDropPermissions;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 47
    if-nez p0, :cond_4

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 50
    :cond_4
    const-string v0, "com.android.internal.view.IDragAndDropPermissions"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 51
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/view/IDragAndDropPermissions;

    if-eqz v1, :cond_14

    .line 52
    move-object v1, v0

    check-cast v1, Lcom/android/internal/view/IDragAndDropPermissions;

    return-object v1

    .line 54
    :cond_14
    new-instance v1, Lcom/android/internal/view/IDragAndDropPermissions$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/IDragAndDropPermissions$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 63
    packed-switch p0, :pswitch_data_16

    .line 83
    const/4 v0, 0x0

    return-object v0

    .line 79
    :pswitch_5
    const-string/jumbo v0, "getFlags"

    return-object v0

    .line 75
    :pswitch_9
    const-string/jumbo v0, "release"

    return-object v0

    .line 71
    :pswitch_d
    const-string/jumbo v0, "takeTransient"

    return-object v0

    .line 67
    :pswitch_11
    const-string/jumbo v0, "take"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 58
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 228
    const/4 v0, 0x3

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 90
    invoke-static {p1}, Lcom/android/internal/view/IDragAndDropPermissions$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 94
    const-string v0, "com.android.internal.view.IDragAndDropPermissions"

    .line 95
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 96
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    :cond_d
    packed-switch p1, :pswitch_data_44

    .line 106
    packed-switch p1, :pswitch_data_4a

    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 102
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    return v1

    .line 131
    :pswitch_1c
    invoke-virtual {p0}, Lcom/android/internal/view/IDragAndDropPermissions$Stub;->getFlags()I

    move-result v2

    .line 132
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    goto :goto_43

    .line 125
    .end local v2    # "_result":I
    :pswitch_27
    invoke-virtual {p0}, Lcom/android/internal/view/IDragAndDropPermissions$Stub;->release()V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    goto :goto_43

    .line 119
    :pswitch_2e
    invoke-virtual {p0}, Lcom/android/internal/view/IDragAndDropPermissions$Stub;->takeTransient()V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    goto :goto_43

    .line 111
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 112
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 113
    invoke-virtual {p0, v2}, Lcom/android/internal/view/IDragAndDropPermissions$Stub;->take(Landroid/os/IBinder;)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    nop

    .line 141
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :goto_43
    return v1

    :pswitch_data_44
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_35
        :pswitch_2e
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
