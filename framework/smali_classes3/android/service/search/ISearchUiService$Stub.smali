.class public abstract Landroid/service/search/ISearchUiService$Stub;
.super Landroid/os/Binder;
.source "ISearchUiService.java"

# interfaces
.implements Landroid/service/search/ISearchUiService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/search/ISearchUiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/search/ISearchUiService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onCreateSearchSession:I = 0x1

.field static final TRANSACTION_onDestroy:I = 0x6

.field static final TRANSACTION_onNotifyEvent:I = 0x3

.field static final TRANSACTION_onQuery:I = 0x2

.field static final TRANSACTION_onRegisterEmptyQueryResultUpdateCallback:I = 0x4

.field static final TRANSACTION_onUnregisterEmptyQueryResultUpdateCallback:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "android.service.search.ISearchUiService"

    invoke-virtual {p0, p0, v0}, Landroid/service/search/ISearchUiService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/search/ISearchUiService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_4
    const-string v0, "android.service.search.ISearchUiService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/search/ISearchUiService;

    if-eqz v1, :cond_14

    .line 57
    move-object v1, v0

    check-cast v1, Landroid/service/search/ISearchUiService;

    return-object v1

    .line 59
    :cond_14
    new-instance v1, Landroid/service/search/ISearchUiService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/search/ISearchUiService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string/jumbo v0, "onDestroy"

    return-object v0

    .line 88
    :pswitch_9
    const-string/jumbo v0, "onUnregisterEmptyQueryResultUpdateCallback"

    return-object v0

    .line 84
    :pswitch_d
    const-string/jumbo v0, "onRegisterEmptyQueryResultUpdateCallback"

    return-object v0

    .line 80
    :pswitch_11
    const-string/jumbo v0, "onNotifyEvent"

    return-object v0

    .line 76
    :pswitch_15
    const-string/jumbo v0, "onQuery"

    return-object v0

    .line 72
    :pswitch_19
    const-string/jumbo v0, "onCreateSearchSession"

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

    .line 294
    const/4 v0, 0x5

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 103
    invoke-static {p1}, Landroid/service/search/ISearchUiService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 107
    const-string v0, "android.service.search.ISearchUiService"

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
    packed-switch p1, :pswitch_data_b0

    .line 119
    packed-switch p1, :pswitch_data_b6

    .line 185
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 115
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    return v1

    .line 178
    :pswitch_1c
    sget-object v2, Landroid/app/search/SearchSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/search/SearchSessionId;

    .line 179
    .local v2, "_arg0":Landroid/app/search/SearchSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {p0, v2}, Landroid/service/search/ISearchUiService$Stub;->onDestroy(Landroid/app/search/SearchSessionId;)V

    .line 181
    goto/16 :goto_af

    .line 168
    .end local v2    # "_arg0":Landroid/app/search/SearchSessionId;
    :pswitch_2c
    sget-object v2, Landroid/app/search/SearchSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/search/SearchSessionId;

    .line 170
    .restart local v2    # "_arg0":Landroid/app/search/SearchSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/search/ISearchCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/search/ISearchCallback;

    move-result-object v3

    .line 171
    .local v3, "_arg1":Landroid/app/search/ISearchCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    invoke-virtual {p0, v2, v3}, Landroid/service/search/ISearchUiService$Stub;->onUnregisterEmptyQueryResultUpdateCallback(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V

    .line 173
    goto :goto_af

    .line 158
    .end local v2    # "_arg0":Landroid/app/search/SearchSessionId;
    .end local v3    # "_arg1":Landroid/app/search/ISearchCallback;
    :pswitch_43
    sget-object v2, Landroid/app/search/SearchSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/search/SearchSessionId;

    .line 160
    .restart local v2    # "_arg0":Landroid/app/search/SearchSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/search/ISearchCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/search/ISearchCallback;

    move-result-object v3

    .line 161
    .restart local v3    # "_arg1":Landroid/app/search/ISearchCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, v2, v3}, Landroid/service/search/ISearchUiService$Stub;->onRegisterEmptyQueryResultUpdateCallback(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V

    .line 163
    goto :goto_af

    .line 146
    .end local v2    # "_arg0":Landroid/app/search/SearchSessionId;
    .end local v3    # "_arg1":Landroid/app/search/ISearchCallback;
    :pswitch_5a
    sget-object v2, Landroid/app/search/SearchSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/search/SearchSessionId;

    .line 148
    .restart local v2    # "_arg0":Landroid/app/search/SearchSessionId;
    sget-object v3, Landroid/app/search/Query;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/search/Query;

    .line 150
    .local v3, "_arg1":Landroid/app/search/Query;
    sget-object v4, Landroid/app/search/SearchTargetEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/search/SearchTargetEvent;

    .line 151
    .local v4, "_arg2":Landroid/app/search/SearchTargetEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/search/ISearchUiService$Stub;->onNotifyEvent(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V

    .line 153
    goto :goto_af

    .line 134
    .end local v2    # "_arg0":Landroid/app/search/SearchSessionId;
    .end local v3    # "_arg1":Landroid/app/search/Query;
    .end local v4    # "_arg2":Landroid/app/search/SearchTargetEvent;
    :pswitch_79
    sget-object v2, Landroid/app/search/SearchSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/search/SearchSessionId;

    .line 136
    .restart local v2    # "_arg0":Landroid/app/search/SearchSessionId;
    sget-object v3, Landroid/app/search/Query;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/search/Query;

    .line 138
    .restart local v3    # "_arg1":Landroid/app/search/Query;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/search/ISearchCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/search/ISearchCallback;

    move-result-object v4

    .line 139
    .local v4, "_arg2":Landroid/app/search/ISearchCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/search/ISearchUiService$Stub;->onQuery(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;)V

    .line 141
    goto :goto_af

    .line 124
    .end local v2    # "_arg0":Landroid/app/search/SearchSessionId;
    .end local v3    # "_arg1":Landroid/app/search/Query;
    .end local v4    # "_arg2":Landroid/app/search/ISearchCallback;
    :pswitch_98
    sget-object v2, Landroid/app/search/SearchContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/search/SearchContext;

    .line 126
    .local v2, "_arg0":Landroid/app/search/SearchContext;
    sget-object v3, Landroid/app/search/SearchSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/search/SearchSessionId;

    .line 127
    .local v3, "_arg1":Landroid/app/search/SearchSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, v2, v3}, Landroid/service/search/ISearchUiService$Stub;->onCreateSearchSession(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;)V

    .line 129
    nop

    .line 188
    .end local v2    # "_arg0":Landroid/app/search/SearchContext;
    .end local v3    # "_arg1":Landroid/app/search/SearchSessionId;
    :goto_af
    return v1

    :pswitch_data_b0
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_98
        :pswitch_79
        :pswitch_5a
        :pswitch_43
        :pswitch_2c
        :pswitch_1c
    .end packed-switch
.end method
