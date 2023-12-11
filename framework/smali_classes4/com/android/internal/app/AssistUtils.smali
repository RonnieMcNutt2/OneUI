.class public Lcom/android/internal/app/AssistUtils;
.super Ljava/lang/Object;
.source "AssistUtils.java"


# static fields
.field public static final INVOCATION_TYPE_ASSIST_BUTTON:I = 0x7

.field public static final INVOCATION_TYPE_GESTURE:I = 0x1

.field public static final INVOCATION_TYPE_HOME_BUTTON_LONG_PRESS:I = 0x5

.field public static final INVOCATION_TYPE_KEY:Ljava/lang/String; = "invocation_type"

.field public static final INVOCATION_TYPE_PHYSICAL_GESTURE:I = 0x2

.field public static final INVOCATION_TYPE_POWER_BUTTON_LONG_PRESS:I = 0x6

.field public static final INVOCATION_TYPE_QUICK_SEARCH_BAR:I = 0x4

.field public static final INVOCATION_TYPE_UNKNOWN:I = 0x0

.field public static final INVOCATION_TYPE_VOICE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AssistUtils"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/internal/app/AssistUtils;->mContext:Landroid/content/Context;

    .line 69
    nop

    .line 70
    const-string/jumbo v0, "voiceinteraction"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 69
    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 71
    return-void
.end method

