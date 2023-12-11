.class public abstract Landroid/view/selectiontoolbar/ISelectionToolbarManager$Stub;
.super Landroid/os/Binder;
.source "ISelectionToolbarManager.java"

# interfaces
.implements Landroid/view/selectiontoolbar/ISelectionToolbarManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/selectiontoolbar/ISelectionToolbarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/selectiontoolbar/ISelectionToolbarManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_dismissToolbar:I = 0x3

.field static final TRANSACTION_hideToolbar:I = 0x2

.field static final TRANSACTION_showToolbar:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 35
    const-string v0, "android.view.selectiontoolbar.ISelectionToolbarManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/selectiontoolbar/ISelectionToolbarManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/selectiontoolbar/ISelectionToolbarManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 43
    if-nez p0, :cond_4

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_4
    const-string v0, "android.view.selectiontoolbar.ISelectionToolbarManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 47
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/selectiontoolbar/ISelectionToolbarManager;

    if-eqz v1, :cond_14

    .line 48
    move-object v1, v0

    check-cast v1, Landroid/view/selectiontoolbar/ISelectionToolbarManager;

    return-object v1

    .line 50
    :cond_14
    new-instance v1, Landroid/view/selectiontoolbar/ISelectionToolbarManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/selectiontoolbar/ISelectionToolbarManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 59
    packed-switch p0, :pswitch_data_10

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 71
    :pswitch_5
    const-string v0, "dismissToolbar"

    return-object v0

    .line 67
    :pswitch_8
    const-string v0, "hideToolbar"

    return-object v0

    .line 63
    :pswitch_b
    const-string/jumbo v0, "showToolbar"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 54
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 201
    const/4 v0, 0x2

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 82
    invoke-static {p1}, Landroid/view/selectiontoolbar/ISelectionToolbarManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 86
    const-string v0, "android.view.selectiontoolbar.ISelectionToolbarManager"

    .line 87
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 88
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    :cond_d
    packed-switch p1, :pswitch_data_56

    .line 98
    packed-switch p1, :pswitch_data_5c

    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 94
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return v1

    .line 125
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 127
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 128
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/selectiontoolbar/ISelectionToolbarManager$Stub;->dismissToolbar(JI)V

    .line 130
    goto :goto_55

    .line 115
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 117
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 118
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 119
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/selectiontoolbar/ISelectionToolbarManager$Stub;->hideToolbar(JI)V

    .line 120
    goto :goto_55

    .line 103
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    :pswitch_3a
    sget-object v2, Landroid/view/selectiontoolbar/ShowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/selectiontoolbar/ShowInfo;

    .line 105
    .local v2, "_arg0":Landroid/view/selectiontoolbar/ShowInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/selectiontoolbar/ISelectionToolbarCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/selectiontoolbar/ISelectionToolbarCallback;

    move-result-object v3

    .line 107
    .local v3, "_arg1":Landroid/view/selectiontoolbar/ISelectionToolbarCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 108
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 109
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/selectiontoolbar/ISelectionToolbarManager$Stub;->showToolbar(Landroid/view/selectiontoolbar/ShowInfo;Landroid/view/selectiontoolbar/ISelectionToolbarCallback;I)V

    .line 110
    nop

    .line 137
    .end local v2    # "_arg0":Landroid/view/selectiontoolbar/ShowInfo;
    .end local v3    # "_arg1":Landroid/view/selectiontoolbar/ISelectionToolbarCallback;
    .end local v4    # "_arg2":I
    :goto_55
    return v1

    :pswitch_data_56
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
