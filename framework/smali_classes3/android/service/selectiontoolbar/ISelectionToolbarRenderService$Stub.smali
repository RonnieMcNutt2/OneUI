.class public abstract Landroid/service/selectiontoolbar/ISelectionToolbarRenderService$Stub;
.super Landroid/os/Binder;
.source "ISelectionToolbarRenderService.java"

# interfaces
.implements Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/selectiontoolbar/ISelectionToolbarRenderService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onConnected:I = 0x1

.field static final TRANSACTION_onDismiss:I = 0x4

.field static final TRANSACTION_onHide:I = 0x3

.field static final TRANSACTION_onShow:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    const-string v0, "android.service.selectiontoolbar.ISelectionToolbarRenderService"

    invoke-virtual {p0, p0, v0}, Landroid/service/selectiontoolbar/ISelectionToolbarRenderService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 46
    if-nez p0, :cond_4

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_4
    const-string v0, "android.service.selectiontoolbar.ISelectionToolbarRenderService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 50
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;

    if-eqz v1, :cond_14

    .line 51
    move-object v1, v0

    check-cast v1, Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;

    return-object v1

    .line 53
    :cond_14
    new-instance v1, Landroid/service/selectiontoolbar/ISelectionToolbarRenderService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/selectiontoolbar/ISelectionToolbarRenderService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 62
    packed-switch p0, :pswitch_data_16

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 78
    :pswitch_5
    const-string/jumbo v0, "onDismiss"

    return-object v0

    .line 74
    :pswitch_9
    const-string/jumbo v0, "onHide"

    return-object v0

    .line 70
    :pswitch_d
    const-string/jumbo v0, "onShow"

    return-object v0

    .line 66
    :pswitch_11
    const-string/jumbo v0, "onConnected"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
        :pswitch_d
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

    .line 226
    const/4 v0, 0x3

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 89
    invoke-static {p1}, Landroid/service/selectiontoolbar/ISelectionToolbarRenderService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 93
    const-string v0, "android.service.selectiontoolbar.ISelectionToolbarRenderService"

    .line 94
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 95
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    :cond_d
    packed-switch p1, :pswitch_data_5e

    .line 105
    packed-switch p1, :pswitch_data_64

    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 101
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    return v1

    .line 138
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 140
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 141
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/selectiontoolbar/ISelectionToolbarRenderService$Stub;->onDismiss(IJ)V

    .line 143
    goto :goto_5c

    .line 130
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":J
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 131
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 132
    invoke-virtual {p0, v2, v3}, Landroid/service/selectiontoolbar/ISelectionToolbarRenderService$Stub;->onHide(J)V

    .line 133
    goto :goto_5c

    .line 118
    .end local v2    # "_arg0":J
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 120
    .local v2, "_arg0":I
    sget-object v3, Landroid/view/selectiontoolbar/ShowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/selectiontoolbar/ShowInfo;

    .line 122
    .local v3, "_arg1":Landroid/view/selectiontoolbar/ShowInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/selectiontoolbar/ISelectionToolbarCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/selectiontoolbar/ISelectionToolbarCallback;

    move-result-object v4

    .line 123
    .local v4, "_arg2":Landroid/view/selectiontoolbar/ISelectionToolbarCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/selectiontoolbar/ISelectionToolbarRenderService$Stub;->onShow(ILandroid/view/selectiontoolbar/ShowInfo;Landroid/view/selectiontoolbar/ISelectionToolbarCallback;)V

    .line 125
    goto :goto_5c

    .line 110
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/view/selectiontoolbar/ShowInfo;
    .end local v4    # "_arg2":Landroid/view/selectiontoolbar/ISelectionToolbarCallback;
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 111
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-virtual {p0, v2}, Landroid/service/selectiontoolbar/ISelectionToolbarRenderService$Stub;->onConnected(Landroid/os/IBinder;)V

    .line 113
    nop

    .line 150
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :goto_5c
    return v1

    nop

    :pswitch_data_5e
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_51
        :pswitch_36
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
