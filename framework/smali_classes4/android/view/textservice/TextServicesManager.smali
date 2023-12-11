.class public final Landroid/view/textservice/TextServicesManager;
.super Ljava/lang/Object;
.source "TextServicesManager.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Landroid/view/textservice/TextServicesManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private final mService:Lcom/android/internal/textservice/ITextServicesManager;

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 84
    const-class v0, Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/textservice/TextServicesManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ILandroid/view/inputmethod/InputMethodManager;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "inputMethodManager"    # Landroid/view/inputmethod/InputMethodManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    nop

    .line 105
    const-string/jumbo v0, "textservices"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 104
    invoke-static {v0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ITextServicesManager;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    .line 106
    iput p1, p0, Landroid/view/textservice/TextServicesManager;->mUserId:I

    .line 107
    iput-object p2, p0, Landroid/view/textservice/TextServicesManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 108
    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Landroid/view/textservice/TextServicesManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 122
    new-instance v0, Landroid/view/textservice/TextServicesManager;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {v0, v1, v2}, Landroid/view/textservice/TextServicesManager;-><init>(ILandroid/view/inputmethod/InputMethodManager;)V

    return-object v0
.end method

.method public static getInstance()Landroid/view/textservice/TextServicesManager;
    .registers 4

    .line 133
    const-class v0, Landroid/view/textservice/TextServicesManager;

    monitor-enter v0

    .line 134
    :try_start_3
    sget-object v1, Landroid/view/textservice/TextServicesManager;->sInstance:Landroid/view/textservice/TextServicesManager;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1f

    if-nez v1, :cond_1b

    .line 136
    :try_start_7
    new-instance v1, Landroid/view/textservice/TextServicesManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/textservice/TextServicesManager;-><init>(ILandroid/view/inputmethod/InputMethodManager;)V

    sput-object v1, Landroid/view/textservice/TextServicesManager;->sInstance:Landroid/view/textservice/TextServicesManager;
    :try_end_13
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_7 .. :try_end_13} :catch_14
    .catchall {:try_start_7 .. :try_end_13} :catchall_1f

    .line 139
    goto :goto_1b

    .line 137
    :catch_14
    move-exception v1

    .line 138
    .local v1, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :try_start_15
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 141
    .end local v1    # "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :cond_1b
    :goto_1b
    sget-object v1, Landroid/view/textservice/TextServicesManager;->sInstance:Landroid/view/textservice/TextServicesManager;

    monitor-exit v0

    return-object v1

    .line 142
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private static parseLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "locale"    # Ljava/lang/String;

    .line 155
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 156
    .local v0, "idx":I
    if-gez v0, :cond_9

    .line 157
    return-object p0

    .line 159
    :cond_9
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method finishSpellCheckerService(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .line 386
    :try_start_0
    iget-object v0, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    iget v1, p0, Landroid/view/textservice/TextServicesManager;->mUserId:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/textservice/ITextServicesManager;->finishSpellCheckerService(ILcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 389
    nop

    .line 390
    return-void

    .line 387
    :catch_9
    move-exception v0

    .line 388
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;
    .registers 2

    .line 345
    invoke-virtual {p0}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerInfo()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSpellCheckerInfo()Landroid/view/textservice/SpellCheckerInfo;
    .registers 4

    .line 330
    :try_start_0
    iget-object v0, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    iget v1, p0, Landroid/view/textservice/TextServicesManager;->mUserId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/textservice/ITextServicesManager;->getCurrentSpellChecker(ILjava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    .line 331
    :catch_a
    move-exception v0

    .line 332
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;
    .registers 4
    .param p1, "allowImplicitlySelectedSubtype"    # Z

    .line 363
    :try_start_0
    iget-object v0, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    iget v1, p0, Landroid/view/textservice/TextServicesManager;->mUserId:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/textservice/ITextServicesManager;->getCurrentSpellCheckerSubtype(IZ)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 364
    :catch_9
    move-exception v0

    .line 365
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getEnabledSpellCheckerInfos()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/textservice/SpellCheckerInfo;",
            ">;"
        }
    .end annotation

    .line 315
    invoke-virtual {p0}, Landroid/view/textservice/TextServicesManager;->getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    .line 316
    .local v0, "enabledSpellCheckers":[Landroid/view/textservice/SpellCheckerInfo;
    if-eqz v0, :cond_b

    .line 317
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_f

    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 316
    :goto_f
    return-object v1
.end method

.method public getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;
    .registers 3

    .line 293
    :try_start_0
    iget-object v0, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    iget v1, p0, Landroid/view/textservice/TextServicesManager;->mUserId:I

    invoke-interface {v0, v1}, Lcom/android/internal/textservice/ITextServicesManager;->getEnabledSpellCheckers(I)[Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 297
    .local v0, "retval":[Landroid/view/textservice/SpellCheckerInfo;
    return-object v0

    .line 298
    .end local v0    # "retval":[Landroid/view/textservice/SpellCheckerInfo;
    :catch_9
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .registers 2

    .line 148
    iget-object v0, p0, Landroid/view/textservice/TextServicesManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method public isSpellCheckerEnabled()Z
    .registers 3

    .line 377
    :try_start_0
    iget-object v0, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    iget v1, p0, Landroid/view/textservice/TextServicesManager;->mUserId:I

    invoke-interface {v0, v1}, Lcom/android/internal/textservice/ITextServicesManager;->isSpellCheckerEnabled(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 378
    :catch_9
    move-exception v0

    .line 379
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public newSpellCheckerSession(Landroid/os/Bundle;Ljava/util/Locale;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;Z)Landroid/view/textservice/SpellCheckerSession;
    .registers 9
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "listener"    # Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;
    .param p4, "referToSpellCheckerLanguageSettings"    # Z

    .line 191
    const/4 v0, 0x7

    .line 194
    .local v0, "supportedAttributes":I
    new-instance v1, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;

    invoke-direct {v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;-><init>()V

    .line 195
    invoke-virtual {v1, p2}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->setLocale(Ljava/util/Locale;)Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;

    move-result-object v1

    .line 196
    invoke-virtual {v1, p4}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->setShouldReferToSpellCheckerLanguageSettings(Z)Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;

    move-result-object v1

    .line 197
    invoke-virtual {v1, v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->setSupportedAttributes(I)Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;

    move-result-object v1

    .line 198
    .local v1, "paramsBuilder":Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;
    if-eqz p1, :cond_17

    .line 199
    invoke-virtual {v1, p1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->setExtras(Landroid/os/Bundle;)Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;

    .line 202
    :cond_17
    new-instance v2, Landroid/os/HandlerExecutor;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 203
    .local v2, "executor":Ljava/util/concurrent/Executor;
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->build()Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;

    move-result-object v3

    invoke-virtual {p0, v3, v2, p3}, Landroid/view/textservice/TextServicesManager;->newSpellCheckerSession(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;Ljava/util/concurrent/Executor;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;)Landroid/view/textservice/SpellCheckerSession;

    move-result-object v3

    return-object v3
.end method

.method public newSpellCheckerSession(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;Ljava/util/concurrent/Executor;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;)Landroid/view/textservice/SpellCheckerSession;
    .registers 16
    .param p1, "params"    # Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;

    .line 220
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .line 223
    .local v0, "locale":Ljava/util/Locale;
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;->shouldReferToSpellCheckerLanguageSettings()Z

    move-result v1

    if-nez v1, :cond_1b

    if-eqz v0, :cond_13

    goto :goto_1b

    .line 224
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Locale should not be null if you don\'t refer settings."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 228
    :cond_1b
    :goto_1b
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;->shouldReferToSpellCheckerLanguageSettings()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_29

    invoke-virtual {p0}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v1

    if-nez v1, :cond_29

    .line 229
    return-object v2

    .line 234
    :cond_29
    :try_start_29
    iget-object v1, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    iget v3, p0, Landroid/view/textservice/TextServicesManager;->mUserId:I

    invoke-interface {v1, v3, v2}, Lcom/android/internal/textservice/ITextServicesManager;->getCurrentSpellChecker(ILjava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_31} :catch_c4

    .line 237
    .local v1, "sci":Landroid/view/textservice/SpellCheckerInfo;
    nop

    .line 238
    if-nez v1, :cond_35

    .line 239
    return-object v2

    .line 241
    :cond_35
    const/4 v3, 0x0

    .line 242
    .local v3, "subtypeInUse":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;->shouldReferToSpellCheckerLanguageSettings()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_62

    .line 243
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v3

    .line 244
    if-nez v3, :cond_45

    .line 245
    return-object v2

    .line 247
    :cond_45
    if-eqz v0, :cond_95

    .line 248
    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v4

    .line 249
    .local v4, "subtypeLocale":Ljava/lang/String;
    invoke-static {v4}, Landroid/view/textservice/TextServicesManager;->parseLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 250
    .local v6, "subtypeLanguage":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v5, :cond_61

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_60

    goto :goto_61

    .line 253
    .end local v4    # "subtypeLocale":Ljava/lang/String;
    .end local v6    # "subtypeLanguage":Ljava/lang/String;
    :cond_60
    goto :goto_95

    .line 251
    .restart local v4    # "subtypeLocale":Ljava/lang/String;
    .restart local v6    # "subtypeLanguage":Ljava/lang/String;
    :cond_61
    :goto_61
    return-object v2

    .line 255
    .end local v4    # "subtypeLocale":Ljava/lang/String;
    .end local v6    # "subtypeLanguage":Ljava/lang/String;
    :cond_62
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, "localeStr":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_67
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v7

    if-ge v6, v7, :cond_95

    .line 257
    invoke-virtual {v1, v6}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v7

    .line 258
    .local v7, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v8

    .line 259
    .local v8, "tempSubtypeLocale":Ljava/lang/String;
    invoke-static {v8}, Landroid/view/textservice/TextServicesManager;->parseLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 260
    .local v9, "tempSubtypeLanguage":Ljava/lang/String;
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_81

    .line 261
    move-object v3, v7

    .line 262
    goto :goto_95

    .line 263
    :cond_81
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v10, v5, :cond_92

    .line 264
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_92

    .line 265
    move-object v3, v7

    .line 256
    .end local v7    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    .end local v8    # "tempSubtypeLocale":Ljava/lang/String;
    .end local v9    # "tempSubtypeLanguage":Ljava/lang/String;
    :cond_92
    add-int/lit8 v6, v6, 0x1

    goto :goto_67

    .line 269
    .end local v4    # "localeStr":Ljava/lang/String;
    .end local v6    # "i":I
    :cond_95
    :goto_95
    if-nez v3, :cond_98

    .line 270
    return-object v2

    .line 272
    :cond_98
    new-instance v2, Landroid/view/textservice/SpellCheckerSession;

    invoke-direct {v2, v1, p0, p3, p2}, Landroid/view/textservice/SpellCheckerSession;-><init>(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/TextServicesManager;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;Ljava/util/concurrent/Executor;)V

    .line 274
    .local v2, "session":Landroid/view/textservice/SpellCheckerSession;
    :try_start_9d
    iget-object v4, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    iget v5, p0, Landroid/view/textservice/TextServicesManager;->mUserId:I

    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v7

    .line 275
    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerSession;->getTextServicesSessionListener()Lcom/android/internal/textservice/ITextServicesSessionListener;

    move-result-object v8

    .line 276
    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerSession;->getSpellCheckerSessionListener()Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    move-result-object v9

    .line 277
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;->getSupportedAttributes()I

    move-result v11

    .line 274
    invoke-interface/range {v4 .. v11}, Lcom/android/internal/textservice/ITextServicesManager;->getSpellCheckerService(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;I)V
    :try_end_bc
    .catch Landroid/os/RemoteException; {:try_start_9d .. :try_end_bc} :catch_be

    .line 280
    nop

    .line 281
    return-object v2

    .line 278
    :catch_be
    move-exception v4

    .line 279
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 235
    .end local v1    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    .end local v2    # "session":Landroid/view/textservice/SpellCheckerSession;
    .end local v3    # "subtypeInUse":Landroid/view/textservice/SpellCheckerSubtype;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_c4
    move-exception v1

    .line 236
    .local v1, "e":Landroid/os/RemoteException;
    return-object v2
.end method
