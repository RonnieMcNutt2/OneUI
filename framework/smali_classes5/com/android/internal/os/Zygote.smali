.class public final Lcom/android/internal/os/Zygote;
.super Ljava/lang/Object;
.source "Zygote.java"


# static fields
.field public static final ALLOWLISTED_DATA_INFO_MAP:Ljava/lang/String; = "--allowlisted-data-info-map"

.field private static final ANDROID_SOCKET_PREFIX:Ljava/lang/String; = "ANDROID_SOCKET_"

.field public static final API_ENFORCEMENT_POLICY_MASK:I = 0x3000

.field public static final API_ENFORCEMENT_POLICY_SHIFT:I

.field public static final BIND_MOUNT_APP_DATA_DIRS:Ljava/lang/String; = "--bind-mount-data-dirs"

.field public static final BIND_MOUNT_APP_STORAGE_DIRS:Ljava/lang/String; = "--bind-mount-storage-dirs"

.field public static final CHILD_ZYGOTE_ABI_LIST_ARG:Ljava/lang/String; = "--abi-list="

.field public static final CHILD_ZYGOTE_SOCKET_NAME_ARG:Ljava/lang/String; = "--zygote-socket="

.field public static final CHILD_ZYGOTE_UID_RANGE_END:Ljava/lang/String; = "--uid-range-end="

.field public static final CHILD_ZYGOTE_UID_RANGE_START:Ljava/lang/String; = "--uid-range-start="

.field public static final DEBUG_ALWAYS_JIT:I = 0x40

.field public static final DEBUG_ENABLE_ASSERT:I = 0x4

.field public static final DEBUG_ENABLE_CHECKJNI:I = 0x2

.field public static final DEBUG_ENABLE_JDWP:I = 0x1

.field public static final DEBUG_ENABLE_JNI_LOGGING:I = 0x10

.field public static final DEBUG_ENABLE_SAFEMODE:I = 0x8

.field public static final DEBUG_GENERATE_DEBUG_INFO:I = 0x20

.field public static final DEBUG_GENERATE_MINI_DEBUG_INFO:I = 0x800

.field public static final DEBUG_IGNORE_APP_SIGNAL_HANDLER:I = 0x20000

.field public static final DEBUG_JAVA_DEBUGGABLE:I = 0x100

.field public static final DEBUG_NATIVE_DEBUGGABLE:I = 0x80

.field public static final DISABLE_TEST_API_ENFORCEMENT_POLICY:I = 0x40000

.field public static final DISABLE_VERIFIER:I = 0x200

.field private static final ENABLE_JDWP:Z

.field private static final GWP_ASAN:J = 0x8159f9eL

.field public static final GWP_ASAN_LEVEL_ALWAYS:I = 0x400000

.field public static final GWP_ASAN_LEVEL_DEFAULT:I = 0x600000

.field public static final GWP_ASAN_LEVEL_LOTTERY:I = 0x200000

.field public static final GWP_ASAN_LEVEL_MASK:I = 0x600000

.field public static final GWP_ASAN_LEVEL_NEVER:I = 0x0

