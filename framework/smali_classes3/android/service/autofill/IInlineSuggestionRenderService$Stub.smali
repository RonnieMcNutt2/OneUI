.class public abstract Landroid/service/autofill/IInlineSuggestionRenderService$Stub;
.super Landroid/os/Binder;
.source "IInlineSuggestionRenderService.java"

# interfaces
.implements Landroid/service/autofill/IInlineSuggestionRenderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/IInlineSuggestionRenderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/IInlineSuggestionRenderService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_destroySuggestionViews:I = 0x3

.field static final TRANSACTION_getInlineSuggestionsRendererInfo:I = 0x2

.field static final TRANSACTION_renderSuggestion:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 39
    const-string v0, "android.service.autofill.IInlineSuggestionRenderService"

    invoke-virtual {p0, p0, v0}, Landroid/service/autofill/IInlineSuggestionRenderService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/autofill/IInlineSuggestionRenderService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 47
    if-nez p0, :cond_4

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 50
    :cond_4
    const-string v0, "android.service.autofill.IInlineSuggestionRenderService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 51
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/autofill/IInlineSuggestionRenderService;

    if-eqz v1, :cond_14

    .line 52
    move-object v1, v0

    check-cast v1, Landroid/service/autofill/IInlineSuggestionRenderService;

    return-object v1

    .line 54
    :cond_14
    new-instance v1, Landroid/service/autofill/IInlineSuggestionRenderService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/autofill/IInlineSuggestionRenderService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 63
    packed-switch p0, :pswitch_data_10

    .line 79
    const/4 v0, 0x0

    return-object v0

    .line 75
    :pswitch_5
    const-string v0, "destroySuggestionViews"

    return-object v0

    .line 71
    :pswitch_8
    const-string v0, "getInlineSuggestionsRendererInfo"

    return-object v0

    .line 67
    :pswitch_b
    const-string/jumbo v0, "renderSuggestion"

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

    .line 58
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 221
    const/4 v0, 0x2

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 86
    invoke-static {p1}, Landroid/service/autofill/IInlineSuggestionRenderService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 28
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    const-string v12, "android.service.autofill.IInlineSuggestionRenderService"

    .line 91
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v10, v13, :cond_13

    const v0, 0xffffff

    if-gt v10, v0, :cond_13

    .line 92
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    :cond_13
    packed-switch v10, :pswitch_data_88

    .line 102
    move-object/from16 v14, p3

    packed-switch v10, :pswitch_data_8e

    .line 146
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 98
    :pswitch_20
    move-object/from16 v14, p3

    invoke-virtual {v14, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    return v13

    .line 137
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 139
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 140
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {v9, v0, v1}, Landroid/service/autofill/IInlineSuggestionRenderService$Stub;->destroySuggestionViews(II)V

    .line 142
    goto :goto_86

    .line 129
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_35
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallback;

    .line 130
    .local v0, "_arg0":Landroid/os/RemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {v9, v0}, Landroid/service/autofill/IInlineSuggestionRenderService$Stub;->getInlineSuggestionsRendererInfo(Landroid/os/RemoteCallback;)V

    .line 132
    goto :goto_86

    .line 107
    .end local v0    # "_arg0":Landroid/os/RemoteCallback;
    :pswitch_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/autofill/IInlineSuggestionUiCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/autofill/IInlineSuggestionUiCallback;

    move-result-object v15

    .line 109
    .local v15, "_arg0":Landroid/service/autofill/IInlineSuggestionUiCallback;
    sget-object v0, Landroid/service/autofill/InlinePresentation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/service/autofill/InlinePresentation;

    .line 111
    .local v16, "_arg1":Landroid/service/autofill/InlinePresentation;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 113
    .local v17, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 115
    .local v18, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    .line 117
    .local v19, "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 119
    .local v20, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 121
    .local v21, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 122
    .local v22, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/service/autofill/IInlineSuggestionRenderService$Stub;->renderSuggestion(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V

    .line 124
    nop

    .line 149
    .end local v15    # "_arg0":Landroid/service/autofill/IInlineSuggestionUiCallback;
    .end local v16    # "_arg1":Landroid/service/autofill/InlinePresentation;
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":Landroid/os/IBinder;
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":I
    :goto_86
    return v13

    nop

    :pswitch_data_88
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_44
        :pswitch_35
        :pswitch_26
    .end packed-switch
.end method
