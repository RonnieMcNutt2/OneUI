.class Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;
.super Ljava/lang/Object;
.source "IUsbGadget.java"

# interfaces
.implements Landroid/hardware/usb/gadget/IUsbGadget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/gadget/IUsbGadget$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;->mCachedVersion:I

    .line 158
    const-string v0, "-1"

    iput-object v0, p0, Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 155
    iput-object p1, p0, Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 156
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 161
    iget-object v0, p0, Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getCurrentUsbFunctions(Landroid/hardware/usb/gadget/IUsbGadgetCallback;J)V
    .registers 9
    .param p1, "callback"    # Landroid/hardware/usb/gadget/IUsbGadgetCallback;
    .param p2, "transactionId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 189
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 191
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 192
    iget-object v1, p0, Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_2b

    .line 193
    .local v1, "_status":Z
    if-eqz v1, :cond_23

    .line 198
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 199
    nop

    .line 200
    return-void

    .line 194
    .restart local v1    # "_status":Z
    :cond_23
    :try_start_23
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getCurrentUsbFunctions is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;
    .end local p1    # "callback":Landroid/hardware/usb/gadget/IUsbGadgetCallback;
    .end local p2    # "transactionId":J
    throw v2
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_2b

    .line 198
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;
    .restart local p1    # "callback":Landroid/hardware/usb/gadget/IUsbGadgetCallback;
    .restart local p2    # "transactionId":J
    :catchall_2b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 199
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 165
    sget-object v0, Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getInterfaceHash()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 252
    :try_start_1
    const-string v0, "-1"

    iget-object v1, p0, Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 253
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 254
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_42

    .line 256
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_17
    sget-object v2, Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 257
    iget-object v2, p0, Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 258
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 259
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_36

    .line 261
    .end local v2    # "_status":Z
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 263
    goto :goto_3e

    .line 261
    .end local p0    # "this":Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 263
    throw v2

    .line 265
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_3e
    :goto_3e
    iget-object v0, p0, Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_40
    .catchall {:try_start_2f .. :try_end_40} :catchall_42

    monitor-exit p0

    return-object v0

    .line 251
    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInterfaceVersion()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    iget v0, p0, Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_38

    .line 236
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 237
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 239
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_11
    sget-object v2, Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 240
    iget-object v2, p0, Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 241
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 242
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;->mCachedVersion:I
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_30

    .line 244
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 246
    goto :goto_38

    .line 244
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 246
    throw v2

    .line 248
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_38
    :goto_38
    iget v0, p0, Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public getUsbSpeed(Landroid/hardware/usb/gadget/IUsbGadgetCallback;J)V
    .registers 9
    .param p1, "callback"    # Landroid/hardware/usb/gadget/IUsbGadgetCallback;
    .param p2, "transactionId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 205
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 207
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 208
    iget-object v1, p0, Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_2b

    .line 209
    .local v1, "_status":Z
    if-eqz v1, :cond_23

    .line 214
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 215
    nop

    .line 216
    return-void

    .line 210
    .restart local v1    # "_status":Z
    :cond_23
    :try_start_23
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getUsbSpeed is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;
    .end local p1    # "callback":Landroid/hardware/usb/gadget/IUsbGadgetCallback;
    .end local p2    # "transactionId":J
    throw v2
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_2b

    .line 214
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;
    .restart local p1    # "callback":Landroid/hardware/usb/gadget/IUsbGadgetCallback;
    .restart local p2    # "transactionId":J
    :catchall_2b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 215
    throw v1
.end method

.method public reset(Landroid/hardware/usb/gadget/IUsbGadgetCallback;J)V
    .registers 9
    .param p1, "callback"    # Landroid/hardware/usb/gadget/IUsbGadgetCallback;
    .param p2, "transactionId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 219
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 221
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 223
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 224
    iget-object v1, p0, Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_2b

    .line 225
    .local v1, "_status":Z
    if-eqz v1, :cond_23

    .line 230
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 231
    nop

    .line 232
    return-void

    .line 226
    .restart local v1    # "_status":Z
    :cond_23
    :try_start_23
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method reset is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;
    .end local p1    # "callback":Landroid/hardware/usb/gadget/IUsbGadgetCallback;
    .end local p2    # "transactionId":J
    throw v2
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_2b

    .line 230
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;
    .restart local p1    # "callback":Landroid/hardware/usb/gadget/IUsbGadgetCallback;
    .restart local p2    # "transactionId":J
    :catchall_2b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 231
    throw v1
.end method

.method public setCurrentUsbFunctions(JLandroid/hardware/usb/gadget/IUsbGadgetCallback;JJ)V
    .registers 12
    .param p1, "functions"    # J
    .param p3, "callback"    # Landroid/hardware/usb/gadget/IUsbGadgetCallback;
    .param p4, "timeoutMs"    # J
    .param p6, "transactionId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 171
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_8
    sget-object v1, Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 173
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 174
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 175
    invoke-virtual {v0, p6, p7}, Landroid/os/Parcel;->writeLong(J)V

    .line 176
    iget-object v1, p0, Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_30

    .line 177
    .local v1, "_status":Z
    if-eqz v1, :cond_28

    .line 182
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 183
    nop

    .line 184
    return-void

    .line 178
    .restart local v1    # "_status":Z
    :cond_28
    :try_start_28
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setCurrentUsbFunctions is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;
    .end local p1    # "functions":J
    .end local p3    # "callback":Landroid/hardware/usb/gadget/IUsbGadgetCallback;
    .end local p4    # "timeoutMs":J
    .end local p6    # "transactionId":J
    throw v2
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    .line 182
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;
    .restart local p1    # "functions":J
    .restart local p3    # "callback":Landroid/hardware/usb/gadget/IUsbGadgetCallback;
    .restart local p4    # "timeoutMs":J
    .restart local p6    # "transactionId":J
    :catchall_30
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 183
    throw v1
.end method
