.class Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISehAuthenticationFramework.java"

# interfaces
.implements Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub;
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

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 v0, -0x1

    iput v0, p0, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub$Proxy;->mCachedVersion:I

    .line 148
    const-string v0, "-1"

    iput-object v0, p0, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 145
    iput-object p1, p0, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 146
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 151
    iget-object v0, p0, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public execute(I[B)Lvendor/samsung/hardware/authfw/SehResult;
    .registers 8
    .param p1, "trustedAppType"    # I
    .param p2, "command"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 202
    invoke-virtual {p0}, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 203
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 206
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 209
    iget-object v2, p0, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 210
    .local v2, "_status":Z
    if-eqz v2, :cond_35

    .line 213
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 214
    sget-object v3, Lvendor/samsung/hardware/authfw/SehResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/authfw/SehResult;
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_3d

    move-object v2, v3

    .line 217
    .local v2, "_result":Lvendor/samsung/hardware/authfw/SehResult;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 219
    nop

    .line 220
    return-object v2

    .line 211
    .local v2, "_status":Z
    :cond_35
    :try_start_35
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method execute is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub$Proxy;
    .end local p1    # "trustedAppType":I
    .end local p2    # "command":[B
    throw v3
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_3d

    .line 217
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub$Proxy;
    .restart local p1    # "trustedAppType":I
    .restart local p2    # "command":[B
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 219
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 155
    sget-object v0, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

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

    .line 241
    :try_start_1
    const-string v0, "-1"

    iget-object v1, p0, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 242
    invoke-virtual {p0}, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 243
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_42

    .line 245
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_17
    sget-object v2, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 246
    iget-object v2, p0, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 247
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 248
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_36

    .line 250
    .end local v2    # "_status":Z
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 252
    goto :goto_3e

    .line 250
    .end local p0    # "this":Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub$Proxy;
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 252
    throw v2

    .line 254
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_3e
    :goto_3e
    iget-object v0, p0, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_40
    .catchall {:try_start_2f .. :try_end_40} :catchall_42

    monitor-exit p0

    return-object v0

    .line 240
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

    .line 224
    iget v0, p0, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_38

    .line 225
    invoke-virtual {p0}, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 226
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 228
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_11
    sget-object v2, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 229
    iget-object v2, p0, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 230
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 231
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub$Proxy;->mCachedVersion:I
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_30

    .line 233
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 235
    goto :goto_38

    .line 233
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 235
    throw v2

    .line 237
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_38
    :goto_38
    iget v0, p0, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public load(I[B)Z
    .registers 8
    .param p1, "trustedAppType"    # I
    .param p2, "fileBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 160
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 163
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 166
    iget-object v2, p0, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 167
    .local v2, "_status":Z
    if-eqz v2, :cond_31

    .line 170
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 171
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_39

    move v2, v3

    .line 174
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 176
    nop

    .line 177
    return v2

    .line 168
    .local v2, "_status":Z
    :cond_31
    :try_start_31
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method load is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub$Proxy;
    .end local p1    # "trustedAppType":I
    .end local p2    # "fileBuffer":[B
    throw v3
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_39

    .line 174
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub$Proxy;
    .restart local p1    # "trustedAppType":I
    .restart local p2    # "fileBuffer":[B
    :catchall_39
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 176
    throw v2
.end method

.method public terminate(I)Z
    .registers 7
    .param p1, "trustedAppType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    invoke-virtual {p0}, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 182
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 185
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_c
    sget-object v2, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget-object v2, p0, Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 188
    .local v2, "_status":Z
    if-eqz v2, :cond_2e

    .line 191
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 192
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_36

    move v2, v3

    .line 195
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 197
    nop

    .line 198
    return v2

    .line 189
    .local v2, "_status":Z
    :cond_2e
    :try_start_2e
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method terminate is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub$Proxy;
    .end local p1    # "trustedAppType":I
    throw v3
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_36

    .line 195
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/authfw/ISehAuthenticationFramework$Stub$Proxy;
    .restart local p1    # "trustedAppType":I
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 197
    throw v2
.end method
