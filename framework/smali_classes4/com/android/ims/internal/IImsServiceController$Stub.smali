.class public abstract Lcom/android/ims/internal/IImsServiceController$Stub;
.super Landroid/os/Binder;
.source "IImsServiceController.java"

# interfaces
.implements Lcom/android/ims/internal/IImsServiceController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsServiceController$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsServiceController"

.field static final TRANSACTION_addFeatureStatusCallback:I = 0x5

.field static final TRANSACTION_createEmergencyMMTelFeature:I = 0x1

.field static final TRANSACTION_createMMTelFeature:I = 0x2

.field static final TRANSACTION_createRcsFeature:I = 0x3

.field static final TRANSACTION_removeFeatureStatusCallback:I = 0x6

.field static final TRANSACTION_removeImsFeature:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "com.android.ims.internal.IImsServiceController"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsServiceController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_4
    const-string v0, "com.android.ims.internal.IImsServiceController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/ims/internal/IImsServiceController;

    if-eqz v1, :cond_14

    .line 59
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/IImsServiceController;

    return-object v1

    .line 61
    :cond_14
    new-instance v1, Lcom/android/ims/internal/IImsServiceController$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsServiceController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 70
    packed-switch p0, :pswitch_data_1a

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 94
    :pswitch_5
    const-string/jumbo v0, "removeFeatureStatusCallback"

    return-object v0

    .line 90
    :pswitch_9
    const-string v0, "addFeatureStatusCallback"

    return-object v0

    .line 86
    :pswitch_c
    const-string/jumbo v0, "removeImsFeature"

    return-object v0

    .line 82
    :pswitch_10
    const-string v0, "createRcsFeature"

    return-object v0

    .line 78
    :pswitch_13
    const-string v0, "createMMTelFeature"

    return-object v0

    .line 74
    :pswitch_16
    const-string v0, "createEmergencyMMTelFeature"

    return-object v0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 65
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 327
    const/4 v0, 0x5

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 105
    invoke-static {p1}, Lcom/android/ims/internal/IImsServiceController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 109
    const-string v0, "com.android.ims.internal.IImsServiceController"

    .line 110
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 111
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    :cond_d
    packed-switch p1, :pswitch_data_9a

    .line 121
    packed-switch p1, :pswitch_data_a0

    .line 192
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 117
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    return v1

    .line 180
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 182
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 184
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/internal/IImsFeatureStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsFeatureStatusCallback;

    move-result-object v4

    .line 185
    .local v4, "_arg2":Lcom/android/ims/internal/IImsFeatureStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsServiceController$Stub;->removeFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    goto :goto_98

    .line 167
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lcom/android/ims/internal/IImsFeatureStatusCallback;
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 169
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 171
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/internal/IImsFeatureStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsFeatureStatusCallback;

    move-result-object v4

    .line 172
    .restart local v4    # "_arg2":Lcom/android/ims/internal/IImsFeatureStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsServiceController$Stub;->addFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    goto :goto_98

    .line 156
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lcom/android/ims/internal/IImsFeatureStatusCallback;
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 158
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 159
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsServiceController$Stub;->removeImsFeature(II)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    goto :goto_98

    .line 146
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 147
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsServiceController$Stub;->createRcsFeature(I)Lcom/android/ims/internal/IImsRcsFeature;

    move-result-object v3

    .line 149
    .local v3, "_result":Lcom/android/ims/internal/IImsRcsFeature;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 151
    goto :goto_98

    .line 136
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Lcom/android/ims/internal/IImsRcsFeature;
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 137
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsServiceController$Stub;->createMMTelFeature(I)Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v3

    .line 139
    .local v3, "_result":Lcom/android/ims/internal/IImsMMTelFeature;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 141
    goto :goto_98

    .line 126
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Lcom/android/ims/internal/IImsMMTelFeature;
    :pswitch_86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 127
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsServiceController$Stub;->createEmergencyMMTelFeature(I)Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v3

    .line 129
    .restart local v3    # "_result":Lcom/android/ims/internal/IImsMMTelFeature;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 131
    nop

    .line 195
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Lcom/android/ims/internal/IImsMMTelFeature;
    :goto_98
    return v1

    nop

    :pswitch_data_9a
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_86
        :pswitch_74
        :pswitch_62
        :pswitch_50
        :pswitch_36
        :pswitch_1c
    .end packed-switch
.end method
