.class public abstract Landroid/content/pm/IShortcutService$Stub;
.super Landroid/os/Binder;
.source "IShortcutService.java"

# interfaces
.implements Landroid/content/pm/IShortcutService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IShortcutService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IShortcutService"

.field static final TRANSACTION_addDynamicShortcuts:I = 0x2

.field static final TRANSACTION_applyRestore:I = 0x12

.field static final TRANSACTION_applyRestoreSmartSwitch:I = 0x1a

.field static final TRANSACTION_createShortcutResultIntent:I = 0x7

.field static final TRANSACTION_disableShortcuts:I = 0x8

.field static final TRANSACTION_enableShortcuts:I = 0x9

.field static final TRANSACTION_getBackupPayload:I = 0x11

.field static final TRANSACTION_getBackupShortcut:I = 0x1e

.field static final TRANSACTION_getBitmapPathList:I = 0x1d

.field static final TRANSACTION_getIconMaxDimensions:I = 0xd

.field static final TRANSACTION_getMaxShortcutCountPerActivity:I = 0xa

.field static final TRANSACTION_getRateLimitResetTime:I = 0xc

.field static final TRANSACTION_getRemainingCallCount:I = 0xb

.field static final TRANSACTION_getShareTargets:I = 0x14

.field static final TRANSACTION_getShortcutBitmapsFileDescriptor:I = 0x1b

.field static final TRANSACTION_getShortcuts:I = 0x17

.field static final TRANSACTION_handleLocaleChanged:I = 0x1f

.field static final TRANSACTION_hasShareTargets:I = 0x15

.field static final TRANSACTION_isRequestPinItemSupported:I = 0x13

.field static final TRANSACTION_onApplicationActive:I = 0x10

.field static final TRANSACTION_pushDynamicShortcut:I = 0x18

.field static final TRANSACTION_removeAllDynamicShortcuts:I = 0x4

.field static final TRANSACTION_removeDynamicShortcuts:I = 0x3

.field static final TRANSACTION_removeLongLivedShortcuts:I = 0x16

.field static final TRANSACTION_reportShortcutUsed:I = 0xe

.field static final TRANSACTION_requestPinShortcut:I = 0x6

.field static final TRANSACTION_requestPinShortcutAsDisplay:I = 0x19

.field static final TRANSACTION_resetThrottling:I = 0xf

.field static final TRANSACTION_restoreBitmapsFromBackupService:I = 0x1c

.field static final TRANSACTION_setDynamicShortcuts:I = 0x1

