.class public abstract Landroid/window/IDisplayAreaOrganizerController$Stub;
.super Landroid/os/Binder;
.source "IDisplayAreaOrganizerController.java"

# interfaces
.implements Landroid/window/IDisplayAreaOrganizerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/IDisplayAreaOrganizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IDisplayAreaOrganizerController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_createTaskDisplayArea:I = 0x3

.field static final TRANSACTION_deleteTaskDisplayArea:I = 0x4

.field static final TRANSACTION_registerOrganizer:I = 0x1

.field static final TRANSACTION_unregisterOrganizer:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 67
    const-string v0, "android.window.IDisplayAreaOrganizerController"

    invoke-virtual {p0, p0, v0}, Landroid/window/IDisplayAreaOrganizerController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/window/IDisplayAreaOrganizerController;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 75
    if-nez p0, :cond_4

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_4
    const-string v0, "android.window.IDisplayAreaOrganizerController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 79
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/window/IDisplayAreaOrganizerController;

    if-eqz v1, :cond_14

    .line 80
    move-object v1, v0

    check-cast v1, Landroid/window/IDisplayAreaOrganizerController;

    return-object v1

    .line 82
    :cond_14
    new-instance v1, Landroid/window/IDisplayAreaOrganizerController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/window/IDisplayAreaOrganizerController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 91
    packed-switch p0, :pswitch_data_14

    .line 111
    const/4 v0, 0x0

    return-object v0

    .line 107
    :pswitch_5
    const-string v0, "deleteTaskDisplayArea"

    return-object v0

    .line 103
    :pswitch_8
    const-string v0, "createTaskDisplayArea"

    return-object v0

    .line 99
    :pswitch_b
    const-string/jumbo v0, "unregisterOrganizer"

    return-object v0

    .line 95
    :pswitch_f
    const-string/jumbo v0, "registerOrganizer"

    return-object v0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 86
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 313
    const/4 v0, 0x3

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 118
    invoke-static {p1}, Landroid/window/IDisplayAreaOrganizerController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    const-string v0, "android.window.IDisplayAreaOrganizerController"

    .line 123
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 124
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    :cond_d
    packed-switch p1, :pswitch_data_7e

    .line 134
    packed-switch p1, :pswitch_data_84

    .line 184
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 130
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    return v1

    .line 176
    :pswitch_1c
    sget-object v2, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerToken;

    .line 177
    .local v2, "_arg0":Landroid/window/WindowContainerToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-virtual {p0, v2}, Landroid/window/IDisplayAreaOrganizerController$Stub;->deleteTaskDisplayArea(Landroid/window/WindowContainerToken;)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    goto :goto_7c

    .line 160
    .end local v2    # "_arg0":Landroid/window/WindowContainerToken;
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/IDisplayAreaOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IDisplayAreaOrganizer;

    move-result-object v2

    .line 162
    .local v2, "_arg0":Landroid/window/IDisplayAreaOrganizer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 164
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 166
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 167
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/window/IDisplayAreaOrganizerController$Stub;->createTaskDisplayArea(Landroid/window/IDisplayAreaOrganizer;IILjava/lang/String;)Landroid/window/DisplayAreaAppearedInfo;

    move-result-object v6

    .line 169
    .local v6, "_result":Landroid/window/DisplayAreaAppearedInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 171
    goto :goto_7c

    .line 151
    .end local v2    # "_arg0":Landroid/window/IDisplayAreaOrganizer;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_result":Landroid/window/DisplayAreaAppearedInfo;
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/IDisplayAreaOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IDisplayAreaOrganizer;

    move-result-object v2

    .line 152
    .restart local v2    # "_arg0":Landroid/window/IDisplayAreaOrganizer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, v2}, Landroid/window/IDisplayAreaOrganizerController$Stub;->unregisterOrganizer(Landroid/window/IDisplayAreaOrganizer;)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    goto :goto_7c

    .line 139
    .end local v2    # "_arg0":Landroid/window/IDisplayAreaOrganizer;
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/IDisplayAreaOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IDisplayAreaOrganizer;

    move-result-object v2

    .line 141
    .restart local v2    # "_arg0":Landroid/window/IDisplayAreaOrganizer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 142
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {p0, v2, v3}, Landroid/window/IDisplayAreaOrganizerController$Stub;->registerOrganizer(Landroid/window/IDisplayAreaOrganizer;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 144
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/window/DisplayAreaAppearedInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 146
    nop

    .line 187
    .end local v2    # "_arg0":Landroid/window/IDisplayAreaOrganizer;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/window/DisplayAreaAppearedInfo;>;"
    :goto_7c
    return v1

    nop

    :pswitch_data_7e
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_62
        :pswitch_50
        :pswitch_2e
        :pswitch_1c
    .end packed-switch
.end method
