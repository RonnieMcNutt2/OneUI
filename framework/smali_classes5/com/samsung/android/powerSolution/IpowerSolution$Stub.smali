.class public abstract Lcom/samsung/android/powerSolution/IpowerSolution$Stub;
.super Landroid/os/Binder;
.source "IpowerSolution.java"

# interfaces
.implements Lcom/samsung/android/powerSolution/IpowerSolution;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/powerSolution/IpowerSolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/powerSolution/IpowerSolution$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "com.samsung.android.powerSolution.IpowerSolution"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/powerSolution/IpowerSolution$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/powerSolution/IpowerSolution;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 29
    if-nez p0, :cond_4

    .line 30
    const/4 v0, 0x0

    return-object v0

    .line 32
    :cond_4
    const-string v0, "com.samsung.android.powerSolution.IpowerSolution"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/powerSolution/IpowerSolution;

    if-eqz v1, :cond_14

    .line 34
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/powerSolution/IpowerSolution;

    return-object v1

    .line 36
    :cond_14
    new-instance v1, Lcom/samsung/android/powerSolution/IpowerSolution$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/powerSolution/IpowerSolution$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 45
    nop

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 40
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 56
    invoke-static {p1}, Lcom/samsung/android/powerSolution/IpowerSolution$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    const-string v0, "com.samsung.android.powerSolution.IpowerSolution"

    .line 61
    .local v0, "descriptor":Ljava/lang/String;
    packed-switch p1, :pswitch_data_10

    .line 69
    goto :goto_b

    .line 65
    :pswitch_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    const/4 v1, 0x1

    return v1

    .line 73
    :goto_b
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_data_10
    .packed-switch 0x5f4e5446
        :pswitch_6
    .end packed-switch
.end method
