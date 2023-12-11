.class public abstract Landroid/service/textclassifier/ITextClassifierService$Stub;
.super Landroid/os/Binder;
.source "ITextClassifierService.java"

# interfaces
.implements Landroid/service/textclassifier/ITextClassifierService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textclassifier/ITextClassifierService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/textclassifier/ITextClassifierService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.service.textclassifier.ITextClassifierService"

.field static final TRANSACTION_onClassifyText:I = 0x2

.field static final TRANSACTION_onConnectedStateChanged:I = 0xa

.field static final TRANSACTION_onCreateTextClassificationSession:I = 0x6

.field static final TRANSACTION_onDestroyTextClassificationSession:I = 0x7

.field static final TRANSACTION_onDetectLanguage:I = 0x8

.field static final TRANSACTION_onGenerateLinks:I = 0x3

.field static final TRANSACTION_onSelectionEvent:I = 0x4

.field static final TRANSACTION_onSuggestConversationActions:I = 0x9

.field static final TRANSACTION_onSuggestSelection:I = 0x1

.field static final TRANSACTION_onTextClassifierEvent:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 57
    const-string v0, "android.service.textclassifier.ITextClassifierService"

    invoke-virtual {p0, p0, v0}, Landroid/service/textclassifier/ITextClassifierService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/textclassifier/ITextClassifierService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 65
    if-nez p0, :cond_4

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_4
    const-string v0, "android.service.textclassifier.ITextClassifierService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 69
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/textclassifier/ITextClassifierService;

    if-eqz v1, :cond_14

    .line 70
    move-object v1, v0

    check-cast v1, Landroid/service/textclassifier/ITextClassifierService;

    return-object v1

    .line 72
    :cond_14
    new-instance v1, Landroid/service/textclassifier/ITextClassifierService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/textclassifier/ITextClassifierService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 81
    packed-switch p0, :pswitch_data_2e

    .line 125
    const/4 v0, 0x0

    return-object v0

    .line 121
    :pswitch_5
    const-string/jumbo v0, "onConnectedStateChanged"

    return-object v0

    .line 117
    :pswitch_9
    const-string/jumbo v0, "onSuggestConversationActions"

    return-object v0

    .line 113
    :pswitch_d
    const-string/jumbo v0, "onDetectLanguage"

    return-object v0

    .line 109
    :pswitch_11
    const-string/jumbo v0, "onDestroyTextClassificationSession"

    return-object v0

    .line 105
    :pswitch_15
    const-string/jumbo v0, "onCreateTextClassificationSession"

    return-object v0

    .line 101
    :pswitch_19
    const-string/jumbo v0, "onTextClassifierEvent"

    return-object v0

    .line 97
    :pswitch_1d
    const-string/jumbo v0, "onSelectionEvent"

    return-object v0

    .line 93
    :pswitch_21
    const-string/jumbo v0, "onGenerateLinks"

    return-object v0

    .line 89
    :pswitch_25
    const-string/jumbo v0, "onClassifyText"

    return-object v0

    .line 85
    :pswitch_29
    const-string/jumbo v0, "onSuggestSelection"

    return-object v0

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
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

    .line 76
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 427
    const/16 v0, 0x9

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 132
    invoke-static {p1}, Landroid/service/textclassifier/ITextClassifierService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 136
    const-string v0, "android.service.textclassifier.ITextClassifierService"

    .line 137
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 138
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    :cond_d
    packed-switch p1, :pswitch_data_11c

    .line 148
    packed-switch p1, :pswitch_data_122

    .line 258
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 144
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    return v1

    .line 251
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 252
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, v2}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onConnectedStateChanged(I)V

    .line 254
    goto/16 :goto_11b

    .line 239
    .end local v2    # "_arg0":I
    :pswitch_28
    sget-object v2, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/TextClassificationSessionId;

    .line 241
    .local v2, "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    sget-object v3, Landroid/view/textclassifier/ConversationActions$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/ConversationActions$Request;

    .line 243
    .local v3, "_arg1":Landroid/view/textclassifier/ConversationActions$Request;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/textclassifier/ITextClassifierCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/textclassifier/ITextClassifierCallback;

    move-result-object v4

    .line 244
    .local v4, "_arg2":Landroid/service/textclassifier/ITextClassifierCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onSuggestConversationActions(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/ConversationActions$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 246
    goto/16 :goto_11b

    .line 227
    .end local v2    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    .end local v3    # "_arg1":Landroid/view/textclassifier/ConversationActions$Request;
    .end local v4    # "_arg2":Landroid/service/textclassifier/ITextClassifierCallback;
    :pswitch_48
    sget-object v2, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/TextClassificationSessionId;

    .line 229
    .restart local v2    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    sget-object v3, Landroid/view/textclassifier/TextLanguage$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/TextLanguage$Request;

    .line 231
    .local v3, "_arg1":Landroid/view/textclassifier/TextLanguage$Request;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/textclassifier/ITextClassifierCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/textclassifier/ITextClassifierCallback;

    move-result-object v4

    .line 232
    .restart local v4    # "_arg2":Landroid/service/textclassifier/ITextClassifierCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onDetectLanguage(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLanguage$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 234
    goto/16 :goto_11b

    .line 219
    .end local v2    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    .end local v3    # "_arg1":Landroid/view/textclassifier/TextLanguage$Request;
    .end local v4    # "_arg2":Landroid/service/textclassifier/ITextClassifierCallback;
    :pswitch_68
    sget-object v2, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/TextClassificationSessionId;

    .line 220
    .restart local v2    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {p0, v2}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onDestroyTextClassificationSession(Landroid/view/textclassifier/TextClassificationSessionId;)V

    .line 222
    goto/16 :goto_11b

    .line 209
    .end local v2    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    :pswitch_78
    sget-object v2, Landroid/view/textclassifier/TextClassificationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/TextClassificationContext;

    .line 211
    .local v2, "_arg0":Landroid/view/textclassifier/TextClassificationContext;
    sget-object v3, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/TextClassificationSessionId;

    .line 212
    .local v3, "_arg1":Landroid/view/textclassifier/TextClassificationSessionId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {p0, v2, v3}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onCreateTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V

    .line 214
    goto/16 :goto_11b

    .line 199
    .end local v2    # "_arg0":Landroid/view/textclassifier/TextClassificationContext;
    .end local v3    # "_arg1":Landroid/view/textclassifier/TextClassificationSessionId;
    :pswitch_90
    sget-object v2, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/TextClassificationSessionId;

    .line 201
    .local v2, "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    sget-object v3, Landroid/view/textclassifier/TextClassifierEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/TextClassifierEvent;

    .line 202
    .local v3, "_arg1":Landroid/view/textclassifier/TextClassifierEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {p0, v2, v3}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onTextClassifierEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassifierEvent;)V

    .line 204
    goto :goto_11b

    .line 189
    .end local v2    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    .end local v3    # "_arg1":Landroid/view/textclassifier/TextClassifierEvent;
    :pswitch_a7
    sget-object v2, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/TextClassificationSessionId;

    .line 191
    .restart local v2    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    sget-object v3, Landroid/view/textclassifier/SelectionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/SelectionEvent;

    .line 192
    .local v3, "_arg1":Landroid/view/textclassifier/SelectionEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, v2, v3}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onSelectionEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V

    .line 194
    goto :goto_11b

    .line 177
    .end local v2    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    .end local v3    # "_arg1":Landroid/view/textclassifier/SelectionEvent;
    :pswitch_be
    sget-object v2, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/TextClassificationSessionId;

    .line 179
    .restart local v2    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    sget-object v3, Landroid/view/textclassifier/TextLinks$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/TextLinks$Request;

    .line 181
    .local v3, "_arg1":Landroid/view/textclassifier/TextLinks$Request;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/textclassifier/ITextClassifierCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/textclassifier/ITextClassifierCallback;

    move-result-object v4

    .line 182
    .restart local v4    # "_arg2":Landroid/service/textclassifier/ITextClassifierCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onGenerateLinks(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 184
    goto :goto_11b

    .line 165
    .end local v2    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    .end local v3    # "_arg1":Landroid/view/textclassifier/TextLinks$Request;
    .end local v4    # "_arg2":Landroid/service/textclassifier/ITextClassifierCallback;
    :pswitch_dd
    sget-object v2, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/TextClassificationSessionId;

    .line 167
    .restart local v2    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    sget-object v3, Landroid/view/textclassifier/TextClassification$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/TextClassification$Request;

    .line 169
    .local v3, "_arg1":Landroid/view/textclassifier/TextClassification$Request;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/textclassifier/ITextClassifierCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/textclassifier/ITextClassifierCallback;

    move-result-object v4

    .line 170
    .restart local v4    # "_arg2":Landroid/service/textclassifier/ITextClassifierCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onClassifyText(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 172
    goto :goto_11b

    .line 153
    .end local v2    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    .end local v3    # "_arg1":Landroid/view/textclassifier/TextClassification$Request;
    .end local v4    # "_arg2":Landroid/service/textclassifier/ITextClassifierCallback;
    :pswitch_fc
    sget-object v2, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/TextClassificationSessionId;

    .line 155
    .restart local v2    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    sget-object v3, Landroid/view/textclassifier/TextSelection$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/TextSelection$Request;

    .line 157
    .local v3, "_arg1":Landroid/view/textclassifier/TextSelection$Request;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/textclassifier/ITextClassifierCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/textclassifier/ITextClassifierCallback;

    move-result-object v4

    .line 158
    .restart local v4    # "_arg2":Landroid/service/textclassifier/ITextClassifierCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/textclassifier/ITextClassifierService$Stub;->onSuggestSelection(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 160
    nop

    .line 261
    .end local v2    # "_arg0":Landroid/view/textclassifier/TextClassificationSessionId;
    .end local v3    # "_arg1":Landroid/view/textclassifier/TextSelection$Request;
    .end local v4    # "_arg2":Landroid/service/textclassifier/ITextClassifierCallback;
    :goto_11b
    return v1

    :pswitch_data_11c
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_122
    .packed-switch 0x1
        :pswitch_fc
        :pswitch_dd
        :pswitch_be
        :pswitch_a7
        :pswitch_90
        :pswitch_78
        :pswitch_68
        :pswitch_48
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method
