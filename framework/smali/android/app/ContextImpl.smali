.class Landroid/app/ContextImpl;
.super Landroid/content/Context;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ContextImpl$ApplicationContentResolver;,
        Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;,
        Landroid/app/ContextImpl$ServiceInitializationState;,
        Landroid/app/ContextImpl$ContextType;
    }
.end annotation


# static fields
.field private static final CONTEXT_TYPE_ACTIVITY:I = 0x2

.field private static final CONTEXT_TYPE_DISPLAY_CONTEXT:I = 0x1

.field private static final CONTEXT_TYPE_NON_UI:I = 0x0

.field private static final CONTEXT_TYPE_SYSTEM_OR_SYSTEM_UI:I = 0x4

.field private static final CONTEXT_TYPE_WINDOW_CONTEXT:I = 0x3

.field private static final DEBUG:Z = false

.field static final STATE_INITIALIZING:I = 0x1

.field static final STATE_NOT_FOUND:I = 0x3

.field static final STATE_READY:I = 0x2

.field static final STATE_UNINITIALIZED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ContextImpl"

.field private static final XATTR_INODE_CACHE:Ljava/lang/String; = "user.inode_cache"

.field private static final XATTR_INODE_CODE_CACHE:Ljava/lang/String; = "user.inode_code_cache"

.field private static sSharedPrefsCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/io/File;",
            "Landroid/app/SharedPreferencesImpl;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mAttributionSource:Landroid/content/AttributionSource;

.field private mAutofillClient:Landroid/view/autofill/AutofillManager$AutofillClient;

.field private mAutofillOptions:Landroid/content/AutofillOptions;

.field private final mBasePackageName:Ljava/lang/String;

.field private mCacheDir:Ljava/io/File;

.field private mClassLoader:Ljava/lang/ClassLoader;

.field private mCodeCacheDir:Ljava/io/File;

.field private mContentCaptureOptions:Landroid/content/ContentCaptureOptions;

.field private final mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

.field private mContextType:I

.field private mCratesDir:Ljava/io/File;

.field private mDatabasesDir:Ljava/io/File;

.field private mDeviceId:I

.field private mDeviceIdChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceIdListenerLock:Ljava/lang/Object;

.field private mDisplay:Landroid/view/Display;

.field private mFilesDir:Ljava/io/File;

.field private final mFlags:I

.field private mForceDisplayOverrideInResources:Z

.field private mIsConfigurationBasedContext:Z

.field private mIsExplicitDeviceId:Z

.field final mMainThread:Landroid/app/ActivityThread;

.field private mNoBackupFilesDir:Ljava/io/File;

.field private final mOpPackageName:Ljava/lang/String;

.field private mOuterContext:Landroid/content/Context;

.field private mOwnsToken:Z

.field final mPackageInfo:Landroid/app/LoadedApk;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mParams:Landroid/content/ContextParams;

.field private mPreferencesDir:Ljava/io/File;

.field private mReceiverRestrictedContext:Landroid/content/Context;

.field private mResources:Landroid/content/res/Resources;

.field private final mResourcesManager:Landroid/app/ResourcesManager;

.field final mServiceCache:[Ljava/lang/Object;

.field final mServiceInitializationStateArray:[I

.field private mSharedPrefsPaths:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mSplitName:Ljava/lang/String;

.field private final mSync:Ljava/lang/Object;

.field private mTheme:Landroid/content/res/Resources$Theme;

.field private mThemeResource:I

.field private final mToken:Landroid/os/IBinder;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method private constructor <init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;)V
    .registers 16
    .param p1, "container"    # Landroid/app/ContextImpl;
    .param p2, "mainThread"    # Landroid/app/ActivityThread;
    .param p3, "packageInfo"    # Landroid/app/LoadedApk;
    .param p4, "params"    # Landroid/content/ContextParams;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "nextAttributionSource"    # Landroid/content/AttributionSource;
    .param p7, "splitName"    # Ljava/lang/String;
    .param p8, "token"    # Landroid/os/IBinder;
    .param p9, "user"    # Landroid/os/UserHandle;
    .param p10, "flags"    # I
    .param p11, "classLoader"    # Ljava/lang/ClassLoader;
    .param p12, "overrideOpPackageName"    # Ljava/lang/String;

    .line 3586
    invoke-direct {p0}, Landroid/content/Context;-><init>()V

    .line 262
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ContextImpl;->mDeviceId:I

    .line 281
    iput-boolean v0, p0, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    .line 288
    iput v0, p0, Landroid/app/ContextImpl;->mThemeResource:I

    .line 290
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    .line 294
    iput-object v1, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    .line 297
    iput-object v1, p0, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    .line 299
    iput-object v1, p0, Landroid/app/ContextImpl;->mAutofillClient:Landroid/view/autofill/AutofillManager$AutofillClient;

    .line 302
    iput-object v1, p0, Landroid/app/ContextImpl;->mContentCaptureOptions:Landroid/content/ContentCaptureOptions;

    .line 304
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    .line 354
    iput-boolean v0, p0, Landroid/app/ContextImpl;->mOwnsToken:Z

    .line 373
    nop

    .line 374
    invoke-static {}, Landroid/app/SystemServiceRegistry;->createServiceCache()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContextImpl;->mServiceCache:[Ljava/lang/Object;

    .line 395
    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/app/ContextImpl;->mServiceInitializationStateArray:[I

    .line 398
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/ContextImpl;->mDeviceIdListenerLock:Ljava/lang/Object;

    .line 3587
    iput-object p0, p0, Landroid/app/ContextImpl;->mOuterContext:Landroid/content/Context;

    .line 3590
    and-int/lit8 v0, p10, 0x18

    if-nez v0, :cond_54

    .line 3592
    invoke-virtual {p3}, Landroid/app/LoadedApk;->getDataDirFile()Ljava/io/File;

    move-result-object v0

    .line 3593
    .local v0, "dataDir":Ljava/io/File;
    invoke-virtual {p3}, Landroid/app/LoadedApk;->getCredentialProtectedDataDirFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 3594
    or-int/lit8 p10, p10, 0x10

    goto :goto_54

    .line 3595
    :cond_48
    invoke-virtual {p3}, Landroid/app/LoadedApk;->getDeviceProtectedDataDirFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 3596
    or-int/lit8 p10, p10, 0x8

    .line 3600
    .end local v0    # "dataDir":Ljava/io/File;
    :cond_54
    :goto_54
    iput-object p2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 3601
    iput-object p8, p0, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    .line 3602
    iput p10, p0, Landroid/app/ContextImpl;->mFlags:I

    .line 3604
    if-nez p9, :cond_60

    .line 3605
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p9

    .line 3607
    :cond_60
    iput-object p9, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    .line 3609
    iput-object p3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 3610
    iput-object p7, p0, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    .line 3611
    iput-object p11, p0, Landroid/app/ContextImpl;->mClassLoader:Ljava/lang/ClassLoader;

    .line 3612
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 3616
    if-eqz p1, :cond_9c

    .line 3617
    iget-object v0, p1, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    .line 3618
    iget-object v0, p1, Landroid/app/ContextImpl;->mOpPackageName:Ljava/lang/String;

    .line 3619
    .local v0, "opPackageName":Ljava/lang/String;
    iget-object v1, p1, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, v1}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 3620
    iget-object v1, p1, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    iput-object v1, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    .line 3621
    iget v1, p1, Landroid/app/ContextImpl;->mDeviceId:I

    iput v1, p0, Landroid/app/ContextImpl;->mDeviceId:I

    .line 3622
    iget-boolean v1, p1, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    iput-boolean v1, p0, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    .line 3623
    iget-boolean v1, p1, Landroid/app/ContextImpl;->mForceDisplayOverrideInResources:Z

    iput-boolean v1, p0, Landroid/app/ContextImpl;->mForceDisplayOverrideInResources:Z

    .line 3624
    iget-boolean v1, p1, Landroid/app/ContextImpl;->mIsConfigurationBasedContext:Z

    iput-boolean v1, p0, Landroid/app/ContextImpl;->mIsConfigurationBasedContext:Z

    .line 3625
    iget v1, p1, Landroid/app/ContextImpl;->mContextType:I

    iput v1, p0, Landroid/app/ContextImpl;->mContextType:I

    .line 3626
    iget-object v1, p1, Landroid/app/ContextImpl;->mContentCaptureOptions:Landroid/content/ContentCaptureOptions;

    iput-object v1, p0, Landroid/app/ContextImpl;->mContentCaptureOptions:Landroid/content/ContentCaptureOptions;

    .line 3627
    iget-object v1, p1, Landroid/app/ContextImpl;->mAutofillOptions:Landroid/content/AutofillOptions;

    iput-object v1, p0, Landroid/app/ContextImpl;->mAutofillOptions:Landroid/content/AutofillOptions;

    goto :goto_bb

    .line 3629
    .end local v0    # "opPackageName":Ljava/lang/String;
    :cond_9c
    iget-object v0, p3, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    .line 3630
    invoke-virtual {p3}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 3631
    .local v0, "ainfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_b8

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v1, v2, :cond_b8

    .line 3636
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .local v1, "opPackageName":Ljava/lang/String;
    goto :goto_bb

    .line 3638
    .end local v1    # "opPackageName":Ljava/lang/String;
    :cond_b8
    iget-object v1, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    move-object v0, v1

    .line 3642
    .local v0, "opPackageName":Ljava/lang/String;
    :goto_bb
    if-eqz p12, :cond_bf

    move-object v1, p12

    goto :goto_c0

    :cond_bf
    move-object v1, v0

    :goto_c0
    iput-object v1, p0, Landroid/app/ContextImpl;->mOpPackageName:Ljava/lang/String;

    .line 3643
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContextParams;

    iput-object v1, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    .line 3644
    nop

    .line 3645
    invoke-virtual {p4}, Landroid/content/ContextParams;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v1

    .line 3644
    invoke-direct {p0, p5, p6, v1}, Landroid/app/ContextImpl;->createAttributionSource(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/util/Set;)Landroid/content/AttributionSource;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 3646
    new-instance v1, Landroid/app/ContextImpl$ApplicationContentResolver;

    invoke-direct {v1, p0, p2}, Landroid/app/ContextImpl$ApplicationContentResolver;-><init>(Landroid/content/Context;Landroid/app/ActivityThread;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

    .line 3647
    return-void
.end method

.method private bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;JLjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z
    .registers 26
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # J
    .param p5, "instanceName"    # Ljava/lang/String;
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "executor"    # Ljava/util/concurrent/Executor;
    .param p8, "user"    # Landroid/os/UserHandle;

    .line 2174
    move-object/from16 v1, p0

    move-object/from16 v13, p1

    if-eqz p2, :cond_bf

    .line 2177
    if-eqz p6, :cond_13

    if-nez p7, :cond_b

    goto :goto_13

    .line 2178
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Handler and Executor both supplied"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2180
    :cond_13
    :goto_13
    iget-object v2, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v2, :cond_b7

    .line 2181
    if-eqz p7, :cond_29

    .line 2182
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v3, p2

    move-object/from16 v5, p7

    move-wide/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/app/LoadedApk;->getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;Ljava/util/concurrent/Executor;J)Landroid/app/IServiceConnection;

    move-result-object v0

    move-object v14, v0

    .local v0, "sd":Landroid/app/IServiceConnection;
    goto :goto_38

    .line 2184
    .end local v0    # "sd":Landroid/app/IServiceConnection;
    :cond_29
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v3, p2

    move-object/from16 v5, p6

    move-wide/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/app/LoadedApk;->getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;J)Landroid/app/IServiceConnection;

    move-result-object v0

    move-object v14, v0

    .line 2189
    .local v14, "sd":Landroid/app/IServiceConnection;
    :goto_38
    invoke-direct/range {p0 .. p1}, Landroid/app/ContextImpl;->validateServiceIntent(Landroid/content/Intent;)V

    .line 2191
    :try_start_3b
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    .line 2192
    .local v0, "token":Landroid/os/IBinder;
    if-nez v0, :cond_5f

    const-wide/16 v2, 0x1

    and-long v2, p3, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_5f

    iget-object v2, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v2, :cond_5f

    .line 2193
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_55} :catch_af

    const/16 v3, 0xe

    if-ge v2, v3, :cond_5f

    .line 2195
    const-wide/16 v2, 0x20

    or-long v2, p3, v2

    move-wide v15, v2

    .end local p3    # "flags":J
    .local v2, "flags":J
    goto :goto_61

    .line 2197
    .end local v2    # "flags":J
    .restart local p3    # "flags":J
    :cond_5f
    move-wide/from16 v15, p3

    .end local p3    # "flags":J
    .local v15, "flags":J
    :goto_61
    :try_start_61
    invoke-virtual {v13, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 2198
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 2199
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    .line 2200
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    .line 2201
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p8 .. p8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    .line 2198
    move-object/from16 v5, p1

    move-object v7, v14

    move-wide v8, v15

    move-object/from16 v10, p5

    invoke-interface/range {v2 .. v12}, Landroid/app/IActivityManager;->bindServiceInstance(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;JLjava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 2202
    .local v2, "res":I
    if-ltz v2, :cond_94

    .line 2206
    if-eqz v2, :cond_92

    const/4 v3, 0x1

    goto :goto_93

    :cond_92
    const/4 v3, 0x0

    :goto_93
    return v3

    .line 2203
    :cond_94
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not allowed to bind to service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v14    # "sd":Landroid/app/IServiceConnection;
    .end local v15    # "flags":J
    .end local p0    # "this":Landroid/app/ContextImpl;
    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "conn":Landroid/content/ServiceConnection;
    .end local p5    # "instanceName":Ljava/lang/String;
    .end local p6    # "handler":Landroid/os/Handler;
    .end local p7    # "executor":Ljava/util/concurrent/Executor;
    .end local p8    # "user":Landroid/os/UserHandle;
    throw v3
    :try_end_ad
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_ad} :catch_ad

    .line 2207
    .end local v0    # "token":Landroid/os/IBinder;
    .end local v2    # "res":I
    .restart local v14    # "sd":Landroid/app/IServiceConnection;
    .restart local v15    # "flags":J
    .restart local p0    # "this":Landroid/app/ContextImpl;
    .restart local p1    # "service":Landroid/content/Intent;
    .restart local p2    # "conn":Landroid/content/ServiceConnection;
    .restart local p5    # "instanceName":Ljava/lang/String;
    .restart local p6    # "handler":Landroid/os/Handler;
    .restart local p7    # "executor":Ljava/util/concurrent/Executor;
    .restart local p8    # "user":Landroid/os/UserHandle;
    :catch_ad
    move-exception v0

    goto :goto_b2

    .end local v15    # "flags":J
    .restart local p3    # "flags":J
    :catch_af
    move-exception v0

    move-wide/from16 v15, p3

    .line 2208
    .end local p3    # "flags":J
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v15    # "flags":J
    :goto_b2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2187
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v14    # "sd":Landroid/app/IServiceConnection;
    .end local v15    # "flags":J
    .restart local p3    # "flags":J
    :cond_b7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Not supported in system context"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2175
    :cond_bf
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "connection is null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 3726
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_23

    .line 3727
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_1b

    .line 3730
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_13

    goto :goto_23

    .line 3731
    :cond_13
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "MODE_WORLD_WRITEABLE no longer supported"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3728
    :cond_1b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "MODE_WORLD_READABLE no longer supported"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3734
    :cond_23
    :goto_23
    return-void
.end method

.method static createActivityContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;ILandroid/content/res/Configuration;)Landroid/app/ContextImpl;
    .registers 37
    .param p0, "mainThread"    # Landroid/app/ActivityThread;
    .param p1, "packageInfo"    # Landroid/app/LoadedApk;
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "activityToken"    # Landroid/os/IBinder;
    .param p4, "displayId"    # I
    .param p5, "overrideConfiguration"    # Landroid/content/res/Configuration;

    .line 3497
    move-object/from16 v14, p1

    move-object/from16 v15, p2

    if-eqz v14, :cond_e7

    .line 3499
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getSplitResDirs()[Ljava/lang/String;

    move-result-object v1

    .line 3500
    .local v1, "splitDirs":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 3502
    .local v2, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->requestsIsolatedSplitLoading()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 3503
    const-string v0, "SplitDependencies"

    const-wide/16 v3, 0x2000

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3505
    :try_start_1f
    iget-object v0, v15, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v14, v0}, Landroid/app/LoadedApk;->getSplitClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    move-object v2, v0

    .line 3506
    iget-object v0, v15, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v14, v0}, Landroid/app/LoadedApk;->getSplitPaths(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f .. :try_end_2c} :catch_35
    .catchall {:try_start_1f .. :try_end_2c} :catchall_33

    move-object v1, v0

    .line 3511
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 3512
    move-object/from16 v29, v2

    goto :goto_43

    .line 3511
    :catchall_33
    move-exception v0

    goto :goto_3c

    .line 3507
    :catch_35
    move-exception v0

    .line 3509
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_36
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v1    # "splitDirs":[Ljava/lang/String;
    .end local v2    # "classLoader":Ljava/lang/ClassLoader;
    .end local p0    # "mainThread":Landroid/app/ActivityThread;
    .end local p1    # "packageInfo":Landroid/app/LoadedApk;
    .end local p2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local p3    # "activityToken":Landroid/os/IBinder;
    .end local p4    # "displayId":I
    .end local p5    # "overrideConfiguration":Landroid/content/res/Configuration;
    throw v5
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_33

    .line 3511
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "splitDirs":[Ljava/lang/String;
    .restart local v2    # "classLoader":Ljava/lang/ClassLoader;
    .restart local p0    # "mainThread":Landroid/app/ActivityThread;
    .restart local p1    # "packageInfo":Landroid/app/LoadedApk;
    .restart local p2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local p3    # "activityToken":Landroid/os/IBinder;
    .restart local p4    # "displayId":I
    .restart local p5    # "overrideConfiguration":Landroid/content/res/Configuration;
    :goto_3c
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 3512
    throw v0

    .line 3502
    :cond_40
    move-object v0, v1

    move-object/from16 v29, v2

    .line 3516
    .end local v1    # "splitDirs":[Ljava/lang/String;
    .end local v2    # "classLoader":Ljava/lang/ClassLoader;
    .local v0, "splitDirs":[Ljava/lang/String;
    .local v29, "classLoader":Ljava/lang/ClassLoader;
    :goto_43
    iget-object v1, v15, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    const/16 v16, 0x0

    if-eqz v1, :cond_55

    iget-object v1, v15, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_55

    .line 3517
    iget-object v1, v15, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    aget-object v1, v1, v16

    move-object/from16 v30, v1

    .local v1, "attributionTag":Ljava/lang/String;
    goto :goto_58

    .line 3519
    .end local v1    # "attributionTag":Ljava/lang/String;
    :cond_55
    const/4 v1, 0x0

    move-object/from16 v30, v1

    .line 3522
    .local v30, "attributionTag":Ljava/lang/String;
    :goto_58
    new-instance v17, Landroid/app/ContextImpl;

    const/4 v2, 0x0

    sget-object v5, Landroid/content/ContextParams;->EMPTY:Landroid/content/ContextParams;

    const/4 v7, 0x0

    iget-object v8, v15, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v1, v17

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, v30

    move-object/from16 v9, p3

    move-object/from16 v12, v29

    invoke-direct/range {v1 .. v13}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;)V

    .line 3525
    .local v1, "context":Landroid/app/ContextImpl;
    const/4 v2, 0x2

    iput v2, v1, Landroid/app/ContextImpl;->mContextType:I

    .line 3526
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/app/ContextImpl;->mIsConfigurationBasedContext:Z

    .line 3529
    const/4 v3, -0x1

    move/from16 v4, p4

    if-eq v4, v3, :cond_7f

    move/from16 v16, v4

    :cond_7f
    move/from16 v3, v16

    .line 3532
    .end local p4    # "displayId":I
    .local v3, "displayId":I
    const/4 v4, 0x0

    .line 3533
    .local v4, "displayId2":I
    if-eq v3, v2, :cond_85

    goto :goto_86

    .line 3535
    :cond_85
    move v4, v3

    .line 3539
    :goto_86
    if-nez v3, :cond_8f

    .line 3540
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    move-object/from16 v25, v2

    goto :goto_93

    .line 3541
    :cond_8f
    sget-object v2, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v25, v2

    :goto_93
    nop

    .line 3543
    .local v25, "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v2

    .line 3549
    .local v2, "resourcesManager":Landroid/app/ResourcesManager;
    nop

    .line 3550
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v18

    .line 3552
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v20

    .line 3553
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getOverlayPaths()[Ljava/lang/String;

    move-result-object v21

    .line 3554
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 3559
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getApplication()Landroid/app/Application;

    move-result-object v6

    if-nez v6, :cond_b5

    const/4 v6, 0x0

    move-object/from16 v27, v6

    goto :goto_c3

    .line 3560
    :cond_b5
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getLoaders()Ljava/util/List;

    move-result-object v6

    move-object/from16 v27, v6

    .line 3549
    :goto_c3
    move-object/from16 v16, v2

    move-object/from16 v17, p3

    move-object/from16 v19, v0

    move-object/from16 v22, v5

    move/from16 v23, v3

    move-object/from16 v24, p5

    move-object/from16 v26, v29

    move/from16 v28, v4

    invoke-virtual/range {v16 .. v28}, Landroid/app/ResourcesManager;->createBaseTokenResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;I)Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 3577
    nop

    .line 3578
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 3577
    invoke-virtual {v2, v3, v5}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/app/ContextImpl;->setDisplay(Landroid/view/Display;)V

    .line 3579
    return-object v1

    .line 3497
    .end local v0    # "splitDirs":[Ljava/lang/String;
    .end local v1    # "context":Landroid/app/ContextImpl;
    .end local v2    # "resourcesManager":Landroid/app/ResourcesManager;
    .end local v3    # "displayId":I
    .end local v4    # "displayId2":I
    .end local v25    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v29    # "classLoader":Ljava/lang/ClassLoader;
    .end local v30    # "attributionTag":Ljava/lang/String;
    .restart local p4    # "displayId":I
    :cond_e7
    move/from16 v4, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;
    .registers 3
    .param p0, "mainThread"    # Landroid/app/ActivityThread;
    .param p1, "packageInfo"    # Landroid/app/LoadedApk;

    .line 3479
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;Ljava/lang/String;)Landroid/app/ContextImpl;

    move-result-object v0

    return-object v0
