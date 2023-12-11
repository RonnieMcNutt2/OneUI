.class public abstract Lcom/samsung/android/remoteappmode/ITaskChangeListener$Stub;
.super Landroid/os/Binder;
.source "ITaskChangeListener.java"

# interfaces
.implements Lcom/samsung/android/remoteappmode/ITaskChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/remoteappmode/ITaskChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/remoteappmode/ITaskChangeListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onRecentTaskListUpdated:I = 0x5

.field static final TRANSACTION_onTaskDisplayChanged:I = 0x4

.field static final TRANSACTION_onTaskPlayed:I = 0x2

.field static final TRANSACTION_onTaskRemoved:I = 0x1

.field static final TRANSACTION_onTaskTriedToGoToBackground:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "com.samsung.android.remoteappmode.ITaskChangeListener"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/remoteappmode/ITaskChangeListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/ITaskChangeListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 45
    if-nez p0, :cond_4

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_4
    const-string v0, "com.samsung.android.remoteappmode.ITaskChangeListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/remoteappmode/ITaskChangeListener;

    if-eqz v1, :cond_14

    .line 50
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/remoteappmode/ITaskChangeListener;

    return-object v1

    .line 52
    :cond_14
    new-instance v1, Lcom/samsung/android/remoteappmode/ITaskChangeListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/remoteappmode/ITaskChangeListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 61
    packed-switch p0, :pswitch_data_1a

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 81
    :pswitch_5
    const-string/jumbo v0, "onRecentTaskListUpdated"

    return-object v0

    .line 77
    :pswitch_9
    const-string/jumbo v0, "onTaskDisplayChanged"

    return-object v0

    .line 73
    :pswitch_d
    const-string/jumbo v0, "onTaskTriedToGoToBackground"

    return-object v0

    .line 69
    :pswitch_11
    const-string/jumbo v0, "onTaskPlayed"

    return-object v0

    .line 65
    :pswitch_15
    const-string/jumbo v0, "onTaskRemoved"

    return-object v0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
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

    .line 56
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 246
    const/4 v0, 0x4

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 92
    invoke-static {p1}, Lcom/samsung/android/remoteappmode/ITaskChangeListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 96
    const-string v0, "com.samsung.android.remoteappmode.ITaskChangeListener"

    .line 97
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 98
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    :cond_d
    packed-switch p1, :pswitch_data_5a

    .line 108
    packed-switch p1, :pswitch_data_60

    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 104
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v1

    .line 150
    :pswitch_1c
    invoke-virtual {p0}, Lcom/samsung/android/remoteappmode/ITaskChangeListener$Stub;->onRecentTaskListUpdated()V

    .line 151
    goto :goto_58

    .line 141
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 143
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 144
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/remoteappmode/ITaskChangeListener$Stub;->onTaskDisplayChanged(II)V

    .line 146
    goto :goto_58

    .line 131
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 133
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 134
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/remoteappmode/ITaskChangeListener$Stub;->onTaskTriedToGoToBackground(II)V

    .line 136
    goto :goto_58

    .line 121
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 123
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 124
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/remoteappmode/ITaskChangeListener$Stub;->onTaskPlayed(II)V

    .line 126
    goto :goto_58

    .line 113
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 114
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    invoke-virtual {p0, v2}, Lcom/samsung/android/remoteappmode/ITaskChangeListener$Stub;->onTaskRemoved(I)V

    .line 116
    nop

    .line 158
    .end local v2    # "_arg0":I
    :goto_58
    return v1

    nop

    :pswitch_data_5a
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_3e
        :pswitch_2f
        :pswitch_20
        :pswitch_1c
    .end packed-switch
.end method