.field static final INT_ARRAY_2D:[[I

.field public static final MEMORY_TAG_LEVEL_ASYNC:I = 0x100000

.field public static final MEMORY_TAG_LEVEL_MASK:I = 0x180000

.field public static final MEMORY_TAG_LEVEL_NONE:I = 0x0

.field public static final MEMORY_TAG_LEVEL_SYNC:I = 0x180000

.field public static final MEMORY_TAG_LEVEL_TBI:I = 0x80000

.field public static final MOUNT_EXTERNAL_ANDROID_WRITABLE:I = 0x4

.field public static final MOUNT_EXTERNAL_DEFAULT:I = 0x1

.field public static final MOUNT_EXTERNAL_INSTALLER:I = 0x2

.field public static final MOUNT_EXTERNAL_NONE:I = 0x0

.field public static final MOUNT_EXTERNAL_PASS_THROUGH:I = 0x3

.field private static final NATIVE_HEAP_POINTER_TAGGING:J = 0x81774caL

.field private static final NATIVE_HEAP_POINTER_TAGGING_SECONDARY_ZYGOTE:J = 0xc5f142dL

.field private static final NATIVE_HEAP_ZERO_INIT:J = 0xa9ca600L

.field public static final NATIVE_HEAP_ZERO_INIT_ENABLED:I = 0x800000

.field private static final NATIVE_MEMTAG_ASYNC:J = 0x817bb2cL

.field private static final NATIVE_MEMTAG_SYNC:J = 0xa937ebaL

.field public static final ONLY_USE_SYSTEM_OAT_FILES:I = 0x400

.field public static final PKG_DATA_INFO_MAP:Ljava/lang/String; = "--pkg-data-info-map"

.field public static final PRIMARY_SOCKET_NAME:Ljava/lang/String; = "zygote"

.field private static final PRIORITY_MAX:I = -0x14

.field public static final PROFILEABLE:I = 0x1000000

.field public static final PROFILE_FROM_SHELL:I = 0x8000

.field public static final PROFILE_SYSTEM_SERVER:I = 0x4000

.field public static final PROPERTY_CHECK_INTERVAL:J = 0xea60L

.field public static final SECONDARY_SOCKET_NAME:Ljava/lang/String; = "zygote_secondary"

.field public static final SOCKET_BUFFER_SIZE:I = 0x100

.field public static final START_AS_TOP_APP_ARG:Ljava/lang/String; = "--is-top-app"

.field private static final TAG:Ljava/lang/String; = "Zygote"

.field private static final USAP_ERROR_PREFIX:Ljava/lang/String; = "Invalid command to USAP: "

.field static final USAP_MANAGEMENT_MESSAGE_BYTES:I = 0x8

.field public static final USAP_POOL_PRIMARY_SOCKET_NAME:Ljava/lang/String; = "usap_pool_primary"

.field public static final USAP_POOL_SECONDARY_SOCKET_NAME:Ljava/lang/String; = "usap_pool_secondary"

.field public static final USE_APP_IMAGE_STARTUP_CACHE:I = 0x10000


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 102
    nop

    .line 103
    const/16 v0, 0x3000

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    sput v0, Lcom/android/internal/os/Zygote;->API_ENFORCEMENT_POLICY_SHIFT:I

    .line 283
    const/4 v0, 0x0

    filled-new-array {v0, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/android/internal/os/Zygote;->INT_ARRAY_2D:[[I

    .line 1020
    const-string/jumbo v0, "persist.debug.dalvik.vm.jdwp.enabled"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1021
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/Zygote;->ENABLE_JDWP:Z

    .line 1020
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static allowAppFilesAcrossFork(Landroid/content/pm/ApplicationInfo;)V
    .registers 5
    .param p0, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 518
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getAllApkPaths()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    .line 519
    .local v3, "path":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/os/Zygote;->nativeAllowFileAcrossFork(Ljava/lang/String;)V

    .line 518
    .end local v3    # "path":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 521
    :cond_10
    return-void
.end method

.method static allowFilesOpenedByPreload()V
    .registers 0

    .line 548
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeAllowFilesOpenedByPreload()V

    .line 549
    return-void
.end method

.method static appendQuotedShellArgs(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .registers 8
    .param p0, "command"    # Ljava/lang/StringBuilder;
    .param p1, "args"    # [Ljava/lang/String;

    .line 1164
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_1e

    aget-object v2, p1, v1

    .line 1165
    .local v2, "arg":Ljava/lang/String;
    const-string v3, " \'"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'\\\'\'"

    const-string v5, "\'"

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1164
    .end local v2    # "arg":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1167
    :cond_1e
    return-void
.end method

.method static applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteArguments;)V
    .registers 2
    .param p0, "args"    # Lcom/android/internal/os/ZygoteArguments;

    .line 1034
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/internal/os/Zygote;->ENABLE_JDWP:Z

    if-eqz v0, :cond_e

    .line 1035
    :cond_8
    iget v0, p0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    .line 1037
    :cond_e
    return-void
.end method

.method static applyInvokeWithSecurityPolicy(Lcom/android/internal/os/ZygoteArguments;Landroid/net/Credentials;)V
    .registers 5
    .param p0, "args"    # Lcom/android/internal/os/ZygoteArguments;
    .param p1, "peer"    # Landroid/net/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    .line 1055
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v0

    .line 1057
    .local v0, "peerUid":I
    iget-object v1, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    if-eqz v1, :cond_19

    if-eqz v0, :cond_19

    iget v1, p0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_11

    goto :goto_19

    .line 1059
    :cond_11
    new-instance v1, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v2, "Peer is permitted to specify an explicit invoke-with wrapper command only for debuggable applications."

    invoke-direct {v1, v2}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1063
    :cond_19
    :goto_19
    return-void
.end method

.method static applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteArguments;)V
    .registers 2
    .param p0, "args"    # Lcom/android/internal/os/ZygoteArguments;

    .line 1090
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 1091
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/os/Zygote;->getWrapProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    .line 1093
    :cond_c
    return-void
.end method

.method static applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteArguments;Landroid/net/Credentials;)V
    .registers 4
    .param p0, "args"    # Lcom/android/internal/os/ZygoteArguments;
    .param p1, "peer"    # Landroid/net/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    .line 999
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mUidSpecified:Z

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    invoke-static {p1}, Lcom/android/internal/os/Zygote;->minChildUid(Landroid/net/Credentials;)I

    move-result v1

    if-lt v0, v1, :cond_d

    goto :goto_15

    .line 1000
    :cond_d
    new-instance v0, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v1, "System UID may not launch process with UID < 1000"

    invoke-direct {v0, v1}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1006
    :cond_15
    :goto_15
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mUidSpecified:Z

    const/4 v1, 0x1

    if-nez v0, :cond_22

    .line 1007
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    .line 1008
    iput-boolean v1, p0, Lcom/android/internal/os/ZygoteArguments;->mUidSpecified:Z

    .line 1010
    :cond_22
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mGidSpecified:Z

    if-nez v0, :cond_2e

    .line 1011
    invoke-virtual {p1}, Landroid/net/Credentials;->getGid()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mGid:I

    .line 1012
    iput-boolean v1, p0, Lcom/android/internal/os/ZygoteArguments;->mGidSpecified:Z

    .line 1014
    :cond_2e
    return-void
.end method

.method private static blockSigTerm()V
    .registers 0

    .line 884
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeBlockSigTerm()V

    .line 885
    return-void
.end method

.method private static boostUsapPriority()V
    .registers 0

    .line 896
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeBoostUsapPriority()V

    .line 897
    return-void
.end method

.method private static callPostForkChildHooks(IZZLjava/lang/String;)V
    .registers 4
    .param p0, "runtimeFlags"    # I
    .param p1, "isSystemServer"    # Z
    .param p2, "isZygote"    # Z
    .param p3, "instructionSet"    # Ljava/lang/String;

    .line 1135
    invoke-static {p0, p1, p2, p3}, Ldalvik/system/ZygoteHooks;->postForkChild(IZZLjava/lang/String;)V

    .line 1136
    return-void
.end method

.method private static callPostForkSystemServerHooks(I)V
    .registers 1
    .param p0, "runtimeFlags"    # I

    .line 1128
    invoke-static {p0}, Ldalvik/system/ZygoteHooks;->postForkSystemServer(I)V

    .line 1129
    return-void
.end method

.method private static childMain(Lcom/android/internal/os/ZygoteCommandBuffer;Landroid/net/LocalServerSocket;Ljava/io/FileDescriptor;)Ljava/lang/Runnable;
    .registers 31
    .param p0, "argBuffer"    # Lcom/android/internal/os/ZygoteCommandBuffer;
    .param p1, "usapPoolSocket"    # Landroid/net/LocalServerSocket;
    .param p2, "writePipe"    # Ljava/io/FileDescriptor;

    .line 743
    move-object/from16 v1, p2

    const-string v2, "Failed to close USAP pool socket"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 745
    .local v3, "pid":I
    const/4 v4, 0x0

    .line 746
    .local v4, "usapOutputStream":Ljava/io/DataOutputStream;
    const/4 v5, 0x0

    .line 748
    .local v5, "args":Lcom/android/internal/os/ZygoteArguments;
    const/4 v6, 0x0

    .line 749
    .local v6, "sessionSocket":Landroid/net/LocalSocket;
    const-string v7, "USAP"

    if-nez p0, :cond_5d

    .line 752
    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string/jumbo v0, "usap64"

    goto :goto_1c

    :cond_19
    const-string/jumbo v0, "usap32"

    :goto_1c
    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 757
    invoke-static {}, Lcom/android/internal/os/Zygote;->boostUsapPriority()V

    .line 760
    :goto_22
    const/4 v8, 0x0

    .line 762
    .local v8, "tmpArgBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    :try_start_23
    invoke-virtual/range {p1 .. p1}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v0

    move-object v6, v0

    .line 766
    invoke-static {}, Lcom/android/internal/os/Zygote;->blockSigTerm()V

    .line 768
    new-instance v0, Ljava/io/DataOutputStream;

    .line 769
    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v4, v0

    .line 770
    invoke-virtual {v6}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object v0

    .line 771
    .local v0, "peerCredentials":Landroid/net/Credentials;
    new-instance v9, Lcom/android/internal/os/ZygoteCommandBuffer;

    invoke-direct {v9, v6}, Lcom/android/internal/os/ZygoteCommandBuffer;-><init>(Landroid/net/LocalSocket;)V

    move-object v8, v9

    .line 772
    invoke-static {v8}, Lcom/android/internal/os/ZygoteArguments;->getInstance(Lcom/android/internal/os/ZygoteCommandBuffer;)Lcom/android/internal/os/ZygoteArguments;

    move-result-object v9

    move-object v5, v9

    .line 773
    invoke-static {v5, v0}, Lcom/android/internal/os/Zygote;->applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteArguments;Landroid/net/Credentials;)V

    .line 775
    invoke-static {v5}, Lcom/android/internal/os/Zygote;->validateUsapCommand(Lcom/android/internal/os/ZygoteArguments;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_4a} :catch_4b

    .line 776
    goto :goto_66

    .line 777
    .end local v0    # "peerCredentials":Landroid/net/Credentials;
    :catch_4b
    move-exception v0

    .line 778
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    .end local v0    # "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/internal/os/Zygote;->unblockSigTerm()V

    .line 782
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 783
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 784
    .end local v8    # "tmpArgBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    goto :goto_22

    .line 787
    :cond_5d
    invoke-static {}, Lcom/android/internal/os/Zygote;->blockSigTerm()V

    .line 789
    :try_start_60
    invoke-static/range {p0 .. p0}, Lcom/android/internal/os/ZygoteArguments;->getInstance(Lcom/android/internal/os/ZygoteCommandBuffer;)Lcom/android/internal/os/ZygoteArguments;

    move-result-object v0
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_64} :catch_1a2

    move-object v5, v0

    .line 793
    nop

    .line 796
    :goto_66
    if-eqz v5, :cond_19a

    .line 803
    :try_start_68
    invoke-static {v5}, Lcom/android/internal/os/Zygote;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteArguments;)V

    .line 805
    const/4 v0, 0x0

    .line 807
    .local v0, "rlimits":[[I
    iget-object v8, v5, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;
    :try_end_6e
    .catchall {:try_start_68 .. :try_end_6e} :catchall_18f

    if-eqz v8, :cond_87

    .line 808
    :try_start_70
    iget-object v8, v5, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;

    sget-object v9, Lcom/android/internal/os/Zygote;->INT_ARRAY_2D:[[I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I
    :try_end_7a
    .catchall {:try_start_70 .. :try_end_7a} :catchall_7e

    move-object v0, v8

    move-object/from16 v24, v0

    goto :goto_89

    .line 879
    .end local v0    # "rlimits":[[I
    :catchall_7e
    move-exception v0

    move/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v27, v6

    goto/16 :goto_196

    .line 807
    .restart local v0    # "rlimits":[[I
    :cond_87
    move-object/from16 v24, v0

    .line 811
    .end local v0    # "rlimits":[[I
    .local v24, "rlimits":[[I
    :goto_89
    if-nez p0, :cond_df

    .line 817
    :try_start_8b
    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_a5
    .catchall {:try_start_8b .. :try_end_8e} :catchall_a3

    .line 830
    :try_start_8e
    invoke-virtual/range {p1 .. p1}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 831
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-virtual/range {p1 .. p1}, Landroid/net/LocalServerSocket;->close()V

    .line 832
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_98
    .catch Landroid/system/ErrnoException; {:try_start_8e .. :try_end_98} :catch_99
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_98} :catch_99
    .catchall {:try_start_8e .. :try_end_98} :catchall_7e

    .line 836
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    goto :goto_df

    .line 833
    :catch_99
    move-exception v0

    .line 834
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_9a
    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v3    # "pid":I
    .end local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .end local v5    # "args":Lcom/android/internal/os/ZygoteArguments;
    .end local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .end local p0    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .end local p1    # "usapPoolSocket":Landroid/net/LocalServerSocket;
    .end local p2    # "writePipe":Ljava/io/FileDescriptor;
    :goto_a2
    throw v2
    :try_end_a3
    .catchall {:try_start_9a .. :try_end_a3} :catchall_7e

    .line 823
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v3    # "pid":I
    .restart local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .restart local v5    # "args":Lcom/android/internal/os/ZygoteArguments;
    .restart local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .restart local p0    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .restart local p1    # "usapPoolSocket":Landroid/net/LocalServerSocket;
    .restart local p2    # "writePipe":Ljava/io/FileDescriptor;
    :catchall_a3
    move-exception v0

    goto :goto_c8

    .line 818
    :catch_a5
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 819
    .local v0, "ioEx":Ljava/io/IOException;
    :try_start_a8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to write response to session socket: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 820
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 819
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v3    # "pid":I
    .end local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .end local v5    # "args":Lcom/android/internal/os/ZygoteArguments;
    .end local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .end local v24    # "rlimits":[[I
    .end local p0    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .end local p1    # "usapPoolSocket":Landroid/net/LocalServerSocket;
    .end local p2    # "writePipe":Ljava/io/FileDescriptor;
    throw v8
    :try_end_c8
    .catchall {:try_start_a8 .. :try_end_c8} :catchall_a3

    .line 830
    .end local v0    # "ioEx":Ljava/io/IOException;
    .restart local v3    # "pid":I
    .restart local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .restart local v5    # "args":Lcom/android/internal/os/ZygoteArguments;
    .restart local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .restart local v24    # "rlimits":[[I
    .restart local p0    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .restart local p1    # "usapPoolSocket":Landroid/net/LocalServerSocket;
    .restart local p2    # "writePipe":Ljava/io/FileDescriptor;
    :goto_c8
    :try_start_c8
    invoke-virtual/range {p1 .. p1}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    .line 831
    .local v8, "fd":Ljava/io/FileDescriptor;
    invoke-virtual/range {p1 .. p1}, Landroid/net/LocalServerSocket;->close()V

    .line 832
    invoke-static {v8}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_d2
    .catch Landroid/system/ErrnoException; {:try_start_c8 .. :try_end_d2} :catch_d5
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_d2} :catch_d5
    .catchall {:try_start_c8 .. :try_end_d2} :catchall_7e

    .line 836
    .end local v8    # "fd":Ljava/io/FileDescriptor;
    nop

    .line 837
    nop

    .end local v3    # "pid":I
    .end local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .end local v5    # "args":Lcom/android/internal/os/ZygoteArguments;
    .end local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .end local p0    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .end local p1    # "usapPoolSocket":Landroid/net/LocalServerSocket;
    .end local p2    # "writePipe":Ljava/io/FileDescriptor;
    :try_start_d4
    throw v0

    .line 833
    .restart local v3    # "pid":I
    .restart local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .restart local v5    # "args":Lcom/android/internal/os/ZygoteArguments;
    .restart local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .restart local p0    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .restart local p1    # "usapPoolSocket":Landroid/net/LocalServerSocket;
    .restart local p2    # "writePipe":Ljava/io/FileDescriptor;
    :catch_d5
    move-exception v0

    .line 834
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
    :try_end_de
    .catchall {:try_start_d4 .. :try_end_de} :catchall_7e

    goto :goto_a2

    .line 840
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_df
    :goto_df
    if-eqz v1, :cond_136

    .line 842
    const/4 v2, 0x0

    :try_start_e2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v8, 0x8

    invoke-direct {v0, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 844
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 851
    .local v8, "outputStream":Ljava/io/DataOutputStream;
    int-to-long v9, v3

    invoke-virtual {v8, v9, v10}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 852
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    .line 853
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    invoke-static {v1, v9, v2, v10}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_100} :catch_106
    .catchall {:try_start_e2 .. :try_end_100} :catchall_104

    .line 860
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "outputStream":Ljava/io/DataOutputStream;
    :try_start_100
    invoke-static/range {p2 .. p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_103
    .catchall {:try_start_100 .. :try_end_103} :catchall_7e

    .line 861
    goto :goto_136

    .line 860
    :catchall_104
    move-exception v0

    goto :goto_131

    .line 854
    :catch_106
    move-exception v0

    .line 855
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_107
    const-string v8, "Failed to write PID (%d) to pipe (%d): %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    .line 857
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-virtual/range {p2 .. p2}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v10, 0x1

    aput-object v2, v9, v10

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x2

    aput-object v2, v9, v10

    .line 856
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 855
    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v3    # "pid":I
    .end local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .end local v5    # "args":Lcom/android/internal/os/ZygoteArguments;
    .end local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .end local v24    # "rlimits":[[I
    .end local p0    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .end local p1    # "usapPoolSocket":Landroid/net/LocalServerSocket;
    .end local p2    # "writePipe":Ljava/io/FileDescriptor;
    throw v2
    :try_end_131
    .catchall {:try_start_107 .. :try_end_131} :catchall_104

    .line 860
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v3    # "pid":I
    .restart local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .restart local v5    # "args":Lcom/android/internal/os/ZygoteArguments;
    .restart local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .restart local v24    # "rlimits":[[I
    .restart local p0    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .restart local p1    # "usapPoolSocket":Landroid/net/LocalServerSocket;
    .restart local p2    # "writePipe":Ljava/io/FileDescriptor;
    :goto_131
    :try_start_131
    invoke-static/range {p2 .. p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 861
    nop

    .end local v3    # "pid":I
    .end local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .end local v5    # "args":Lcom/android/internal/os/ZygoteArguments;
    .end local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .end local p0    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .end local p1    # "usapPoolSocket":Landroid/net/LocalServerSocket;
    .end local p2    # "writePipe":Ljava/io/FileDescriptor;
    throw v0
    :try_end_136
    .catchall {:try_start_131 .. :try_end_136} :catchall_7e

    .line 864
    .restart local v3    # "pid":I
    .restart local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .restart local v5    # "args":Lcom/android/internal/os/ZygoteArguments;
    .restart local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .restart local p0    # "argBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .restart local p1    # "usapPoolSocket":Landroid/net/LocalServerSocket;
    .restart local p2    # "writePipe":Ljava/io/FileDescriptor;
    :cond_136
    :goto_136
    :try_start_136
    iget v8, v5, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    iget v9, v5, Lcom/android/internal/os/ZygoteArguments;->mGid:I

    iget-object v10, v5, Lcom/android/internal/os/ZygoteArguments;->mGids:[I

    iget v11, v5, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    iget v13, v5, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    iget-object v14, v5, Lcom/android/internal/os/ZygoteArguments;->mSeInfo:Ljava/lang/String;

    iget-object v15, v5, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    iget-boolean v0, v5, Lcom/android/internal/os/ZygoteArguments;->mStartChildZygote:Z

    iget-object v2, v5, Lcom/android/internal/os/ZygoteArguments;->mInstructionSet:Ljava/lang/String;

    iget-object v7, v5, Lcom/android/internal/os/ZygoteArguments;->mAppDataDir:Ljava/lang/String;

    iget-boolean v12, v5, Lcom/android/internal/os/ZygoteArguments;->mIsTopApp:Z

    iget-object v1, v5, Lcom/android/internal/os/ZygoteArguments;->mPkgDataInfoList:[Ljava/lang/String;
    :try_end_14e
    .catchall {:try_start_136 .. :try_end_14e} :catchall_18f

    move/from16 v25, v3

    .end local v3    # "pid":I
    .local v25, "pid":I
    :try_start_150
    iget-object v3, v5, Lcom/android/internal/os/ZygoteArguments;->mAllowlistedDataInfoList:[Ljava/lang/String;
    :try_end_152
    .catchall {:try_start_150 .. :try_end_152} :catchall_189

    move-object/from16 v26, v4

    .end local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .local v26, "usapOutputStream":Ljava/io/DataOutputStream;
    :try_start_154
    iget-boolean v4, v5, Lcom/android/internal/os/ZygoteArguments;->mBindMountAppDataDirs:Z
    :try_end_156
    .catchall {:try_start_154 .. :try_end_156} :catchall_185

    move-object/from16 v27, v6

    .end local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .local v27, "sessionSocket":Landroid/net/LocalSocket;
    :try_start_158
    iget-boolean v6, v5, Lcom/android/internal/os/ZygoteArguments;->mBindMountAppStorageDirs:Z

    move/from16 v19, v12

    move-object/from16 v12, v24

    move/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v7

    move-object/from16 v20, v1

    move-object/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v6

    invoke-static/range {v8 .. v23}, Lcom/android/internal/os/Zygote;->specializeAppProcess(II[II[[IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;ZZ)V

    .line 871
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 873
    iget v0, v5, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersion:I

    iget-object v1, v5, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    iget-object v2, v5, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/os/ZygoteInit;->zygoteInit(I[J[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v0
    :try_end_17f
    .catchall {:try_start_158 .. :try_end_17f} :catchall_183

    .line 879
    invoke-static {}, Lcom/android/internal/os/Zygote;->unblockSigTerm()V

    .line 873
    return-object v0

    .line 879
    .end local v24    # "rlimits":[[I
    :catchall_183
    move-exception v0

    goto :goto_196

    .end local v27    # "sessionSocket":Landroid/net/LocalSocket;
    .restart local v6    # "sessionSocket":Landroid/net/LocalSocket;
    :catchall_185
    move-exception v0

    move-object/from16 v27, v6

    .end local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .restart local v27    # "sessionSocket":Landroid/net/LocalSocket;
    goto :goto_196

    .end local v26    # "usapOutputStream":Ljava/io/DataOutputStream;
    .end local v27    # "sessionSocket":Landroid/net/LocalSocket;
    .restart local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .restart local v6    # "sessionSocket":Landroid/net/LocalSocket;
    :catchall_189
    move-exception v0

    move-object/from16 v26, v4

    move-object/from16 v27, v6

    .end local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .end local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .restart local v26    # "usapOutputStream":Ljava/io/DataOutputStream;
    .restart local v27    # "sessionSocket":Landroid/net/LocalSocket;
    goto :goto_196

    .end local v25    # "pid":I
    .end local v26    # "usapOutputStream":Ljava/io/DataOutputStream;
    .end local v27    # "sessionSocket":Landroid/net/LocalSocket;
    .restart local v3    # "pid":I
    .restart local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .restart local v6    # "sessionSocket":Landroid/net/LocalSocket;
    :catchall_18f
    move-exception v0

    move/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v27, v6

    .end local v3    # "pid":I
    .end local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .end local v6    # "sessionSocket":Landroid/net/LocalSocket;
    .restart local v25    # "pid":I
    .restart local v26    # "usapOutputStream":Ljava/io/DataOutputStream;
    .restart local v27    # "sessionSocket":Landroid/net/LocalSocket;
    :goto_196
    invoke-static {}, Lcom/android/internal/os/Zygote;->unblockSigTerm()V

    .line 880
    throw v0

    .line 797
    .end local v25    # "pid":I
    .end local v26    # "usapOutputStream":Ljava/io/DataOutputStream;
    .end local v27    # "sessionSocket":Landroid/net/LocalSocket;
    .restart local v3    # "pid":I
    .restart local v4    # "usapOutputStream":Ljava/io/DataOutputStream;
    .restart local v6    # "sessionSocket":Landroid/net/LocalSocket;
    :cond_19a
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Empty command line"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 790
    :catch_1a2
    move-exception v0

    move/from16 v25, v3

    move-object v1, v0

    .end local v3    # "pid":I
    .restart local v25    # "pid":I
    move-object v0, v1

    .line 791
    .restart local v0    # "ex":Ljava/lang/Exception;
    const-string v1, "AppStartup"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Failed to parse application start command"

    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static containsInetGid([I)Z
    .registers 4
    .param p0, "gids"    # [I

    .line 308
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_f

    .line 309
    aget v1, p0, v0

    const/16 v2, 0xbbb

    if-ne v1, v2, :cond_c

    const/4 v1, 0x1

    return v1

    .line 308
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 311
    .end local v0    # "i":I
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method static createManagedSocketFromInitSocket(Ljava/lang/String;)Landroid/net/LocalServerSocket;
    .registers 7
    .param p0, "socketName"    # Ljava/lang/String;

    .line 1105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANDROID_SOCKET_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1108
    .local v0, "fullSocketName":Ljava/lang/String;
    :try_start_13
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1109
    .local v1, "env":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_1b} :catch_45

    move v1, v2

    .line 1112
    .local v1, "fileDesc":I
    nop

    .line 1115
    :try_start_1d
    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    .line 1116
    .local v2, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v2, v1}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 1117
    new-instance v3, Landroid/net/LocalServerSocket;

    invoke-direct {v3, v2}, Landroid/net/LocalServerSocket;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2a} :catch_2b

    return-object v3

    .line 1118
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    :catch_2b
    move-exception v2

    .line 1119
    .local v2, "ex":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error building socket from file descriptor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1110
    .end local v1    # "fileDesc":I
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_45
    move-exception v1

    .line 1111
    .local v1, "ex":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Socket unset or invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static decideGwpAsanLevel(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Lcom/android/internal/compat/IPlatformCompat;)I
    .registers 9
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "processInfo"    # Landroid/content/pm/ProcessInfo;
    .param p2, "platformCompat"    # Lcom/android/internal/compat/IPlatformCompat;

    .line 1370
    const/4 v0, -0x1

    const/high16 v1, 0x400000

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_12

    iget v4, p1, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    if-eq v4, v0, :cond_12

    .line 1371
    iget v0, p1, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    if-ne v0, v2, :cond_10

    .line 1372
    goto :goto_11

    .line 1373
    :cond_10
    move v1, v3

    .line 1371
    :goto_11
    return v1

    .line 1376
    :cond_12
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getGwpAsanMode()I

    move-result v4

    if-eq v4, v0, :cond_21

    .line 1377
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getGwpAsanMode()I

    move-result v0

    if-ne v0, v2, :cond_1f

    .line 1378
    goto :goto_20

    .line 1379
    :cond_1f
    move v1, v3

    .line 1377
    :goto_20
    return v1

    .line 1381
    :cond_21
    const-wide/32 v4, 0x8159f9e

    invoke-static {v4, v5, p0, p2, v3}, Lcom/android/internal/os/Zygote;->isCompatChangeEnabled(JLandroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/IPlatformCompat;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1382
    return v1

    .line 1384
    :cond_2b
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_33

    .line 1385
    const/high16 v0, 0x200000

    return v0

    .line 1387
    :cond_33
    const/high16 v0, 0x600000

    return v0
.end method

.method private static decideTaggingLevel(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Lcom/android/internal/compat/IPlatformCompat;)I
    .registers 6
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "processInfo"    # Landroid/content/pm/ProcessInfo;
    .param p2, "platformCompat"    # Lcom/android/internal/compat/IPlatformCompat;

    .line 1332
    invoke-static {p0, p1, p2}, Lcom/android/internal/os/Zygote;->getRequestedMemtagLevel(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Lcom/android/internal/compat/IPlatformCompat;)I

    move-result v0

    .line 1335
    .local v0, "level":I
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeSupportsMemoryTagging()Z

    move-result v1

    const/high16 v2, 0x100000

    if-eqz v1, :cond_12

    .line 1338
    const/high16 v1, 0x80000

    if-ne v0, v1, :cond_22

    .line 1339
    const/4 v0, 0x0

    goto :goto_22

    .line 1341
    :cond_12
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeSupportsTaggedPointers()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1345
    if-eq v0, v2, :cond_1e

    const/high16 v1, 0x180000

    if-ne v0, v1, :cond_22

    .line 1346
    :cond_1e
    const/high16 v0, 0x80000

    goto :goto_22

    .line 1350
    :cond_21
    const/4 v0, 0x0

    .line 1356
    :cond_22
    :goto_22
    if-ne v0, v2, :cond_3e

    sget-boolean v1, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v1, :cond_2c

    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    if-eqz v1, :cond_3e

    .line 1358
    :cond_2c
    const-string/jumbo v1, "persist.arm64.memtag.default"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sync"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1359
    const/high16 v0, 0x180000

    .line 1362
    :cond_3e
    return v0
.end method

.method static emptyUsapPool()V
    .registers 0

    .line 594
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeEmptyUsapPool()V

    .line 595
    return-void
.end method

.method private static enableNativeHeapZeroInit(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Lcom/android/internal/compat/IPlatformCompat;)Z
    .registers 8
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "processInfo"    # Landroid/content/pm/ProcessInfo;
    .param p2, "platformCompat"    # Lcom/android/internal/compat/IPlatformCompat;

    .line 1395
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_f

    iget v3, p1, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    if-eq v3, v0, :cond_f

    .line 1397
    iget v0, p1, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    if-ne v0, v2, :cond_e

    move v1, v2

    :cond_e
    return v1

    .line 1400
    :cond_f
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getNativeHeapZeroInitialized()I

    move-result v3

    if-eq v3, v0, :cond_1d

    .line 1401
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getNativeHeapZeroInitialized()I

    move-result v0

    if-ne v0, v2, :cond_1c

    move v1, v2

    :cond_1c
    return v1

    .line 1404
    :cond_1d
    const-wide/32 v3, 0xa9ca600

    invoke-static {v3, v4, p0, p2, v1}, Lcom/android/internal/os/Zygote;->isCompatChangeEnabled(JLandroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/IPlatformCompat;I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1405
    return v2

    .line 1407
    :cond_27
    return v1
.end method

.method static execShell(Ljava/lang/String;)V
    .registers 4
    .param p0, "command"    # Ljava/lang/String;

    .line 1146
    const-string v0, "/system/bin/sh"

    const-string v1, "-c"

    filled-new-array {v0, v1, p0}, [Ljava/lang/String;

    move-result-object v0

    .line 1148
    .local v0, "args":[Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_9
    aget-object v1, v0, v1

    invoke-static {v1, v0}, Landroid/system/Os;->execv(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/system/ErrnoException; {:try_start_9 .. :try_end_e} :catch_10

    .line 1151
    nop

    .line 1152
    return-void

    .line 1149
    :catch_10
    move-exception v1

    .line 1150
    .local v1, "e":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static forkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[I[IZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;ZZ)I
    .registers 23
    .param p0, "uid"    # I
    .param p1, "gid"    # I
    .param p2, "gids"    # [I
    .param p3, "runtimeFlags"    # I
    .param p4, "rlimits"    # [[I
    .param p5, "mountExternal"    # I
    .param p6, "seInfo"    # Ljava/lang/String;
    .param p7, "niceName"    # Ljava/lang/String;
    .param p8, "fdsToClose"    # [I
    .param p9, "fdsToIgnore"    # [I
    .param p10, "startChildZygote"    # Z
    .param p11, "instructionSet"    # Ljava/lang/String;
    .param p12, "appDataDir"    # Ljava/lang/String;
    .param p13, "isTopApp"    # Z
    .param p14, "pkgDataInfoList"    # [Ljava/lang/String;
    .param p15, "allowlistedDataInfoList"    # [Ljava/lang/String;
    .param p16, "bindMountAppDataDirs"    # Z
    .param p17, "bindMountAppStorageDirs"    # Z

    .line 359
    move-object v0, p2

    invoke-static {}, Ldalvik/system/ZygoteHooks;->preFork()V

    .line 361
    invoke-static/range {p0 .. p17}, Lcom/android/internal/os/Zygote;->nativeForkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[I[IZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;ZZ)I

    move-result v1

    .line 366
    .local v1, "pid":I
    if-nez v1, :cond_1d

    .line 368
    const-wide/16 v2, 0x40

    const-string v4, "PostFork"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 371
    if-eqz v0, :cond_1d

    array-length v2, v0

    if-lez v2, :cond_1d

    .line 372
    invoke-static {p2}, Lcom/android/internal/os/Zygote;->containsInetGid([I)Z

    move-result v2

    invoke-static {v2}, Lcom/android/internal/net/NetworkUtilsInternal;->setAllowNetworkingForProcess(Z)V

    .line 377
    :cond_1d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 379
    invoke-static {}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    .line 380
    return v1
.end method

.method static forkSimpleApps(Lcom/android/internal/os/ZygoteCommandBuffer;Ljava/io/FileDescriptor;IILjava/lang/String;)Ljava/lang/Runnable;
    .registers 7
    .param p0, "argBuffer"    # Lcom/android/internal/os/ZygoteCommandBuffer;
    .param p1, "zygoteSocket"    # Ljava/io/FileDescriptor;
    .param p2, "expectedUid"    # I
    .param p3, "minUid"    # I
    .param p4, "firstNiceName"    # Ljava/lang/String;

    .line 721
    nop

    .line 722
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/ZygoteCommandBuffer;->forkRepeatedly(Ljava/io/FileDescriptor;IILjava/lang/String;)Z

    move-result v0

    .line 723
    .local v0, "in_child":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 724
    invoke-static {p0, v1, v1}, Lcom/android/internal/os/Zygote;->childMain(Lcom/android/internal/os/ZygoteCommandBuffer;Landroid/net/LocalServerSocket;Ljava/io/FileDescriptor;)Ljava/lang/Runnable;

    move-result-object v1

    return-object v1

    .line 726
    :cond_d
    return-object v1
.end method

.method static forkSystemServer(II[II[[IJJ)I
    .registers 16
    .param p0, "uid"    # I
    .param p1, "gid"    # I
    .param p2, "gids"    # [I
    .param p3, "runtimeFlags"    # I
    .param p4, "rlimits"    # [[I
    .param p5, "permittedCapabilities"    # J
    .param p7, "effectiveCapabilities"    # J

    .line 484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 485
    .local v0, "start":J
    const-string/jumbo v2, "preFork"

    const-wide/16 v3, 0x4000

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 486
    invoke-static {}, Ldalvik/system/ZygoteHooks;->preFork()V

    .line 487
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 490
    .local v2, "end":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!@Boot_EBS:    Took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v5, v2, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms wait for zygote prefork"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Zygote"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-static/range {p0 .. p8}, Lcom/android/internal/os/Zygote;->nativeForkSystemServer(II[II[[IJJ)I

    move-result v4

    .line 497
    .local v4, "pid":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/lang/Thread;->setPriority(I)V

    .line 499
    invoke-static {}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    .line 500
    return v4
.end method

.method static forkUsap(Landroid/net/LocalServerSocket;[IZ)Ljava/lang/Runnable;
    .registers 8
    .param p0, "usapPoolSocket"    # Landroid/net/LocalServerSocket;
    .param p1, "sessionSocketRawFDs"    # [I
    .param p2, "isPriorityFork"    # Z

    .line 662
    :try_start_0
    sget v0, Landroid/system/OsConstants;->O_CLOEXEC:I

    invoke-static {v0}, Landroid/system/Os;->pipe2(I)[Ljava/io/FileDescriptor;

    move-result-object v0

    .line 663
    .local v0, "pipeFDs":[Ljava/io/FileDescriptor;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 664
    .local v2, "readFD":Ljava/io/FileDescriptor;
    const/4 v3, 0x1

    aget-object v3, v0, v3
    :try_end_c
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_c} :catch_34

    move-object v0, v3

    .line 667
    .local v0, "writeFD":Ljava/io/FileDescriptor;
    nop

    .line 669
    invoke-virtual {v2}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v3

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v4

    invoke-static {v3, v4, p1, v1, p2}, Lcom/android/internal/os/Zygote;->nativeForkApp(II[IZZ)I

    move-result v1

    .line 671
    .local v1, "pid":I
    const/4 v3, 0x0

    if-nez v1, :cond_25

    .line 672
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 673
    invoke-static {v3, p0, v0}, Lcom/android/internal/os/Zygote;->childMain(Lcom/android/internal/os/ZygoteCommandBuffer;Landroid/net/LocalServerSocket;Ljava/io/FileDescriptor;)Ljava/lang/Runnable;

    move-result-object v3

    return-object v3

    .line 674
    :cond_25
    const/4 v4, -0x1

    if-ne v1, v4, :cond_29

    .line 676
    return-object v3

    .line 679
    :cond_29
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 680
    invoke-virtual {v2}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/internal/os/Zygote;->nativeAddUsapTableEntry(II)V

    .line 681
    return-object v3

    .line 665
    .end local v0    # "writeFD":Ljava/io/FileDescriptor;
    .end local v1    # "pid":I
    .end local v2    # "readFD":Ljava/io/FileDescriptor;
    :catch_34
    move-exception v0

    .line 666
    .local v0, "errnoEx":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to create USAP pipe."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getConfigurationProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .line 585
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string/jumbo v2, "persist.device_config"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "runtime_native"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 586
    const-string v1, "."

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 585
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConfigurationPropertyBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .registers 5
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/Boolean;

    .line 613
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string/jumbo v2, "persist.device_config"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "runtime_native"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 614
    const-string v1, "."

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 618
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 613
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getMemorySafetyRuntimeFlags(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Ljava/lang/String;Lcom/android/internal/compat/IPlatformCompat;)I
    .registers 6
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "processInfo"    # Landroid/content/pm/ProcessInfo;
    .param p2, "instructionSet"    # Ljava/lang/String;
    .param p3, "platformCompat"    # Lcom/android/internal/compat/IPlatformCompat;

    .line 1419
    invoke-static {p0, p1, p3}, Lcom/android/internal/os/Zygote;->decideGwpAsanLevel(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Lcom/android/internal/compat/IPlatformCompat;)I

    move-result v0

    .line 1430
    .local v0, "runtimeFlags":I
    if-eqz p2, :cond_e

    const-string v1, "arm64"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1431
    :cond_e
    invoke-static {p0, p1, p3}, Lcom/android/internal/os/Zygote;->decideTaggingLevel(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Lcom/android/internal/compat/IPlatformCompat;)I

    move-result v1

    or-int/2addr v0, v1

    .line 1433
    :cond_13
    invoke-static {p0, p1, p3}, Lcom/android/internal/os/Zygote;->enableNativeHeapZeroInit(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Lcom/android/internal/compat/IPlatformCompat;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1434
    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    .line 1436
    :cond_1c
    return v0
.end method

.method public static getMemorySafetyRuntimeFlagsForSecondaryZygote(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;)I
    .registers 7
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "processInfo"    # Landroid/content/pm/ProcessInfo;

    .line 1445
    nop

    .line 1447
    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1446
    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    .line 1448
    .local v0, "platformCompat":Lcom/android/internal/compat/IPlatformCompat;
    nop

    .line 1449
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/android/internal/os/Zygote;->getMemorySafetyRuntimeFlags(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Ljava/lang/String;Lcom/android/internal/compat/IPlatformCompat;)I

    move-result v1

    .line 1453
    .local v1, "runtimeFlags":I
    const/high16 v2, 0x180000

    and-int/2addr v2, v1

    const/high16 v3, 0x80000

    if-ne v2, v3, :cond_2a

    .line 1454
    const-wide/32 v2, 0xc5f142d

    const/16 v4, 0x1f

    invoke-static {v2, v3, p0, v0, v4}, Lcom/android/internal/os/Zygote;->isCompatChangeEnabled(JLandroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/IPlatformCompat;I)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1460
    const v2, -0x180001

    and-int/2addr v1, v2

    .line 1461
    or-int/lit8 v1, v1, 0x0

    .line 1463
    :cond_2a
    return v1
.end method

.method private static getRequestedMemtagLevel(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Lcom/android/internal/compat/IPlatformCompat;)I
    .registers 12
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "processInfo"    # Landroid/content/pm/ProcessInfo;
    .param p2, "platformCompat"    # Lcom/android/internal/compat/IPlatformCompat;

    .line 1279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.arm64.memtag.app."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1280
    .local v0, "appOverride":Ljava/lang/String;
    const-string/jumbo v1, "sync"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/high16 v3, 0x180000

    if-eqz v2, :cond_26

    .line 1281
    return v3

    .line 1282
    :cond_26
    const-string v2, "async"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/high16 v5, 0x100000

    if-eqz v4, :cond_31

    .line 1283
    return v5

    .line 1284
    :cond_31
    const-string/jumbo v4, "off"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_3c

    .line 1285
    return v6

    .line 1289
    :cond_3c
    const/4 v4, -0x1

    if-eqz p1, :cond_4a

    iget v7, p1, Landroid/content/pm/ProcessInfo;->memtagMode:I

    if-eq v7, v4, :cond_4a

    .line 1290
    iget v1, p1, Landroid/content/pm/ProcessInfo;->memtagMode:I

    invoke-static {v1}, Lcom/android/internal/os/Zygote;->memtagModeToZygoteMemtagLevel(I)I

    move-result v1

    return v1

    .line 1294
    :cond_4a
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getMemtagMode()I

    move-result v7

    if-eq v7, v4, :cond_59

    .line 1295
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getMemtagMode()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/os/Zygote;->memtagModeToZygoteMemtagLevel(I)I

    move-result v1

    return v1

    .line 1298
    :cond_59
    const-wide/32 v7, 0xa937eba

    invoke-static {v7, v8, p0, p2, v6}, Lcom/android/internal/os/Zygote;->isCompatChangeEnabled(JLandroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/IPlatformCompat;I)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 1299
    return v3

    .line 1302
    :cond_63
    const-wide/32 v7, 0x817bb2c

    invoke-static {v7, v8, p0, p2, v6}, Lcom/android/internal/os/Zygote;->isCompatChangeEnabled(JLandroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/IPlatformCompat;I)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 1303
    return v5

    .line 1307
    :cond_6d
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->allowsNativeHeapPointerTagging()Z

    move-result v4

    if-nez v4, :cond_74

    .line 1308
    return v6

    .line 1311
    :cond_74
    const-string/jumbo v4, "persist.arm64.memtag.app_default"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1312
    .local v4, "defaultLevel":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 1313
    return v3

    .line 1314
    :cond_82
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 1315
    return v5

    .line 1319
    :cond_89
    const-wide/32 v1, 0x81774ca

    const/16 v3, 0x1d

    invoke-static {v1, v2, p0, p2, v3}, Lcom/android/internal/os/Zygote;->isCompatChangeEnabled(JLandroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/IPlatformCompat;I)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 1321
    const/high16 v1, 0x80000

    return v1

    .line 1324
    :cond_97
    return v6
.end method

.method static getUsapPipeFDs()[I
    .registers 1

    .line 953
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeGetUsapPipeFDs()[I

    move-result-object v0

    return-object v0
.end method

.method static getUsapPoolCount()I
    .registers 1

    .line 625
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeGetUsapPoolCount()I

    move-result v0

    return v0
.end method

.method static getUsapPoolEventFD()Ljava/io/FileDescriptor;
    .registers 2

    .line 635
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 636
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeGetUsapPoolEventFD()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 638
    return-object v0
.end method

.method public static getWrapProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "appName"    # Ljava/lang/String;

    .line 1073
    const/4 v0, 0x0

    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_2c

    .line 1077
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wrap."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1078
    .local v1, "propertyValue":Ljava/lang/String;
    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 1079
    return-object v1

    .line 1081
    :cond_2b
    return-object v0

    .line 1074
    .end local v1    # "propertyValue":Ljava/lang/String;
    :cond_2c
    :goto_2c
    return-object v0
.end method

.method static initNativeState(Z)V
    .registers 1
    .param p0, "isPrimary"    # Z

    .line 570
    invoke-static {p0}, Lcom/android/internal/os/Zygote;->nativeInitNativeState(Z)V

    .line 571
    return-void
.end method

.method private static isCompatChangeEnabled(JLandroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/IPlatformCompat;I)Z
    .registers 6
    .param p0, "change"    # J
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "platformCompat"    # Lcom/android/internal/compat/IPlatformCompat;
    .param p4, "enabledAfter"    # I

    .line 1268
    if-eqz p3, :cond_9

    :try_start_2
    invoke-interface {p3, p0, p1, p2}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_6} :catch_7

    return v0

    .line 1269
    :catch_7
    move-exception v0

    goto :goto_a

    .line 1270
    :cond_9
    nop

    .line 1271
    :goto_a
    if-lez p4, :cond_12

    iget v0, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-le v0, p4, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method static markOpenedFilesBeforePreload()V
    .registers 0

    .line 534
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeMarkOpenedFilesBeforePreload()V

    .line 535
    return-void
.end method

.method private static memtagModeToZygoteMemtagLevel(I)I
    .registers 2
    .param p0, "memtagMode"    # I

    .line 1252
    packed-switch p0, :pswitch_data_c

    .line 1258
    const/4 v0, 0x0

    return v0

    .line 1256
    :pswitch_5
    const/high16 v0, 0x180000

    return v0

    .line 1254
    :pswitch_8
    const/high16 v0, 0x100000

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method static minChildUid(Landroid/net/Credentials;)I
    .registers 3
    .param p0, "peer"    # Landroid/net/Credentials;

    .line 978
    invoke-virtual {p0}, Landroid/net/Credentials;->getUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_f

    .line 979
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    if-nez v0, :cond_f

    .line 983
    return v1

    .line 985
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private static native nativeAddUsapTableEntry(II)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method protected static native nativeAllowFileAcrossFork(Ljava/lang/String;)V
.end method

.method private static native nativeAllowFilesOpenedByPreload()V
.end method

.method private static native nativeBlockSigTerm()V
.end method

.method private static native nativeBoostUsapPriority()V
.end method

.method public static native nativeCurrentTaggingLevel()I
.end method

.method private static native nativeEmptyUsapPool()V
.end method

.method private static native nativeForkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[I[IZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;ZZ)I
.end method

.method private static native nativeForkApp(II[IZZ)I
.end method

.method private static native nativeForkSystemServer(II[II[[IJJ)I
.end method

.method private static native nativeGetUsapPipeFDs()[I
.end method

.method private static native nativeGetUsapPoolCount()I
.end method

.method private static native nativeGetUsapPoolEventFD()I
.end method

.method protected static native nativeInitNativeState(Z)V
.end method

.method protected static native nativeInstallSeccompUidGidFilter(II)V
.end method

.method private static native nativeMarkOpenedFilesBeforePreload()V
.end method

.method public static native nativeParseSigChld([BI[I)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method static native nativePreApplicationInit()V
.end method

.method private static native nativeRemoveUsapTableEntry(I)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeSpecializeAppProcess(II[II[[IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;ZZ)V
.end method

.method public static native nativeSupportsMemoryTagging()Z
.end method

.method public static native nativeSupportsTaggedPointers()Z
.end method

.method private static native nativeUnblockSigTerm()V
.end method

.method static removeUsapTableEntry(I)Z
    .registers 2
    .param p0, "usapPID"    # I

    .line 965
    invoke-static {p0}, Lcom/android/internal/os/Zygote;->nativeRemoveUsapTableEntry(I)Z

    move-result v0

    return v0
.end method

.method static setAppProcessName(Lcom/android/internal/os/ZygoteArguments;Ljava/lang/String;)V
    .registers 3
    .param p0, "args"    # Lcom/android/internal/os/ZygoteArguments;
    .param p1, "loggingTag"    # Ljava/lang/String;

    .line 902
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 903
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    goto :goto_19

    .line 904
    :cond_a
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 905
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    goto :goto_19

    .line 907
    :cond_14
    const-string v0, "Unable to set package name."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :goto_19
    return-void
.end method

.method private static specializeAppProcess(II[II[[IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .registers 20
    .param p0, "uid"    # I
    .param p1, "gid"    # I
    .param p2, "gids"    # [I
    .param p3, "runtimeFlags"    # I
    .param p4, "rlimits"    # [[I
    .param p5, "mountExternal"    # I
    .param p6, "seInfo"    # Ljava/lang/String;
    .param p7, "niceName"    # Ljava/lang/String;
    .param p8, "startChildZygote"    # Z
    .param p9, "instructionSet"    # Ljava/lang/String;
    .param p10, "appDataDir"    # Ljava/lang/String;
    .param p11, "isTopApp"    # Z
    .param p12, "pkgDataInfoList"    # [Ljava/lang/String;
    .param p13, "allowlistedDataInfoList"    # [Ljava/lang/String;
    .param p14, "bindMountAppDataDirs"    # Z
    .param p15, "bindMountAppStorageDirs"    # Z

    .line 424
    move-object v0, p2

    invoke-static/range {p0 .. p15}, Lcom/android/internal/os/Zygote;->nativeSpecializeAppProcess(II[II[[IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;ZZ)V

    .line 430
    const-wide/16 v1, 0x40

    const-string v3, "PostFork"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 432
    if-eqz v0, :cond_17

    array-length v1, v0

    if-lez v1, :cond_17

    .line 433
    invoke-static {p2}, Lcom/android/internal/os/Zygote;->containsInetGid([I)Z

    move-result v1

    invoke-static {v1}, Lcom/android/internal/net/NetworkUtilsInternal;->setAllowNetworkingForProcess(Z)V

    .line 437
    :cond_17
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 445
    invoke-static {}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    .line 446
    return-void
.end method

.method private static unblockSigTerm()V
    .registers 0

    .line 890
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeUnblockSigTerm()V

    .line 891
    return-void
.end method

.method private static validateUsapCommand(Lcom/android/internal/os/ZygoteArguments;)V
    .registers 5
    .param p0, "args"    # Lcom/android/internal/os/ZygoteArguments;

    .line 919
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mAbiListQuery:Z

    if-nez v0, :cond_af

    .line 921
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mPidQuery:Z

    if-nez v0, :cond_a7

    .line 923
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadDefault:Z

    if-nez v0, :cond_9f

    .line 925
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadPackage:Ljava/lang/String;

    if-nez v0, :cond_97

    .line 927
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadApp:Ljava/lang/String;

    if-nez v0, :cond_8f

    .line 929
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mStartChildZygote:Z

    if-nez v0, :cond_87

    .line 931
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mApiDenylistExemptions:[Ljava/lang/String;

    if-nez v0, :cond_7f

    .line 934
    iget v0, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessLogSampleRate:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_77

    .line 937
    iget v0, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessStatslogSampleRate:I

    if-ne v0, v1, :cond_6f

    .line 940
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    if-nez v0, :cond_67

    .line 942
    iget-wide v0, p0, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_38

    iget-wide v0, p0, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_38

    .line 947
    return-void

    .line 943
    :cond_38
    new-instance v0, Lcom/android/internal/os/ZygoteSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client may not specify capabilities: permitted=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    .line 944
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", effective=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    .line 945
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 941
    :cond_67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --invoke-with"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 938
    :cond_6f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --hidden-api-statslog-sampling-rate="

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 935
    :cond_77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --hidden-api-log-sampling-rate="

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 932
    :cond_7f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --set-api-denylist-exemptions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 930
    :cond_87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --start-child-zygote"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 928
    :cond_8f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --preload-app"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 926
    :cond_97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --preload-package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 924
    :cond_9f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --preload-default"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 922
    :cond_a7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --get-pid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 920
    :cond_af
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid command to USAP: --query-abi-list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