.field static final TRANSACTION_updateShortcuts:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 139
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 140
    const-string v0, "android.content.pm.IShortcutService"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IShortcutService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IShortcutService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 148
    if-nez p0, :cond_4

    .line 149
    const/4 v0, 0x0

    return-object v0

    .line 151
    :cond_4
    const-string v0, "android.content.pm.IShortcutService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 152
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/pm/IShortcutService;

    if-eqz v1, :cond_14

    .line 153
    move-object v1, v0

    check-cast v1, Landroid/content/pm/IShortcutService;

    return-object v1

    .line 155
    :cond_14
    new-instance v1, Landroid/content/pm/IShortcutService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IShortcutService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 164
    packed-switch p0, :pswitch_data_70

    .line 292
    const/4 v0, 0x0

    return-object v0

    .line 288
    :pswitch_5
    const-string v0, "handleLocaleChanged"

    return-object v0

    .line 284
    :pswitch_8
    const-string v0, "getBackupShortcut"

    return-object v0

    .line 280
    :pswitch_b
    const-string v0, "getBitmapPathList"

    return-object v0

    .line 276
    :pswitch_e
    const-string/jumbo v0, "restoreBitmapsFromBackupService"

    return-object v0

    .line 272
    :pswitch_12
    const-string v0, "getShortcutBitmapsFileDescriptor"

    return-object v0

    .line 268
    :pswitch_15
    const-string v0, "applyRestoreSmartSwitch"

    return-object v0

    .line 264
    :pswitch_18
    const-string/jumbo v0, "requestPinShortcutAsDisplay"

    return-object v0

    .line 260
    :pswitch_1c
    const-string/jumbo v0, "pushDynamicShortcut"

    return-object v0

    .line 256
    :pswitch_20
    const-string v0, "getShortcuts"

    return-object v0

    .line 252
    :pswitch_23
    const-string/jumbo v0, "removeLongLivedShortcuts"

    return-object v0

    .line 248
    :pswitch_27
    const-string v0, "hasShareTargets"

    return-object v0

    .line 244
    :pswitch_2a
    const-string v0, "getShareTargets"

    return-object v0

    .line 240
    :pswitch_2d
    const-string/jumbo v0, "isRequestPinItemSupported"

    return-object v0

    .line 236
    :pswitch_31
    const-string v0, "applyRestore"

    return-object v0

    .line 232
    :pswitch_34
    const-string v0, "getBackupPayload"

    return-object v0

    .line 228
    :pswitch_37
    const-string/jumbo v0, "onApplicationActive"

    return-object v0

    .line 224
    :pswitch_3b
    const-string/jumbo v0, "resetThrottling"

    return-object v0

    .line 220
    :pswitch_3f
    const-string/jumbo v0, "reportShortcutUsed"

    return-object v0

    .line 216
    :pswitch_43
    const-string v0, "getIconMaxDimensions"

    return-object v0

    .line 212
    :pswitch_46
    const-string v0, "getRateLimitResetTime"

    return-object v0

    .line 208
    :pswitch_49
    const-string v0, "getRemainingCallCount"

    return-object v0

    .line 204
    :pswitch_4c
    const-string v0, "getMaxShortcutCountPerActivity"

    return-object v0

    .line 200
    :pswitch_4f
    const-string v0, "enableShortcuts"

    return-object v0

    .line 196
    :pswitch_52
    const-string v0, "disableShortcuts"

    return-object v0

    .line 192
    :pswitch_55
    const-string v0, "createShortcutResultIntent"

    return-object v0

    .line 188
    :pswitch_58
    const-string/jumbo v0, "requestPinShortcut"

    return-object v0

    .line 184
    :pswitch_5c
    const-string/jumbo v0, "updateShortcuts"

    return-object v0

    .line 180
    :pswitch_60
    const-string/jumbo v0, "removeAllDynamicShortcuts"

    return-object v0

    .line 176
    :pswitch_64
    const-string/jumbo v0, "removeDynamicShortcuts"

    return-object v0

    .line 172
    :pswitch_68
    const-string v0, "addDynamicShortcuts"

    return-object v0

    .line 168
    :pswitch_6b
    const-string/jumbo v0, "setDynamicShortcuts"

    return-object v0

    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_68
        :pswitch_64
        :pswitch_60
        :pswitch_5c
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_3f
        :pswitch_3b
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_23
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 159
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 1336
    const/16 v0, 0x1e

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 299
    invoke-static {p1}, Landroid/content/pm/IShortcutService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 24
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 303
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.content.pm.IShortcutService"

    .line 304
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_15

    const v0, 0xffffff

    if-gt v8, v0, :cond_15

    .line 305
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    :cond_15
    packed-switch v8, :pswitch_data_34c

    .line 315
    packed-switch v8, :pswitch_data_352

    .line 706
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 311
    :pswitch_20
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    return v12

    .line 698
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 699
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 700
    invoke-virtual {v7, v0}, Landroid/content/pm/IShortcutService$Stub;->handleLocaleChanged(Z)V

    .line 701
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    goto/16 :goto_34a

    .line 688
    .end local v0    # "_arg0":Z
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 689
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 690
    invoke-virtual {v7, v0}, Landroid/content/pm/IShortcutService$Stub;->getBackupShortcut(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 691
    .local v1, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 693
    goto/16 :goto_34a

    .line 678
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 679
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 680
    invoke-virtual {v7, v0}, Landroid/content/pm/IShortcutService$Stub;->getBitmapPathList(I)[Ljava/lang/String;

    move-result-object v1

    .line 681
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 683
    goto/16 :goto_34a

    .line 665
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_59
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 667
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 669
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 670
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 671
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/pm/IShortcutService$Stub;->restoreBitmapsFromBackupService(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    goto/16 :goto_34a

    .line 657
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_74
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IShortcutService$Stub;->getShortcutBitmapsFileDescriptor()Lcom/android/internal/os/IParcelFileDescriptorFactory;

    move-result-object v0

    .line 658
    .local v0, "_result":Lcom/android/internal/os/IParcelFileDescriptorFactory;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 660
    goto/16 :goto_34a

    .line 646
    .end local v0    # "_result":Lcom/android/internal/os/IParcelFileDescriptorFactory;
    :pswitch_80
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 648
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 649
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 650
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IShortcutService$Stub;->applyRestoreSmartSwitch(Landroid/os/ParcelFileDescriptor;I)I

    move-result v2

    .line 651
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 653
    goto/16 :goto_34a

    .line 627
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_9b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 629
    .local v13, "_arg0":Ljava/lang/String;
    sget-object v0, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/content/pm/ShortcutInfo;

    .line 631
    .local v14, "_arg1":Landroid/content/pm/ShortcutInfo;
    sget-object v0, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/IntentSender;

    .line 633
    .local v15, "_arg2":Landroid/content/IntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 635
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 637
    .local v17, "_arg4":I
    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/infra/AndroidFuture;

    .line 638
    .local v18, "_arg5":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 639
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/IShortcutService$Stub;->requestPinShortcutAsDisplay(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;IILcom/android/internal/infra/AndroidFuture;)V

    .line 640
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    goto/16 :goto_34a

    .line 614
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Landroid/content/pm/ShortcutInfo;
    .end local v15    # "_arg2":Landroid/content/IntentSender;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    :pswitch_d9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 618
    .local v1, "_arg1":Landroid/content/pm/ShortcutInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 619
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 620
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/pm/IShortcutService$Stub;->pushDynamicShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;I)V

    .line 621
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    goto/16 :goto_34a

    .line 600
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/pm/ShortcutInfo;
    .end local v2    # "_arg2":I
    :pswitch_f4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 602
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 604
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 605
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 606
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/pm/IShortcutService$Stub;->getShortcuts(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 607
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    invoke-virtual {v10, v3, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 609
    goto/16 :goto_34a

    .line 587
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_10f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 589
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 591
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 592
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 593
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/pm/IShortcutService$Stub;->removeLongLivedShortcuts(Ljava/lang/String;Ljava/util/List;I)V

    .line 594
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    goto/16 :goto_34a

    .line 573
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_arg2":I
    :pswitch_126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 575
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 577
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 578
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 579
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/pm/IShortcutService$Stub;->hasShareTargets(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 580
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 582
    goto/16 :goto_34a

    .line 559
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 561
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    .line 563
    .local v1, "_arg1":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 564
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 565
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/pm/IShortcutService$Stub;->getShareTargets(Ljava/lang/String;Landroid/content/IntentFilter;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 566
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    invoke-virtual {v10, v3, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 568
    goto/16 :goto_34a

    .line 547
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/IntentFilter;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 549
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 550
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 551
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IShortcutService$Stub;->isRequestPinItemSupported(II)Z

    move-result v2

    .line 552
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 554
    goto/16 :goto_34a

    .line 536
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 538
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 539
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 540
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IShortcutService$Stub;->applyRestore([BI)V

    .line 541
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    goto/16 :goto_34a

    .line 526
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    :pswitch_18a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 527
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 528
    invoke-virtual {v7, v0}, Landroid/content/pm/IShortcutService$Stub;->getBackupPayload(I)[B

    move-result-object v1

    .line 529
    .local v1, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 531
    goto/16 :goto_34a

    .line 515
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[B
    :pswitch_19d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 518
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 519
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IShortcutService$Stub;->onApplicationActive(Ljava/lang/String;I)V

    .line 520
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    goto/16 :goto_34a

    .line 508
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_1b0
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IShortcutService$Stub;->resetThrottling()V

    .line 509
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    goto/16 :goto_34a

    .line 496
    :pswitch_1b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 498
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 500
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 501
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 502
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/pm/IShortcutService$Stub;->reportShortcutUsed(Ljava/lang/String;Ljava/lang/String;I)V

    .line 503
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    goto/16 :goto_34a

    .line 484
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_1cf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 486
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 487
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 488
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IShortcutService$Stub;->getIconMaxDimensions(Ljava/lang/String;I)I

    move-result v2

    .line 489
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    goto/16 :goto_34a

    .line 472
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_1e6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 474
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 475
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 476
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IShortcutService$Stub;->getRateLimitResetTime(Ljava/lang/String;I)J

    move-result-wide v2

    .line 477
    .local v2, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    invoke-virtual {v10, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 479
    goto/16 :goto_34a

    .line 460
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":J
    :pswitch_1fd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 462
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 463
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 464
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IShortcutService$Stub;->getRemainingCallCount(Ljava/lang/String;I)I

    move-result v2

    .line 465
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    goto/16 :goto_34a

    .line 448
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 450
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 451
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 452
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IShortcutService$Stub;->getMaxShortcutCountPerActivity(Ljava/lang/String;I)I

    move-result v2

    .line 453
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    goto/16 :goto_34a

    .line 435
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_22b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 437
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 439
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 440
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 441
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/pm/IShortcutService$Stub;->enableShortcuts(Ljava/lang/String;Ljava/util/List;I)V

    .line 442
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    goto/16 :goto_34a

    .line 418
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_arg2":I
    :pswitch_242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 420
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .line 422
    .local v13, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/CharSequence;

    .line 424
    .local v14, "_arg2":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 426
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 427
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 428
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IShortcutService$Stub;->disableShortcuts(Ljava/lang/String;Ljava/util/List;Ljava/lang/CharSequence;II)V

    .line 429
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    goto/16 :goto_34a

    .line 403
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "_arg2":Ljava/lang/CharSequence;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_26e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 405
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 407
    .local v1, "_arg1":Landroid/content/pm/ShortcutInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 409
    .restart local v2    # "_arg2":I
    sget-object v3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AndroidFuture;

    .line 410
    .local v3, "_arg3":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/content/Intent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 411
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/content/pm/IShortcutService$Stub;->createShortcutResultIntent(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;ILcom/android/internal/infra/AndroidFuture;)V

    .line 412
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    goto/16 :goto_34a

    .line 386
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/pm/ShortcutInfo;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/content/Intent;>;"
    :pswitch_291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 388
    .restart local v6    # "_arg0":Ljava/lang/String;
    sget-object v0, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/content/pm/ShortcutInfo;

    .line 390
    .local v13, "_arg1":Landroid/content/pm/ShortcutInfo;
    sget-object v0, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/content/IntentSender;

    .line 392
    .local v14, "_arg2":Landroid/content/IntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 394
    .restart local v15    # "_arg3":I
    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/infra/AndroidFuture;

    .line 395
    .local v16, "_arg4":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 396
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IShortcutService$Stub;->requestPinShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;ILcom/android/internal/infra/AndroidFuture;)V

    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    goto/16 :goto_34a

    .line 372
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Landroid/content/pm/ShortcutInfo;
    .end local v14    # "_arg2":Landroid/content/IntentSender;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    :pswitch_2c8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 374
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .line 376
    .local v1, "_arg1":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 377
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 378
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/pm/IShortcutService$Stub;->updateShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z

    move-result v3

    .line 379
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 381
    goto :goto_34a

    .line 361
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_2e6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 363
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 364
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 365
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IShortcutService$Stub;->removeAllDynamicShortcuts(Ljava/lang/String;I)V

    .line 366
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    goto :goto_34a

    .line 348
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_2f8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 350
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 352
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 353
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 354
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/pm/IShortcutService$Stub;->removeDynamicShortcuts(Ljava/lang/String;Ljava/util/List;I)V

    .line 355
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    goto :goto_34a

    .line 334
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_arg2":I
    :pswitch_30e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 336
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .line 338
    .local v1, "_arg1":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 339
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 340
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/pm/IShortcutService$Stub;->addDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z

    move-result v3

    .line 341
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 343
    goto :goto_34a

    .line 320
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_32c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 322
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .line 324
    .restart local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 325
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/pm/IShortcutService$Stub;->setDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z

    move-result v3

    .line 327
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 329
    nop

    .line 709
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :goto_34a
    return v12

    nop

    :pswitch_data_34c
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_352
    .packed-switch 0x1
        :pswitch_32c
        :pswitch_30e
        :pswitch_2f8
        :pswitch_2e6
        :pswitch_2c8
        :pswitch_291
        :pswitch_26e
        :pswitch_242
        :pswitch_22b
        :pswitch_214
        :pswitch_1fd
        :pswitch_1e6
        :pswitch_1cf
        :pswitch_1b8
        :pswitch_1b0
        :pswitch_19d
        :pswitch_18a
        :pswitch_177
        :pswitch_160
        :pswitch_141
        :pswitch_126
        :pswitch_10f
        :pswitch_f4
        :pswitch_d9
        :pswitch_9b
        :pswitch_80
        :pswitch_74
        :pswitch_59
        :pswitch_46
        :pswitch_33
        :pswitch_24
    .end packed-switch
.end method
