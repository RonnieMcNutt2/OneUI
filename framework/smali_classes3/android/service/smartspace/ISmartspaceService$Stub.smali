.class public abstract Landroid/service/smartspace/ISmartspaceService$Stub;
.super Landroid/os/Binder;
.source "ISmartspaceService.java"

# interfaces
.implements Landroid/service/smartspace/ISmartspaceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/smartspace/ISmartspaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/smartspace/ISmartspaceService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_notifySmartspaceEvent:I = 0x2

.field static final TRANSACTION_onCreateSmartspaceSession:I = 0x1

.field static final TRANSACTION_onDestroySmartspaceSession:I = 0x6

.field static final TRANSACTION_registerSmartspaceUpdates:I = 0x4

.field static final TRANSACTION_requestSmartspaceUpdate:I = 0x3

.field static final TRANSACTION_unregisterSmartspaceUpdates:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "android.service.smartspace.ISmartspaceService"

    invoke-virtual {p0, p0, v0}, Landroid/service/smartspace/ISmartspaceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/smartspace/ISmartspaceService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_4
    const-string v0, "android.service.smartspace.ISmartspaceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/smartspace/ISmartspaceService;

    if-eqz v1, :cond_14

    .line 57
    move-object v1, v0

    check-cast v1, Landroid/service/smartspace/ISmartspaceService;

    return-object v1

    .line 59
    :cond_14
    new-instance v1, Landroid/service/smartspace/ISmartspaceService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/smartspace/ISmartspaceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 68
    packed-switch p0, :pswitch_data_1e

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 92
    :pswitch_5
    const-string/jumbo v0, "onDestroySmartspaceSession"

    return-object v0

    .line 88
    :pswitch_9
    const-string/jumbo v0, "unregisterSmartspaceUpdates"

    return-object v0

    .line 84
    :pswitch_d
    const-string/jumbo v0, "registerSmartspaceUpdates"

    return-object v0

    .line 80
    :pswitch_11
    const-string/jumbo v0, "requestSmartspaceUpdate"

    return-object v0

    .line 76
    :pswitch_15
    const-string/jumbo v0, "notifySmartspaceEvent"

    return-object v0

    .line 72
    :pswitch_19
    const-string/jumbo v0, "onCreateSmartspaceSession"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
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

    .line 63
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 285
    const/4 v0, 0x5

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 103
    invoke-static {p1}, Landroid/service/smartspace/ISmartspaceService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 107
    const-string v0, "android.service.smartspace.ISmartspaceService"

    .line 108
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 109
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    :cond_d
    packed-switch p1, :pswitch_data_98

    .line 119
    packed-switch p1, :pswitch_data_9e

    .line 179
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 115
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    return v1

    .line 172
    :pswitch_1c
    sget-object v2, Landroid/app/smartspace/SmartspaceSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/smartspace/SmartspaceSessionId;

    .line 173
    .local v2, "_arg0":Landroid/app/smartspace/SmartspaceSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, v2}, Landroid/service/smartspace/ISmartspaceService$Stub;->onDestroySmartspaceSession(Landroid/app/smartspace/SmartspaceSessionId;)V

    .line 175
    goto :goto_96

    .line 162
    .end local v2    # "_arg0":Landroid/app/smartspace/SmartspaceSessionId;
    :pswitch_2b
    sget-object v2, Landroid/app/smartspace/SmartspaceSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/smartspace/SmartspaceSessionId;

    .line 164
    .restart local v2    # "_arg0":Landroid/app/smartspace/SmartspaceSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/smartspace/ISmartspaceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/smartspace/ISmartspaceCallback;

    move-result-object v3

    .line 165
    .local v3, "_arg1":Landroid/app/smartspace/ISmartspaceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {p0, v2, v3}, Landroid/service/smartspace/ISmartspaceService$Stub;->unregisterSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    .line 167
    goto :goto_96

    .line 152
    .end local v2    # "_arg0":Landroid/app/smartspace/SmartspaceSessionId;
    .end local v3    # "_arg1":Landroid/app/smartspace/ISmartspaceCallback;
    :pswitch_42
    sget-object v2, Landroid/app/smartspace/SmartspaceSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/smartspace/SmartspaceSessionId;

    .line 154
    .restart local v2    # "_arg0":Landroid/app/smartspace/SmartspaceSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/smartspace/ISmartspaceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/smartspace/ISmartspaceCallback;

    move-result-object v3

    .line 155
    .restart local v3    # "_arg1":Landroid/app/smartspace/ISmartspaceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {p0, v2, v3}, Landroid/service/smartspace/ISmartspaceService$Stub;->registerSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    .line 157
    goto :goto_96

    .line 144
    .end local v2    # "_arg0":Landroid/app/smartspace/SmartspaceSessionId;
    .end local v3    # "_arg1":Landroid/app/smartspace/ISmartspaceCallback;
    :pswitch_59
    sget-object v2, Landroid/app/smartspace/SmartspaceSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/smartspace/SmartspaceSessionId;

    .line 145
    .restart local v2    # "_arg0":Landroid/app/smartspace/SmartspaceSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 146
    invoke-virtual {p0, v2}, Landroid/service/smartspace/ISmartspaceService$Stub;->requestSmartspaceUpdate(Landroid/app/smartspace/SmartspaceSessionId;)V

    .line 147
    goto :goto_96

    .line 134
    .end local v2    # "_arg0":Landroid/app/smartspace/SmartspaceSessionId;
    :pswitch_68
    sget-object v2, Landroid/app/smartspace/SmartspaceSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/smartspace/SmartspaceSessionId;

    .line 136
    .restart local v2    # "_arg0":Landroid/app/smartspace/SmartspaceSessionId;
    sget-object v3, Landroid/app/smartspace/SmartspaceTargetEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/smartspace/SmartspaceTargetEvent;

    .line 137
    .local v3, "_arg1":Landroid/app/smartspace/SmartspaceTargetEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, v2, v3}, Landroid/service/smartspace/ISmartspaceService$Stub;->notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;)V

    .line 139
    goto :goto_96

    .line 124
    .end local v2    # "_arg0":Landroid/app/smartspace/SmartspaceSessionId;
    .end local v3    # "_arg1":Landroid/app/smartspace/SmartspaceTargetEvent;
    :pswitch_7f
    sget-object v2, Landroid/app/smartspace/SmartspaceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/smartspace/SmartspaceConfig;

    .line 126
    .local v2, "_arg0":Landroid/app/smartspace/SmartspaceConfig;
    sget-object v3, Landroid/app/smartspace/SmartspaceSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/smartspace/SmartspaceSessionId;

    .line 127
    .local v3, "_arg1":Landroid/app/smartspace/SmartspaceSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, v2, v3}, Landroid/service/smartspace/ISmartspaceService$Stub;->onCreateSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V

    .line 129
    nop

    .line 182
    .end local v2    # "_arg0":Landroid/app/smartspace/SmartspaceConfig;
    .end local v3    # "_arg1":Landroid/app/smartspace/SmartspaceSessionId;
    :goto_96
    return v1

    nop

    :pswitch_data_98
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_7f
        :pswitch_68
        :pswitch_59
        :pswitch_42
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