.end method

.method static createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;Ljava/lang/String;)Landroid/app/ContextImpl;
    .registers 17
    .param p0, "mainThread"    # Landroid/app/ActivityThread;
    .param p1, "packageInfo"    # Landroid/app/LoadedApk;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 3484
    if-eqz p1, :cond_29

    .line 3485
    new-instance v13, Landroid/app/ContextImpl;

    const/4 v1, 0x0

    sget-object v4, Landroid/content/ContextParams;->EMPTY:Landroid/content/ContextParams;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v13

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v12, p2

    invoke-direct/range {v0 .. v12}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;)V

    .line 3487
    .local v0, "context":Landroid/app/ContextImpl;
    invoke-virtual {p1}, Landroid/app/LoadedApk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 3488
    invoke-static {v0}, Landroid/app/ContextImpl;->isSystemOrSystemUI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v1, 0x4

    goto :goto_26

    .line 3489
    :cond_25
    const/4 v1, 0x0

    :goto_26
    iput v1, v0, Landroid/app/ContextImpl;->mContextType:I

    .line 3490
    return-object v0

    .line 3484
    .end local v0    # "context":Landroid/app/ContextImpl;
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createAttributionSource(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/util/Set;)Landroid/content/AttributionSource;
    .registers 12
    .param p1, "attributionTag"    # Ljava/lang/String;
    .param p2, "nextAttributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/AttributionSource;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/AttributionSource;"
        }
    .end annotation

    .line 3652
    .local p3, "renouncedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v7, Landroid/content/AttributionSource;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 3653
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    iget-object v3, p0, Landroid/app/ContextImpl;->mOpPackageName:Ljava/lang/String;

    .line 3654
    if-eqz p3, :cond_18

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    move-object v5, v0

    move-object v0, v7

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/AttributionSource;)V

    .line 3658
    .local v0, "attributionSource":Landroid/content/AttributionSource;
    if-eqz p2, :cond_2e

    .line 3659
    const-class v1, Landroid/permission/PermissionManager;

    invoke-virtual {p0, v1}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/permission/PermissionManager;

    .line 3660
    invoke-virtual {v1, v0}, Landroid/permission/PermissionManager;->registerAttributionSource(Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 3662
    :cond_2e
    return-object v0
.end method

.method private static createResources(Landroid/os/IBinder;Landroid/app/LoadedApk;Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/List;)Landroid/content/res/Resources;
    .registers 16
    .param p0, "activityToken"    # Landroid/os/IBinder;
    .param p1, "pi"    # Landroid/app/LoadedApk;
    .param p2, "splitName"    # Ljava/lang/String;
    .param p3, "overrideDisplayId"    # Ljava/lang/Integer;
    .param p4, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p5, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/app/LoadedApk;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/util/List<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;)",
            "Landroid/content/res/Resources;"
        }
    .end annotation

    .line 2680
    .local p6, "resourcesLoader":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v8}, Landroid/app/ContextImpl;->createResources(Landroid/os/IBinder;Landroid/app/LoadedApk;Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/List;ZZ)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method private static createResources(Landroid/os/IBinder;Landroid/app/LoadedApk;Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/List;ZZ)Landroid/content/res/Resources;
    .registers 24
    .param p0, "activityToken"    # Landroid/os/IBinder;
    .param p1, "pi"    # Landroid/app/LoadedApk;
    .param p2, "splitName"    # Ljava/lang/String;
    .param p3, "overrideDisplayId"    # Ljava/lang/Integer;
    .param p4, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p5, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p7, "creatingDisplayContext"    # Z
    .param p8, "creatingDeXConfigContext"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/app/LoadedApk;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/util/List<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;ZZ)",
            "Landroid/content/res/Resources;"
        }
    .end annotation

    .line 2693
    .local p6, "resourcesLoader":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    :try_start_0
    invoke-virtual/range {p1 .. p2}, Landroid/app/LoadedApk;->getSplitPaths(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2694
    .local v4, "splitResDirs":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Landroid/app/LoadedApk;->getSplitClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v11
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_8} :catch_31

    .line 2697
    .local v11, "classLoader":Ljava/lang/ClassLoader;
    nop

    .line 2701
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v1

    .line 2702
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v3

    .line 2704
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v5

    .line 2705
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getOverlayPaths()[Ljava/lang/String;

    move-result-object v6

    .line 2706
    invoke-virtual/range {p1 .. p1}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 2701
    move-object v2, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    invoke-virtual/range {v1 .. v14}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;ZZ)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    .line 2695
    .end local v4    # "splitResDirs":[Ljava/lang/String;
    .end local v11    # "classLoader":Ljava/lang/ClassLoader;
    :catch_31
    move-exception v0

    .line 2696
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static createSystemContext(Landroid/app/ActivityThread;)Landroid/app/ContextImpl;
    .registers 15
    .param p0, "mainThread"    # Landroid/app/ActivityThread;

    .line 3449
    new-instance v3, Landroid/app/LoadedApk;

    invoke-direct {v3, p0}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;)V

    .line 3450
    .local v3, "packageInfo":Landroid/app/LoadedApk;
    new-instance v13, Landroid/app/ContextImpl;

    const/4 v1, 0x0

    sget-object v4, Landroid/content/ContextParams;->EMPTY:Landroid/content/ContextParams;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, v13

    move-object v2, p0

    invoke-direct/range {v0 .. v12}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;)V

    .line 3452
    .local v0, "context":Landroid/app/ContextImpl;
    invoke-virtual {v3}, Landroid/app/LoadedApk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 3453
    iget-object v1, v0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    iget-object v2, v0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v2}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v4, v0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 3454
    invoke-virtual {v4}, Landroid/app/ResourcesManager;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 3453
    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 3455
    const/4 v1, 0x4

    iput v1, v0, Landroid/app/ContextImpl;->mContextType:I

    .line 3456
    return-object v0
.end method

.method static createSystemUiContext(Landroid/app/ContextImpl;I)Landroid/app/ContextImpl;
    .registers 5
    .param p0, "systemContext"    # Landroid/app/ContextImpl;
    .param p1, "displayId"    # I

    .line 3467
    new-instance v0, Landroid/window/WindowTokenClient;

    invoke-direct {v0}, Landroid/window/WindowTokenClient;-><init>()V

    .line 3468
    .local v0, "token":Landroid/window/WindowTokenClient;
    invoke-virtual {p0, v0, p1}, Landroid/app/ContextImpl;->createWindowContextBase(Landroid/os/IBinder;I)Landroid/app/ContextImpl;

    move-result-object v1

    .line 3469
    .local v1, "context":Landroid/app/ContextImpl;
    invoke-virtual {v0, v1}, Landroid/window/WindowTokenClient;->attachContext(Landroid/content/Context;)V

    .line 3470
    invoke-virtual {v0, p1}, Landroid/window/WindowTokenClient;->attachToDisplayContent(I)Z

    .line 3471
    const/4 v2, 0x4

    iput v2, v1, Landroid/app/ContextImpl;->mContextType:I

    .line 3472
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/app/ContextImpl;->mOwnsToken:Z

    .line 3474
    return-object v1
.end method

