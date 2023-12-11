.class public abstract Landroid/apphibernation/IAppHibernationService$Stub;
.super Landroid/os/Binder;
.source "IAppHibernationService.java"

# interfaces
.implements Landroid/apphibernation/IAppHibernationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/apphibernation/IAppHibernationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/apphibernation/IAppHibernationService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getHibernatingPackagesForUser:I = 0x5

.field static final TRANSACTION_getHibernationStatsForUser:I = 0x6

.field static final TRANSACTION_isHibernatingForUser:I = 0x1

.field static final TRANSACTION_isHibernatingGlobally:I = 0x3

.field static final TRANSACTION_isOatArtifactDeletionEnabled:I = 0x7

.field static final TRANSACTION_setHibernatingForUser:I = 0x2

.field static final TRANSACTION_setHibernatingGlobally:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 51
    const-string v0, "android.apphibernation.IAppHibernationService"

    invoke-virtual {p0, p0, v0}, Landroid/apphibernation/IAppHibernationService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/apphibernation/IAppHibernationService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 59
    if-nez p0, :cond_4

    .line 60
    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_4
    const-string v0, "android.apphibernation.IAppHibernationService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 63
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/apphibernation/IAppHibernationService;

    if-eqz v1, :cond_14

    .line 64
    move-object v1, v0

    check-cast v1, Landroid/apphibernation/IAppHibernationService;

    return-object v1

    .line 66
    :cond_14
    new-instance v1, Landroid/apphibernation/IAppHibernationService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/apphibernation/IAppHibernationService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 75
    packed-switch p0, :pswitch_data_20

    .line 107
    const/4 v0, 0x0

    return-object v0

    .line 103
    :pswitch_5
    const-string/jumbo v0, "isOatArtifactDeletionEnabled"

    return-object v0

    .line 99
    :pswitch_9
    const-string v0, "getHibernationStatsForUser"

    return-object v0

    .line 95
    :pswitch_c
    const-string v0, "getHibernatingPackagesForUser"

    return-object v0

    .line 91
    :pswitch_f
    const-string/jumbo v0, "setHibernatingGlobally"

    return-object v0

    .line 87
    :pswitch_13
    const-string/jumbo v0, "isHibernatingGlobally"

    return-object v0

    .line 83
    :pswitch_17
    const-string/jumbo v0, "setHibernatingForUser"

    return-object v0

    .line 79
    :pswitch_1b
    const-string/jumbo v0, "isHibernatingForUser"

    return-object v0

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic lambda$onTransact$0(Landroid/os/Parcel;Ljava/lang/String;Landroid/apphibernation/HibernationStats;)V
    .registers 4
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/apphibernation/HibernationStats;

    .line 202
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 204
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 70
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 381
    const/4 v0, 0x6

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 114
    invoke-static {p1}, Landroid/apphibernation/IAppHibernationService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    const-string v0, "android.apphibernation.IAppHibernationService"

    .line 119
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 120
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    :cond_d
    packed-switch p1, :pswitch_data_b4

    .line 130
    packed-switch p1, :pswitch_data_ba

    .line 217
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 126
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    return v1

    .line 210
    :pswitch_1c
    invoke-virtual {p0}, Landroid/apphibernation/IAppHibernationService$Stub;->isOatArtifactDeletionEnabled()Z

    move-result v2

    .line 211
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 213
    goto/16 :goto_b3

    .line 191
    .end local v2    # "_result":Z
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 193
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 194
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {p0, v2, v3}, Landroid/apphibernation/IAppHibernationService$Stub;->getHibernationStatsForUser(Ljava/util/List;I)Ljava/util/Map;

    move-result-object v4

    .line 196
    .local v4, "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/apphibernation/HibernationStats;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    if-nez v4, :cond_41

    .line 198
    const/4 v5, -0x1

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b3

    .line 200
    :cond_41
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    new-instance v5, Landroid/apphibernation/IAppHibernationService$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v5, p3}, Landroid/apphibernation/IAppHibernationService$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v4, v5}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 206
    goto :goto_b3

    .line 181
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/apphibernation/HibernationStats;>;"
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 182
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, v2}, Landroid/apphibernation/IAppHibernationService$Stub;->getHibernatingPackagesForUser(I)Ljava/util/List;

    move-result-object v3

    .line 184
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 186
    goto :goto_b3

    .line 170
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 173
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, v2, v3}, Landroid/apphibernation/IAppHibernationService$Stub;->setHibernatingGlobally(Ljava/lang/String;Z)V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    goto :goto_b3

    .line 160
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 161
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, v2}, Landroid/apphibernation/IAppHibernationService$Stub;->isHibernatingGlobally(Ljava/lang/String;)Z

    move-result v3

    .line 163
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 165
    goto :goto_b3

    .line 147
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 149
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 151
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 152
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, v2, v3, v4}, Landroid/apphibernation/IAppHibernationService$Stub;->setHibernatingForUser(Ljava/lang/String;IZ)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    goto :goto_b3

    .line 135
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 137
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 138
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {p0, v2, v3}, Landroid/apphibernation/IAppHibernationService$Stub;->isHibernatingForUser(Ljava/lang/String;I)Z

    move-result v4

    .line 140
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 142
    nop

    .line 220
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :goto_b3
    return v1

    :pswitch_data_b4
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_9d
        :pswitch_87
        :pswitch_75
        :pswitch_63
        :pswitch_51
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method
