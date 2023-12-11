.class public abstract Landroid/view/selectiontoolbar/ISelectionToolbarCallback$Stub;
.super Landroid/os/Binder;
.source "ISelectionToolbarCallback.java"

# interfaces
.implements Landroid/view/selectiontoolbar/ISelectionToolbarCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/selectiontoolbar/ISelectionToolbarCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/selectiontoolbar/ISelectionToolbarCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onError:I = 0x5

.field static final TRANSACTION_onMenuItemClicked:I = 0x4

.field static final TRANSACTION_onShown:I = 0x1

.field static final TRANSACTION_onToolbarShowTimeout:I = 0x3

.field static final TRANSACTION_onWidgetUpdated:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "android.view.selectiontoolbar.ISelectionToolbarCallback"

    invoke-virtual {p0, p0, v0}, Landroid/view/selectiontoolbar/ISelectionToolbarCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/selectiontoolbar/ISelectionToolbarCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_4
    const-string v0, "android.view.selectiontoolbar.ISelectionToolbarCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/selectiontoolbar/ISelectionToolbarCallback;

    if-eqz v1, :cond_14

    .line 53
    move-object v1, v0

    check-cast v1, Landroid/view/selectiontoolbar/ISelectionToolbarCallback;

    return-object v1

    .line 55
    :cond_14
    new-instance v1, Landroid/view/selectiontoolbar/ISelectionToolbarCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/selectiontoolbar/ISelectionToolbarCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 64
    packed-switch p0, :pswitch_data_1a

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 84
    :pswitch_5
    const-string/jumbo v0, "onError"

    return-object v0

    .line 80
    :pswitch_9
    const-string/jumbo v0, "onMenuItemClicked"

    return-object v0

    .line 76
    :pswitch_d
    const-string/jumbo v0, "onToolbarShowTimeout"

    return-object v0

    .line 72
    :pswitch_11
    const-string/jumbo v0, "onWidgetUpdated"

    return-object v0

    .line 68
    :pswitch_15
    const-string/jumbo v0, "onShown"

    return-object v0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
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

    .line 59
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 240
    const/4 v0, 0x4

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 95
    invoke-static {p1}, Landroid/view/selectiontoolbar/ISelectionToolbarCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    const-string v0, "android.view.selectiontoolbar.ISelectionToolbarCallback"

    .line 100
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 101
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    :cond_d
    packed-switch p1, :pswitch_data_5a

    .line 111
    packed-switch p1, :pswitch_data_60

    .line 152
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 107
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    return v1

    .line 145
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 146
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, v2}, Landroid/view/selectiontoolbar/ISelectionToolbarCallback$Stub;->onError(I)V

    .line 148
    goto :goto_58

    .line 137
    .end local v2    # "_arg0":I
    :pswitch_27
    sget-object v2, Landroid/view/selectiontoolbar/ToolbarMenuItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/selectiontoolbar/ToolbarMenuItem;

    .line 138
    .local v2, "_arg0":Landroid/view/selectiontoolbar/ToolbarMenuItem;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {p0, v2}, Landroid/view/selectiontoolbar/ISelectionToolbarCallback$Stub;->onMenuItemClicked(Landroid/view/selectiontoolbar/ToolbarMenuItem;)V

    .line 140
    goto :goto_58

    .line 131
    .end local v2    # "_arg0":Landroid/view/selectiontoolbar/ToolbarMenuItem;
    :pswitch_36
    invoke-virtual {p0}, Landroid/view/selectiontoolbar/ISelectionToolbarCallback$Stub;->onToolbarShowTimeout()V

    .line 132
    goto :goto_58

    .line 124
    :pswitch_3a
    sget-object v2, Landroid/view/selectiontoolbar/WidgetInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/selectiontoolbar/WidgetInfo;

    .line 125
    .local v2, "_arg0":Landroid/view/selectiontoolbar/WidgetInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, v2}, Landroid/view/selectiontoolbar/ISelectionToolbarCallback$Stub;->onWidgetUpdated(Landroid/view/selectiontoolbar/WidgetInfo;)V

    .line 127
    goto :goto_58

    .line 116
    .end local v2    # "_arg0":Landroid/view/selectiontoolbar/WidgetInfo;
    :pswitch_49
    sget-object v2, Landroid/view/selectiontoolbar/WidgetInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/selectiontoolbar/WidgetInfo;

    .line 117
    .restart local v2    # "_arg0":Landroid/view/selectiontoolbar/WidgetInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {p0, v2}, Landroid/view/selectiontoolbar/ISelectionToolbarCallback$Stub;->onShown(Landroid/view/selectiontoolbar/WidgetInfo;)V

    .line 119
    nop

    .line 155
    .end local v2    # "_arg0":Landroid/view/selectiontoolbar/WidgetInfo;
    :goto_58
    return v1

    nop

    :pswitch_data_5a
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_49
        :pswitch_3a
        :pswitch_36
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