.method public static allowDisablingAssistDisclosure(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 308
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isDisclosureEnabled(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 289
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assist_disclosure_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v2, 0x1

    :cond_e
    return v2
.end method

.method public static isPreinstalledAssistant(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assistant"    # Landroid/content/ComponentName;

    .line 275
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 276
    return v0

    .line 280
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 281
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_10} :catch_1f

    .line 284
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 285
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v2

    if-eqz v2, :cond_1e

    :cond_1d
    const/4 v0, 0x1

    :cond_1e
    return v0

    .line 282
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1f
    move-exception v1

    .line 283
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method public static shouldDisclose(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assistant"    # Landroid/content/ComponentName;

    .line 300
    invoke-static {p0}, Lcom/android/internal/app/AssistUtils;->allowDisablingAssistDisclosure(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 301
    return v1

    .line 304
    :cond_8
    invoke-static {p0}, Lcom/android/internal/app/AssistUtils;->isDisclosureEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {p0, p1}, Lcom/android/internal/app/AssistUtils;->isPreinstalledAssistant(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :cond_16
    :goto_16
    return v1
.end method

.method private showSessionForActiveServiceInternal(Landroid/os/Bundle;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    .registers 12
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "sourceFlags"    # I
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "showCallback"    # Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .param p5, "activityToken"    # Landroid/os/IBinder;

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_e

    .line 118
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IVoiceInteractionManagerService;->showSessionForActiveService(Landroid/os/Bundle;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    return v0

    .line 123
    :cond_e
    goto :goto_17

    .line 121
    :catch_f
    move-exception v0

    .line 122
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AssistUtils"

    const-string v2, "Failed to call showSessionForActiveService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_17
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public activeServiceSupportsAssistGesture()Z
    .registers 5

    .line 163
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v1, :cond_d

    .line 164
    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->activeServiceSupportsAssist()Z

    move-result v1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_f

    if-eqz v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    nop

    .line 163
    :goto_e
    return v0

    .line 165
    :catch_f
    move-exception v1

    .line 166
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AssistUtils"

    const-string v3, "Failed to call activeServiceSupportsAssistGesture"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    return v0
.end method

.method public activeServiceSupportsLaunchFromKeyguard()Z
    .registers 5

    .line 173
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v1, :cond_d

    .line 174
    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->activeServiceSupportsLaunchFromKeyguard()Z

    move-result v1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_f

    if-eqz v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    nop

    .line 173
    :goto_e
    return v0

    .line 175
    :catch_f
    move-exception v1

    .line 176
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AssistUtils"

    const-string v3, "Failed to call activeServiceSupportsLaunchFromKeyguard"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    return v0
.end method

.method public disableVisualQueryDetection()V
    .registers 4

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_7

    .line 256
    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->disableVisualQueryDetection()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 260
    :cond_7
    goto :goto_10

    .line 258
    :catch_8
    move-exception v0

    .line 259
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AssistUtils"

    const-string v2, "Failed to register visual query detection attention listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public enableVisualQueryDetection(Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_7

    .line 243
    invoke-interface {v0, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->enableVisualQueryDetection(Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 247
    :cond_7
    goto :goto_10

    .line 245
    :catch_8
    move-exception v0

    .line 246
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AssistUtils"

    const-string v2, "Failed to register visual query detection attention listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public getActiveServiceComponentName()Landroid/content/ComponentName;
    .registers 5

    .line 183
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v1, :cond_a

    .line 184
    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getActiveServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_b

    return-object v0

    .line 186
    :cond_a
    return-object v0

    .line 188
    :catch_b
    move-exception v1

    .line 189
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AssistUtils"

    const-string v3, "Failed to call getActiveServiceComponentName"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    return-object v0
.end method

.method public getActiveServiceSupportedActions(Ljava/util/Set;Lcom/android/internal/app/IVoiceActionCheckCallback;)V
    .registers 6
    .param p2, "callback"    # Lcom/android/internal/app/IVoiceActionCheckCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/IVoiceActionCheckCallback;",
            ")V"
        }
    .end annotation

    .line 138
    .local p1, "voiceActions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_c

    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 140
    invoke-interface {v0, v1, p2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getActiveServiceSupportedActions(Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    .line 148
    :cond_c
    goto :goto_1b

    .line 142
    :catch_d
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AssistUtils"

    const-string v2, "Failed to call activeServiceSupportedActions"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    const/4 v1, 0x0

    :try_start_16
    invoke-interface {p2, v1}, Lcom/android/internal/app/IVoiceActionCheckCallback;->onComplete(Ljava/util/List;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1a

    .line 147
    goto :goto_1b

    .line 146
    :catch_1a
    move-exception v1

    .line 149
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void
.end method

.method public getAssistComponentForUser(I)Landroid/content/ComponentName;
    .registers 4
    .param p1, "userId"    # I

    .line 265
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "setting":Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 268
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1

    .line 270
    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method public hideCurrentSession()V
    .registers 4

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_7

    .line 207
    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->hideCurrentSession()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 211
    :cond_7
    goto :goto_10

    .line 209
    :catch_8
    move-exception v0

    .line 210
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AssistUtils"

    const-string v2, "Failed to call hideCurrentSession"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public isSessionRunning()Z
    .registers 5

    .line 196
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v1, :cond_d

    .line 197
    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->isSessionRunning()Z

    move-result v1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_f

    if-eqz v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    nop

    .line 196
    :goto_e
    return v0

    .line 198
    :catch_f
    move-exception v1

    .line 199
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AssistUtils"

    const-string v3, "Failed to call isSessionRunning"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    return v0
.end method

.method public launchVoiceAssistFromKeyguard()V
    .registers 4

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_7

    .line 154
    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->launchVoiceAssistFromKeyguard()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 158
    :cond_7
    goto :goto_10

    .line 156
    :catch_8
    move-exception v0

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AssistUtils"

    const-string v2, "Failed to call launchVoiceAssistFromKeyguard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public onLockscreenShown()V
    .registers 4

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_7

    .line 217
    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->onLockscreenShown()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 221
    :cond_7
    goto :goto_10

    .line 219
    :catch_8
    move-exception v0

    .line 220
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AssistUtils"

    const-string v2, "Failed to call onLockscreenShown"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public registerVoiceInteractionSessionListener(Lcom/android/internal/app/IVoiceInteractionSessionListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/android/internal/app/IVoiceInteractionSessionListener;

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_7

    .line 227
    invoke-interface {v0, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->registerVoiceInteractionSessionListener(Lcom/android/internal/app/IVoiceInteractionSessionListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 231
    :cond_7
    goto :goto_10

    .line 229
    :catch_8
    move-exception v0

    .line 230
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AssistUtils"

    const-string v2, "Failed to register voice interaction listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    .registers 11
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "sourceFlags"    # I
    .param p3, "showCallback"    # Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .param p4, "activityToken"    # Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/AssistUtils;->showSessionForActiveServiceInternal(Landroid/os/Bundle;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public showSessionForActiveService(Landroid/os/Bundle;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    .registers 7
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "sourceFlags"    # I
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "showCallback"    # Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .param p5, "activityToken"    # Landroid/os/IBinder;

    .line 108
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/app/AssistUtils;->showSessionForActiveServiceInternal(Landroid/os/Bundle;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method
