.class public abstract Landroid/net/INetworkScoreService$Stub;
.super Landroid/os/Binder;
.source "INetworkScoreService.java"

# interfaces
.implements Landroid/net/INetworkScoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkScoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkScoreService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkScoreService"

.field static final TRANSACTION_clearScores:I = 0x2

.field static final TRANSACTION_disableScoring:I = 0x4

.field static final TRANSACTION_getActiveScorer:I = 0xa

.field static final TRANSACTION_getActiveScorerPackage:I = 0x9

.field static final TRANSACTION_getAllValidScorers:I = 0xb

.field static final TRANSACTION_isCallerActiveScorer:I = 0x8

.field static final TRANSACTION_registerNetworkScoreCache:I = 0x5

.field static final TRANSACTION_requestScores:I = 0x7

.field static final TRANSACTION_setActiveScorer:I = 0x3

.field static final TRANSACTION_unregisterNetworkScoreCache:I = 0x6

.field static final TRANSACTION_updateScores:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 132
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 133
    const-string v0, "android.net.INetworkScoreService"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkScoreService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkScoreService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 141
    if-nez p0, :cond_4

    .line 142
    const/4 v0, 0x0

    return-object v0

    .line 144
    :cond_4
    const-string v0, "android.net.INetworkScoreService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 145
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/INetworkScoreService;

    if-eqz v1, :cond_14

    .line 146
    move-object v1, v0

    check-cast v1, Landroid/net/INetworkScoreService;

    return-object v1

    .line 148
    :cond_14
    new-instance v1, Landroid/net/INetworkScoreService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetworkScoreService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 157
    packed-switch p0, :pswitch_data_26

    .line 205
    const/4 v0, 0x0

    return-object v0

    .line 201
    :pswitch_5
    const-string v0, "getAllValidScorers"

    return-object v0

    .line 197
    :pswitch_8
    const-string v0, "getActiveScorer"

    return-object v0

    .line 193
    :pswitch_b
    const-string v0, "getActiveScorerPackage"

    return-object v0

    .line 189
    :pswitch_e
    const-string v0, "isCallerActiveScorer"

    return-object v0

    .line 185
    :pswitch_11
    const-string v0, "requestScores"

    return-object v0

    .line 181
    :pswitch_14
    const-string v0, "unregisterNetworkScoreCache"

    return-object v0

    .line 177
    :pswitch_17
    const-string v0, "registerNetworkScoreCache"

    return-object v0

    .line 173
    :pswitch_1a
    const-string v0, "disableScoring"

    return-object v0

    .line 169
    :pswitch_1d
    const-string v0, "setActiveScorer"

    return-object v0

    .line 165
    :pswitch_20
    const-string v0, "clearScores"

    return-object v0

    .line 161
    :pswitch_23
    const-string v0, "updateScores"

    return-object v0

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 152
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 620
    const/16 v0, 0xa

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 212
    invoke-static {p1}, Landroid/net/INetworkScoreService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 216
    const-string v0, "android.net.INetworkScoreService"

    .line 217
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 218
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    :cond_d
    packed-switch p1, :pswitch_data_d4

    .line 228
    packed-switch p1, :pswitch_data_da

    .line 330
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 224
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    return v1

    .line 323
    :pswitch_1c
    invoke-virtual {p0}, Landroid/net/INetworkScoreService$Stub;->getAllValidScorers()Ljava/util/List;

    move-result-object v2

    .line 324
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkScorerAppData;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 326
    goto/16 :goto_d3

    .line 316
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkScorerAppData;>;"
    :pswitch_28
    invoke-virtual {p0}, Landroid/net/INetworkScoreService$Stub;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v2

    .line 317
    .local v2, "_result":Landroid/net/NetworkScorerAppData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 319
    goto/16 :goto_d3

    .line 309
    .end local v2    # "_result":Landroid/net/NetworkScorerAppData;
    :pswitch_34
    invoke-virtual {p0}, Landroid/net/INetworkScoreService$Stub;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    goto/16 :goto_d3

    .line 300
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 301
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 302
    invoke-virtual {p0, v2}, Landroid/net/INetworkScoreService$Stub;->isCallerActiveScorer(I)Z

    move-result v3

    .line 303
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 305
    goto/16 :goto_d3

    .line 290
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_53
    sget-object v2, Landroid/net/NetworkKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/NetworkKey;

    .line 291
    .local v2, "_arg0":[Landroid/net/NetworkKey;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 292
    invoke-virtual {p0, v2}, Landroid/net/INetworkScoreService$Stub;->requestScores([Landroid/net/NetworkKey;)Z

    move-result v3

    .line 293
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 295
    goto :goto_d3

    .line 279
    .end local v2    # "_arg0":[Landroid/net/NetworkKey;
    .end local v3    # "_result":Z
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 281
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/INetworkScoreCache$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkScoreCache;

    move-result-object v3

    .line 282
    .local v3, "_arg1":Landroid/net/INetworkScoreCache;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 283
    invoke-virtual {p0, v2, v3}, Landroid/net/INetworkScoreService$Stub;->unregisterNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    goto :goto_d3

    .line 266
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/net/INetworkScoreCache;
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 268
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/INetworkScoreCache$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkScoreCache;

    move-result-object v3

    .line 270
    .restart local v3    # "_arg1":Landroid/net/INetworkScoreCache;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 271
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 272
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/INetworkScoreService$Stub;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    goto :goto_d3

    .line 259
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/net/INetworkScoreCache;
    .end local v4    # "_arg2":I
    :pswitch_99
    invoke-virtual {p0}, Landroid/net/INetworkScoreService$Stub;->disableScoring()V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    goto :goto_d3

    .line 250
    :pswitch_a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {p0, v2}, Landroid/net/INetworkScoreService$Stub;->setActiveScorer(Ljava/lang/String;)Z

    move-result v3

    .line 253
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 255
    goto :goto_d3

    .line 242
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_b2
    invoke-virtual {p0}, Landroid/net/INetworkScoreService$Stub;->clearScores()Z

    move-result v2

    .line 243
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 245
    goto :goto_d3

    .line 233
    .end local v2    # "_result":Z
    :pswitch_bd
    sget-object v2, Landroid/net/ScoredNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/ScoredNetwork;

    .line 234
    .local v2, "_arg0":[Landroid/net/ScoredNetwork;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, v2}, Landroid/net/INetworkScoreService$Stub;->updateScores([Landroid/net/ScoredNetwork;)Z

    move-result v3

    .line 236
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 238
    nop

    .line 333
    .end local v2    # "_arg0":[Landroid/net/ScoredNetwork;
    .end local v3    # "_result":Z
    :goto_d3
    return v1

    :pswitch_data_d4
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_da
    .packed-switch 0x1
        :pswitch_bd
        :pswitch_b2
        :pswitch_a0
        :pswitch_99
        :pswitch_7f
        :pswitch_69
        :pswitch_53
        :pswitch_40
        :pswitch_34
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method
