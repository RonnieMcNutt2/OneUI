.class Landroid/inputmethodservice/InlineSuggestionSessionController;
.super Ljava/lang/Object;
.source "InlineSuggestionSessionController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InlineSuggestionSessionController"


# instance fields
.field private final mHostInputTokenSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mImeClientFieldId:Landroid/view/autofill/AutofillId;

.field private mImeClientPackageName:Ljava/lang/String;

.field private mImeInputStarted:Z

.field private mImeInputViewStarted:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private final mRequestSupplier:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/os/Bundle;",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mResponseConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/InlineSuggestionsResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mSession:Landroid/inputmethodservice/InlineSuggestionSession;


# direct methods
.method constructor <init>(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/os/Bundle;",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/os/IBinder;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/InlineSuggestionsResponse;",
            ">;)V"
        }
    .end annotation

    .line 85
    .local p1, "requestSupplier":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/Bundle;Landroid/view/inputmethod/InlineSuggestionsRequest;>;"
    .local p2, "hostInputTokenSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/os/IBinder;>;"
    .local p3, "responseConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/inputmethod/InlineSuggestionsResponse;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mMainThreadHandler:Landroid/os/Handler;

    .line 86
    iput-object p1, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mRequestSupplier:Ljava/util/function/Function;

    .line 87
    iput-object p2, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mHostInputTokenSupplier:Ljava/util/function/Supplier;

    .line 88
    iput-object p3, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mResponseConsumer:Ljava/util/function/Consumer;

    .line 89
    return-void
.end method

.method private static match(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)Z
    .registers 4
    .param p0, "autofillId"    # Landroid/view/autofill/AutofillId;
    .param p1, "imeClientFieldId"    # Landroid/view/autofill/AutofillId;

    .line 259
    if-eqz p0, :cond_10

    if-eqz p1, :cond_10

    .line 260
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 259
    :goto_11
    return v0
.end method

.method private static match(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Ljava/lang/String;Landroid/view/autofill/AutofillId;)Z
    .registers 5
    .param p0, "inlineSuggestionsRequestInfo"    # Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;
    .param p1, "imeClientPackageName"    # Ljava/lang/String;
    .param p2, "imeClientFieldId"    # Landroid/view/autofill/AutofillId;

    .line 244
    const/4 v0, 0x0

    if-eqz p0, :cond_24

    if-eqz p1, :cond_24

    if-nez p2, :cond_8

    goto :goto_24

    .line 248
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 249
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/inputmethodservice/InlineSuggestionSessionController;->match(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    nop

    .line 248
    :goto_23
    return v0

    .line 246
    :cond_24
    :goto_24
    return v0
.end method


# virtual methods
.method match(Landroid/view/autofill/AutofillId;)Z
    .registers 3
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;

    .line 238
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientFieldId:Landroid/view/autofill/AutofillId;

    invoke-static {p1, v0}, Landroid/inputmethodservice/InlineSuggestionSessionController;->match(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)Z

    move-result v0

    return v0
.end method

.method match(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;)Z
    .registers 4
    .param p1, "requestInfo"    # Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;

    .line 230
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientPackageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientFieldId:Landroid/view/autofill/AutofillId;

    invoke-static {p1, v0, v1}, Landroid/inputmethodservice/InlineSuggestionSessionController;->match(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Ljava/lang/String;Landroid/view/autofill/AutofillId;)Z

    move-result v0

    return v0
.end method

.method notifyOnFinishInput()V
    .registers 5

    .line 211
    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    const-string v1, "InlineSuggestionSessionController"

    if-eqz v0, :cond_b

    const-string v0, "notifyOnFinishInput"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientPackageName:Ljava/lang/String;

    .line 213
    iput-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientFieldId:Landroid/view/autofill/AutofillId;

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeInputViewStarted:Z

    .line 215
    iput-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeInputStarted:Z

    .line 216
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->shouldSendImeStatus()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 218
    :try_start_1f
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestCallback()Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;->onInputMethodFinishInput()V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_28} :catch_29

    .line 221
    goto :goto_40

    .line 219
    :catch_29
    move-exception v0

    .line 220
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInputMethodFinishInput() remote exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_40
    :goto_40
    return-void
.end method

.method notifyOnFinishInputView()V
    .registers 5

    .line 194
    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    const-string v1, "InlineSuggestionSessionController"

    if-eqz v0, :cond_b

    const-string v0, "notifyOnFinishInputView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeInputViewStarted:Z

    .line 196
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->shouldSendImeStatus()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 198
    :try_start_18
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestCallback()Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;->onInputMethodFinishInputView()V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_21} :catch_22

    .line 201
    goto :goto_39

    .line 199
    :catch_22
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInputMethodFinishInputView() remote exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_39
    :goto_39
    return-void
.end method

