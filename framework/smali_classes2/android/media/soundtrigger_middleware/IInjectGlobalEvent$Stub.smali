.class public abstract Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;
.super Landroid/os/Binder;
.source "IInjectGlobalEvent.java"

# interfaces
.implements Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_setResourceContention:I = 0x2

.field static final TRANSACTION_triggerOnResourcesAvailable:I = 0x3

.field static final TRANSACTION_triggerRestart:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    sget-object v0, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 60
    if-nez p0, :cond_4

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_4
    sget-object v0, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    if-eqz v1, :cond_14

    .line 65
    move-object v1, v0

    check-cast v1, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    return-object v1

    .line 67
    :cond_14
    new-instance v1, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 71
    return-object p0
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

    .line 75
    sget-object v0, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 76
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 77
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    :cond_d
    packed-switch p1, :pswitch_data_38

    .line 87
    packed-switch p1, :pswitch_data_3e

    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 83
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    return v1

    .line 106
    :pswitch_1c
    invoke-virtual {p0}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;->triggerOnResourcesAvailable()V

    .line 107
    goto :goto_37

    .line 97
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 99
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/soundtrigger_middleware/IAcknowledgeEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/IAcknowledgeEvent;

    move-result-object v3

    .line 100
    .local v3, "_arg1":Landroid/media/soundtrigger_middleware/IAcknowledgeEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 101
    invoke-virtual {p0, v2, v3}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;->setResourceContention(ZLandroid/media/soundtrigger_middleware/IAcknowledgeEvent;)V

    .line 102
    goto :goto_37

    .line 91
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Landroid/media/soundtrigger_middleware/IAcknowledgeEvent;
    :pswitch_33
    invoke-virtual {p0}, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent$Stub;->triggerRestart()V

    .line 92
    nop

    .line 114
    :goto_37
    return v1

    :pswitch_data_38
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_33
        :pswitch_20
        :pswitch_1c
    .end packed-switch
.end method
