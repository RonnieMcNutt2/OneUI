.class public abstract Landroid/service/appprediction/IPredictionService$Stub;
.super Landroid/os/Binder;
.source "IPredictionService.java"

# interfaces
.implements Landroid/service/appprediction/IPredictionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/appprediction/IPredictionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/appprediction/IPredictionService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_notifyAppTargetEvent:I = 0x2

.field static final TRANSACTION_notifyLaunchLocationShown:I = 0x3

.field static final TRANSACTION_onCreatePredictionSession:I = 0x1

.field static final TRANSACTION_onDestroyPredictionSession:I = 0x8

.field static final TRANSACTION_registerPredictionUpdates:I = 0x5

.field static final TRANSACTION_requestPredictionUpdate:I = 0x7

.field static final TRANSACTION_sortAppTargets:I = 0x4

.field static final TRANSACTION_unregisterPredictionUpdates:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    const-string v0, "android.service.appprediction.IPredictionService"

    invoke-virtual {p0, p0, v0}, Landroid/service/appprediction/IPredictionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/appprediction/IPredictionService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 58
    if-nez p0, :cond_4

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_4
    const-string v0, "android.service.appprediction.IPredictionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/appprediction/IPredictionService;

    if-eqz v1, :cond_14

    .line 63
    move-object v1, v0

    check-cast v1, Landroid/service/appprediction/IPredictionService;

    return-object v1

    .line 65
    :cond_14
    new-instance v1, Landroid/service/appprediction/IPredictionService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/appprediction/IPredictionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 74
    packed-switch p0, :pswitch_data_26

    .line 110
    const/4 v0, 0x0

    return-object v0

    .line 106
    :pswitch_5
    const-string/jumbo v0, "onDestroyPredictionSession"

    return-object v0

    .line 102
    :pswitch_9
    const-string/jumbo v0, "requestPredictionUpdate"

    return-object v0

    .line 98
    :pswitch_d
    const-string/jumbo v0, "unregisterPredictionUpdates"

    return-object v0

    .line 94
    :pswitch_11
    const-string/jumbo v0, "registerPredictionUpdates"

    return-object v0

    .line 90
    :pswitch_15
    const-string/jumbo v0, "sortAppTargets"

    return-object v0

    .line 86
    :pswitch_19
    const-string/jumbo v0, "notifyLaunchLocationShown"

    return-object v0

    .line 82
    :pswitch_1d
    const-string/jumbo v0, "notifyAppTargetEvent"

    return-object v0

    .line 78
    :pswitch_21
    const-string/jumbo v0, "onCreatePredictionSession"

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_21
        :pswitch_1d
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

    .line 69
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 353
    const/4 v0, 0x7

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 117
    invoke-static {p1}, Landroid/service/appprediction/IPredictionService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 121
    const-string v0, "android.service.appprediction.IPredictionService"

    .line 122
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 123
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    :cond_d
    packed-switch p1, :pswitch_data_d4

    .line 133
    packed-switch p1, :pswitch_data_da

    .line 217
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 129
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    return v1

    .line 210
    :pswitch_1c
    sget-object v2, Landroid/app/prediction/AppPredictionSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/prediction/AppPredictionSessionId;

    .line 211
    .local v2, "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {p0, v2}, Landroid/service/appprediction/IPredictionService$Stub;->onDestroyPredictionSession(Landroid/app/prediction/AppPredictionSessionId;)V

    .line 213
    goto/16 :goto_d3

    .line 202
    .end local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    :pswitch_2c
    sget-object v2, Landroid/app/prediction/AppPredictionSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/prediction/AppPredictionSessionId;

    .line 203
    .restart local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, v2}, Landroid/service/appprediction/IPredictionService$Stub;->requestPredictionUpdate(Landroid/app/prediction/AppPredictionSessionId;)V

    .line 205
    goto/16 :goto_d3

    .line 192
    .end local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    :pswitch_3c
    sget-object v2, Landroid/app/prediction/AppPredictionSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/prediction/AppPredictionSessionId;

    .line 194
    .restart local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/prediction/IPredictionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/prediction/IPredictionCallback;

    move-result-object v3

    .line 195
    .local v3, "_arg1":Landroid/app/prediction/IPredictionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, v2, v3}, Landroid/service/appprediction/IPredictionService$Stub;->unregisterPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    .line 197
    goto/16 :goto_d3

    .line 182
    .end local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    .end local v3    # "_arg1":Landroid/app/prediction/IPredictionCallback;
    :pswitch_54
    sget-object v2, Landroid/app/prediction/AppPredictionSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/prediction/AppPredictionSessionId;

    .line 184
    .restart local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/prediction/IPredictionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/prediction/IPredictionCallback;

    move-result-object v3

    .line 185
    .restart local v3    # "_arg1":Landroid/app/prediction/IPredictionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, v2, v3}, Landroid/service/appprediction/IPredictionService$Stub;->registerPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    .line 187
    goto :goto_d3

    .line 170
    .end local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    .end local v3    # "_arg1":Landroid/app/prediction/IPredictionCallback;
    :pswitch_6b
    sget-object v2, Landroid/app/prediction/AppPredictionSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/prediction/AppPredictionSessionId;

    .line 172
    .restart local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;

    .line 174
    .local v3, "_arg1":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/prediction/IPredictionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/prediction/IPredictionCallback;

    move-result-object v4

    .line 175
    .local v4, "_arg2":Landroid/app/prediction/IPredictionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/appprediction/IPredictionService$Stub;->sortAppTargets(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V

    .line 177
    goto :goto_d3

    .line 158
    .end local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    .end local v3    # "_arg1":Landroid/content/pm/ParceledListSlice;
    .end local v4    # "_arg2":Landroid/app/prediction/IPredictionCallback;
    :pswitch_8a
    sget-object v2, Landroid/app/prediction/AppPredictionSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/prediction/AppPredictionSessionId;

    .line 160
    .restart local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ParceledListSlice;

    .line 163
    .local v4, "_arg2":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/appprediction/IPredictionService$Stub;->notifyLaunchLocationShown(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 165
    goto :goto_d3

    .line 148
    .end local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/content/pm/ParceledListSlice;
    :pswitch_a5
    sget-object v2, Landroid/app/prediction/AppPredictionSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/prediction/AppPredictionSessionId;

    .line 150
    .restart local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    sget-object v3, Landroid/app/prediction/AppTargetEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/prediction/AppTargetEvent;

    .line 151
    .local v3, "_arg1":Landroid/app/prediction/AppTargetEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, v2, v3}, Landroid/service/appprediction/IPredictionService$Stub;->notifyAppTargetEvent(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V

    .line 153
    goto :goto_d3

    .line 138
    .end local v2    # "_arg0":Landroid/app/prediction/AppPredictionSessionId;
    .end local v3    # "_arg1":Landroid/app/prediction/AppTargetEvent;
    :pswitch_bc
    sget-object v2, Landroid/app/prediction/AppPredictionContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/prediction/AppPredictionContext;

    .line 140
    .local v2, "_arg0":Landroid/app/prediction/AppPredictionContext;
    sget-object v3, Landroid/app/prediction/AppPredictionSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/prediction/AppPredictionSessionId;

    .line 141
    .local v3, "_arg1":Landroid/app/prediction/AppPredictionSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v2, v3}, Landroid/service/appprediction/IPredictionService$Stub;->onCreatePredictionSession(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V

    .line 143
    nop

    .line 220
    .end local v2    # "_arg0":Landroid/app/prediction/AppPredictionContext;
    .end local v3    # "_arg1":Landroid/app/prediction/AppPredictionSessionId;
    :goto_d3
    return v1

    :pswitch_data_d4
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_da
    .packed-switch 0x1
        :pswitch_bc
        :pswitch_a5
        :pswitch_8a
        :pswitch_6b
        :pswitch_54
        :pswitch_3c
        :pswitch_2c
        :pswitch_1c
    .end packed-switch
.end method
