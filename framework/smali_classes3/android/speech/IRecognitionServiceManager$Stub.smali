.class public abstract Landroid/speech/IRecognitionServiceManager$Stub;
.super Landroid/os/Binder;
.source "IRecognitionServiceManager.java"

# interfaces
.implements Landroid/speech/IRecognitionServiceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/IRecognitionServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/IRecognitionServiceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_createSession:I = 0x1

.field static final TRANSACTION_setTemporaryComponent:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 32
    const-string v0, "android.speech.IRecognitionServiceManager"

    invoke-virtual {p0, p0, v0}, Landroid/speech/IRecognitionServiceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/speech/IRecognitionServiceManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 40
    if-nez p0, :cond_4

    .line 41
    const/4 v0, 0x0

    return-object v0

    .line 43
    :cond_4
    const-string v0, "android.speech.IRecognitionServiceManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 44
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/speech/IRecognitionServiceManager;

    if-eqz v1, :cond_14

    .line 45
    move-object v1, v0

    check-cast v1, Landroid/speech/IRecognitionServiceManager;

    return-object v1

    .line 47
    :cond_14
    new-instance v1, Landroid/speech/IRecognitionServiceManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/speech/IRecognitionServiceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 56
    packed-switch p0, :pswitch_data_c

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 64
    :pswitch_5
    const-string/jumbo v0, "setTemporaryComponent"

    return-object v0

    .line 60
    :pswitch_9
    const-string v0, "createSession"

    return-object v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 51
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 75
    invoke-static {p1}, Landroid/speech/IRecognitionServiceManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 79
    const-string v0, "android.speech.IRecognitionServiceManager"

    .line 80
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 81
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    :cond_d
    packed-switch p1, :pswitch_data_4c

    .line 91
    packed-switch p1, :pswitch_data_52

    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 87
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    return v1

    .line 110
    :pswitch_1c
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 111
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-virtual {p0, v2}, Landroid/speech/IRecognitionServiceManager$Stub;->setTemporaryComponent(Landroid/content/ComponentName;)V

    .line 113
    goto :goto_4a

    .line 96
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :pswitch_2b
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 98
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 100
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 102
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/speech/IRecognitionServiceManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/IRecognitionServiceManagerCallback;

    move-result-object v5

    .line 103
    .local v5, "_arg3":Landroid/speech/IRecognitionServiceManagerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 104
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/speech/IRecognitionServiceManager$Stub;->createSession(Landroid/content/ComponentName;Landroid/os/IBinder;ZLandroid/speech/IRecognitionServiceManagerCallback;)V

    .line 105
    nop

    .line 120
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Landroid/speech/IRecognitionServiceManagerCallback;
    :goto_4a
    return v1

    nop

    :pswitch_data_4c
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
