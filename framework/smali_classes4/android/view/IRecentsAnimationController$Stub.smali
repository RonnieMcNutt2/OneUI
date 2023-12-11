.class public abstract Landroid/view/IRecentsAnimationController$Stub;
.super Landroid/os/Binder;
.source "IRecentsAnimationController.java"

# interfaces
.implements Landroid/view/IRecentsAnimationController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IRecentsAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IRecentsAnimationController$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.view.IRecentsAnimationController"

.field static final TRANSACTION_animateNavigationBarToApp:I = 0xb

.field static final TRANSACTION_cleanupScreenshot:I = 0x6

.field static final TRANSACTION_detachNavigationBarFromApp:I = 0xa

.field static final TRANSACTION_finish:I = 0x3

.field static final TRANSACTION_removeTask:I = 0x9

.field static final TRANSACTION_screenshotTask:I = 0x1

.field static final TRANSACTION_setAnimationTargetsBehindSystemBars:I = 0x5

.field static final TRANSACTION_setDeferCancelUntilNextTransition:I = 0x7

.field static final TRANSACTION_setFinishTaskTransaction:I = 0x2

.field static final TRANSACTION_setInputConsumerEnabled:I = 0x4

.field static final TRANSACTION_setWillFinishToHome:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 163
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 164
    const-string v0, "android.view.IRecentsAnimationController"

    invoke-virtual {p0, p0, v0}, Landroid/view/IRecentsAnimationController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IRecentsAnimationController;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 172
    if-nez p0, :cond_4

    .line 173
    const/4 v0, 0x0

    return-object v0

    .line 175
    :cond_4
    const-string v0, "android.view.IRecentsAnimationController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 176
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IRecentsAnimationController;

    if-eqz v1, :cond_14

    .line 177
    move-object v1, v0

    check-cast v1, Landroid/view/IRecentsAnimationController;

    return-object v1

    .line 179
    :cond_14
    new-instance v1, Landroid/view/IRecentsAnimationController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IRecentsAnimationController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 188
    packed-switch p0, :pswitch_data_2e

    .line 236
    const/4 v0, 0x0

    return-object v0

    .line 232
    :pswitch_5
    const-string v0, "animateNavigationBarToApp"

    return-object v0

    .line 228
    :pswitch_8
    const-string v0, "detachNavigationBarFromApp"

    return-object v0

    .line 224
    :pswitch_b
    const-string/jumbo v0, "removeTask"

    return-object v0

    .line 220
    :pswitch_f
    const-string/jumbo v0, "setWillFinishToHome"

    return-object v0

    .line 216
    :pswitch_13
    const-string/jumbo v0, "setDeferCancelUntilNextTransition"

    return-object v0

    .line 212
    :pswitch_17
    const-string v0, "cleanupScreenshot"

    return-object v0

    .line 208
    :pswitch_1a
    const-string/jumbo v0, "setAnimationTargetsBehindSystemBars"

    return-object v0

    .line 204
    :pswitch_1e
    const-string/jumbo v0, "setInputConsumerEnabled"

    return-object v0

    .line 200
    :pswitch_22
    const-string v0, "finish"

    return-object v0

    .line 196
    :pswitch_25
    const-string/jumbo v0, "setFinishTaskTransaction"

    return-object v0

    .line 192
    :pswitch_29
    const-string/jumbo v0, "screenshotTask"

    return-object v0

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_29
        :pswitch_25
        :pswitch_22
        :pswitch_1e
        :pswitch_1a
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 183
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 680
    const/16 v0, 0xa

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 243
    invoke-static {p1}, Landroid/view/IRecentsAnimationController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 247
    const-string v0, "android.view.IRecentsAnimationController"

    .line 248
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 249
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    :cond_d
    packed-switch p1, :pswitch_data_d4

    .line 259
    packed-switch p1, :pswitch_data_da

    .line 369
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 255
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    return v1

    .line 361
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 362
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    invoke-virtual {p0, v2, v3}, Landroid/view/IRecentsAnimationController$Stub;->animateNavigationBarToApp(J)V

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    goto/16 :goto_d3

    .line 352
    .end local v2    # "_arg0":J
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 353
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 354
    invoke-virtual {p0, v2}, Landroid/view/IRecentsAnimationController$Stub;->detachNavigationBarFromApp(Z)V

    .line 355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    goto/16 :goto_d3

    .line 342
    .end local v2    # "_arg0":Z
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 343
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 344
    invoke-virtual {p0, v2}, Landroid/view/IRecentsAnimationController$Stub;->removeTask(I)Z

    move-result v3

    .line 345
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 347
    goto/16 :goto_d3

    .line 333
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 334
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 335
    invoke-virtual {p0, v2}, Landroid/view/IRecentsAnimationController$Stub;->setWillFinishToHome(Z)V

    .line 336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    goto/16 :goto_d3

    .line 322
    .end local v2    # "_arg0":Z
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 324
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 325
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-virtual {p0, v2, v3}, Landroid/view/IRecentsAnimationController$Stub;->setDeferCancelUntilNextTransition(ZZ)V

    .line 327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    goto :goto_d3

    .line 315
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :pswitch_6e
    invoke-virtual {p0}, Landroid/view/IRecentsAnimationController$Stub;->cleanupScreenshot()V

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    goto :goto_d3

    .line 307
    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 308
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 309
    invoke-virtual {p0, v2}, Landroid/view/IRecentsAnimationController$Stub;->setAnimationTargetsBehindSystemBars(Z)V

    .line 310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    goto :goto_d3

    .line 298
    .end local v2    # "_arg0":Z
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 299
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 300
    invoke-virtual {p0, v2}, Landroid/view/IRecentsAnimationController$Stub;->setInputConsumerEnabled(Z)V

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    goto :goto_d3

    .line 287
    .end local v2    # "_arg0":Z
    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 289
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 290
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {p0, v2, v3}, Landroid/view/IRecentsAnimationController$Stub;->finish(ZZ)V

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    goto :goto_d3

    .line 274
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :pswitch_a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 276
    .local v2, "_arg0":I
    sget-object v3, Landroid/window/PictureInPictureSurfaceTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/PictureInPictureSurfaceTransaction;

    .line 278
    .local v3, "_arg1":Landroid/window/PictureInPictureSurfaceTransaction;
    sget-object v4, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceControl;

    .line 279
    .local v4, "_arg2":Landroid/view/SurfaceControl;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IRecentsAnimationController$Stub;->setFinishTaskTransaction(ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    goto :goto_d3

    .line 264
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/window/PictureInPictureSurfaceTransaction;
    .end local v4    # "_arg2":Landroid/view/SurfaceControl;
    :pswitch_c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 265
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    invoke-virtual {p0, v2}, Landroid/view/IRecentsAnimationController$Stub;->screenshotTask(I)Landroid/window/TaskSnapshot;

    move-result-object v3

    .line 267
    .local v3, "_result":Landroid/window/TaskSnapshot;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 269
    nop

    .line 372
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/window/TaskSnapshot;
    :goto_d3
    return v1

    :pswitch_data_d4
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_da
    .packed-switch 0x1
        :pswitch_c1
        :pswitch_a3
        :pswitch_91
        :pswitch_83
        :pswitch_75
        :pswitch_6e
        :pswitch_5c
        :pswitch_4d
        :pswitch_3a
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