.method private createWindowContextInternal(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/window/WindowContext;
    .registers 7
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "type"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 3012
    new-instance v0, Landroid/window/WindowTokenClient;

    invoke-direct {v0}, Landroid/window/WindowTokenClient;-><init>()V

    .line 3016
    .local v0, "windowTokenClient":Landroid/window/WindowTokenClient;
    nop

    .line 3017
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 3016
    invoke-virtual {p0, v0, v1}, Landroid/app/ContextImpl;->createWindowContextBase(Landroid/os/IBinder;I)Landroid/app/ContextImpl;

    move-result-object v1

    .line 3022
    .local v1, "windowContextBase":Landroid/app/ContextImpl;
    new-instance v2, Landroid/window/WindowContext;

    invoke-direct {v2, v1, p2, p3}, Landroid/window/WindowContext;-><init>(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 3023
    .local v2, "windowContext":Landroid/window/WindowContext;
    invoke-virtual {v1, v2}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 3028
    invoke-virtual {v0, v2}, Landroid/window/WindowTokenClient;->attachContext(Landroid/content/Context;)V

    .line 3031
    invoke-virtual {v2}, Landroid/window/WindowContext;->attachToDisplayArea()V

    .line 3033
    return-object v2
.end method

.method private static createWindowContextResources(Landroid/app/ContextImpl;)Landroid/content/res/Resources;
    .registers 24
    .param p0, "windowContextBase"    # Landroid/app/ContextImpl;

    .line 3086
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 3087
    .local v1, "packageInfo":Landroid/app/LoadedApk;
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    .line 3088
    .local v14, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v15

    .line 3090
    .local v15, "token":Landroid/os/IBinder;
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v16

    .line 3091
    .local v16, "resDir":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getSplitResDirs()[Ljava/lang/String;

    move-result-object v17

    .line 3092
    .local v17, "splitResDirs":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v18

    .line 3093
    .local v18, "legacyOverlayDirs":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getOverlayPaths()[Ljava/lang/String;

    move-result-object v19

    .line 3094
    .local v19, "overlayPaths":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v13, v2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 3095
    .local v13, "libDirs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getDisplayId()I

    move-result v20

    .line 3096
    .local v20, "displayId":I
    if-nez v20, :cond_2e

    .line 3097
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    move-object v11, v2

    goto :goto_31

    .line 3098
    :cond_2e
    sget-object v2, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    move-object v11, v2

    :goto_31
    nop

    .line 3099
    .local v11, "compatInfo":Landroid/content/res/CompatibilityInfo;
    iget-object v2, v0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getLoaders()Ljava/util/List;

    move-result-object v21

    .line 3101
    .local v21, "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/loader/ResourcesLoader;>;"
    iget-object v2, v0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    const/4 v10, 0x0

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object v8, v13

    move/from16 v9, v20

    move-object v12, v14

    move-object/from16 v22, v13

    .end local v13    # "libDirs":[Ljava/lang/String;
    .local v22, "libDirs":[Ljava/lang/String;
    move-object/from16 v13, v21

    invoke-virtual/range {v2 .. v13}, Landroid/app/ResourcesManager;->createBaseTokenResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v2

    return-object v2
.end method

.method private enforce(Ljava/lang/String;IZILjava/lang/String;)V
    .registers 10
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "resultOfCheck"    # I
    .param p3, "selfToo"    # Z
    .param p4, "uid"    # I
    .param p5, "message"    # Ljava/lang/String;

    .line 2413
    if-eqz p2, :cond_71

    .line 2414
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2415
    if-eqz p5, :cond_1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_21

    :cond_1f
    const-string v2, ""

    :goto_21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2416
    if-eqz p3, :cond_41

    .line 2417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Neither user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nor current process has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5b

    .line 2418
    :cond_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2422
    :cond_71
    return-void
.end method

.method private enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V
    .registers 11
    .param p1, "modeFlags"    # I
    .param p2, "resultOfCheck"    # I
    .param p3, "selfToo"    # Z
    .param p4, "uid"    # I
    .param p5, "uri"    # Landroid/net/Uri;
    .param p6, "message"    # Ljava/lang/String;

    .line 2611
    if-eqz p2, :cond_7e

    .line 2612
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2613
    if-eqz p6, :cond_1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_21

    :cond_1f
    const-string v2, ""

    :goto_21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2614
    if-eqz p3, :cond_41

    .line 2615
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Neither user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nor current process has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5a

    .line 2616
    :cond_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2617
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->uriModeFlagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " permission on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2622
    :cond_7e
    return-void
.end method

.method private ensureExternalDirsExistOrFilter([Ljava/io/File;Z)[Ljava/io/File;
    .registers 10
    .param p1, "dirs"    # [Ljava/io/File;
    .param p2, "tryCreateInProcess"    # Z

    .line 3772
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 3773
    .local v0, "sm":Landroid/os/storage/StorageManager;
    array-length v1, p1

    new-array v1, v1, [Ljava/io/File;

    .line 3774
    .local v1, "result":[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    array-length v3, p1

    if-ge v2, v3, :cond_5d

    .line 3775
    aget-object v3, p1, v2

    .line 3776
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4d

    .line 3778
    if-eqz p2, :cond_1f

    :try_start_19
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_28

    .line 3780
    :cond_1f
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_28

    .line 3783
    invoke-virtual {v0, v3}, Landroid/os/storage/StorageManager;->mkdirs(Ljava/io/File;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_28} :catch_29

    .line 3789
    :cond_28
    goto :goto_4d

    .line 3786
    :catch_29
    move-exception v4

    .line 3787
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to ensure "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ContextImpl"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3788
    const/4 v3, 0x0

    .line 3791
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_4d
    :goto_4d
    if-eqz v3, :cond_58

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_58

    .line 3796
    invoke-virtual {v0, v3}, Landroid/os/storage/StorageManager;->fixupAppDir(Ljava/io/File;)V

    .line 3798
    :cond_58
    aput-object v3, v1, v2

    .line 3774
    .end local v3    # "dir":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 3800
    .end local v2    # "i":I
    :cond_5d
    return-object v1
.end method

.method private static ensurePrivateCacheDirExists(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "xattr"    # Ljava/lang/String;

    .line 814
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getCacheAppGid(I)I

    move-result v0

    .line 815
    .local v0, "gid":I
    const/16 v1, 0x5f9

    invoke-static {p0, v1, v0, p1}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;IILjava/lang/String;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method private static ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;
    .registers 4
    .param p0, "file"    # Ljava/io/File;

    .line 810
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/16 v2, 0x1f9

    invoke-static {p0, v2, v0, v1}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;IILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static ensurePrivateDirExists(Ljava/io/File;IILjava/lang/String;)Ljava/io/File;
    .registers 13
    .param p0, "file"    # Ljava/io/File;
    .param p1, "mode"    # I
    .param p2, "gid"    # I
    .param p3, "xattr"    # Ljava/lang/String;

    .line 819
    const-string v0, ": "

    const-string v1, "ContextImpl"

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_8c

    .line 820
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 822
    .local v2, "path":Ljava/lang/String;
    :try_start_e
    invoke-static {v2, p1}, Landroid/system/Os;->mkdir(Ljava/lang/String;I)V

    .line 823
    invoke-static {v2, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 824
    const/4 v3, -0x1

    if-eq p2, v3, :cond_1a

    .line 825
    invoke-static {v2, v3, p2}, Landroid/system/Os;->chown(Ljava/lang/String;II)V
    :try_end_1a
    .catch Landroid/system/ErrnoException; {:try_start_e .. :try_end_1a} :catch_1b

    .line 833
    :cond_1a
    goto :goto_45

    .line 827
    :catch_1b
    move-exception v3

    .line 828
    .local v3, "e":Landroid/system/ErrnoException;
    iget v4, v3, Landroid/system/ErrnoException;->errno:I

    sget v5, Landroid/system/OsConstants;->EEXIST:I

    if-ne v4, v5, :cond_23

    goto :goto_45

    .line 831
    :cond_23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to ensure "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    .end local v3    # "e":Landroid/system/ErrnoException;
    :goto_45
    if-eqz p3, :cond_8c

    .line 837
    :try_start_47
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v3

    .line 838
    .local v3, "stat":Landroid/system/StructStat;
    const/16 v4, 0x8

    new-array v4, v4, [B

    .line 839
    .local v4, "value":[B
    iget-wide v5, v3, Landroid/system/StructStat;->st_ino:J

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v4, v8, v5, v6, v7}, Llibcore/io/Memory;->pokeLong([BIJLjava/nio/ByteOrder;)V

    .line 840
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p3, v4, v8}, Landroid/system/Os;->setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V
    :try_end_68
    .catch Landroid/system/ErrnoException; {:try_start_47 .. :try_end_68} :catch_69

    .line 843
    .end local v3    # "stat":Landroid/system/StructStat;
    .end local v4    # "value":[B
    goto :goto_8c

    .line 841
    :catch_69
    move-exception v3

    .line 842
    .local v3, "e":Landroid/system/ErrnoException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to update "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "e":Landroid/system/ErrnoException;
    :cond_8c
    :goto_8c
    return-object p0
.end method

.method static getCodeCacheDirBeforeBind(Ljava/io/File;)Ljava/io/File;
    .registers 3
    .param p0, "dataDir"    # Ljava/io/File;

    .line 946
    new-instance v0, Ljava/io/File;

    const-string v1, "code_cache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getDatabasesDir()Ljava/io/File;
    .registers 5

    .line 1084
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1085
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    if-nez v1, :cond_2a

    .line 1086
    const-string v1, "android"

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1087
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    goto :goto_2a

    .line 1089
    :cond_1d
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "databases"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    .line 1092
    :cond_2a
    :goto_2a
    iget-object v1, p0, Landroid/app/ContextImpl;->mDatabasesDir:Ljava/io/File;

    invoke-static {v1}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1093
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method private getDeviceIdListener(Ljava/util/function/IntConsumer;)Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;
    .registers 6
    .param p1, "listener"    # Ljava/util/function/IntConsumer;

    .line 3318
    iget-object v0, p0, Landroid/app/ContextImpl;->mDeviceIdChangeListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 3319
    return-object v1

    .line 3321
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v2, p0, Landroid/app/ContextImpl;->mDeviceIdChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 3322
    iget-object v2, p0, Landroid/app/ContextImpl;->mDeviceIdChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;

    .line 3323
    .local v2, "delegate":Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;
    iget-object v3, v2, Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;->mListener:Ljava/util/function/IntConsumer;

    if-ne v3, p1, :cond_1c

    .line 3324
    return-object v2

    .line 3321
    .end local v2    # "delegate":Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3327
    .end local v0    # "i":I
    :cond_1f
    return-object v1
.end method

.method static getImpl(Landroid/content/Context;)Landroid/app/ContextImpl;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 419
    nop

    :goto_1
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_11

    move-object v0, p0

    check-cast v0, Landroid/content/ContextWrapper;

    .line 420
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, v0

    .local v1, "nextContext":Landroid/content/Context;
    if-eqz v0, :cond_11

    .line 421
    move-object p0, v1

    goto :goto_1

    .line 423
    .end local v1    # "nextContext":Landroid/content/Context;
    :cond_11
    move-object v0, p0

    check-cast v0, Landroid/app/ContextImpl;

    return-object v0
.end method

.method private getPreferencesDir()Ljava/io/File;
    .registers 5

    .line 762
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 763
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mPreferencesDir:Ljava/io/File;

    if-nez v1, :cond_15

    .line 764
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "shared_prefs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mPreferencesDir:Ljava/io/File;

    .line 766
    :cond_15
    iget-object v1, p0, Landroid/app/ContextImpl;->mPreferencesDir:Ljava/io/File;

    invoke-static {v1}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 767
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private getSharedPreferencesCacheLocked()Landroid/util/ArrayMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/io/File;",
            "Landroid/app/SharedPreferencesImpl;",
            ">;"
        }
    .end annotation

    .line 653
    sget-object v0, Landroid/app/ContextImpl;->sSharedPrefsCache:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    .line 654
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/ContextImpl;->sSharedPrefsCache:Landroid/util/ArrayMap;

    .line 657
    :cond_b
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 658
    .local v0, "packageName":Ljava/lang/String;
    sget-object v1, Landroid/app/ContextImpl;->sSharedPrefsCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 659
    .local v1, "packagePrefs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/app/SharedPreferencesImpl;>;"
    if-nez v1, :cond_24

    .line 660
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object v1, v2

    .line 661
    sget-object v2, Landroid/app/ContextImpl;->sSharedPrefsCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    :cond_24
    return-object v1
.end method

.method private getWallpaperManager()Landroid/app/WallpaperManager;
    .registers 2

    .line 1139
    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p0, v0}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    return-object v0
.end method

.method private initializeTheme()V
    .registers 4

    .line 505
    iget-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_c

    .line 506
    iget-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    .line 508
    :cond_c
    iget-object v0, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    iget v1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 509
    return-void
.end method

.method private isAssociatedWithDisplay()Z
    .registers 2

    .line 3177
    iget v0, p0, Landroid/app/ContextImpl;->mContextType:I

    packed-switch v0, :pswitch_data_a

    .line 3185
    const/4 v0, 0x0

    return v0

    .line 3183
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private static isSystemOrSystemUI(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 2335
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-nez v0, :cond_19

    .line 2337
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2338
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2335
    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    return v0
.end method

.method static synthetic lambda$notifyOnDeviceChangedListeners$0(Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;I)V
    .registers 3
    .param p0, "delegate"    # Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;
    .param p1, "deviceId"    # I

    .line 3335
    iget-object v0, p0, Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;->mListener:Ljava/util/function/IntConsumer;

    invoke-interface {v0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method private makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p1, "base"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 3756
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_19

    .line 3757
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3760
    .local v0, "res":Ljava/io/File;
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 3761
    return-object v0

    .line 3763
    .end local v0    # "res":Ljava/io/File;
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contains a path separator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static moveFiles(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)I
    .registers 13
    .param p0, "sourceDir"    # Ljava/io/File;
    .param p1, "targetDir"    # Ljava/io/File;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 694
    new-instance v0, Landroid/app/ContextImpl$1;

    invoke-direct {v0, p2}, Landroid/app/ContextImpl$1;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 701
    .local v0, "sourceFiles":[Ljava/io/File;
    const/4 v1, 0x0

    .line 702
    .local v1, "res":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_8b

    aget-object v4, v0, v3

    .line 703
    .local v4, "sourceFile":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 704
    .local v5, "targetFile":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Migrating "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ContextImpl"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :try_start_3b
    invoke-static {v4, v5}, Landroid/os/FileUtils;->copyFileOrThrow(Ljava/io/File;Ljava/io/File;)V

    .line 707
    invoke-static {v4, v5}, Landroid/os/FileUtils;->copyPermissions(Ljava/io/File;Ljava/io/File;)V

    .line 708
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 711
    const/4 v6, -0x1

    if-eq v1, v6, :cond_4c

    .line 712
    add-int/lit8 v1, v1, 0x1

    .line 717
    :cond_4c
    goto :goto_88

    .line 709
    :cond_4d
    new-instance v6, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to clean up "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "sourceFiles":[Ljava/io/File;
    .end local v1    # "res":I
    .end local v4    # "sourceFile":Ljava/io/File;
    .end local v5    # "targetFile":Ljava/io/File;
    .end local p0    # "sourceDir":Ljava/io/File;
    .end local p1    # "targetDir":Ljava/io/File;
    .end local p2    # "prefix":Ljava/lang/String;
    throw v6
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_66} :catch_66

    .line 714
    .restart local v0    # "sourceFiles":[Ljava/io/File;
    .restart local v1    # "res":I
    .restart local v4    # "sourceFile":Ljava/io/File;
    .restart local v5    # "targetFile":Ljava/io/File;
    .restart local p0    # "sourceDir":Ljava/io/File;
    .restart local p1    # "targetDir":Ljava/io/File;
    .restart local p2    # "prefix":Ljava/lang/String;
    :catch_66
    move-exception v6

    .line 715
    .local v6, "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to migrate "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const/4 v1, -0x1

    .line 702
    .end local v4    # "sourceFile":Ljava/io/File;
    .end local v5    # "targetFile":Ljava/io/File;
    .end local v6    # "e":Ljava/io/IOException;
    :goto_88
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 719
    :cond_8b
    return v1
.end method

.method private notifyOnDeviceChangedListeners(I)V
    .registers 7
    .param p1, "deviceId"    # I

    .line 3331
    iget-object v0, p0, Landroid/app/ContextImpl;->mDeviceIdListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3332
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mDeviceIdChangeListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_22

    .line 3333
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;

    .line 3334
    .local v2, "delegate":Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;
    iget-object v3, v2, Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/app/ContextImpl$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, p1}, Landroid/app/ContextImpl$$ExternalSyntheticLambda0;-><init>(Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3336
    .end local v2    # "delegate":Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;
    goto :goto_b

    .line 3338
    :cond_22
    monitor-exit v0

    .line 3339
    return-void

    .line 3338
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private registerReceiverInternal(Landroid/content/BroadcastReceiver;ILandroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;I)Landroid/content/Intent;
    .registers 27
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "userId"    # I
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "broadcastPermission"    # Ljava/lang/String;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "context"    # Landroid/content/Context;
    .param p7, "flags"    # I

    .line 1895
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 1896
    .local v0, "rd":Landroid/content/IIntentReceiver;
    if-eqz p1, :cond_51

    .line 1897
    iget-object v2, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v2, :cond_2b

    if-eqz p6, :cond_2b

    .line 1898
    if-nez p5, :cond_15

    .line 1899
    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v8, v2

    .end local p5    # "scheduler":Landroid/os/Handler;
    .local v2, "scheduler":Landroid/os/Handler;
    goto :goto_17

    .line 1898
    .end local v2    # "scheduler":Landroid/os/Handler;
    .restart local p5    # "scheduler":Landroid/os/Handler;
    :cond_15
    move-object/from16 v8, p5

    .line 1901
    .end local p5    # "scheduler":Landroid/os/Handler;
    .local v8, "scheduler":Landroid/os/Handler;
    :goto_17
    iget-object v2, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v3, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1903
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v6

    const/4 v7, 0x1

    .line 1901
    move-object/from16 v3, p1

    move-object/from16 v4, p6

    move-object v5, v8

    invoke-virtual/range {v2 .. v7}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v0

    move-object v2, v0

    goto :goto_54

    .line 1905
    .end local v8    # "scheduler":Landroid/os/Handler;
    .restart local p5    # "scheduler":Landroid/os/Handler;
    :cond_2b
    if-nez p5, :cond_35

    .line 1906
    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v9, v2

    .end local p5    # "scheduler":Landroid/os/Handler;
    .restart local v2    # "scheduler":Landroid/os/Handler;
    goto :goto_37

    .line 1905
    .end local v2    # "scheduler":Landroid/os/Handler;
    .restart local p5    # "scheduler":Landroid/os/Handler;
    :cond_35
    move-object/from16 v9, p5

    .line 1908
    .end local p5    # "scheduler":Landroid/os/Handler;
    .local v9, "scheduler":Landroid/os/Handler;
    :goto_37
    new-instance v10, Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, v10

    move-object/from16 v4, p1

    move-object/from16 v5, p6

    move-object v6, v9

    invoke-direct/range {v2 .. v8}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/app/IApplicationThread;Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    .line 1909
    invoke-virtual {v10}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v0

    move-object v2, v0

    move-object v8, v9

    goto :goto_54

    .line 1896
    .end local v9    # "scheduler":Landroid/os/Handler;
    .restart local p5    # "scheduler":Landroid/os/Handler;
    :cond_51
    move-object/from16 v8, p5

    move-object v2, v0

    .line 1913
    .end local v0    # "rd":Landroid/content/IIntentReceiver;
    .end local p5    # "scheduler":Landroid/os/Handler;
    .local v2, "rd":Landroid/content/IIntentReceiver;
    .restart local v8    # "scheduler":Landroid/os/Handler;
    :goto_54
    :try_start_54
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v9

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1914
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v10

    iget-object v11, v1, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v12

    .line 1915
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->toReceiverId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1913
    move-object v14, v2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move/from16 v17, p2

    move/from16 v18, p7

    invoke-interface/range {v9 .. v18}, Landroid/app/IActivityManager;->registerReceiverWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v0

    .line 1917
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_89

    .line 1918
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 1921
    invoke-static {v0}, Landroid/app/ActivityThread;->isProtectedBroadcast(Landroid/content/Intent;)Z

    move-result v3

    .line 1922
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    .line 1921
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_89} :catch_8a

    .line 1924
    :cond_89
    return-object v0

    .line 1925
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_8a
    move-exception v0

    .line 1926
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method private resolveUserId(Landroid/net/Uri;)I
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 2522
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v0

    return v0
.end method

.method private setDisplay(Landroid/view/Display;)V
    .registers 3
    .param p1, "display"    # Landroid/view/Display;

    .line 2949
    iput-object p1, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    .line 2950
    if-eqz p1, :cond_b

    .line 2951
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/ContextImpl;->updateDeviceIdIfChanged(I)V

    .line 2953
    :cond_b
    return-void
.end method

.method static setFilePermissionsFromMode(Ljava/lang/String;II)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .param p2, "extraPermissions"    # I

    .line 3739
    or-int/lit16 v0, p2, 0x1b0

    .line 3742
    .local v0, "perms":I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_8

    .line 3743
    or-int/lit8 v0, v0, 0x4

    .line 3745
    :cond_8
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_e

    .line 3746
    or-int/lit8 v0, v0, 0x2

    .line 3752
    :cond_e
    const/4 v1, -0x1

    invoke-static {p0, v0, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 3753
    return-void
.end method

.method private startServiceCommon(Landroid/content/Intent;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 13
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "requireForeground"    # Z
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 1992
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1993
    .local v0, "aux":Landroid/content/ComponentName;
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_29

    sget-object v1, Landroid/sec/enterprise/kioskmode/KioskMode;->MINI_TASK_MANAGER_PKGNAME:Ljava/lang/String;

    .line 1994
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1995
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getKioskMode()Landroid/sec/enterprise/kioskmode/KioskMode;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/sec/enterprise/kioskmode/KioskMode;->isTaskManagerAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_29

    .line 1996
    const/4 v1, 0x0

    return-object v1

    .line 2000
    .end local v0    # "aux":Landroid/content/ComponentName;
    :cond_29
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->validateServiceIntent(Landroid/content/Intent;)V

    .line 2001
    invoke-virtual {p1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 2002
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 2003
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    .line 2004
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 2005
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 2002
    move-object v3, p1

    move v5, p2

    invoke-interface/range {v1 .. v8}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 2006
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_ea

    .line 2007
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5f} :catch_10b

    const-string v2, "Not allowed to start service "

    if-nez v1, :cond_c5

    .line 2011
    :try_start_63
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "!!"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_6d} :catch_10b

    const-string v3, ": "

    if-nez v1, :cond_a0

    .line 2015
    :try_start_71
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "?"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7e

    goto :goto_ea

    .line 2016
    :cond_7e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2017
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2016
    invoke-static {p2, v1}, Landroid/app/ServiceStartNotAllowedException;->newInstance(ZLjava/lang/String;)Landroid/app/ServiceStartNotAllowedException;

    move-result-object v1

    .end local p0    # "this":Landroid/app/ContextImpl;
    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "requireForeground":Z
    .end local p3    # "user":Landroid/os/UserHandle;
    throw v1

    .line 2012
    .restart local p0    # "this":Landroid/app/ContextImpl;
    .restart local p1    # "service":Landroid/content/Intent;
    .restart local p2    # "requireForeground":Z
    .restart local p3    # "user":Landroid/os/UserHandle;
    :cond_a0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to start service "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2014
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/ContextImpl;
    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "requireForeground":Z
    .end local p3    # "user":Landroid/os/UserHandle;
    throw v1

    .line 2008
    .restart local p0    # "this":Landroid/app/ContextImpl;
    .restart local p1    # "service":Landroid/content/Intent;
    .restart local p2    # "requireForeground":Z
    .restart local p3    # "user":Landroid/os/UserHandle;
    :cond_c5
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " without permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2010
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/ContextImpl;
    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "requireForeground":Z
    .end local p3    # "user":Landroid/os/UserHandle;
    throw v1

    .line 2021
    .restart local p0    # "this":Landroid/app/ContextImpl;
    .restart local p1    # "service":Landroid/content/Intent;
    .restart local p2    # "requireForeground":Z
    .restart local p3    # "user":Landroid/os/UserHandle;
    :cond_ea
    :goto_ea
    if-eqz v0, :cond_10a

    if-eqz p2, :cond_10a

    .line 2022
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 2023
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/StackTrace;

    const-string v3, "Last startServiceCommon() call for this service was made here"

    invoke-direct {v2, v3}, Landroid/app/StackTrace;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroid/app/Service;->setStartForegroundServiceStackTrace(Ljava/lang/String;Landroid/app/StackTrace;)V
    :try_end_10a
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_10a} :catch_10b

    .line 2028
    :cond_10a
    return-object v0

    .line 2029
    .end local v0    # "cn":Landroid/content/ComponentName;
    :catch_10b
    move-exception v0

    .line 2030
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private stopServiceCommon(Landroid/content/Intent;Landroid/os/UserHandle;)Z
    .registers 7
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 2042
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->validateServiceIntent(Landroid/content/Intent;)V

    .line 2043
    invoke-virtual {p1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 2044
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 2045
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    .line 2046
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 2044
    invoke-interface {v0, v1, p1, v2, v3}, Landroid/app/IActivityManager;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    .line 2047
    .local v0, "res":I
    if-ltz v0, :cond_28

    .line 2051
    if-eqz v0, :cond_26

    const/4 v1, 0x1

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    return v1

    .line 2048
    :cond_28
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allowed to stop service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/ContextImpl;
    .end local p1    # "service":Landroid/content/Intent;
    .end local p2    # "user":Landroid/os/UserHandle;
    throw v1
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_41} :catch_41

    .line 2052
    .end local v0    # "res":I
    .restart local p0    # "this":Landroid/app/ContextImpl;
    .restart local p1    # "service":Landroid/content/Intent;
    .restart local p2    # "user":Landroid/os/UserHandle;
    :catch_41
    move-exception v0

    .line 2053
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private updateDeviceIdIfChanged(I)V
    .registers 5
    .param p1, "displayId"    # I

    .line 3244
    iget-boolean v0, p0, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    if-eqz v0, :cond_5

    .line 3245
    return-void

    .line 3247
    :cond_5
    const-class v0, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {p0, v0}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/VirtualDeviceManager;

    .line 3248
    .local v0, "vdm":Landroid/companion/virtual/VirtualDeviceManager;
    if-eqz v0, :cond_1c

    .line 3249
    invoke-virtual {v0, p1}, Landroid/companion/virtual/VirtualDeviceManager;->getDeviceIdForDisplayId(I)I

    move-result v1

    .line 3250
    .local v1, "deviceId":I
    iget v2, p0, Landroid/app/ContextImpl;->mDeviceId:I

    if-eq v1, v2, :cond_1c

    .line 3251
    iput v1, p0, Landroid/app/ContextImpl;->mDeviceId:I

    .line 3252
    invoke-direct {p0, v1}, Landroid/app/ContextImpl;->notifyOnDeviceChangedListeners(I)V

    .line 3255
    .end local v1    # "deviceId":I
    :cond_1c
    return-void
.end method

.method private uriModeFlagToString(I)Ljava/lang/String;
    .registers 6
    .param p1, "uriModeFlags"    # I

    .line 2586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2587
    .local v0, "builder":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_f

    .line 2588
    const-string/jumbo v1, "read and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2590
    :cond_f
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_19

    .line 2591
    const-string/jumbo v1, "write and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2593
    :cond_19
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_23

    .line 2594
    const-string/jumbo v1, "persistable and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2596
    :cond_23
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_2d

    .line 2597
    const-string/jumbo v1, "prefix and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2600
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_41

    .line 2601
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2602
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2604
    :cond_41
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown permission mode flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private validateServiceIntent(Landroid/content/Intent;)V
    .registers 5
    .param p1, "service"    # Landroid/content/Intent;

    .line 1946
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_58

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_58

    .line 1947
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_3f

    .line 1952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Implicit intents with startService are not safe: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1953
    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/os/Debug;->getCallers(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1952
    const-string v1, "ContextImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 1948
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service Intent must be explicit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1950
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1956
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_58
    :goto_58
    return-void
.end method

.method private warnIfCallingFromSystemProcess()V
    .registers 3

    .line 2670
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_25

    .line 2671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling a method in the system process without a qualified user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2672
    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2671
    const-string v1, "ContextImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    :cond_25
    return-void
.end method


# virtual methods
.method public bindIsolatedService(Landroid/content/Intent;ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .registers 15
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "instanceName"    # Ljava/lang/String;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "conn"    # Landroid/content/ServiceConnection;

    .line 2089
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 2090
    if-eqz p3, :cond_18

    .line 2093
    invoke-static {p2}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v3

    const/4 v6, 0x0

    .line 2094
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    .line 2093
    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;JLjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z

    move-result v0

    return v0

    .line 2091
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null instanceName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bindIsolatedService(Landroid/content/Intent;Landroid/content/Context$BindServiceFlags;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .registers 15
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "flags"    # Landroid/content/Context$BindServiceFlags;
    .param p3, "instanceName"    # Ljava/lang/String;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "conn"    # Landroid/content/ServiceConnection;

    .line 2100
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 2101
    if-eqz p3, :cond_18

    .line 2104
    invoke-virtual {p2}, Landroid/content/Context$BindServiceFlags;->getValue()J

    move-result-wide v3

    const/4 v6, 0x0

    .line 2105
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    .line 2104
    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;JLjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z

    move-result v0

    return v0

    .line 2102
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null instanceName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .registers 14
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "conn"    # Landroid/content/ServiceConnection;

    .line 2075
    invoke-static {p2}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2076
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    .line 2075
    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v7, p3

    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;JLjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public bindService(Landroid/content/Intent;Landroid/content/Context$BindServiceFlags;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .registers 14
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "flags"    # Landroid/content/Context$BindServiceFlags;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "conn"    # Landroid/content/ServiceConnection;

    .line 2082
    invoke-virtual {p2}, Landroid/content/Context$BindServiceFlags;->getValue()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2083
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    .line 2082
    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v7, p3

    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;JLjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .registers 13
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    .line 2059
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 2060
    invoke-static {p3}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v3

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 2061
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    .line 2060
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;JLjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/content/Context$BindServiceFlags;)Z
    .registers 13
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # Landroid/content/Context$BindServiceFlags;

    .line 2067
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 2068
    invoke-virtual {p3}, Landroid/content/Context$BindServiceFlags;->getValue()J

    move-result-wide v3

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x0

    .line 2069
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    .line 2068
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;JLjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z
    .registers 15
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "user"    # Landroid/os/UserHandle;

    .line 2126
    if-eqz p4, :cond_12

    .line 2129
    invoke-static {p3}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;JLjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z

    move-result v0

    return v0

    .line 2127
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "handler must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .registers 14
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 2111
    invoke-static {p3}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v3

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 2112
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x0

    .line 2111
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;JLjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/content/Context$BindServiceFlags;Landroid/os/Handler;Landroid/os/UserHandle;)Z
    .registers 15
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # Landroid/content/Context$BindServiceFlags;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "user"    # Landroid/os/UserHandle;

    .line 2136
    if-eqz p4, :cond_12

    .line 2139
    invoke-virtual {p3}, Landroid/content/Context$BindServiceFlags;->getValue()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;JLjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z

    move-result v0

    return v0

    .line 2137
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "handler must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/content/Context$BindServiceFlags;Landroid/os/UserHandle;)Z
    .registers 14
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # Landroid/content/Context$BindServiceFlags;
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 2118
    invoke-virtual {p3}, Landroid/content/Context$BindServiceFlags;->getValue()J

    move-result-wide v3

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 2119
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x0

    .line 2118
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/app/ContextImpl;->bindServiceCommon(Landroid/content/Intent;Landroid/content/ServiceConnection;JLjava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public canLoadUnsafeResources()Z
    .registers 3

    .line 3157
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    .line 3158
    return v1

    .line 3160
    :cond_10
    iget v0, p0, Landroid/app/ContextImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return v1
.end method

.method public checkCallingOrSelfPermission(Ljava/lang/String;)I
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;

    .line 2389
    if-eqz p1, :cond_f

    .line 2393
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2394
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2393
    invoke-virtual {p0, p1, v0, v1}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0

    .line 2390
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "permission is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    .line 2549
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2550
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2549
    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v0

    return v0
.end method

.method public checkCallingOrSelfUriPermissions(Ljava/util/List;I)[I
    .registers 5
    .param p2, "modeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;I)[I"
        }
    .end annotation

    .line 2556
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/app/ContextImpl;->checkUriPermissions(Ljava/util/List;III)[I

    move-result-object v0

    return-object v0
.end method

.method public checkCallingPermission(Ljava/lang/String;)I
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;

    .line 2376
    if-eqz p1, :cond_17

    .line 2380
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2381
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_15

    .line 2382
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    return v1

    .line 2384
    :cond_15
    const/4 v1, -0x1

    return v1

    .line 2377
    .end local v0    # "pid":I
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "permission is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkCallingUriPermission(Landroid/net/Uri;I)I
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    .line 2527
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2528
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_14

    .line 2529
    nop

    .line 2530
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2529
    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v1

    return v1

    .line 2532
    :cond_14
    const/4 v1, -0x1

    return v1
.end method

.method public checkCallingUriPermissions(Ljava/util/List;I)[I
    .registers 6
    .param p2, "modeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;I)[I"
        }
    .end annotation

    .line 2538
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2539
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_13

    .line 2540
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/app/ContextImpl;->checkUriPermissions(Ljava/util/List;III)[I

    move-result-object v1

    return-object v1

    .line 2542
    :cond_13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 2543
    .local v1, "res":[I
    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 2544
    return-object v1
.end method

.method public checkPermission(Ljava/lang/String;II)I
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 2343
    if-eqz p1, :cond_3b

    .line 2346
    iget-object v0, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    invoke-virtual {v0, p1}, Landroid/content/ContextParams;->isRenouncedPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2347
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p2, v0, :cond_36

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p3, v0, :cond_36

    .line 2348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Treating renounced permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " as denied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    const/4 v0, -0x1

    return v0

    .line 2351
    :cond_36
    invoke-static {p1, p2, p3}, Landroid/permission/PermissionManager;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0

    .line 2344
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "permission is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkPermission(Ljava/lang/String;IILandroid/os/IBinder;)I
    .registers 7
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "callerToken"    # Landroid/os/IBinder;

    .line 2357
    if-eqz p1, :cond_3b

    .line 2360
    iget-object v0, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    invoke-virtual {v0, p1}, Landroid/content/ContextParams;->isRenouncedPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2361
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p2, v0, :cond_36

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p3, v0, :cond_36

    .line 2362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Treating renounced permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " as denied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    const/4 v0, -0x1

    return v0

    .line 2365
    :cond_36
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0

    .line 2358
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "permission is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkSelfPermission(Ljava/lang/String;)I
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;

    .line 2399
    if-eqz p1, :cond_37

    .line 2402
    iget-object v0, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    invoke-virtual {v0, p1}, Landroid/content/ContextParams;->isRenouncedPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Treating renounced permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " as denied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    const/4 v0, -0x1

    return v0

    .line 2407
    :cond_2a
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0

    .line 2400
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "permission is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkUriPermission(Landroid/net/Uri;III)I
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I

    .line 2489
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2490
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 2491
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->resolveUserId(Landroid/net/Uri;)I

    move-result v5

    const/4 v6, 0x0

    .line 2489
    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    return v0

    .line 2492
    :catch_15
    move-exception v0

    .line 2493
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public checkUriPermission(Landroid/net/Uri;IIILandroid/os/IBinder;)I
    .registers 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .param p5, "callerToken"    # Landroid/os/IBinder;

    .line 2513
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2514
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 2515
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->resolveUserId(Landroid/net/Uri;)I

    move-result v5

    .line 2513
    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    return v0

    .line 2516
    :catch_15
    move-exception v0

    .line 2517
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I
    .registers 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "readPermission"    # Ljava/lang/String;
    .param p3, "writePermission"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "modeFlags"    # I

    .line 2567
    and-int/lit8 v0, p6, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 2568
    if-eqz p2, :cond_d

    .line 2569
    invoke-virtual {p0, p2, p4, p5}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_e

    .line 2571
    :cond_d
    return v1

    .line 2574
    :cond_e
    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_1b

    .line 2575
    if-eqz p3, :cond_1a

    .line 2576
    invoke-virtual {p0, p3, p4, p5}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1b

    .line 2578
    :cond_1a
    return v1

    .line 2581
    :cond_1b
    if-eqz p1, :cond_22

    invoke-virtual {p0, p1, p4, p5, p6}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v0

    goto :goto_23

    .line 2582
    :cond_22
    const/4 v0, -0x1

    .line 2581
    :goto_23
    return v0
.end method

.method public checkUriPermissions(Ljava/util/List;III)[I
    .registers 12
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;III)[I"
        }
    .end annotation

    .line 2502
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2503
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v5

    const/4 v6, 0x0

    .line 2502
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->checkUriPermissions(Ljava/util/List;IIIILandroid/os/IBinder;)[I

    move-result-object v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    .line 2504
    :catch_12
    move-exception v0

    .line 2505
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public clearWallpaper()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1135
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->clear()V

    .line 1136
    return-void
.end method

.method public closeSystemDialogs()V
    .registers 4

    .line 3813
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3814
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 3815
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    .line 3816
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v1

    .line 3817
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v1

    .line 3818
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 3819
    .local v1, "options":Landroid/os/Bundle;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/app/ContextImpl;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3820
    return-void
.end method

.method public createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    .registers 20
    .param p1, "application"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2733
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    iget-object v0, v13, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v1, v13, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    or-int v2, p2, v2

    invoke-virtual {v0, v14, v1, v2}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v15

    .line 2735
    .local v15, "pi":Landroid/app/LoadedApk;
    if-eqz v15, :cond_6b

    .line 2736
    new-instance v16, Landroid/app/ContextImpl;

    iget-object v2, v13, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    sget-object v4, Landroid/content/ContextParams;->EMPTY:Landroid/content/ContextParams;

    iget-object v0, v13, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2737
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v13, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2738
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, v13, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    new-instance v9, Landroid/os/UserHandle;

    iget v0, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2739
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {v9, v0}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v3, v15

    move/from16 v10, p2

    invoke-direct/range {v0 .. v12}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;)V

    .line 2742
    .local v0, "c":Landroid/app/ContextImpl;
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getDisplayId()I

    move-result v1

    .line 2743
    .local v1, "displayId":I
    iget-boolean v2, v13, Landroid/app/ContextImpl;->mForceDisplayOverrideInResources:Z

    if-eqz v2, :cond_4f

    .line 2744
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_50

    :cond_4f
    const/4 v2, 0x0

    :goto_50
    move-object v6, v2

    .line 2746
    .local v6, "overrideDisplayId":Ljava/lang/Integer;
    iget-object v3, v13, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 2747
    invoke-virtual {v13, v1}, Landroid/app/ContextImpl;->getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v8

    const/4 v9, 0x0

    .line 2746
    move-object v4, v15

    invoke-static/range {v3 .. v9}, Landroid/app/ContextImpl;->createResources(Landroid/os/IBinder;Landroid/app/LoadedApk;Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 2748
    iget-object v2, v0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    if-eqz v2, :cond_6b

    .line 2749
    return-object v0

    .line 2753
    .end local v0    # "c":Landroid/app/ContextImpl;
    .end local v1    # "displayId":I
    .end local v6    # "overrideDisplayId":Ljava/lang/Integer;
    :cond_6b
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createAttributionContext(Ljava/lang/String;)Landroid/content/Context;
    .registers 4
    .param p1, "attributionTag"    # Ljava/lang/String;

    .line 3116
    new-instance v0, Landroid/content/ContextParams$Builder;

    iget-object v1, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    invoke-direct {v0, v1}, Landroid/content/ContextParams$Builder;-><init>(Landroid/content/ContextParams;)V

    .line 3117
    invoke-virtual {v0, p1}, Landroid/content/ContextParams$Builder;->setAttributionTag(Ljava/lang/String;)Landroid/content/ContextParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextParams$Builder;->build()Landroid/content/ContextParams;

    move-result-object v0

    .line 3116
    invoke-virtual {p0, v0}, Landroid/app/ContextImpl;->createContext(Landroid/content/ContextParams;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
    .registers 19
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;

    .line 2865
    move-object/from16 v13, p0

    move-object/from16 v0, p1

    if-eqz v0, :cond_a6

    .line 2869
    iget-boolean v1, v13, Landroid/app/ContextImpl;->mForceDisplayOverrideInResources:Z

    const/4 v14, 0x1

    if-eqz v1, :cond_25

    .line 2872
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 2873
    .local v1, "displayAdjustedConfig":Landroid/content/res/Configuration;
    iget-object v2, v13, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/DisplayAdjustments;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    const/high16 v3, 0x20000000

    invoke-virtual {v1, v2, v3, v14}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;II)V

    .line 2875
    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 2876
    move-object v0, v1

    move-object v15, v0

    .end local p1    # "overrideConfiguration":Landroid/content/res/Configuration;
    .local v0, "overrideConfiguration":Landroid/content/res/Configuration;
    goto :goto_26

    .line 2869
    .end local v0    # "overrideConfiguration":Landroid/content/res/Configuration;
    .end local v1    # "displayAdjustedConfig":Landroid/content/res/Configuration;
    .restart local p1    # "overrideConfiguration":Landroid/content/res/Configuration;
    :cond_25
    move-object v15, v0

    .line 2879
    .end local p1    # "overrideConfiguration":Landroid/content/res/Configuration;
    .local v15, "overrideConfiguration":Landroid/content/res/Configuration;
    :goto_26
    new-instance v16, Landroid/app/ContextImpl;

    iget-object v2, v13, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, v13, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v4, v13, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    iget-object v0, v13, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2880
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v13, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2881
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    iget-object v7, v13, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    iget-object v8, v13, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v9, v13, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    iget v10, v13, Landroid/app/ContextImpl;->mFlags:I

    iget-object v11, v13, Landroid/app/ContextImpl;->mClassLoader:Ljava/lang/ClassLoader;

    const/4 v12, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v12}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;)V

    .line 2883
    .local v0, "context":Landroid/app/ContextImpl;
    iput-boolean v14, v0, Landroid/app/ContextImpl;->mIsConfigurationBasedContext:Z

    .line 2885
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getDisplayId()I

    move-result v1

    .line 2886
    .local v1, "displayId":I
    iget-boolean v2, v13, Landroid/app/ContextImpl;->mForceDisplayOverrideInResources:Z

    if-eqz v2, :cond_5b

    .line 2887
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_5c

    :cond_5b
    const/4 v2, 0x0

    :goto_5c
    move-object v5, v2

    .line 2889
    .local v5, "overrideDisplayId":Ljava/lang/Integer;
    iget-boolean v2, v13, Landroid/app/ContextImpl;->mForceDisplayOverrideInResources:Z

    if-nez v2, :cond_88

    .line 2890
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getDisplayId()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_69

    goto :goto_88

    .line 2893
    :cond_69
    iget-object v2, v13, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v3, v13, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v4, v13, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    .line 2894
    invoke-virtual {v13, v1}, Landroid/app/ContextImpl;->getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v7

    iget-object v6, v13, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    .line 2895
    invoke-virtual {v6}, Landroid/content/res/Resources;->getLoaders()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 2893
    move-object v6, v15

    invoke-static/range {v2 .. v10}, Landroid/app/ContextImpl;->createResources(Landroid/os/IBinder;Landroid/app/LoadedApk;Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/List;ZZ)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    goto :goto_a5

    .line 2898
    :cond_88
    :goto_88
    iget-object v6, v13, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v7, v13, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v8, v13, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    .line 2901
    invoke-virtual {v13, v1}, Landroid/app/ContextImpl;->getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v11

    iget-object v2, v13, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    .line 2902
    invoke-virtual {v2}, Landroid/content/res/Resources;->getLoaders()Ljava/util/List;

    move-result-object v12

    .line 2899
    move-object v9, v5

    move-object v10, v15

    invoke-static/range {v6 .. v12}, Landroid/app/ContextImpl;->createResources(Landroid/os/IBinder;Landroid/app/LoadedApk;Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v2

    .line 2898
    invoke-virtual {v0, v2}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 2904
    :goto_a5
    return-object v0

    .line 2866
    .end local v0    # "context":Landroid/app/ContextImpl;
    .end local v1    # "displayId":I
    .end local v5    # "overrideDisplayId":Ljava/lang/Integer;
    .end local v15    # "overrideConfiguration":Landroid/content/res/Configuration;
    .restart local p1    # "overrideConfiguration":Landroid/content/res/Configuration;
    :cond_a6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "overrideConfiguration must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createContext(Landroid/content/ContextParams;)Landroid/content/Context;
    .registers 16
    .param p1, "contextParams"    # Landroid/content/ContextParams;

    .line 3109
    new-instance v13, Landroid/app/ContextImpl;

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 3110
    invoke-virtual {p1}, Landroid/content/ContextParams;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/ContextParams;->getNextAttributionSource()Landroid/content/AttributionSource;

    move-result-object v6

    iget-object v7, p0, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    iget-object v8, p0, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v9, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    iget v10, p0, Landroid/app/ContextImpl;->mFlags:I

    iget-object v11, p0, Landroid/app/ContextImpl;->mClassLoader:Ljava/lang/ClassLoader;

    const/4 v12, 0x0

    move-object v0, v13

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v12}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;)V

    .line 3109
    return-object v13
.end method

.method public createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;
    .registers 7
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "flags"    # I

    .line 2826
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p1}, Landroid/app/ContextImpl;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 2827
    :catch_9
    move-exception v0

    .line 2828
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Own package not found for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2829
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createContextForSdkInSandbox(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    .registers 7
    .param p1, "sdkInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2760
    invoke-static {}, Landroid/os/Process;->isSdkSandbox()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2764
    invoke-virtual {p0, p1, p2}, Landroid/app/ContextImpl;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/ContextImpl;

    .line 2767
    .local v0, "ctx":Landroid/app/ContextImpl;
    iget-object v1, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/LoadedApk;->makeApplicationInner(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    .line 2770
    return-object v0

    .line 2761
    .end local v0    # "ctx":Landroid/app/ContextImpl;
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "API can only be called from SdkSandbox process"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createContextForSplit(Ljava/lang/String;)Landroid/content/Context;
    .registers 20
    .param p1, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2835
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    iget-object v0, v13, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->requestsIsolatedSplitLoading()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2837
    return-object v13

    .line 2840
    :cond_11
    iget-object v0, v13, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0, v14}, Landroid/app/LoadedApk;->getSplitClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v15

    .line 2841
    .local v15, "classLoader":Ljava/lang/ClassLoader;
    iget-object v0, v13, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0, v14}, Landroid/app/LoadedApk;->getSplitPaths(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 2843
    .local v16, "paths":[Ljava/lang/String;
    new-instance v17, Landroid/app/ContextImpl;

    iget-object v2, v13, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, v13, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v4, v13, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    iget-object v0, v13, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2844
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v13, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2845
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    iget-object v8, v13, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v9, v13, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    iget v10, v13, Landroid/app/ContextImpl;->mFlags:I

    const/4 v12, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object v11, v15

    invoke-direct/range {v0 .. v12}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;)V

    .line 2848
    .local v0, "context":Landroid/app/ContextImpl;
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v1

    iget-object v2, v13, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v3, v13, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 2850
    invoke-virtual {v3}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v13, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 2852
    invoke-virtual {v4}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v5

    iget-object v4, v13, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 2853
    invoke-virtual {v4}, Landroid/app/LoadedApk;->getOverlayPaths()[Ljava/lang/String;

    move-result-object v6

    iget-object v4, v13, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 2854
    invoke-virtual {v4}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 2855
    iget-boolean v4, v13, Landroid/app/ContextImpl;->mForceDisplayOverrideInResources:Z

    if-eqz v4, :cond_6f

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getDisplayId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_70

    :cond_6f
    const/4 v4, 0x0

    :goto_70
    move-object v8, v4

    const/4 v9, 0x0

    iget-object v4, v13, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 2857
    invoke-virtual {v4}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v10

    iget-object v4, v13, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    .line 2859
    invoke-virtual {v4}, Landroid/content/res/Resources;->getLoaders()Ljava/util/List;

    move-result-object v12

    .line 2848
    move-object/from16 v4, v16

    move-object v11, v15

    invoke-virtual/range {v1 .. v12}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 2860
    return-object v0
.end method

.method public createCredentialProtectedStorageContext()Landroid/content/Context;
    .registers 16

    .line 3132
    iget v0, p0, Landroid/app/ContextImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x9

    or-int/lit8 v0, v0, 0x10

    .line 3134
    .local v0, "flags":I
    new-instance v14, Landroid/app/ContextImpl;

    iget-object v3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v4, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v5, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    iget-object v1, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 3135
    invoke-virtual {v1}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 3136
    invoke-virtual {v1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v7

    iget-object v8, p0, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    iget-object v9, p0, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v10, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    iget-object v12, p0, Landroid/app/ContextImpl;->mClassLoader:Ljava/lang/ClassLoader;

    const/4 v13, 0x0

    move-object v1, v14

    move-object v2, p0

    move v11, v0

    invoke-direct/range {v1 .. v13}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;)V

    .line 3134
    return-object v14
.end method

.method public createDeviceContext(I)Landroid/content/Context;
    .registers 18
    .param p1, "deviceId"    # I

    .line 2957
    move-object/from16 v13, p0

    move/from16 v14, p1

    if-eqz v14, :cond_30

    .line 2958
    const-class v0, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v13, v0}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/VirtualDeviceManager;

    .line 2959
    .local v0, "vdm":Landroid/companion/virtual/VirtualDeviceManager;
    if-eqz v0, :cond_17

    invoke-virtual {v0, v14}, Landroid/companion/virtual/VirtualDeviceManager;->isValidVirtualDeviceId(I)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_30

    .line 2960
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a valid ID of the default device or any virtual device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2965
    .end local v0    # "vdm":Landroid/companion/virtual/VirtualDeviceManager;
    :cond_30
    :goto_30
    new-instance v15, Landroid/app/ContextImpl;

    iget-object v2, v13, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, v13, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v4, v13, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    iget-object v0, v13, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2966
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v13, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2967
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    iget-object v7, v13, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    iget-object v8, v13, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v9, v13, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    iget v10, v13, Landroid/app/ContextImpl;->mFlags:I

    iget-object v11, v13, Landroid/app/ContextImpl;->mClassLoader:Ljava/lang/ClassLoader;

    const/4 v12, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v12}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;)V

    .line 2970
    .local v0, "context":Landroid/app/ContextImpl;
    iput v14, v0, Landroid/app/ContextImpl;->mDeviceId:I

    .line 2971
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    .line 2972
    return-object v0
.end method

.method public createDeviceProtectedStorageContext()Landroid/content/Context;
    .registers 16

    .line 3122
    iget v0, p0, Landroid/app/ContextImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    or-int/lit8 v0, v0, 0x8

    .line 3124
    .local v0, "flags":I
    new-instance v14, Landroid/app/ContextImpl;

    iget-object v3, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v4, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v5, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    iget-object v1, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 3125
    invoke-virtual {v1}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 3126
    invoke-virtual {v1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v7

    iget-object v8, p0, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    iget-object v9, p0, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v10, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    iget-object v12, p0, Landroid/app/ContextImpl;->mClassLoader:Ljava/lang/ClassLoader;

    const/4 v13, 0x0

    move-object v1, v14

    move-object v2, p0

    move v11, v0

    invoke-direct/range {v1 .. v13}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;)V

    .line 3124
    return-object v14
.end method

.method public createDisplayContext(Landroid/view/Display;)Landroid/content/Context;
    .registers 16
    .param p1, "display"    # Landroid/view/Display;

    .line 2909
    if-eqz p1, :cond_71

    .line 2913
    new-instance v13, Landroid/app/ContextImpl;

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v4, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    iget-object v0, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2914
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2915
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    iget-object v7, p0, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    iget-object v8, p0, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v9, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    iget v10, p0, Landroid/app/ContextImpl;->mFlags:I

    iget-object v11, p0, Landroid/app/ContextImpl;->mClassLoader:Ljava/lang/ClassLoader;

    const/4 v12, 0x0

    move-object v0, v13

    move-object v1, p0

    invoke-direct/range {v0 .. v12}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;)V

    .line 2918
    .local v0, "context":Landroid/app/ContextImpl;
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 2921
    .local v1, "displayId":I
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 2922
    .local v2, "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/DisplayAdjustments;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    const/high16 v4, 0x20000000

    const/4 v12, 0x1

    invoke-virtual {v2, v3, v4, v12}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;II)V

    .line 2925
    iget-object v3, p0, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v5, p0, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2926
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v8

    iget-object v7, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    .line 2927
    invoke-virtual {v7}, Landroid/content/res/Resources;->getLoaders()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 2925
    move-object v7, v2

    invoke-static/range {v3 .. v11}, Landroid/app/ContextImpl;->createResources(Landroid/os/IBinder;Landroid/app/LoadedApk;Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/List;ZZ)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 2932
    invoke-direct {v0, p1}, Landroid/app/ContextImpl;->setDisplay(Landroid/view/Display;)V

    .line 2935
    iget v3, p0, Landroid/app/ContextImpl;->mContextType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_68

    .line 2936
    goto :goto_69

    :cond_68
    move v4, v12

    :goto_69
    iput v4, v0, Landroid/app/ContextImpl;->mContextType:I

    .line 2940
    iput-boolean v12, v0, Landroid/app/ContextImpl;->mForceDisplayOverrideInResources:Z

    .line 2944
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/app/ContextImpl;->mIsConfigurationBasedContext:Z

    .line 2945
    return-object v0

    .line 2910
    .end local v0    # "context":Landroid/app/ContextImpl;
    .end local v1    # "displayId":I
    .end local v2    # "overrideConfig":Landroid/content/res/Configuration;
    :cond_71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "display must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2776
    iget-object v0, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ContextImpl;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    .registers 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2782
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    const-string/jumbo v0, "system"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bd

    const-string v0, "android"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto/16 :goto_bd

    .line 2791
    :cond_17
    const/4 v0, 0x0

    .line 2793
    .local v0, "pi":Landroid/app/LoadedApk;
    const-string v1, "com.android.systemui"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_3d

    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 2794
    iget-object v1, v13, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, v13, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    or-int v2, p2, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v14, v3, v2, v4}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;

    move-result-object v0

    move-object v15, v0

    goto :goto_50

    .line 2798
    :cond_3d
    iget-object v1, v13, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, v13, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    or-int v2, p2, v2

    .line 2799
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 2798
    invoke-virtual {v1, v14, v3, v2, v4}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;

    move-result-object v0

    move-object v15, v0

    .line 2801
    .end local v0    # "pi":Landroid/app/LoadedApk;
    .local v15, "pi":Landroid/app/LoadedApk;
    :goto_50
    if-eqz v15, :cond_9e

    .line 2802
    new-instance v16, Landroid/app/ContextImpl;

    iget-object v2, v13, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v4, v13, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    iget-object v0, v13, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2803
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v13, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2804
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, v13, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v3, v15

    move-object/from16 v9, p3

    move/from16 v10, p2

    invoke-direct/range {v0 .. v12}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;)V

    .line 2807
    .local v0, "c":Landroid/app/ContextImpl;
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getDisplayId()I

    move-result v8

    .line 2808
    .local v8, "displayId":I
    iget-boolean v1, v13, Landroid/app/ContextImpl;->mForceDisplayOverrideInResources:Z

    if-eqz v1, :cond_82

    .line 2809
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_83

    :cond_82
    const/4 v1, 0x0

    :goto_83
    move-object v4, v1

    .line 2811
    .local v4, "overrideDisplayId":Ljava/lang/Integer;
    iget-object v1, v13, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 2812
    invoke-virtual {v13, v8}, Landroid/app/ContextImpl;->getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v6

    const/4 v7, 0x0

    .line 2811
    move-object v2, v15

    invoke-static/range {v1 .. v7}, Landroid/app/ContextImpl;->createResources(Landroid/os/IBinder;Landroid/app/LoadedApk;Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 2813
    iget-object v1, v0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    if-eqz v1, :cond_9e

    .line 2814
    return-object v0

    .line 2819
    .end local v0    # "c":Landroid/app/ContextImpl;
    .end local v4    # "overrideDisplayId":Ljava/lang/Integer;
    .end local v8    # "displayId":I
    :cond_9e
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2785
    .end local v15    # "pi":Landroid/app/LoadedApk;
    :cond_bd
    :goto_bd
    new-instance v15, Landroid/app/ContextImpl;

    iget-object v2, v13, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, v13, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v4, v13, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    iget-object v0, v13, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2786
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v13, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2787
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, v13, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v9, p3

    move/from16 v10, p2

    invoke-direct/range {v0 .. v12}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;)V

    .line 2785
    return-object v15
.end method

.method public createTokenContext(Landroid/os/IBinder;Landroid/view/Display;)Landroid/content/Context;
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "display"    # Landroid/view/Display;

    .line 3039
    if-eqz p2, :cond_b

    .line 3042
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ContextImpl;->createWindowContextBase(Landroid/os/IBinder;I)Landroid/app/ContextImpl;

    move-result-object v0

    return-object v0

    .line 3040
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Display must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;
    .registers 3

    .line 210
    invoke-virtual {p0, p1, p2}, Landroid/app/ContextImpl;->createWindowContext(ILandroid/os/Bundle;)Landroid/window/WindowContext;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;
    .registers 4

    .line 210
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ContextImpl;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/window/WindowContext;

    move-result-object p1

    return-object p1
.end method

.method public createWindowContext(ILandroid/os/Bundle;)Landroid/window/WindowContext;
    .registers 5
    .param p1, "type"    # I
    .param p2, "options"    # Landroid/os/Bundle;

    .line 2979
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2985
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Landroid/app/ContextImpl;->createWindowContextInternal(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/window/WindowContext;

    move-result-object v0

    return-object v0

    .line 2980
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please call this API with context associated with a display instance, such as Activity or context created via Context#createDisplayContext(Display), or try to invoke Context#createWindowContext(Display, int, Bundle)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/window/WindowContext;
    .registers 6
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "type"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 2992
    if-eqz p1, :cond_7

    .line 2995
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ContextImpl;->createWindowContextInternal(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/window/WindowContext;

    move-result-object v0

    return-object v0

    .line 2993
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Display must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method createWindowContextBase(Landroid/os/IBinder;I)Landroid/app/ContextImpl;
    .registers 18
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I

    .line 3057
    move-object v13, p0

    new-instance v14, Landroid/app/ContextImpl;

    iget-object v2, v13, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    iget-object v3, v13, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v4, v13, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    iget-object v0, v13, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 3058
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v13, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 3059
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    iget-object v7, v13, Landroid/app/ContextImpl;->mSplitName:Ljava/lang/String;

    iget-object v9, v13, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    iget v10, v13, Landroid/app/ContextImpl;->mFlags:I

    iget-object v11, v13, Landroid/app/ContextImpl;->mClassLoader:Ljava/lang/ClassLoader;

    const/4 v12, 0x0

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v12}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/ContextParams;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/UserHandle;ILjava/lang/ClassLoader;Ljava/lang/String;)V

    .line 3063
    .local v0, "baseContext":Landroid/app/ContextImpl;
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/app/ContextImpl;->mForceDisplayOverrideInResources:Z

    .line 3064
    const/4 v1, 0x3

    iput v1, v0, Landroid/app/ContextImpl;->mContextType:I

    .line 3066
    invoke-static {v0}, Landroid/app/ContextImpl;->createWindowContextResources(Landroid/app/ContextImpl;)Landroid/content/res/Resources;

    move-result-object v1

    .line 3067
    .local v1, "windowContextResources":Landroid/content/res/Resources;
    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->setResources(Landroid/content/res/Resources;)V

    .line 3070
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v2

    move/from16 v3, p2

    invoke-virtual {v2, v3, v1}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/ContextImpl;->setDisplay(Landroid/view/Display;)V

    .line 3073
    return-object v0
.end method

.method public databaseList()[Ljava/lang/String;
    .registers 2

    .line 1080
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDatabasesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/os/FileUtils;->listOrEmpty(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deleteDatabase(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 1047
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1048
    .local v0, "f":Ljava/io/File;
    invoke-static {v0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v1

    .line 1049
    .end local v0    # "f":Ljava/io/File;
    :catch_9
    move-exception v0

    .line 1051
    const/4 v0, 0x0

    return v0
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 802
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 803
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method public deleteSharedPreferences(Ljava/lang/String;)Z
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .line 744
    const-class v0, Landroid/app/ContextImpl;

    monitor-enter v0

    .line 745
    :try_start_3
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 746
    .local v1, "prefs":Ljava/io/File;
    invoke-static {v1}, Landroid/app/SharedPreferencesImpl;->makeBackupFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 749
    .local v2, "prefsBackup":Ljava/io/File;
    invoke-direct {p0}, Landroid/app/ContextImpl;->getSharedPreferencesCacheLocked()Landroid/util/ArrayMap;

    move-result-object v3

    .line 750
    .local v3, "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/app/SharedPreferencesImpl;>;"
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 753
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 756
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_26

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_26

    const/4 v4, 0x1

    goto :goto_27

    :cond_26
    const/4 v4, 0x0

    :goto_27
    monitor-exit v0

    return v4

    .line 757
    .end local v1    # "prefs":Ljava/io/File;
    .end local v2    # "prefsBackup":Ljava/io/File;
    .end local v3    # "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/app/SharedPreferencesImpl;>;"
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public destroy()V
    .registers 3

    .line 3808
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    .line 3809
    return-void
.end method

.method public enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 2446
    nop

    .line 2447
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    .line 2449
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2446
    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->enforce(Ljava/lang/String;IZILjava/lang/String;)V

    .line 2451
    return-void
.end method

.method public enforceCallingOrSelfUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 2644
    nop

    .line 2646
    invoke-virtual {p0, p1, p2}, Landroid/app/ContextImpl;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v2

    const/4 v3, 0x1

    .line 2647
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2644
    move-object v0, p0

    move v1, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    .line 2648
    return-void
.end method

.method public enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 2436
    nop

    .line 2437
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    .line 2439
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2436
    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->enforce(Ljava/lang/String;IZILjava/lang/String;)V

    .line 2441
    return-void
.end method

.method public enforceCallingUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 2635
    nop

    .line 2636
    invoke-virtual {p0, p1, p2}, Landroid/app/ContextImpl;->checkCallingUriPermission(Landroid/net/Uri;I)I

    move-result v2

    const/4 v3, 0x0

    .line 2638
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2635
    move-object v0, p0

    move v1, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    .line 2639
    return-void
.end method

.method public enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    .registers 11
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "message"    # Ljava/lang/String;

    .line 2427
    nop

    .line 2428
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x0

    .line 2427
    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/ContextImpl;->enforce(Ljava/lang/String;IZILjava/lang/String;)V

    .line 2432
    return-void
.end method

.method public enforceUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V
    .registers 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .param p5, "message"    # Ljava/lang/String;

    .line 2627
    nop

    .line 2628
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v2

    const/4 v3, 0x0

    .line 2627
    move-object v0, p0

    move v1, p4

    move v4, p3

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    .line 2630
    return-void
.end method

.method public enforceUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .registers 15
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "readPermission"    # Ljava/lang/String;
    .param p3, "writePermission"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "modeFlags"    # I
    .param p7, "message"    # Ljava/lang/String;

    .line 2654
    nop

    .line 2655
    invoke-virtual/range {p0 .. p6}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I

    move-result v2

    const/4 v3, 0x0

    .line 2654
    move-object v0, p0

    move v1, p6

    move v4, p5

    move-object v5, p1

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Landroid/app/ContextImpl;->enforceForUri(IIZILandroid/net/Uri;Ljava/lang/String;)V

    .line 2662
    return-void
.end method

.method public fileList()[Ljava/lang/String;
    .registers 2

    .line 1009
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/os/FileUtils;->listOrEmpty(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 3441
    iget-object v0, p0, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    instance-of v1, v0, Landroid/window/WindowTokenClient;

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Landroid/app/ContextImpl;->mOwnsToken:Z

    if-eqz v1, :cond_f

    .line 3442
    check-cast v0, Landroid/window/WindowTokenClient;

    invoke-virtual {v0}, Landroid/window/WindowTokenClient;->detachFromWindowContainerIfNeeded()V

    .line 3444
    :cond_f
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 3445
    return-void
.end method

.method public getActivityToken()Landroid/os/IBinder;
    .registers 3

    .line 3711
    iget v0, p0, Landroid/app/ContextImpl;->mContextType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .registers 2

    .line 468
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_9

    .line 469
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplication()Landroid/app/Application;

    move-result-object v0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 468
    :goto_f
    return-object v0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .registers 3

    .line 556
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_9

    .line 557
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0

    .line 559
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .registers 2

    .line 428
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getAssociatedDisplayId()I
    .registers 2

    .line 3194
    invoke-direct {p0}, Landroid/app/ContextImpl;->isAssociatedWithDisplay()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDisplayId()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, -0x1

    :goto_c
    return v0
.end method

.method public getAttributionSource()Landroid/content/AttributionSource;
    .registers 2

    .line 551
    iget-object v0, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    return-object v0
.end method

.method public getAttributionTag()Ljava/lang/String;
    .registers 2

    .line 541
    iget-object v0, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;
    .registers 2

    .line 3402
    iget-object v0, p0, Landroid/app/ContextImpl;->mAutofillClient:Landroid/view/autofill/AutofillManager$AutofillClient;

    return-object v0
.end method

.method public getAutofillOptions()Landroid/content/AutofillOptions;
    .registers 2

    .line 3414
    iget-object v0, p0, Landroid/app/ContextImpl;->mAutofillOptions:Landroid/content/AutofillOptions;

    return-object v0
.end method

.method public getBasePackageName()Ljava/lang/String;
    .registers 2

    .line 529
    iget-object v0, p0, Landroid/app/ContextImpl;->mBasePackageName:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_9
    return-object v0
.end method

.method public getCacheDir()Ljava/io/File;
    .registers 5

    .line 922
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 923
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    if-nez v1, :cond_14

    .line 924
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "cache"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    .line 926
    :cond_14
    iget-object v1, p0, Landroid/app/ContextImpl;->mCacheDir:Ljava/io/File;

    const-string/jumbo v2, "user.inode_cache"

    invoke-static {v1, v2}, Landroid/app/ContextImpl;->ensurePrivateCacheDirExists(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 927
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 513
    iget-object v0, p0, Landroid/app/ContextImpl;->mClassLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_5

    goto :goto_12

    :cond_5
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_12

    :cond_e
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_12
    return-object v0
.end method

.method public getCodeCacheDir()Ljava/io/File;
    .registers 4

    .line 932
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 933
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mCodeCacheDir:Ljava/io/File;

    if-nez v1, :cond_11

    .line 934
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ContextImpl;->getCodeCacheDirBeforeBind(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ContextImpl;->mCodeCacheDir:Ljava/io/File;

    .line 936
    :cond_11
    iget-object v1, p0, Landroid/app/ContextImpl;->mCodeCacheDir:Ljava/io/File;

    const-string/jumbo v2, "user.inode_code_cache"

    invoke-static {v1, v2}, Landroid/app/ContextImpl;->ensurePrivateCacheDirExists(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 937
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public getContentCaptureOptions()Landroid/content/ContentCaptureOptions;
    .registers 2

    .line 3426
    iget-object v0, p0, Landroid/app/ContextImpl;->mContentCaptureOptions:Landroid/content/ContentCaptureOptions;

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .registers 2

    .line 453
    iget-object v0, p0, Landroid/app/ContextImpl;->mContentResolver:Landroid/app/ContextImpl$ApplicationContentResolver;

    return-object v0
.end method

.method public getCrateDir(Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p1, "crateId"    # Ljava/lang/String;

    .line 861
    invoke-static {p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "invalidated crateId"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 862
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const-string v1, "crates"

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 863
    .local v0, "cratesRootPath":Ljava/nio/file/Path;
    invoke-interface {v0, p1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 864
    invoke-interface {v1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v1

    .line 866
    .local v1, "absoluteNormalizedCratePath":Ljava/nio/file/Path;
    iget-object v2, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 867
    :try_start_26
    iget-object v3, p0, Landroid/app/ContextImpl;->mCratesDir:Ljava/io/File;

    if-nez v3, :cond_30

    .line 868
    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ContextImpl;->mCratesDir:Ljava/io/File;

    .line 870
    :cond_30
    iget-object v3, p0, Landroid/app/ContextImpl;->mCratesDir:Ljava/io/File;

    invoke-static {v3}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;

    .line 871
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_3f

    .line 873
    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    .line 874
    .local v2, "cratedDir":Ljava/io/File;
    invoke-static {v2}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    return-object v3

    .line 871
    .end local v2    # "cratedDir":Ljava/io/File;
    :catchall_3f
    move-exception v3

    :try_start_40
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v3
.end method

.method public getDataDir()Ljava/io/File;
    .registers 5

    .line 3348
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_74

    .line 3349
    const/4 v0, 0x0

    .line 3350
    .local v0, "res":Ljava/io/File;
    invoke-virtual {p0}, Landroid/app/ContextImpl;->isCredentialProtectedStorage()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3351
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getCredentialProtectedDataDirFile()Ljava/io/File;

    move-result-object v0

    goto :goto_25

    .line 3352
    :cond_12
    invoke-virtual {p0}, Landroid/app/ContextImpl;->isDeviceProtectedStorage()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 3353
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getDeviceProtectedDataDirFile()Ljava/io/File;

    move-result-object v0

    goto :goto_25

    .line 3355
    :cond_1f
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getDataDirFile()Ljava/io/File;

    move-result-object v0

    .line 3358
    :goto_25
    if-eqz v0, :cond_57

    .line 3359
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_56

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_56

    .line 3360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data directory doesn\'t exist for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    const-string v3, "ContextImpl"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3363
    :cond_56
    return-object v0

    .line 3365
    :cond_57
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No data directory found for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3366
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3369
    .end local v0    # "res":Ljava/io/File;
    :cond_74
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No package details found for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3370
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDatabasePath(Ljava/lang/String;)Ljava/io/File;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;

    .line 1059
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    if-ne v1, v2, :cond_3e

    .line 1060
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1061
    .local v0, "dirPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1062
    .local v1, "dir":Ljava/io/File;
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1063
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1065
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 1066
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f9

    const/4 v5, -0x1

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1070
    .end local v0    # "dirPath":Ljava/lang/String;
    :cond_3d
    goto :goto_46

    .line 1071
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    :cond_3e
    invoke-direct {p0}, Landroid/app/ContextImpl;->getDatabasesDir()Ljava/io/File;

    move-result-object v1

    .line 1072
    .restart local v1    # "dir":Ljava/io/File;
    invoke-direct {p0, v1, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1075
    .restart local v2    # "f":Ljava/io/File;
    :goto_46
    return-object v2
.end method

.method public getDeviceId()I
    .registers 2

    .line 3280
    iget v0, p0, Landroid/app/ContextImpl;->mDeviceId:I

    return v0
.end method

.method public getDir(Ljava/lang/String;I)Ljava/io/File;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 3376
    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->checkMode(I)V

    .line 3377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3378
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 3379
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_30

    .line 3380
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 3381
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f9

    invoke-static {v1, p2, v2}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    .line 3384
    :cond_30
    return-object v0
.end method

.method public getDisplay()Landroid/view/Display;
    .registers 3

    .line 3165
    invoke-direct {p0}, Landroid/app/ContextImpl;->isAssociatedWithDisplay()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3173
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v0

    return-object v0

    .line 3166
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tried to obtain display from a Context not associated with one. Only visual Contexts (such as Activity or one created with Context#createWindowContext) or ones created with Context#createDisplayContext are associated with displays. Other types of Contexts are typically related to background entities and may return an arbitrary display."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;
    .registers 3
    .param p1, "displayId"    # I

    .line 3343
    iget-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayId()I
    .registers 3

    .line 3215
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v0

    .line 3217
    .local v0, "display":Landroid/view/Display;
    invoke-static {}, Landroid/app/ActivityThread;->isInDexDisplay()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 3218
    iget-object v1, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    goto :goto_17

    :cond_13
    invoke-static {}, Landroid/app/ActivityThread;->getProcessDisplayId()I

    move-result v1

    :goto_17
    return v1

    .line 3221
    :cond_18
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    return v1
.end method

.method public getDisplayNoVerify()Landroid/view/Display;
    .registers 4

    .line 3199
    iget-object v0, p0, Landroid/app/ContextImpl;->mDisplay:Landroid/view/Display;

    if-nez v0, :cond_21

    .line 3201
    invoke-static {}, Landroid/app/ActivityThread;->isInDexDisplay()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3202
    iget-object v0, p0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 3203
    invoke-static {}, Landroid/app/ActivityThread;->getProcessDisplayId()I

    move-result v1

    iget-object v2, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    .line 3202
    invoke-virtual {v0, v1, v2}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v0

    return-object v0

    .line 3206
    :cond_17
    iget-object v0, p0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1, v2}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v0

    return-object v0

    .line 3210
    :cond_21
    return-object v0
.end method

.method public getExternalCacheDir()Ljava/io/File;
    .registers 3

    .line 952
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getExternalCacheDirs()[Ljava/io/File;

    move-result-object v0

    .line 953
    .local v0, "dirs":[Ljava/io/File;
    if-eqz v0, :cond_d

    array-length v1, v0

    if-lez v1, :cond_d

    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return-object v1
.end method

.method public getExternalCacheDirs()[Ljava/io/File;
    .registers 4

    .line 958
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 959
    :try_start_3
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Environment;->buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 963
    .local v1, "dirs":[Ljava/io/File;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/app/ContextImpl;->ensureExternalDirsExistOrFilter([Ljava/io/File;Z)[Ljava/io/File;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 964
    .end local v1    # "dirs":[Ljava/io/File;
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p1, "type"    # Ljava/lang/String;

    .line 890
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 891
    .local v0, "dirs":[Ljava/io/File;
    if-eqz v0, :cond_d

    array-length v1, v0

    if-lez v1, :cond_d

    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return-object v1
.end method

.method public getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;
    .registers 5
    .param p1, "type"    # Ljava/lang/String;

    .line 896
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 897
    :try_start_3
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Environment;->buildExternalStorageAppFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 898
    .local v1, "dirs":[Ljava/io/File;
    if-eqz p1, :cond_16

    .line 899
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    move-object v1, v2

    .line 901
    :cond_16
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/app/ContextImpl;->ensureExternalDirsExistOrFilter([Ljava/io/File;Z)[Ljava/io/File;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 902
    .end local v1    # "dirs":[Ljava/io/File;
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public getExternalMediaDirs()[Ljava/io/File;
    .registers 4

    .line 969
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 970
    :try_start_3
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Environment;->buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 971
    .local v1, "dirs":[Ljava/io/File;
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/app/ContextImpl;->ensureExternalDirsExistOrFilter([Ljava/io/File;Z)[Ljava/io/File;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 972
    .end local v1    # "dirs":[Ljava/io/File;
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 986
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFilesDir()Ljava/io/File;
    .registers 5

    .line 851
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 852
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    if-nez v1, :cond_14

    .line 853
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "files"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    .line 855
    :cond_14
    iget-object v1, p0, Landroid/app/ContextImpl;->mFilesDir:Ljava/io/File;

    invoke-static {v1}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 856
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public getIApplicationThread()Landroid/app/IApplicationThread;
    .registers 2

    .line 2153
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v0

    return-object v0
.end method

.method public getMainExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 463
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public getMainLooper()Landroid/os/Looper;
    .registers 2

    .line 458
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getMainThreadHandler()Landroid/os/Handler;
    .registers 2

    .line 2166
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getNoBackupFilesDir()Ljava/io/File;
    .registers 5

    .line 879
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 880
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mNoBackupFilesDir:Ljava/io/File;

    if-nez v1, :cond_15

    .line 881
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getDataDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "no_backup"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mNoBackupFilesDir:Ljava/io/File;

    .line 883
    :cond_15
    iget-object v1, p0, Landroid/app/ContextImpl;->mNoBackupFilesDir:Ljava/io/File;

    invoke-static {v1}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 884
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public getObbDir()Ljava/io/File;
    .registers 3

    .line 908
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getObbDirs()[Ljava/io/File;

    move-result-object v0

    .line 909
    .local v0, "dirs":[Ljava/io/File;
    if-eqz v0, :cond_d

    array-length v1, v0

    if-lez v1, :cond_d

    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return-object v1
.end method

.method public getObbDirs()[Ljava/io/File;
    .registers 4

    .line 914
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 915
    :try_start_3
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Environment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 916
    .local v1, "dirs":[Ljava/io/File;
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/app/ContextImpl;->ensureExternalDirsExistOrFilter([Ljava/io/File;Z)[Ljava/io/File;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 917
    .end local v1    # "dirs":[Ljava/io/File;
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public getOpPackageName()Ljava/lang/String;
    .registers 2

    .line 535
    iget-object v0, p0, Landroid/app/ContextImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getOuterContext()Landroid/content/Context;
    .registers 2

    .line 3705
    iget-object v0, p0, Landroid/app/ContextImpl;->mOuterContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPackageCodePath()Ljava/lang/String;
    .registers 3

    .line 572
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_9

    .line 573
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getAppDir()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 575
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .registers 3

    .line 438
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_5

    .line 439
    return-object v0

    .line 442
    :cond_5
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 443
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v0, :cond_13

    .line 445
    new-instance v1, Landroid/app/ApplicationPackageManager;

    invoke-direct {v1, p0, v0}, Landroid/app/ApplicationPackageManager;-><init>(Landroid/app/ContextImpl;Landroid/content/pm/IPackageManager;)V

    iput-object v1, p0, Landroid/app/ContextImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v1

    .line 448
    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 518
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_9

    .line 519
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 523
    :cond_9
    const-string v0, "android"

    return-object v0
.end method

.method public getPackageResourcePath()Ljava/lang/String;
    .registers 3

    .line 564
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_9

    .line 565
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 567
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getParams()Landroid/content/ContextParams;
    .registers 2

    .line 546
    iget-object v0, p0, Landroid/app/ContextImpl;->mParams:Landroid/content/ContextParams;

    return-object v0
.end method

.method public getPreloadsFileCache()Ljava/io/File;
    .registers 2

    .line 981
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Environment;->getDataPreloadsFileCacheDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getProcessToken()Landroid/os/IBinder;
    .registers 2

    .line 2160
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method final getReceiverRestrictedContext()Landroid/content/Context;
    .registers 3

    .line 3692
    iget-object v0, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    .line 3693
    return-object v0

    .line 3695
    :cond_5
    new-instance v0, Landroid/app/ReceiverRestrictedContext;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ReceiverRestrictedContext;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/ContextImpl;->mReceiverRestrictedContext:Landroid/content/Context;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    .line 433
    iget-object v0, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/os/Handler;J)Landroid/app/IServiceConnection;
    .registers 11
    .param p1, "conn"    # Landroid/content/ServiceConnection;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "flags"    # J

    .line 2147
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/LoadedApk;->getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;Landroid/os/Handler;J)Landroid/app/IServiceConnection;

    move-result-object v0

    return-object v0
.end method

.method public getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;
    .registers 10
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # I

    .line 607
    const-class v0, Landroid/app/ContextImpl;

    monitor-enter v0

    .line 608
    :try_start_3
    invoke-direct {p0}, Landroid/app/ContextImpl;->getSharedPreferencesCacheLocked()Landroid/util/ArrayMap;

    move-result-object v1

    .line 609
    .local v1, "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/app/SharedPreferencesImpl;>;"
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SharedPreferencesImpl;

    .line 610
    .local v2, "sp":Landroid/app/SharedPreferencesImpl;
    if-nez v2, :cond_8e

    .line 611
    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->checkMode(I)V

    .line 612
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_83

    .line 614
    const/4 v3, 0x0

    .line 617
    .local v3, "keepGoing":Z
    const-string v4, "android"

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    if-eqz p1, :cond_3a

    .line 618
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "multiwindow.property.xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    const/4 v4, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v4, 0x0

    :goto_3b
    move v3, v4

    .line 621
    if-eqz v3, :cond_3f

    goto :goto_83

    .line 624
    :cond_3f
    invoke-virtual {p0}, Landroid/app/ContextImpl;->isCredentialProtectedStorage()Z

    move-result v4

    if-eqz v4, :cond_83

    const-class v4, Landroid/os/UserManager;

    .line 627
    invoke-virtual {p0, v4}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_83

    const-class v4, Landroid/os/UserManager;

    .line 629
    invoke-virtual {p0, v4}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 630
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v4

    if-eqz v4, :cond_60

    goto :goto_83

    .line 631
    :cond_60
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SharedPreferences in credential encrypted storage are not available until after user (id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 633
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is unlocked"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/ContextImpl;
    .end local p1    # "file":Ljava/io/File;
    .end local p2    # "mode":I
    throw v4

    .line 636
    .end local v3    # "keepGoing":Z
    .restart local p0    # "this":Landroid/app/ContextImpl;
    .restart local p1    # "file":Ljava/io/File;
    .restart local p2    # "mode":I
    :cond_83
    :goto_83
    new-instance v3, Landroid/app/SharedPreferencesImpl;

    invoke-direct {v3, p1, p2}, Landroid/app/SharedPreferencesImpl;-><init>(Ljava/io/File;I)V

    move-object v2, v3

    .line 637
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    monitor-exit v0

    return-object v2

    .line 640
    .end local v1    # "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/app/SharedPreferencesImpl;>;"
    :cond_8e
    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_3 .. :try_end_8f} :catchall_a1

    .line 641
    and-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_9d

    .line 642
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_a0

    .line 646
    :cond_9d
    invoke-virtual {v2}, Landroid/app/SharedPreferencesImpl;->startReloadIfChangedUnexpectedly()V

    .line 648
    :cond_a0
    return-object v2

    .line 640
    .end local v2    # "sp":Landroid/app/SharedPreferencesImpl;
    :catchall_a1
    move-exception v1

    :try_start_a2
    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    throw v1
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 583
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_11

    .line 585
    if-nez p1, :cond_11

    .line 586
    const-string/jumbo p1, "null"

    .line 591
    :cond_11
    const-class v0, Landroid/app/ContextImpl;

    monitor-enter v0

    .line 592
    :try_start_14
    iget-object v1, p0, Landroid/app/ContextImpl;->mSharedPrefsPaths:Landroid/util/ArrayMap;

    if-nez v1, :cond_1f

    .line 593
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/app/ContextImpl;->mSharedPrefsPaths:Landroid/util/ArrayMap;

    .line 595
    :cond_1f
    iget-object v1, p0, Landroid/app/ContextImpl;->mSharedPrefsPaths:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 596
    .local v1, "file":Ljava/io/File;
    if-nez v1, :cond_33

    .line 597
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    move-object v1, v2

    .line 598
    iget-object v2, p0, Landroid/app/ContextImpl;->mSharedPrefsPaths:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    :cond_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_14 .. :try_end_34} :catchall_39

    .line 601
    invoke-virtual {p0, v1, p2}, Landroid/app/ContextImpl;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    .line 600
    .end local v1    # "file":Ljava/io/File;
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 993
    const-string v0, "android"

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const-string/jumbo v0, "multiwindow.property"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 994
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 995
    :try_start_18
    iget-object v1, p0, Landroid/app/ContextImpl;->mPreferencesDir:Ljava/io/File;

    if-nez v1, :cond_2e

    .line 996
    iget-object v1, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 997
    .local v1, "dataDir":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "shared_prefs"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Landroid/app/ContextImpl;->mPreferencesDir:Ljava/io/File;

    .line 999
    .end local v1    # "dataDir":Ljava/lang/String;
    :cond_2e
    iget-object v1, p0, Landroid/app/ContextImpl;->mPreferencesDir:Ljava/io/File;

    invoke-static {v1}, Landroid/app/ContextImpl;->ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1000
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_18 .. :try_end_4f} :catchall_4d

    throw v1

    .line 1004
    :cond_50
    invoke-direct {p0}, Landroid/app/ContextImpl;->getPreferencesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;

    .line 2268
    invoke-static {}, Landroid/os/StrictMode;->vmIncorrectContextUseEnabled()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 2270
    const-string/jumbo v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-virtual {p0}, Landroid/app/ContextImpl;->isUiContext()Z

    move-result v0

    if-nez v0, :cond_62

    .line 2271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to access visual service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2272
    invoke-static {p1}, Landroid/app/SystemServiceRegistry;->getSystemServiceClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from a non-visual Context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2273
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2274
    .local v0, "errorMessage":Ljava/lang/String;
    const-string v1, "WindowManager should be accessed from Activity or other visual Context. Use an Activity or a Context created with Context#createWindowContext(int, Bundle), which are adjusted to the configuration and visual bounds of an area on screen."

    .line 2278
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalAccessException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    .line 2279
    .local v2, "exception":Ljava/lang/Exception;
    const-string v3, "WindowManager should be accessed from Activity or other visual Context. Use an Activity or a Context created with Context#createWindowContext(int, Bundle), which are adjusted to the configuration and visual bounds of an area on screen."

    invoke-static {v3, v2}, Landroid/os/StrictMode;->onIncorrectContextUsed(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2280
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ContextImpl"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2285
    .end local v0    # "errorMessage":Ljava/lang/String;
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "exception":Ljava/lang/Exception;
    :cond_62
    invoke-static {p0, p1}, Landroid/app/SystemServiceRegistry;->getSystemService(Landroid/app/ContextImpl;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2286
    .local v0, "service":Ljava/lang/Object;
    if-eqz v0, :cond_69

    .line 2287
    return-object v0

    .line 2289
    :cond_69
    sget-boolean v1, Lcom/samsung/android/sepunion/UnionUtils;->FEATURE_ENABLED:Z

    if-eqz v1, :cond_84

    invoke-static {p1}, Lcom/samsung/android/sepunion/SemUnionManager;->isUnionService(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 2290
    nop

    .line 2291
    const-string/jumbo v1, "sepunion"

    invoke-static {p0, v1}, Landroid/app/SystemServiceRegistry;->getSystemService(Landroid/app/ContextImpl;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sepunion/SemUnionManager;

    .line 2293
    .local v1, "semUnionManager":Lcom/samsung/android/sepunion/SemUnionManager;
    if-eqz v1, :cond_84

    .line 2294
    invoke-virtual {v1, p1}, Lcom/samsung/android/sepunion/SemUnionManager;->getUnionService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 2298
    .end local v1    # "semUnionManager":Lcom/samsung/android/sepunion/SemUnionManager;
    :cond_84
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2303
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Landroid/app/SystemServiceRegistry;->getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .registers 4

    .line 491
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 492
    :try_start_3
    iget-object v1, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    if-eqz v1, :cond_9

    .line 493
    monitor-exit v0

    return-object v1

    .line 496
    :cond_9
    iget v1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    .line 497
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 496
    invoke-static {v1, v2}, Landroid/content/res/Resources;->selectDefaultTheme(II)I

    move-result v1

    iput v1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    .line 498
    invoke-direct {p0}, Landroid/app/ContextImpl;->initializeTheme()V

    .line 500
    iget-object v1, p0, Landroid/app/ContextImpl;->mTheme:Landroid/content/res/Resources$Theme;

    monitor-exit v0

    return-object v1

    .line 501
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public getThemeResId()I
    .registers 3

    .line 484
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 485
    :try_start_3
    iget v1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    monitor-exit v0

    return v1

    .line 486
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getUser()Landroid/os/UserHandle;
    .registers 2

    .line 3390
    iget-object v0, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public getUserId()I
    .registers 2

    .line 3396
    iget-object v0, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    return v0
.end method

.method public getWallpaper()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1099
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperDesiredMinimumHeight()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1117
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getWallpaperDesiredMinimumWidth()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1111
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getWindowContextToken()Landroid/os/IBinder;
    .registers 2

    .line 3716
    iget v0, p0, Landroid/app/ContextImpl;->mContextType:I

    packed-switch v0, :pswitch_data_a

    .line 3721
    const/4 v0, 0x0

    return-object v0

    .line 3719
    :pswitch_7
    iget-object v0, p0, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    return-object v0

    :pswitch_data_a
    .packed-switch 0x3
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    .registers 10
    .param p1, "toPackage"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "modeFlags"    # I

    .line 2456
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 2457
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    .line 2458
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->resolveUserId(Landroid/net/Uri;)I

    move-result v5

    .line 2456
    move-object v2, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_19

    .line 2461
    nop

    .line 2462
    return-void

    .line 2459
    :catch_19
    move-exception v0

    .line 2460
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 3673
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0, p1, p2}, Landroid/app/LoadedApk;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 3674
    return-void
.end method

.method public isConfigurationContext()Z
    .registers 2

    .line 2326
    invoke-virtual {p0}, Landroid/app/ContextImpl;->isUiContext()Z

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Landroid/app/ContextImpl;->mIsConfigurationBasedContext:Z

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public isCredentialProtectedStorage()Z
    .registers 2

    .line 3152
    iget v0, p0, Landroid/app/ContextImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isDeviceProtectedStorage()Z
    .registers 2

    .line 3147
    iget v0, p0, Landroid/app/ContextImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isRestricted()Z
    .registers 2

    .line 3142
    iget v0, p0, Landroid/app/ContextImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isUiContext()Z
    .registers 3

    .line 2309
    iget v0, p0, Landroid/app/ContextImpl;->mContextType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_a

    .line 2319
    return v1

    .line 2313
    :pswitch_7
    const/4 v0, 0x1

    return v0

    .line 2316
    :pswitch_9
    return v1

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public moveDatabaseFrom(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9
    .param p1, "sourceContext"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .line 1036
    const-class v0, Landroid/app/ContextImpl;

    monitor-enter v0

    .line 1037
    :try_start_3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1038
    .local v1, "source":Ljava/io/File;
    invoke-virtual {p0, p2}, Landroid/app/ContextImpl;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1039
    .local v2, "target":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 1040
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1039
    invoke-static {v3, v4, v5}, Landroid/app/ContextImpl;->moveFiles(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_20

    const/4 v3, 0x1

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    :goto_21
    monitor-exit v0

    return v3

    .line 1041
    .end local v1    # "source":Ljava/io/File;
    .end local v2    # "target":Ljava/io/File;
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public moveSharedPreferencesFrom(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9
    .param p1, "sourceContext"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .line 724
    const-class v0, Landroid/app/ContextImpl;

    monitor-enter v0

    .line 725
    :try_start_3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 726
    .local v1, "source":Ljava/io/File;
    invoke-virtual {p0, p2}, Landroid/app/ContextImpl;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 728
    .local v2, "target":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 729
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 728
    invoke-static {v3, v4, v5}, Landroid/app/ContextImpl;->moveFiles(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)I

    move-result v3

    .line 730
    .local v3, "res":I
    if-lez v3, :cond_28

    .line 733
    nop

    .line 734
    invoke-direct {p0}, Landroid/app/ContextImpl;->getSharedPreferencesCacheLocked()Landroid/util/ArrayMap;

    move-result-object v4

    .line 735
    .local v4, "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/app/SharedPreferencesImpl;>;"
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    .end local v4    # "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/app/SharedPreferencesImpl;>;"
    :cond_28
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2d

    const/4 v4, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v4, 0x0

    :goto_2e
    monitor-exit v0

    return v4

    .line 739
    .end local v1    # "source":Ljava/io/File;
    .end local v2    # "target":Ljava/io/File;
    .end local v3    # "res":I
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 773
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 774
    .local v0, "f":Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v1
.end method

.method public openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 779
    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->checkMode(I)V

    .line 780
    const v0, 0x8000

    and-int/2addr v0, p2

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    move v0, v1

    .line 781
    .local v0, "append":Z
    :goto_d
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Landroid/app/ContextImpl;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 783
    .local v2, "f":Ljava/io/File;
    :try_start_15
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 784
    .local v3, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2, v1}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_21} :catch_22

    .line 785
    return-object v3

    .line 786
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_22
    move-exception v3

    .line 789
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 790
    .local v3, "parent":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 791
    nop

    .line 792
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 791
    const/16 v5, 0x1f9

    const/4 v6, -0x1

    invoke-static {v4, v5, v6, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 795
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 796
    .local v4, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2, v1}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    .line 797
    return-object v4
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 1014
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ContextImpl;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .line 1020
    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->checkMode(I)V

    .line 1021
    invoke-virtual {p0, p1}, Landroid/app/ContextImpl;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1022
    .local v0, "f":Ljava/io/File;
    const/high16 v1, 0x10000000

    .line 1023
    .local v1, "flags":I
    and-int/lit8 v2, p2, 0x8

    if-eqz v2, :cond_10

    .line 1024
    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    .line 1026
    :cond_10
    and-int/lit8 v2, p2, 0x10

    if-eqz v2, :cond_16

    .line 1027
    or-int/lit8 v1, v1, 0x10

    .line 1029
    :cond_16
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p3, v1, p4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1030
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, p2, v4}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V

    .line 1031
    return-object v2
.end method

.method public peekWallpaper()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1105
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->peekDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method final performFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "what"    # Ljava/lang/String;

    .line 3683
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/LoadedApk;->removeContextRegistrations(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3684
    iget v0, p0, Landroid/app/ContextImpl;->mContextType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Landroid/app/ContextImpl;->mToken:Landroid/os/IBinder;

    instance-of v0, v0, Landroid/window/WindowTokenClient;

    if-eqz v0, :cond_19

    .line 3686
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p0}, Landroid/app/ActivityThread;->onSystemUiContextCleanup(Landroid/app/ContextImpl;)V

    .line 3688
    :cond_19
    return-void
.end method

.method public registerDeviceIdChangeListener(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Ljava/util/function/IntConsumer;

    .line 3286
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3287
    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3289
    iget-object v0, p0, Landroid/app/ContextImpl;->mDeviceIdListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3290
    :try_start_e
    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->getDeviceIdListener(Ljava/util/function/IntConsumer;)Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;

    move-result-object v1

    if-nez v1, :cond_2b

    .line 3296
    iget-object v1, p0, Landroid/app/ContextImpl;->mDeviceIdChangeListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_1f

    .line 3297
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/ContextImpl;->mDeviceIdChangeListeners:Ljava/util/ArrayList;

    .line 3299
    :cond_1f
    iget-object v1, p0, Landroid/app/ContextImpl;->mDeviceIdChangeListeners:Ljava/util/ArrayList;

    new-instance v2, Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;

    invoke-direct {v2, p2, p1}, Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;-><init>(Ljava/util/function/IntConsumer;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3300
    monitor-exit v0

    .line 3301
    return-void

    .line 3291
    :cond_2b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "attempt to call registerDeviceIdChangeListener() on a previously registered listener"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/ContextImpl;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Ljava/util/function/IntConsumer;
    throw v1

    .line 3300
    .restart local p0    # "this":Landroid/app/ContextImpl;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Ljava/util/function/IntConsumer;
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_e .. :try_end_35} :catchall_33

    throw v1
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .registers 4
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .line 1841
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/app/ContextImpl;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    .registers 10
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "flags"    # I

    .line 1847
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/ContextImpl;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 13
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "broadcastPermission"    # Ljava/lang/String;
    .param p4, "scheduler"    # Landroid/os/Handler;

    .line 1853
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    .line 1854
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    .line 1853
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Landroid/app/ContextImpl;->registerReceiverInternal(Landroid/content/BroadcastReceiver;ILandroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    .registers 14
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "broadcastPermission"    # Ljava/lang/String;
    .param p4, "scheduler"    # Landroid/os/Handler;
    .param p5, "flags"    # I

    .line 1860
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    .line 1861
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v6

    .line 1860
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/app/ContextImpl;->registerReceiverInternal(Landroid/content/BroadcastReceiver;ILandroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 14
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "broadcastPermission"    # Ljava/lang/String;
    .param p5, "scheduler"    # Landroid/os/Handler;

    .line 1881
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 1882
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    .line 1881
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Landroid/app/ContextImpl;->registerReceiverInternal(Landroid/content/BroadcastReceiver;ILandroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    .registers 15
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "broadcastPermission"    # Ljava/lang/String;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "flags"    # I

    .line 1888
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 1889
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v6

    .line 1888
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/app/ContextImpl;->registerReceiverInternal(Landroid/content/BroadcastReceiver;ILandroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 11
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "broadcastPermission"    # Ljava/lang/String;
    .param p4, "scheduler"    # Landroid/os/Handler;

    .line 1867
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/ContextImpl;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    .registers 13
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "broadcastPermission"    # Ljava/lang/String;
    .param p4, "scheduler"    # Landroid/os/Handler;
    .param p5, "flags"    # I

    .line 1874
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/ContextImpl;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public reloadSharedPreferences()V
    .registers 6

    .line 670
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 671
    .local v0, "spImpls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/SharedPreferencesImpl;>;"
    const-class v1, Landroid/app/ContextImpl;

    monitor-enter v1

    .line 672
    :try_start_8
    invoke-direct {p0}, Landroid/app/ContextImpl;->getSharedPreferencesCacheLocked()Landroid/util/ArrayMap;

    move-result-object v2

    .line 673
    .local v2, "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/app/SharedPreferencesImpl;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_21

    .line 674
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SharedPreferencesImpl;

    .line 675
    .local v4, "sp":Landroid/app/SharedPreferencesImpl;
    if-eqz v4, :cond_1e

    .line 676
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    .end local v4    # "sp":Landroid/app/SharedPreferencesImpl;
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 679
    .end local v2    # "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/app/SharedPreferencesImpl;>;"
    .end local v3    # "i":I
    :cond_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_36

    .line 682
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_35

    .line 683
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SharedPreferencesImpl;

    invoke-virtual {v2}, Landroid/app/SharedPreferencesImpl;->startReloadIfChangedUnexpectedly()V

    .line 682
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 685
    .end local v1    # "i":I
    :cond_35
    return-void

    .line 679
    :catchall_36
    move-exception v2

    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v2
.end method

.method public removeStickyBroadcast(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1741
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 1742
    .local v0, "resolvedType":Ljava/lang/String;
    if-eqz v0, :cond_17

    .line 1743
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object p1, v1

    .line 1744
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1747
    :cond_17
    :try_start_17
    invoke-virtual {p1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1748
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1749
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    .line 1748
    invoke-interface {v1, v2, p1, v3}, Landroid/app/IActivityManager;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2b} :catch_2d

    .line 1752
    nop

    .line 1753
    return-void

    .line 1750
    :catch_2d
    move-exception v1

    .line 1751
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1825
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 1826
    .local v0, "resolvedType":Ljava/lang/String;
    if-eqz v0, :cond_17

    .line 1827
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object p1, v1

    .line 1828
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1831
    :cond_17
    :try_start_17
    invoke-virtual {p1, p0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1832
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1833
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 1832
    invoke-interface {v1, v2, p1, v3}, Landroid/app/IActivityManager;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2b} :catch_2d

    .line 1836
    nop

    .line 1837
    return-void

    .line 1834
    :catch_2d
    move-exception v1

    .line 1835
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public revokeSelfPermissionsOnKill(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2370
    .local p1, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-class v0, Landroid/permission/PermissionControllerManager;

    invoke-virtual {p0, v0}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionControllerManager;

    .line 2371
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2370
    invoke-virtual {v0, v1, v2}, Landroid/permission/PermissionControllerManager;->revokeSelfPermissionsOnKill(Ljava/lang/String;Ljava/util/List;)V

    .line 2372
    return-void
.end method

.method public revokeUriPermission(Landroid/net/Uri;I)V
    .registers 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    .line 2467
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 2468
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    const/4 v2, 0x0

    .line 2469
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->resolveUserId(Landroid/net/Uri;)I

    move-result v5

    .line 2467
    move v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->revokeUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_19

    .line 2472
    nop

    .line 2473
    return-void

    .line 2470
    :catch_19
    move-exception v0

    .line 2471
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public revokeUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    .registers 10
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "modeFlags"    # I

    .line 2478
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 2479
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    .line 2480
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, p2}, Landroid/app/ContextImpl;->resolveUserId(Landroid/net/Uri;)I

    move-result v5

    .line 2478
    move-object v2, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->revokeUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_19

    .line 2483
    nop

    .line 2484
    return-void

    .line 2481
    :catch_19
    move-exception v0

    .line 2482
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method final scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "what"    # Ljava/lang/String;

    .line 3678
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p0, p1, p2}, Landroid/app/ActivityThread;->scheduleContextCleanup(Landroid/app/ContextImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 3679
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .registers 22
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1281
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1282
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v19

    .line 1284
    .local v19, "resolvedType":Ljava/lang/String;
    :try_start_f
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1285
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1286
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1288
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v18

    .line 1285
    move-object/from16 v5, p1

    move-object/from16 v6, v19

    move-object v15, v0

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_39} :catch_3b

    .line 1291
    nop

    .line 1292
    return-void

    .line 1289
    :catch_3b
    move-exception v0

    .line 1290
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 23
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;

    .line 1296
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1297
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v19

    .line 1298
    .local v19, "resolvedType":Ljava/lang/String;
    if-nez p2, :cond_14

    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_19

    .line 1299
    :cond_14
    filled-new-array/range {p2 .. p2}, [Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    :goto_19
    nop

    .line 1301
    .local v11, "receiverPermissions":[Ljava/lang/String;
    :try_start_1a
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1302
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1303
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1306
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v18

    .line 1302
    move-object/from16 v5, p1

    move-object/from16 v6, v19

    move-object v15, v0

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_43} :catch_45

    .line 1309
    nop

    .line 1310
    return-void

    .line 1307
    :catch_45
    move-exception v0

    .line 1308
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)V
    .registers 24
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "appOp"    # I

    .line 1408
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1409
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v19

    .line 1410
    .local v19, "resolvedType":Ljava/lang/String;
    if-nez p2, :cond_14

    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_19

    .line 1411
    :cond_14
    filled-new-array/range {p2 .. p2}, [Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    :goto_19
    nop

    .line 1413
    .local v11, "receiverPermissions":[Ljava/lang/String;
    :try_start_1a
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1414
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1415
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1417
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v18

    .line 1414
    move-object/from16 v5, p1

    move-object/from16 v6, v19

    move/from16 v14, p3

    move-object v15, v0

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_44} :catch_46

    .line 1420
    nop

    .line 1421
    return-void

    .line 1418
    :catch_46
    move-exception v0

    .line 1419
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 26
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 1380
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p3

    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1381
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v19

    .line 1382
    .local v19, "resolvedType":Ljava/lang/String;
    if-nez p2, :cond_15

    const/4 v0, 0x0

    goto :goto_19

    .line 1383
    :cond_15
    filled-new-array/range {p2 .. p2}, [Ljava/lang/String;

    move-result-object v0

    :goto_19
    nop

    .line 1384
    .local v0, "receiverPermissions":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1385
    .local v2, "excludedPermissions":[Ljava/lang/String;
    if-eqz v14, :cond_31

    .line 1386
    const-string v3, "android:broadcast.requireAllOfPermissions"

    invoke-virtual {v14, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1388
    .local v3, "receiverPermissionsBundle":[Ljava/lang/String;
    if-eqz v3, :cond_26

    .line 1389
    move-object v0, v3

    .line 1391
    :cond_26
    const-string v4, "android:broadcast.requireNoneOfPermissions"

    invoke-virtual {v14, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    goto :goto_35

    .line 1385
    .end local v3    # "receiverPermissionsBundle":[Ljava/lang/String;
    :cond_31
    move-object/from16 v20, v0

    move-object/from16 v21, v2

    .line 1395
    .end local v0    # "receiverPermissions":[Ljava/lang/String;
    .end local v2    # "excludedPermissions":[Ljava/lang/String;
    .local v20, "receiverPermissions":[Ljava/lang/String;
    .local v21, "excludedPermissions":[Ljava/lang/String;
    :goto_35
    :try_start_35
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1396
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1397
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v0, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1400
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v18

    .line 1396
    move-object/from16 v5, p1

    move-object/from16 v6, v19

    move-object/from16 v11, v20

    move-object/from16 v12, v21

    move v14, v0

    move-object/from16 v15, p3

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_62} :catch_64

    .line 1403
    nop

    .line 1404
    return-void

    .line 1401
    :catch_64
    move-exception v0

    .line 1402
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 23
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1513
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v19

    .line 1515
    .local v19, "resolvedType":Ljava/lang/String;
    :try_start_c
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1516
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1517
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1519
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 1516
    move-object/from16 v5, p1

    move-object/from16 v6, v19

    move-object v15, v0

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_36} :catch_38

    .line 1522
    nop

    .line 1523
    return-void

    .line 1520
    :catch_38
    move-exception v0

    .line 1521
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;

    .line 1528
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ContextImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V

    .line 1529
    return-void
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V
    .registers 25
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "appOp"    # I

    .line 1552
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v19

    .line 1553
    .local v19, "resolvedType":Ljava/lang/String;
    if-nez p3, :cond_11

    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_16

    .line 1554
    :cond_11
    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    :goto_16
    nop

    .line 1556
    .local v11, "receiverPermissions":[Ljava/lang/String;
    :try_start_17
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1557
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1558
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1561
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 1557
    move-object/from16 v5, p1

    move-object/from16 v6, v19

    move/from16 v14, p4

    move-object v15, v0

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_41} :catch_43

    .line 1564
    nop

    .line 1565
    return-void

    .line 1562
    :catch_43
    move-exception v0

    .line 1563
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 25
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "options"    # Landroid/os/Bundle;

    .line 1534
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v19

    .line 1535
    .local v19, "resolvedType":Ljava/lang/String;
    if-nez p3, :cond_11

    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_16

    .line 1536
    :cond_11
    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    :goto_16
    nop

    .line 1538
    .local v11, "receiverPermissions":[Ljava/lang/String;
    :try_start_17
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1539
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1540
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1543
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 1539
    move-object/from16 v5, p1

    move-object/from16 v6, v19

    move-object/from16 v15, p4

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_40} :catch_42

    .line 1546
    nop

    .line 1547
    return-void

    .line 1544
    :catch_42
    move-exception v0

    .line 1545
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public sendBroadcastAsUserMultiplePermissions(Landroid/content/Intent;Landroid/os/UserHandle;[Ljava/lang/String;)V
    .registers 24
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermissions"    # [Ljava/lang/String;

    .line 1348
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v19

    .line 1350
    .local v19, "resolvedType":Ljava/lang/String;
    :try_start_c
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1351
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1352
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1355
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 1351
    move-object/from16 v5, p1

    move-object/from16 v6, v19

    move-object/from16 v11, p3

    move-object v15, v0

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_37} :catch_39

    .line 1358
    nop

    .line 1359
    return-void

    .line 1356
    :catch_39
    move-exception v0

    .line 1357
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;)V
    .registers 23
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermissions"    # [Ljava/lang/String;

    .line 1314
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1315
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v19

    .line 1317
    .local v19, "resolvedType":Ljava/lang/String;
    :try_start_f
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1318
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1319
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1322
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v18

    .line 1318
    move-object/from16 v5, p1

    move-object/from16 v6, v19

    move-object/from16 v11, p2

    move-object v15, v0

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_3a} :catch_3c

    .line 1325
    nop

    .line 1326
    return-void

    .line 1323
    :catch_3c
    move-exception v0

    .line 1324
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 24
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermissions"    # [Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 1331
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1332
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v19

    .line 1334
    .local v19, "resolvedType":Ljava/lang/String;
    :try_start_f
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1335
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1336
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1339
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v18

    .line 1335
    move-object/from16 v5, p1

    move-object/from16 v6, v19

    move-object/from16 v11, p2

    move-object/from16 v15, p3

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_3a} :catch_3c

    .line 1342
    nop

    .line 1343
    return-void

    .line 1340
    :catch_3c
    move-exception v0

    .line 1341
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/BroadcastOptions;)V
    .registers 26
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermissions"    # [Ljava/lang/String;
    .param p3, "excludedPermissions"    # [Ljava/lang/String;
    .param p4, "excludedPackages"    # [Ljava/lang/String;
    .param p5, "options"    # Landroid/app/BroadcastOptions;

    .line 1364
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1365
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v19

    .line 1367
    .local v19, "resolvedType":Ljava/lang/String;
    :try_start_f
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1368
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1369
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, -0x1

    .line 1372
    if-nez p5, :cond_29

    const/4 v0, 0x0

    goto :goto_2d

    :cond_29
    invoke-virtual/range {p5 .. p5}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    :goto_2d
    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v18

    .line 1368
    move-object/from16 v5, p1

    move-object/from16 v6, v19

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object v15, v0

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_43} :catch_45

    .line 1375
    nop

    .line 1376
    return-void

    .line 1373
    :catch_45
    move-exception v0

    .line 1374
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public sendBroadcastMultiplePermissionsAsUser(Landroid/content/Intent;[Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 21
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermissions"    # [Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 1264
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1265
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v16

    .line 1267
    .local v16, "resolvedType":Ljava/lang/String;
    :try_start_f
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1268
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1269
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 1271
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1268
    move-object/from16 v4, p1

    move-object/from16 v5, v16

    move-object/from16 v10, p2

    move v15, v0

    invoke-interface/range {v2 .. v15}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_32} :catch_34

    .line 1274
    nop

    .line 1276
    .end local v16    # "resolvedType":Ljava/lang/String;
    return-void

    .line 1272
    .restart local v16    # "resolvedType":Ljava/lang/String;
    :catch_34
    move-exception v0

    .line 1273
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failure from system"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "initialCode"    # I
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "receiverAppOp"    # Ljava/lang/String;
    .param p5, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p6, "scheduler"    # Landroid/os/Handler;
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;
    .param p9, "options"    # Landroid/os/Bundle;

    .line 1637
    const/4 v0, -0x1

    .line 1638
    .local v0, "intAppOp":I
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1639
    invoke-static/range {p4 .. p4}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    .line 1641
    :cond_b
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, v0

    move-object/from16 v6, p9

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move v9, p2

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v1 .. v11}, Landroid/app/ContextImpl;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1643
    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;

    .line 1426
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ContextImpl;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1427
    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 19
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;

    .line 1470
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/app/ContextImpl;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1472
    return-void
.end method

.method sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 32
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;
    .param p9, "options"    # Landroid/os/Bundle;

    .line 1478
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1479
    const/4 v0, 0x0

    .line 1480
    .local v0, "rd":Landroid/content/IIntentReceiver;
    if-eqz p4, :cond_5d

    .line 1481
    iget-object v2, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v2, :cond_33

    .line 1482
    if-nez p5, :cond_18

    .line 1483
    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v8, v2

    .end local p5    # "scheduler":Landroid/os/Handler;
    .local v2, "scheduler":Landroid/os/Handler;
    goto :goto_1a

    .line 1482
    .end local v2    # "scheduler":Landroid/os/Handler;
    .restart local p5    # "scheduler":Landroid/os/Handler;
    :cond_18
    move-object/from16 v8, p5

    .line 1485
    .end local p5    # "scheduler":Landroid/os/Handler;
    .local v8, "scheduler":Landroid/os/Handler;
    :goto_1a
    iget-object v2, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 1486
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1487
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v6

    const/4 v7, 0x0

    .line 1485
    move-object/from16 v3, p4

    move-object v5, v8

    invoke-virtual/range {v2 .. v7}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v0

    move-object/from16 v20, v0

    move-object/from16 v19, v8

    goto :goto_61

    .line 1489
    .end local v8    # "scheduler":Landroid/os/Handler;
    .restart local p5    # "scheduler":Landroid/os/Handler;
    :cond_33
    if-nez p5, :cond_3d

    .line 1490
    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v9, v2

    .end local p5    # "scheduler":Landroid/os/Handler;
    .restart local v2    # "scheduler":Landroid/os/Handler;
    goto :goto_3f

    .line 1489
    .end local v2    # "scheduler":Landroid/os/Handler;
    .restart local p5    # "scheduler":Landroid/os/Handler;
    :cond_3d
    move-object/from16 v9, p5

    .line 1492
    .end local p5    # "scheduler":Landroid/os/Handler;
    .local v9, "scheduler":Landroid/os/Handler;
    :goto_3f
    new-instance v10, Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    .line 1493
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    move-object/from16 v4, p4

    move-object v6, v9

    invoke-direct/range {v2 .. v8}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/app/IApplicationThread;Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    .line 1494
    invoke-virtual {v10}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v0

    move-object/from16 v20, v0

    move-object/from16 v19, v9

    goto :goto_61

    .line 1480
    .end local v9    # "scheduler":Landroid/os/Handler;
    .restart local p5    # "scheduler":Landroid/os/Handler;
    :cond_5d
    move-object/from16 v19, p5

    move-object/from16 v20, v0

    .line 1497
    .end local v0    # "rd":Landroid/content/IIntentReceiver;
    .end local p5    # "scheduler":Landroid/os/Handler;
    .local v19, "scheduler":Landroid/os/Handler;
    .local v20, "rd":Landroid/content/IIntentReceiver;
    :goto_61
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v21

    .line 1498
    .local v21, "resolvedType":Ljava/lang/String;
    if-nez p2, :cond_6e

    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_73

    .line 1499
    :cond_6e
    filled-new-array/range {p2 .. p2}, [Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    :goto_73
    nop

    .line 1501
    .local v11, "receiverPermissions":[Ljava/lang/String;
    :try_start_74
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1502
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1503
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    .line 1505
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v18

    .line 1502
    move-object/from16 v5, p1

    move-object/from16 v6, v21

    move-object/from16 v7, v20

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v14, p3

    move-object/from16 v15, p9

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_a2
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_a2} :catch_a4

    .line 1508
    nop

    .line 1509
    return-void

    .line 1506
    :catch_a4
    move-exception v0

    .line 1507
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p4, "scheduler"    # Landroid/os/Handler;
    .param p5, "initialCode"    # I
    .param p6, "initialData"    # Ljava/lang/String;
    .param p7, "initialExtras"    # Landroid/os/Bundle;

    .line 1452
    const/4 v3, -0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Landroid/app/ContextImpl;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1454
    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 24
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 1431
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1432
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v19

    .line 1433
    .local v19, "resolvedType":Ljava/lang/String;
    if-nez p2, :cond_14

    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_19

    .line 1434
    :cond_14
    filled-new-array/range {p2 .. p2}, [Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    :goto_19
    nop

    .line 1436
    .local v11, "receiverPermissions":[Ljava/lang/String;
    :try_start_1a
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1437
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1438
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    .line 1441
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v18

    .line 1437
    move-object/from16 v5, p1

    move-object/from16 v6, v19

    move-object/from16 v15, p3

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_43} :catch_45

    .line 1444
    nop

    .line 1445
    return-void

    .line 1442
    :catch_45
    move-exception v0

    .line 1443
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 19
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;

    .line 1461
    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v9, p3

    invoke-virtual/range {v0 .. v9}, Landroid/app/ContextImpl;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1463
    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 20
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "receiverAppOp"    # Ljava/lang/String;
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;

    .line 1624
    const/4 v0, -0x1

    .line 1625
    .local v0, "intAppOp":I
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1626
    invoke-static {p3}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    .line 1628
    :cond_b
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, v0

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v1 .. v10}, Landroid/app/ContextImpl;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1631
    return-void
.end method

.method public sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 21
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "appOp"    # I
    .param p5, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p6, "scheduler"    # Landroid/os/Handler;
    .param p7, "initialCode"    # I
    .param p8, "initialData"    # Ljava/lang/String;
    .param p9, "initialExtras"    # Landroid/os/Bundle;

    .line 1579
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/app/ContextImpl;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1581
    return-void
.end method

.method public sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 33
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "appOp"    # I
    .param p5, "options"    # Landroid/os/Bundle;
    .param p6, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p7, "scheduler"    # Landroid/os/Handler;
    .param p8, "initialCode"    # I
    .param p9, "initialData"    # Ljava/lang/String;
    .param p10, "initialExtras"    # Landroid/os/Bundle;

    .line 1587
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    const/4 v0, 0x0

    .line 1588
    .local v0, "rd":Landroid/content/IIntentReceiver;
    if-eqz p6, :cond_5a

    .line 1589
    iget-object v2, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v2, :cond_30

    .line 1590
    if-nez p7, :cond_15

    .line 1591
    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v8, v2

    .end local p7    # "scheduler":Landroid/os/Handler;
    .local v2, "scheduler":Landroid/os/Handler;
    goto :goto_17

    .line 1590
    .end local v2    # "scheduler":Landroid/os/Handler;
    .restart local p7    # "scheduler":Landroid/os/Handler;
    :cond_15
    move-object/from16 v8, p7

    .line 1593
    .end local p7    # "scheduler":Landroid/os/Handler;
    .local v8, "scheduler":Landroid/os/Handler;
    :goto_17
    iget-object v2, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 1594
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1595
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v6

    const/4 v7, 0x0

    .line 1593
    move-object/from16 v3, p6

    move-object v5, v8

    invoke-virtual/range {v2 .. v7}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v0

    move-object/from16 v20, v0

    move-object/from16 v19, v8

    goto :goto_5e

    .line 1597
    .end local v8    # "scheduler":Landroid/os/Handler;
    .restart local p7    # "scheduler":Landroid/os/Handler;
    :cond_30
    if-nez p7, :cond_3a

    .line 1598
    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v9, v2

    .end local p7    # "scheduler":Landroid/os/Handler;
    .restart local v2    # "scheduler":Landroid/os/Handler;
    goto :goto_3c

    .line 1597
    .end local v2    # "scheduler":Landroid/os/Handler;
    .restart local p7    # "scheduler":Landroid/os/Handler;
    :cond_3a
    move-object/from16 v9, p7

    .line 1600
    .end local p7    # "scheduler":Landroid/os/Handler;
    .local v9, "scheduler":Landroid/os/Handler;
    :goto_3c
    new-instance v10, Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    .line 1601
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    move-object/from16 v4, p6

    move-object v6, v9

    invoke-direct/range {v2 .. v8}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/app/IApplicationThread;Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    .line 1602
    invoke-virtual {v10}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v0

    move-object/from16 v20, v0

    move-object/from16 v19, v9

    goto :goto_5e

    .line 1588
    .end local v9    # "scheduler":Landroid/os/Handler;
    .restart local p7    # "scheduler":Landroid/os/Handler;
    :cond_5a
    move-object/from16 v19, p7

    move-object/from16 v20, v0

    .line 1605
    .end local v0    # "rd":Landroid/content/IIntentReceiver;
    .end local p7    # "scheduler":Landroid/os/Handler;
    .local v19, "scheduler":Landroid/os/Handler;
    .local v20, "rd":Landroid/content/IIntentReceiver;
    :goto_5e
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v21

    .line 1606
    .local v21, "resolvedType":Ljava/lang/String;
    if-nez p3, :cond_6b

    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_70

    .line 1607
    :cond_6b
    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    :goto_70
    nop

    .line 1609
    .local v11, "receiverPermissions":[Ljava/lang/String;
    :try_start_71
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1610
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1611
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    .line 1614
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 1610
    move-object/from16 v5, p1

    move-object/from16 v6, v21

    move-object/from16 v7, v20

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v14, p4

    move-object/from16 v15, p5

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_9f
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_9f} :catch_a1

    .line 1617
    nop

    .line 1618
    return-void

    .line 1615
    :catch_a1
    move-exception v0

    .line 1616
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 20
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;

    .line 1571
    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v0 .. v10}, Landroid/app/ContextImpl;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1573
    return-void
.end method

.method public sendStickyBroadcast(Landroid/content/Intent;)V
    .registers 22
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1648
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1649
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v19

    .line 1651
    .local v19, "resolvedType":Ljava/lang/String;
    :try_start_f
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1652
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1653
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    .line 1655
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v18

    .line 1652
    move-object/from16 v5, p1

    move-object/from16 v6, v19

    move-object v15, v0

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_39} :catch_3b

    .line 1658
    nop

    .line 1659
    return-void

    .line 1656
    :catch_3b
    move-exception v0

    .line 1657
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public sendStickyBroadcast(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 23
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1687
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1688
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v19

    .line 1690
    .local v19, "resolvedType":Ljava/lang/String;
    :try_start_f
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1691
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1692
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    .line 1694
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v18

    .line 1691
    move-object/from16 v5, p1

    move-object/from16 v6, v19

    move-object/from16 v15, p2

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_39} :catch_3b

    .line 1697
    nop

    .line 1698
    return-void

    .line 1695
    :catch_3b
    move-exception v0

    .line 1696
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 23
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1758
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v19

    .line 1760
    .local v19, "resolvedType":Ljava/lang/String;
    :try_start_c
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1761
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1762
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    .line 1764
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 1761
    move-object/from16 v5, p1

    move-object/from16 v6, v19

    move-object v15, v0

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_36} :catch_38

    .line 1767
    nop

    .line 1768
    return-void

    .line 1765
    :catch_38
    move-exception v0

    .line 1766
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;)V
    .registers 24
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1773
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v19

    .line 1775
    .local v19, "resolvedType":Ljava/lang/String;
    :try_start_c
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1776
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1777
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    .line 1779
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 1776
    move-object/from16 v5, p1

    move-object/from16 v6, v19

    move-object/from16 v15, p3

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_36} :catch_38

    .line 1782
    nop

    .line 1783
    return-void

    .line 1780
    :catch_38
    move-exception v0

    .line 1781
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 29
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "scheduler"    # Landroid/os/Handler;
    .param p4, "initialCode"    # I
    .param p5, "initialData"    # Ljava/lang/String;
    .param p6, "initialExtras"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1706
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    invoke-direct/range {p0 .. p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1707
    const/4 v0, 0x0

    .line 1708
    .local v0, "rd":Landroid/content/IIntentReceiver;
    if-eqz p2, :cond_5d

    .line 1709
    iget-object v2, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v2, :cond_33

    .line 1710
    if-nez p3, :cond_18

    .line 1711
    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v8, v2

    .end local p3    # "scheduler":Landroid/os/Handler;
    .local v2, "scheduler":Landroid/os/Handler;
    goto :goto_1a

    .line 1710
    .end local v2    # "scheduler":Landroid/os/Handler;
    .restart local p3    # "scheduler":Landroid/os/Handler;
    :cond_18
    move-object/from16 v8, p3

    .line 1713
    .end local p3    # "scheduler":Landroid/os/Handler;
    .local v8, "scheduler":Landroid/os/Handler;
    :goto_1a
    iget-object v2, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 1714
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1715
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v6

    const/4 v7, 0x0

    .line 1713
    move-object/from16 v3, p2

    move-object v5, v8

    invoke-virtual/range {v2 .. v7}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v0

    move-object/from16 v20, v0

    move-object/from16 v19, v8

    goto :goto_61

    .line 1717
    .end local v8    # "scheduler":Landroid/os/Handler;
    .restart local p3    # "scheduler":Landroid/os/Handler;
    :cond_33
    if-nez p3, :cond_3d

    .line 1718
    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v9, v2

    .end local p3    # "scheduler":Landroid/os/Handler;
    .restart local v2    # "scheduler":Landroid/os/Handler;
    goto :goto_3f

    .line 1717
    .end local v2    # "scheduler":Landroid/os/Handler;
    .restart local p3    # "scheduler":Landroid/os/Handler;
    :cond_3d
    move-object/from16 v9, p3

    .line 1720
    .end local p3    # "scheduler":Landroid/os/Handler;
    .local v9, "scheduler":Landroid/os/Handler;
    :goto_3f
    new-instance v10, Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    .line 1721
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    move-object/from16 v4, p2

    move-object v6, v9

    invoke-direct/range {v2 .. v8}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/app/IApplicationThread;Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    .line 1722
    invoke-virtual {v10}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v0

    move-object/from16 v20, v0

    move-object/from16 v19, v9

    goto :goto_61

    .line 1708
    .end local v9    # "scheduler":Landroid/os/Handler;
    .restart local p3    # "scheduler":Landroid/os/Handler;
    :cond_5d
    move-object/from16 v19, p3

    move-object/from16 v20, v0

    .line 1725
    .end local v0    # "rd":Landroid/content/IIntentReceiver;
    .end local p3    # "scheduler":Landroid/os/Handler;
    .local v19, "scheduler":Landroid/os/Handler;
    .local v20, "rd":Landroid/content/IIntentReceiver;
    :goto_61
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v21

    .line 1727
    .local v21, "resolvedType":Ljava/lang/String;
    :try_start_69
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1728
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1729
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v0, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    .line 1732
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v18

    .line 1728
    move-object/from16 v5, p1

    move-object/from16 v6, v21

    move-object/from16 v7, v20

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object v15, v0

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_97} :catch_99

    .line 1735
    nop

    .line 1736
    return-void

    .line 1733
    :catch_99
    move-exception v0

    .line 1734
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public sendStickyOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 30
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p4, "scheduler"    # Landroid/os/Handler;
    .param p5, "initialCode"    # I
    .param p6, "initialData"    # Ljava/lang/String;
    .param p7, "initialExtras"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1791
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    const/4 v0, 0x0

    .line 1792
    .local v0, "rd":Landroid/content/IIntentReceiver;
    if-eqz p3, :cond_5a

    .line 1793
    iget-object v2, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v2, :cond_30

    .line 1794
    if-nez p4, :cond_15

    .line 1795
    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v8, v2

    .end local p4    # "scheduler":Landroid/os/Handler;
    .local v2, "scheduler":Landroid/os/Handler;
    goto :goto_17

    .line 1794
    .end local v2    # "scheduler":Landroid/os/Handler;
    .restart local p4    # "scheduler":Landroid/os/Handler;
    :cond_15
    move-object/from16 v8, p4

    .line 1797
    .end local p4    # "scheduler":Landroid/os/Handler;
    .local v8, "scheduler":Landroid/os/Handler;
    :goto_17
    iget-object v2, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 1798
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1799
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v6

    const/4 v7, 0x0

    .line 1797
    move-object/from16 v3, p3

    move-object v5, v8

    invoke-virtual/range {v2 .. v7}, Landroid/app/LoadedApk;->getReceiverDispatcher(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)Landroid/content/IIntentReceiver;

    move-result-object v0

    move-object/from16 v20, v0

    move-object/from16 v19, v8

    goto :goto_5e

    .line 1801
    .end local v8    # "scheduler":Landroid/os/Handler;
    .restart local p4    # "scheduler":Landroid/os/Handler;
    :cond_30
    if-nez p4, :cond_3a

    .line 1802
    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v9, v2

    .end local p4    # "scheduler":Landroid/os/Handler;
    .restart local v2    # "scheduler":Landroid/os/Handler;
    goto :goto_3c

    .line 1801
    .end local v2    # "scheduler":Landroid/os/Handler;
    .restart local p4    # "scheduler":Landroid/os/Handler;
    :cond_3a
    move-object/from16 v9, p4

    .line 1804
    .end local p4    # "scheduler":Landroid/os/Handler;
    .local v9, "scheduler":Landroid/os/Handler;
    :goto_3c
    new-instance v10, Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v2, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    .line 1805
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    move-object/from16 v4, p3

    move-object v6, v9

    invoke-direct/range {v2 .. v8}, Landroid/app/LoadedApk$ReceiverDispatcher;-><init>(Landroid/app/IApplicationThread;Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/os/Handler;Landroid/app/Instrumentation;Z)V

    .line 1806
    invoke-virtual {v10}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIIntentReceiver()Landroid/content/IIntentReceiver;

    move-result-object v0

    move-object/from16 v20, v0

    move-object/from16 v19, v9

    goto :goto_5e

    .line 1792
    .end local v9    # "scheduler":Landroid/os/Handler;
    .restart local p4    # "scheduler":Landroid/os/Handler;
    :cond_5a
    move-object/from16 v19, p4

    move-object/from16 v20, v0

    .line 1809
    .end local v0    # "rd":Landroid/content/IIntentReceiver;
    .end local p4    # "scheduler":Landroid/os/Handler;
    .local v19, "scheduler":Landroid/os/Handler;
    .local v20, "rd":Landroid/content/IIntentReceiver;
    :goto_5e
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v21

    .line 1811
    .local v21, "resolvedType":Ljava/lang/String;
    :try_start_66
    invoke-virtual {v15, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1812
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v0, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1813
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v0, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    .line 1816
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 1812
    move-object/from16 v5, p1

    move-object/from16 v6, v21

    move-object/from16 v7, v20

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object v15, v0

    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_94} :catch_96

    .line 1819
    nop

    .line 1820
    return-void

    .line 1817
    :catch_96
    move-exception v0

    .line 1818
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public setAutofillClient(Landroid/view/autofill/AutofillManager$AutofillClient;)V
    .registers 2
    .param p1, "client"    # Landroid/view/autofill/AutofillManager$AutofillClient;

    .line 3408
    iput-object p1, p0, Landroid/app/ContextImpl;->mAutofillClient:Landroid/view/autofill/AutofillManager$AutofillClient;

    .line 3409
    return-void
.end method

.method public setAutofillOptions(Landroid/content/AutofillOptions;)V
    .registers 2
    .param p1, "options"    # Landroid/content/AutofillOptions;

    .line 3420
    iput-object p1, p0, Landroid/app/ContextImpl;->mAutofillOptions:Landroid/content/AutofillOptions;

    .line 3421
    return-void
.end method

.method public setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V
    .registers 2
    .param p1, "options"    # Landroid/content/ContentCaptureOptions;

    .line 3432
    iput-object p1, p0, Landroid/app/ContextImpl;->mContentCaptureOptions:Landroid/content/ContentCaptureOptions;

    .line 3433
    return-void
.end method

.method final setOuterContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 3700
    iput-object p1, p0, Landroid/app/ContextImpl;->mOuterContext:Landroid/content/Context;

    .line 3701
    return-void
.end method

.method setResources(Landroid/content/res/Resources;)V
    .registers 3
    .param p1, "r"    # Landroid/content/res/Resources;

    .line 3666
    instance-of v0, p1, Landroid/content/res/CompatResources;

    if-eqz v0, :cond_a

    .line 3667
    move-object v0, p1

    check-cast v0, Landroid/content/res/CompatResources;

    invoke-virtual {v0, p0}, Landroid/content/res/CompatResources;->setContext(Landroid/content/Context;)V

    .line 3669
    :cond_a
    iput-object p1, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    .line 3670
    return-void
.end method

.method public setTheme(I)V
    .registers 4
    .param p1, "resId"    # I

    .line 474
    iget-object v0, p0, Landroid/app/ContextImpl;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 475
    :try_start_3
    iget v1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    if-eq v1, p1, :cond_c

    .line 476
    iput p1, p0, Landroid/app/ContextImpl;->mThemeResource:I

    .line 477
    invoke-direct {p0}, Landroid/app/ContextImpl;->initializeTheme()V

    .line 479
    :cond_c
    monitor-exit v0

    .line 480
    return-void

    .line 479
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public setWallpaper(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1123
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1124
    return-void
.end method

.method public setWallpaper(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1129
    invoke-direct {p0}, Landroid/app/ContextImpl;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    .line 1130
    return-void
.end method

.method public startActivities([Landroid/content/Intent;)V
    .registers 3
    .param p1, "intents"    # [Landroid/content/Intent;

    .line 1195
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1196
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ContextImpl;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1197
    return-void
.end method

.method public startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 1215
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1216
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2a

    .line 1222
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    .line 1223
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v5

    check-cast v0, Landroid/app/Activity;

    .line 1222
    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Landroid/app/Instrumentation;->execStartActivities(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1225
    return-void

    .line 1217
    :cond_2a
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Calling startActivities() from outside of an Activity context requires the FLAG_ACTIVITY_NEW_TASK flag on first Intent. Is this really what you want?"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startActivitiesAsUser([Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)I
    .registers 13
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 1202
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2c

    .line 1208
    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    .line 1209
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v5

    check-cast v0, Landroid/app/Activity;

    .line 1210
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 1208
    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v8}, Landroid/app/Instrumentation;->execStartActivitiesAsUser(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;I)I

    move-result v0

    return v0

    .line 1203
    :cond_2c
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Calling startActivities() from outside of an Activity context requires the FLAG_ACTIVITY_NEW_TASK flag on first Intent. Is this really what you want?"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1144
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1145
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ContextImpl;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1146
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 1156
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1162
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1164
    .local v0, "targetSdkVersion":I
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-nez v1, :cond_30

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1a

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_30

    :cond_1a
    if-eqz p2, :cond_28

    .line 1168
    invoke-static {p2}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_28

    goto :goto_30

    .line 1169
    :cond_28
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string v2, "Calling startActivity() from outside of an Activity context requires the FLAG_ACTIVITY_NEW_TASK flag. Is this really what you want?"

    invoke-direct {v1, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1174
    :cond_30
    :goto_30
    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v2

    .line 1175
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v6

    check-cast v1, Landroid/app/Activity;

    const/4 v8, -0x1

    .line 1174
    move-object v7, p1

    move-object v9, p2

    invoke-virtual/range {v2 .. v9}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    .line 1177
    return-void
.end method

.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 20
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 1183
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_35

    move-object/from16 v14, p0

    :try_start_6
    iget-object v0, v14, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1184
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 1185
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_18} :catch_33

    move-object/from16 v15, p1

    :try_start_1a
    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x10000000

    const/4 v11, 0x0

    .line 1187
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    .line 1183
    move-object/from16 v5, p1

    move-object/from16 v12, p2

    invoke-interface/range {v1 .. v13}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_2f} :catch_31

    .line 1190
    nop

    .line 1191
    return-void

    .line 1188
    :catch_31
    move-exception v0

    goto :goto_3a

    :catch_33
    move-exception v0

    goto :goto_38

    :catch_35
    move-exception v0

    move-object/from16 v14, p0

    :goto_38
    move-object/from16 v15, p1

    .line 1189
    .local v0, "e":Landroid/os/RemoteException;
    :goto_3a
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1151
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/ContextImpl;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1152
    return-void
.end method

.method public startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .registers 4
    .param p1, "service"    # Landroid/content/Intent;

    .line 1966
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1967
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    invoke-direct {p0, p1, v0, v1}, Landroid/app/ContextImpl;->startServiceCommon(Landroid/content/Intent;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 4
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1983
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/app/ContextImpl;->startServiceCommon(Landroid/content/Intent;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 14
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "profileFile"    # Ljava/lang/String;
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 2255
    if-eqz p3, :cond_6

    .line 2256
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 2258
    :cond_6
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2259
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v8

    const/4 v9, 0x0

    .line 2258
    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-interface/range {v1 .. v9}, Landroid/app/IActivityManager;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z

    move-result v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_19} :catch_1a

    return v0

    .line 2261
    :catch_1a
    move-exception v0

    .line 2262
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .registers 13
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .param p3, "flagsMask"    # I
    .param p4, "flagsValues"    # I
    .param p5, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 1231
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/ContextImpl;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 1232
    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 23
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .param p3, "flagsMask"    # I
    .param p4, "flagsValues"    # I
    .param p5, "extraFlags"    # I
    .param p6, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 1239
    move-object/from16 v1, p0

    move-object/from16 v14, p2

    const/4 v0, 0x0

    .line 1240
    .local v0, "resolvedType":Ljava/lang/String;
    if-eqz v14, :cond_16

    .line 1241
    :try_start_7
    invoke-virtual {v14, v1}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    .line 1242
    invoke-virtual {v14, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1243
    invoke-virtual/range {p0 .. p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 1245
    :cond_16
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    iget-object v3, v1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 1246
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v3

    .line 1247
    const/4 v15, 0x0

    if-eqz p1, :cond_28

    invoke-virtual/range {p1 .. p1}, Landroid/content/IntentSender;->getTarget()Landroid/content/IIntentSender;

    move-result-object v4

    goto :goto_29

    :cond_28
    move-object v4, v15

    .line 1248
    :goto_29
    if-eqz p1, :cond_30

    invoke-virtual/range {p1 .. p1}, Landroid/content/IntentSender;->getWhitelistToken()Landroid/os/IBinder;

    move-result-object v5

    goto :goto_31

    :cond_30
    move-object v5, v15

    :goto_31
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1246
    move-object/from16 v6, p2

    move-object v7, v0

    move/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p6

    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityTaskManager;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v2

    .line 1251
    .local v2, "result":I
    const/16 v3, -0x60

    if-eq v2, v3, :cond_4a

    .line 1254
    invoke-static {v2, v15}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    .line 1257
    .end local v0    # "resolvedType":Ljava/lang/String;
    .end local v2    # "result":I
    nop

    .line 1258
    return-void

    .line 1252
    .restart local v0    # "resolvedType":Ljava/lang/String;
    .restart local v2    # "result":I
    :cond_4a
    new-instance v3, Landroid/content/IntentSender$SendIntentException;

    invoke-direct {v3}, Landroid/content/IntentSender$SendIntentException;-><init>()V

    .end local p0    # "this":Landroid/app/ContextImpl;
    .end local p1    # "intent":Landroid/content/IntentSender;
    .end local p2    # "fillInIntent":Landroid/content/Intent;
    .end local p3    # "flagsMask":I
    .end local p4    # "flagsValues":I
    .end local p5    # "extraFlags":I
    .end local p6    # "options":Landroid/os/Bundle;
    throw v3
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_50} :catch_50

    .line 1255
    .end local v0    # "resolvedType":Ljava/lang/String;
    .end local v2    # "result":I
    .restart local p0    # "this":Landroid/app/ContextImpl;
    .restart local p1    # "intent":Landroid/content/IntentSender;
    .restart local p2    # "fillInIntent":Landroid/content/Intent;
    .restart local p3    # "flagsMask":I
    .restart local p4    # "flagsValues":I
    .restart local p5    # "extraFlags":I
    .restart local p6    # "options":Landroid/os/Bundle;
    :catch_50
    move-exception v0

    .line 1256
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .registers 4
    .param p1, "service"    # Landroid/content/Intent;

    .line 1960
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1961
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    invoke-direct {p0, p1, v0, v1}, Landroid/app/ContextImpl;->startServiceCommon(Landroid/content/Intent;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 4
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1978
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/app/ContextImpl;->startServiceCommon(Landroid/content/Intent;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public stopService(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "service"    # Landroid/content/Intent;

    .line 1972
    invoke-direct {p0}, Landroid/app/ContextImpl;->warnIfCallingFromSystemProcess()V

    .line 1973
    iget-object v0, p0, Landroid/app/ContextImpl;->mUser:Landroid/os/UserHandle;

    invoke-direct {p0, p1, v0}, Landroid/app/ContextImpl;->stopServiceCommon(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z
    .registers 4
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 2036
    invoke-direct {p0, p1, p2}, Landroid/app/ContextImpl;->stopServiceCommon(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .registers 5
    .param p1, "conn"    # Landroid/content/ServiceConnection;

    .line 2235
    if-eqz p1, :cond_27

    .line 2238
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_1f

    .line 2239
    nop

    .line 2240
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    .line 2239
    invoke-virtual {v0, v1, p1}, Landroid/app/LoadedApk;->forgetServiceDispatcher(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/app/IServiceConnection;

    move-result-object v0

    .line 2242
    .local v0, "sd":Landroid/app/IServiceConnection;
    :try_start_f
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->unbindService(Landroid/app/IServiceConnection;)Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_19

    .line 2245
    nop

    .line 2246
    .end local v0    # "sd":Landroid/app/IServiceConnection;
    nop

    .line 2249
    return-void

    .line 2243
    .restart local v0    # "sd":Landroid/app/IServiceConnection;
    :catch_19
    move-exception v1

    .line 2244
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2247
    .end local v0    # "sd":Landroid/app/IServiceConnection;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2236
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connection is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterDeviceIdChangeListener(Ljava/util/function/IntConsumer;)V
    .registers 5
    .param p1, "listener"    # Ljava/util/function/IntConsumer;

    .line 3305
    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3306
    iget-object v0, p0, Landroid/app/ContextImpl;->mDeviceIdListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3307
    :try_start_9
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->getDeviceIdListener(Ljava/util/function/IntConsumer;)Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;

    move-result-object v1

    .line 3308
    .local v1, "listenerToRemove":Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;
    if-eqz v1, :cond_14

    .line 3309
    iget-object v2, p0, Landroid/app/ContextImpl;->mDeviceIdChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3311
    .end local v1    # "listenerToRemove":Landroid/app/ContextImpl$DeviceIdChangeListenerDelegate;
    :cond_14
    monitor-exit v0

    .line 3312
    return-void

    .line 3311
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 5
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .line 1932
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_1d

    .line 1933
    nop

    .line 1934
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    .line 1933
    invoke-virtual {v0, v1, p1}, Landroid/app/LoadedApk;->forgetReceiverDispatcher(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Landroid/content/IIntentReceiver;

    move-result-object v0

    .line 1936
    .local v0, "rd":Landroid/content/IIntentReceiver;
    :try_start_d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->unregisterReceiver(Landroid/content/IIntentReceiver;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_17

    .line 1939
    nop

    .line 1940
    .end local v0    # "rd":Landroid/content/IIntentReceiver;
    nop

    .line 1943
    return-void

    .line 1937
    .restart local v0    # "rd":Landroid/content/IIntentReceiver;
    :catch_17
    move-exception v1

    .line 1938
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1941
    .end local v0    # "rd":Landroid/content/IIntentReceiver;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateDeviceId(I)V
    .registers 6
    .param p1, "updatedDeviceId"    # I

    .line 3259
    if-eqz p1, :cond_2a

    .line 3260
    const-class v0, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {p0, v0}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/VirtualDeviceManager;

    .line 3261
    .local v0, "vdm":Landroid/companion/virtual/VirtualDeviceManager;
    invoke-virtual {v0, p1}, Landroid/companion/virtual/VirtualDeviceManager;->isValidVirtualDeviceId(I)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_2a

    .line 3262
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a valid ID of the default device or any virtual device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3267
    .end local v0    # "vdm":Landroid/companion/virtual/VirtualDeviceManager;
    :cond_2a
    :goto_2a
    iget-boolean v0, p0, Landroid/app/ContextImpl;->mIsExplicitDeviceId:Z

    if-nez v0, :cond_38

    .line 3272
    iget v0, p0, Landroid/app/ContextImpl;->mDeviceId:I

    if-eq v0, p1, :cond_37

    .line 3273
    iput p1, p0, Landroid/app/ContextImpl;->mDeviceId:I

    .line 3274
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;->notifyOnDeviceChangedListeners(I)V

    .line 3276
    :cond_37
    return-void

    .line 3268
    :cond_38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot update device ID on a Context created with createDeviceContext()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateDisplay(I)V
    .registers 6
    .param p1, "displayId"    # I

    .line 3227
    invoke-static {}, Landroid/app/ActivityThread;->isFixedAppContextDisplay()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 3228
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3229
    .local v0, "appCtx":Landroid/content/Context;
    if-nez v0, :cond_12

    .line 3230
    iget-object v1, p0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 3232
    :cond_12
    iget-object v1, p0, Landroid/app/ContextImpl;->mOuterContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    if-nez p1, :cond_1d

    goto :goto_36

    .line 3233
    :cond_1d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad display id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3237
    .end local v0    # "appCtx":Landroid/content/Context;
    :cond_36
    :goto_36
    iget-object v0, p0, Landroid/app/ContextImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    iget-object v1, p0, Landroid/app/ContextImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1, v1}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/ContextImpl;->setDisplay(Landroid/view/Display;)V

    .line 3238
    iget v0, p0, Landroid/app/ContextImpl;->mContextType:I

    if-nez v0, :cond_48

    .line 3239
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/ContextImpl;->mContextType:I

    .line 3241
    :cond_48
    return-void
.end method

.method public updateServiceGroup(Landroid/content/ServiceConnection;II)V
    .registers 8
    .param p1, "conn"    # Landroid/content/ServiceConnection;
    .param p2, "group"    # I
    .param p3, "importance"    # I

    .line 2214
    if-eqz p1, :cond_41

    .line 2217
    iget-object v0, p0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_39

    .line 2218
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/LoadedApk;->lookupServiceDispatcher(Landroid/content/ServiceConnection;Landroid/content/Context;)Landroid/app/IServiceConnection;

    move-result-object v0

    .line 2219
    .local v0, "sd":Landroid/app/IServiceConnection;
    if-eqz v0, :cond_20

    .line 2224
    :try_start_10
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0, p2, p3}, Landroid/app/IActivityManager;->updateServiceGroup(Landroid/app/IServiceConnection;II)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_17} :catch_1a

    .line 2227
    nop

    .line 2228
    .end local v0    # "sd":Landroid/app/IServiceConnection;
    nop

    .line 2231
    return-void

    .line 2225
    .restart local v0    # "sd":Landroid/app/IServiceConnection;
    :catch_1a
    move-exception v1

    .line 2226
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2220
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_20
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServiceConnection not currently bound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2229
    .end local v0    # "sd":Landroid/app/IServiceConnection;
    :cond_39
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported in system context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2215
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connection is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
