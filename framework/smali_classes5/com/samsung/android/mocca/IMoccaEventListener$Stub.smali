.class public abstract Lcom/samsung/android/mocca/IMoccaEventListener$Stub;
.super Landroid/os/Binder;
.source "IMoccaEventListener.java"

# interfaces
.implements Lcom/samsung/android/mocca/IMoccaEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mocca/IMoccaEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mocca/IMoccaEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onContextAvailable:I = 0x3

.field static final TRANSACTION_onContextChanged:I = 0x1

.field static final TRANSACTION_onContextStopped:I = 0x2

.field static final TRANSACTION_onContextUnavailable:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "com.samsung.android.mocca.IMoccaEventListener"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/mocca/IMoccaEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mocca/IMoccaEventListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_4

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_4
    const-string v0, "com.samsung.android.mocca.IMoccaEventListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/mocca/IMoccaEventListener;

    if-eqz v1, :cond_14

    .line 47
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/mocca/IMoccaEventListener;

    return-object v1

    .line 49
    :cond_14
    new-instance v1, Lcom/samsung/android/mocca/IMoccaEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/mocca/IMoccaEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 58
    packed-switch p0, :pswitch_data_16

    .line 78
    const/4 v0, 0x0

    return-object v0

    .line 74
    :pswitch_5
    const-string/jumbo v0, "onContextUnavailable"

    return-object v0

    .line 70
    :pswitch_9
    const-string/jumbo v0, "onContextAvailable"

    return-object v0

    .line 66
    :pswitch_d
    const-string/jumbo v0, "onContextStopped"

    return-object v0

    .line 62
    :pswitch_11
    const-string/jumbo v0, "onContextChanged"

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

    .line 53
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 229
    const/4 v0, 0x3

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 85
    invoke-static {p1}, Lcom/samsung/android/mocca/IMoccaEventListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 89
    const-string v0, "com.samsung.android.mocca.IMoccaEventListener"

    .line 90
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 91
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    :cond_d
    packed-switch p1, :pswitch_data_5a

    .line 101
    packed-switch p1, :pswitch_data_60

    .line 141
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 97
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return v1

    .line 133
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, v2}, Lcom/samsung/android/mocca/IMoccaEventListener$Stub;->onContextUnavailable(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    goto :goto_58

    .line 124
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 125
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, v2}, Lcom/samsung/android/mocca/IMoccaEventListener$Stub;->onContextAvailable(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    goto :goto_58

    .line 115
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 116
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    invoke-virtual {p0, v2}, Lcom/samsung/android/mocca/IMoccaEventListener$Stub;->onContextStopped(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    goto :goto_58

    .line 106
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_46
    sget-object v2, Lcom/samsung/android/mocca/ContextEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mocca/ContextEvent;

    .line 107
    .local v2, "_arg0":Lcom/samsung/android/mocca/ContextEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 108
    invoke-virtual {p0, v2}, Lcom/samsung/android/mocca/IMoccaEventListener$Stub;->onContextChanged(Lcom/samsung/android/mocca/ContextEvent;)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    nop

    .line 144
    .end local v2    # "_arg0":Lcom/samsung/android/mocca/ContextEvent;
    :goto_58
    return v1

    nop

    :pswitch_data_5a
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_46
        :pswitch_38
        :pswitch_2a
        :pswitch_1c
    .end packed-switch
.end method
