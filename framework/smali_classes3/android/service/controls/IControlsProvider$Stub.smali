.class public abstract Landroid/service/controls/IControlsProvider$Stub;
.super Landroid/os/Binder;
.source "IControlsProvider.java"

# interfaces
.implements Landroid/service/controls/IControlsProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/controls/IControlsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/controls/IControlsProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_action:I = 0x4

.field static final TRANSACTION_load:I = 0x1

.field static final TRANSACTION_loadControlsProviderInfo:I = 0x5

.field static final TRANSACTION_loadSuggested:I = 0x2

.field static final TRANSACTION_subscribe:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    const-string v0, "android.service.controls.IControlsProvider"

    invoke-virtual {p0, p0, v0}, Landroid/service/controls/IControlsProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/controls/IControlsProvider;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 46
    if-nez p0, :cond_4

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_4
    const-string v0, "android.service.controls.IControlsProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 50
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/controls/IControlsProvider;

    if-eqz v1, :cond_14

    .line 51
    move-object v1, v0

    check-cast v1, Landroid/service/controls/IControlsProvider;

    return-object v1

    .line 53
    :cond_14
    new-instance v1, Landroid/service/controls/IControlsProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/controls/IControlsProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 62
    packed-switch p0, :pswitch_data_18

    .line 86
    const/4 v0, 0x0

    return-object v0

    .line 82
    :pswitch_5
    const-string/jumbo v0, "loadControlsProviderInfo"

    return-object v0

    .line 78
    :pswitch_9
    const-string v0, "action"

    return-object v0

    .line 74
    :pswitch_c
    const-string/jumbo v0, "subscribe"

    return-object v0

    .line 70
    :pswitch_10
    const-string/jumbo v0, "loadSuggested"

    return-object v0

    .line 66
    :pswitch_14
    const-string/jumbo v0, "load"

    return-object v0

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 57
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 252
    const/4 v0, 0x4

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 93
    invoke-static {p1}, Landroid/service/controls/IControlsProvider$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 97
    const-string v0, "android.service.controls.IControlsProvider"

    .line 98
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 99
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    :cond_d
    packed-switch p1, :pswitch_data_78

    .line 109
    packed-switch p1, :pswitch_data_7e

    .line 159
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 105
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    return v1

    .line 152
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/controls/IControlsProviderInfoSubscriber$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/controls/IControlsProviderInfoSubscriber;

    move-result-object v2

    .line 153
    .local v2, "_arg0":Landroid/service/controls/IControlsProviderInfoSubscriber;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, v2}, Landroid/service/controls/IControlsProvider$Stub;->loadControlsProviderInfo(Landroid/service/controls/IControlsProviderInfoSubscriber;)V

    .line 155
    goto :goto_77

    .line 140
    .end local v2    # "_arg0":Landroid/service/controls/IControlsProviderInfoSubscriber;
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/service/controls/actions/ControlActionWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/controls/actions/ControlActionWrapper;

    .line 144
    .local v3, "_arg1":Landroid/service/controls/actions/ControlActionWrapper;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/controls/IControlsActionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/controls/IControlsActionCallback;

    move-result-object v4

    .line 145
    .local v4, "_arg2":Landroid/service/controls/IControlsActionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 146
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/controls/IControlsProvider$Stub;->action(Ljava/lang/String;Landroid/service/controls/actions/ControlActionWrapper;Landroid/service/controls/IControlsActionCallback;)V

    .line 147
    goto :goto_77

    .line 130
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/service/controls/actions/ControlActionWrapper;
    .end local v4    # "_arg2":Landroid/service/controls/IControlsActionCallback;
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 132
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/controls/IControlsSubscriber$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/controls/IControlsSubscriber;

    move-result-object v3

    .line 133
    .local v3, "_arg1":Landroid/service/controls/IControlsSubscriber;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, v2, v3}, Landroid/service/controls/IControlsProvider$Stub;->subscribe(Ljava/util/List;Landroid/service/controls/IControlsSubscriber;)V

    .line 135
    goto :goto_77

    .line 122
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":Landroid/service/controls/IControlsSubscriber;
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/controls/IControlsSubscriber$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/controls/IControlsSubscriber;

    move-result-object v2

    .line 123
    .local v2, "_arg0":Landroid/service/controls/IControlsSubscriber;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {p0, v2}, Landroid/service/controls/IControlsProvider$Stub;->loadSuggested(Landroid/service/controls/IControlsSubscriber;)V

    .line 125
    goto :goto_77

    .line 114
    .end local v2    # "_arg0":Landroid/service/controls/IControlsSubscriber;
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/controls/IControlsSubscriber$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/controls/IControlsSubscriber;

    move-result-object v2

    .line 115
    .restart local v2    # "_arg0":Landroid/service/controls/IControlsSubscriber;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {p0, v2}, Landroid/service/controls/IControlsProvider$Stub;->load(Landroid/service/controls/IControlsSubscriber;)V

    .line 117
    nop

    .line 162
    .end local v2    # "_arg0":Landroid/service/controls/IControlsSubscriber;
    :goto_77
    return v1

    :pswitch_data_78
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_68
        :pswitch_59
        :pswitch_46
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
