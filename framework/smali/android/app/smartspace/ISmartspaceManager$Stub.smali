.class public abstract Landroid/app/smartspace/ISmartspaceManager$Stub;
.super Landroid/os/Binder;
.source "ISmartspaceManager.java"

# interfaces
.implements Landroid/app/smartspace/ISmartspaceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/ISmartspaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/smartspace/ISmartspaceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_createSmartspaceSession:I = 0x1

.field static final TRANSACTION_destroySmartspaceSession:I = 0x6

.field static final TRANSACTION_notifySmartspaceEvent:I = 0x2

.field static final TRANSACTION_registerSmartspaceUpdates:I = 0x4

.field static final TRANSACTION_requestSmartspaceUpdate:I = 0x3

.field static final TRANSACTION_unregisterSmartspaceUpdates:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "android.app.smartspace.ISmartspaceManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/smartspace/ISmartspaceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/smartspace/ISmartspaceManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_4
    const-string v0, "android.app.smartspace.ISmartspaceManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/smartspace/ISmartspaceManager;

    if-eqz v1, :cond_14

    .line 53
    move-object v1, v0

    check-cast v1, Landroid/app/smartspace/ISmartspaceManager;

    return-object v1

    .line 55
    :cond_14
    new-instance v1, Landroid/app/smartspace/ISmartspaceManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/smartspace/ISmartspaceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 64
    packed-switch p0, :pswitch_data_1c

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 88
    :pswitch_5
    const-string v0, "destroySmartspaceSession"

    return-object v0

    .line 84
    :pswitch_8
    const-string/jumbo v0, "unregisterSmartspaceUpdates"

    return-object v0

    .line 80
    :pswitch_c
    const-string/jumbo v0, "registerSmartspaceUpdates"

    return-object v0

    .line 76
    :pswitch_10
    const-string/jumbo v0, "requestSmartspaceUpdate"

    return-object v0

    .line 72
    :pswitch_14
    const-string/jumbo v0, "notifySmartspaceEvent"

    return-object v0

    .line 68
    :pswitch_18
    const-string v0, "createSmartspaceSession"

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 59
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 284
    const/4 v0, 0x5

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 99
    invoke-static {p1}, Landroid/app/smartspace/ISmartspaceManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 103
    const-string v0, "android.app.smartspace.ISmartspaceManager"

    .line 104
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 105
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    :cond_d
    packed-switch p1, :pswitch_data_9c

    .line 115
    packed-switch p1, :pswitch_data_a2

    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 111
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    return v1

    .line 170
    :pswitch_1c
    sget-object v2, Landroid/app/smartspace/SmartspaceSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/smartspace/SmartspaceSessionId;

    .line 171
    .local v2, "_arg0":Landroid/app/smartspace/SmartspaceSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    invoke-virtual {p0, v2}, Landroid/app/smartspace/ISmartspaceManager$Stub;->destroySmartspaceSession(Landroid/app/smartspace/SmartspaceSessionId;)V

    .line 173
    goto :goto_9a

    .line 160
    .end local v2    # "_arg0":Landroid/app/smartspace/SmartspaceSessionId;
    :pswitch_2b
    sget-object v2, Landroid/app/smartspace/SmartspaceSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/smartspace/SmartspaceSessionId;

    .line 162
    .restart local v2    # "_arg0":Landroid/app/smartspace/SmartspaceSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/smartspace/ISmartspaceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/smartspace/ISmartspaceCallback;

    move-result-object v3

    .line 163
    .local v3, "_arg1":Landroid/app/smartspace/ISmartspaceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, v2, v3}, Landroid/app/smartspace/ISmartspaceManager$Stub;->unregisterSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    .line 165
    goto :goto_9a

    .line 150
    .end local v2    # "_arg0":Landroid/app/smartspace/SmartspaceSessionId;
    .end local v3    # "_arg1":Landroid/app/smartspace/ISmartspaceCallback;
    :pswitch_42
    sget-object v2, Landroid/app/smartspace/SmartspaceSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/smartspace/SmartspaceSessionId;

    .line 152
    .restart local v2    # "_arg0":Landroid/app/smartspace/SmartspaceSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/smartspace/ISmartspaceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/smartspace/ISmartspaceCallback;

    move-result-object v3

    .line 153
    .restart local v3    # "_arg1":Landroid/app/smartspace/ISmartspaceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, v2, v3}, Landroid/app/smartspace/ISmartspaceManager$Stub;->registerSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    .line 155
    goto :goto_9a

    .line 142
    .end local v2    # "_arg0":Landroid/app/smartspace/SmartspaceSessionId;
    .end local v3    # "_arg1":Landroid/app/smartspace/ISmartspaceCallback;
    :pswitch_59
    sget-object v2, Landroid/app/smartspace/SmartspaceSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/smartspace/SmartspaceSessionId;

    .line 143
    .restart local v2    # "_arg0":Landroid/app/smartspace/SmartspaceSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, v2}, Landroid/app/smartspace/ISmartspaceManager$Stub;->requestSmartspaceUpdate(Landroid/app/smartspace/SmartspaceSessionId;)V

    .line 145
    goto :goto_9a

    .line 132
    .end local v2    # "_arg0":Landroid/app/smartspace/SmartspaceSessionId;
    :pswitch_68
    sget-object v2, Landroid/app/smartspace/SmartspaceSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/smartspace/SmartspaceSessionId;

    .line 134
    .restart local v2    # "_arg0":Landroid/app/smartspace/SmartspaceSessionId;
    sget-object v3, Landroid/app/smartspace/SmartspaceTargetEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/smartspace/SmartspaceTargetEvent;

    .line 135
    .local v3, "_arg1":Landroid/app/smartspace/SmartspaceTargetEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {p0, v2, v3}, Landroid/app/smartspace/ISmartspaceManager$Stub;->notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;)V

    .line 137
    goto :goto_9a

    .line 120
    .end local v2    # "_arg0":Landroid/app/smartspace/SmartspaceSessionId;
    .end local v3    # "_arg1":Landroid/app/smartspace/SmartspaceTargetEvent;
    :pswitch_7f
    sget-object v2, Landroid/app/smartspace/SmartspaceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/smartspace/SmartspaceConfig;

    .line 122
    .local v2, "_arg0":Landroid/app/smartspace/SmartspaceConfig;
    sget-object v3, Landroid/app/smartspace/SmartspaceSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/smartspace/SmartspaceSessionId;

    .line 124
    .local v3, "_arg1":Landroid/app/smartspace/SmartspaceSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 125
    .local v4, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/smartspace/ISmartspaceManager$Stub;->createSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;Landroid/os/IBinder;)V

    .line 127
    nop

    .line 180
    .end local v2    # "_arg0":Landroid/app/smartspace/SmartspaceConfig;
    .end local v3    # "_arg1":Landroid/app/smartspace/SmartspaceSessionId;
    .end local v4    # "_arg2":Landroid/os/IBinder;
    :goto_9a
    return v1

    nop

    :pswitch_data_9c
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_7f
        :pswitch_68
        :pswitch_59
        :pswitch_42
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