.method notifyOnShowInputRequested(Z)V
    .registers 6
    .param p1, "requestResult"    # Z

    .line 159
    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    const-string v1, "InlineSuggestionSessionController"

    if-eqz v0, :cond_b

    const-string v0, "notifyShowInputRequested"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_b
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->shouldSendImeStatus()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 162
    :try_start_15
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestCallback()Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;->onInputMethodShowInputRequested(Z)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1e} :catch_1f

    .line 165
    goto :goto_36

    .line 163
    :catch_1f
    move-exception v0

    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInputMethodShowInputRequested() remote exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_36
    :goto_36
    return-void
.end method

.method notifyOnStartInput(Ljava/lang/String;Landroid/view/autofill/AutofillId;)V
    .registers 7
    .param p1, "imeClientPackageName"    # Ljava/lang/String;
    .param p2, "imeFieldId"    # Landroid/view/autofill/AutofillId;

    .line 128
    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    const-string v1, "InlineSuggestionSessionController"

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyOnStartInput: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_26
    if-eqz p1, :cond_81

    if-nez p2, :cond_2b

    goto :goto_81

    .line 132
    :cond_2b
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeInputStarted:Z

    .line 133
    iput-object p1, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientPackageName:Ljava/lang/String;

    .line 134
    iput-object p2, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientFieldId:Landroid/view/autofill/AutofillId;

    .line 136
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    if-eqz v0, :cond_80

    .line 137
    sget-object v2, Landroid/inputmethodservice/InlineSuggestionSession;->EMPTY_RESPONSE:Landroid/view/inputmethod/InlineSuggestionsResponse;

    invoke-virtual {v0, v2}, Landroid/inputmethodservice/InlineSuggestionSession;->consumeInlineSuggestionsResponse(Landroid/view/inputmethod/InlineSuggestionsResponse;)V

    .line 140
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->isCallbackInvoked()Z

    move-result v0

    if-nez v0, :cond_55

    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestInfo()Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InlineSuggestionSessionController;->match(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 141
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->makeInlineSuggestionRequestUncheck()V

    goto :goto_80

    .line 142
    :cond_55
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->shouldSendImeStatus()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 144
    :try_start_5d
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestCallback()Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    move-result-object v0

    iget-object v2, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeClientFieldId:Landroid/view/autofill/AutofillId;

    invoke-interface {v0, v2}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;->onInputMethodStartInput(Landroid/view/autofill/AutofillId;)V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_68} :catch_69

    .line 147
    goto :goto_80

    .line 145
    :catch_69
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInputMethodStartInput() remote exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_80
    :goto_80
    return-void

    .line 130
    :cond_81
    :goto_81
    return-void
.end method

.method notifyOnStartInputView()V
    .registers 5

    .line 176
    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    const-string v1, "InlineSuggestionSessionController"

    if-eqz v0, :cond_b

    const-string v0, "notifyOnStartInputView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeInputViewStarted:Z

    .line 178
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->shouldSendImeStatus()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 180
    :try_start_18
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestCallback()Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;->onInputMethodStartInputView()V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_21} :catch_22

    .line 183
    goto :goto_39

    .line 181
    :catch_22
    move-exception v0

    .line 182
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInputMethodStartInputView() remote exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_39
    :goto_39
    return-void
.end method

.method onMakeInlineSuggestionsRequest(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;)V
    .registers 13
    .param p1, "requestInfo"    # Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;
    .param p2, "callback"    # Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    .line 98
    sget-boolean v0, Landroid/inputmethodservice/InputMethodService;->DEBUG:Z

    const-string v1, "InlineSuggestionSessionController"

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMakeInlineSuggestionsRequest: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1c
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    if-eqz v0, :cond_23

    .line 101
    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->invalidate()V

    .line 103
    :cond_23
    new-instance v0, Landroid/inputmethodservice/InlineSuggestionSession;

    iget-object v5, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mRequestSupplier:Ljava/util/function/Function;

    iget-object v6, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mHostInputTokenSupplier:Ljava/util/function/Supplier;

    iget-object v7, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mResponseConsumer:Ljava/util/function/Consumer;

    iget-object v9, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mMainThreadHandler:Landroid/os/Handler;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v8, p0

    invoke-direct/range {v2 .. v9}, Landroid/inputmethodservice/InlineSuggestionSession;-><init>(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/Consumer;Landroid/inputmethodservice/InlineSuggestionSessionController;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    .line 108
    iget-boolean v2, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeInputStarted:Z

    if-eqz v2, :cond_6e

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestInfo()Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InlineSuggestionSessionController;->match(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 109
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->makeInlineSuggestionRequestUncheck()V

    .line 111
    iget-boolean v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mImeInputViewStarted:Z

    if-eqz v0, :cond_6e

    .line 113
    :try_start_4d
    iget-object v0, p0, Landroid/inputmethodservice/InlineSuggestionSessionController;->mSession:Landroid/inputmethodservice/InlineSuggestionSession;

    invoke-virtual {v0}, Landroid/inputmethodservice/InlineSuggestionSession;->getRequestCallback()Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;->onInputMethodStartInputView()V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_56} :catch_57

    .line 116
    goto :goto_6e

    .line 114
    :catch_57
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInputMethodStartInputView() remote exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_6e
    :goto_6e
    return-void
.end method
