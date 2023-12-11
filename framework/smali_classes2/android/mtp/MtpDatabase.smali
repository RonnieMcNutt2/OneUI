.class public Landroid/mtp/MtpDatabase;
.super Ljava/lang/Object;
.source "MtpDatabase.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpDatabase$IncomingHandler;,
        Landroid/mtp/MtpDatabase$UpdateMediaStoreThread;
    }
.end annotation


# static fields
.field static final AGENT_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.easyMover.Agent"

.field static final AGENT_SERVICE_NAME:Ljava/lang/String; = "com.sec.android.easyMover.Agent.RemoteService"

.field private static final AUDIO_PROPERTIES:[I

.field private static final DEVICE_PROPERTIES:[I

.field static final EASYMOVER_AGENT:I = 0x0

.field static final EASYMOVER_SSM:I = 0x1

.field private static final FILE_PROPERTIES:[I

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final IMAGE_PROPERTIES:[I

.field private static final MAX_THUMB_SIZE:I = 0x32000

.field static final MSG_CLOSE:I = 0x2

.field static final MSG_GET_SERIAL_COMMAND:I = 0x4

.field static final MSG_OPEN:I = 0x1

.field static final MSG_SEND_SERIAL_COMMAND:I = 0x3

.field private static final NO_MEDIA:Ljava/lang/String; = ".nomedia"

.field private static final PATH_PROJECTION:[Ljava/lang/String;

.field private static final PATH_WHERE:Ljava/lang/String; = "_data=?"

.field private static final PLAYBACK_FORMATS:[I

.field static final RESP_FAIL:I = 0x2

.field static final RESP_NONE:I = 0x0

.field static final RESP_NOTREADY:I = 0x3

.field static final RESP_SUCCESS:I = 0x1

.field static final SSM_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.easyMover"

.field static final SSM_SERVICE_NAME:Ljava/lang/String; = "com.sec.android.easyMover.service.RemoteService"

.field private static final TAG:Ljava/lang/String;

.field private static final THUMB_HEIGHT:I = 0x100

.field private static final THUMB_WIDTH:I = 0x100

.field private static final VIDEO_PROPERTIES:[I

.field static jsonData:Ljava/lang/String;


# instance fields
.field conn:[Landroid/content/ServiceConnection;

.field private currentServiceID:I

.field isStratCommand:Z

.field private mBatteryLevel:I

.field private mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryScale:I

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private mDeviceProperties:Landroid/content/SharedPreferences;

.field private mDeviceType:I

.field private volatile mHostIsWindows:Z

.field private mHostType:Ljava/lang/String;

.field mIsBound:[Z

.field private mManager:Landroid/mtp/MtpStorageManager;

.field private final mMediaProvider:Landroid/content/ContentProviderClient;

.field private final mMessenger:Landroid/os/Messenger;

.field private mNativeContext:J

.field private final mPropertyGroupsByFormat:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mPropertyGroupsByProperty:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mServer:Landroid/mtp/MtpServer;

.field private mService:[Landroid/os/Messenger;

.field private mSkipThumbForHost:Z

.field private final mStorageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpStorage;",
            ">;"
        }
    .end annotation
.end field

.field serviceComponent:[Landroid/content/ComponentName;


# direct methods
.method public static synthetic $r8$lambda$gZOFsSpZR83qyZ_0u1dfZNac_Ns(Landroid/mtp/MtpDatabase;)Ljava/lang/Boolean;
    .registers 1

    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->lambda$addStorage$0()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBatteryLevel(Landroid/mtp/MtpDatabase;)I
    .registers 1

    iget p0, p0, Landroid/mtp/MtpDatabase;->mBatteryLevel:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMessenger(Landroid/mtp/MtpDatabase;)Landroid/os/Messenger;
    .registers 1

    iget-object p0, p0, Landroid/mtp/MtpDatabase;->mMessenger:Landroid/os/Messenger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServer(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;
    .registers 1

    iget-object p0, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Landroid/mtp/MtpDatabase;)[Landroid/os/Messenger;
    .registers 1

    iget-object p0, p0, Landroid/mtp/MtpDatabase;->mService:[Landroid/os/Messenger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBatteryLevel(Landroid/mtp/MtpDatabase;I)V
    .registers 2

    iput p1, p0, Landroid/mtp/MtpDatabase;->mBatteryLevel:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBatteryScale(Landroid/mtp/MtpDatabase;I)V
    .registers 2

    iput p1, p0, Landroid/mtp/MtpDatabase;->mBatteryScale:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 101
    const-class v0, Landroid/mtp/MtpDatabase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    .line 135
    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    .line 136
    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    .line 140
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 143
    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_5c

    sput-object v0, Landroid/mtp/MtpDatabase;->PLAYBACK_FORMATS:[I

    .line 176
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_98

    sput-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    .line 191
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_b4

    sput-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    .line 207
    const v0, 0xdc46

    const v1, 0xdc9a

    const v2, 0xdc89

    const v3, 0xdc48

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    .line 214
    filled-new-array {v3}, [I

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    .line 218
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_d2

    sput-object v0, Landroid/mtp/MtpDatabase;->DEVICE_PROPERTIES:[I

    .line 1166
    const/4 v0, 0x0

    sput-object v0, Landroid/mtp/MtpDatabase;->jsonData:Ljava/lang/String;

    return-void

    :array_5c
    .array-data 4
        0x3000
        0x3001
        0x3004
        0x3005
        0x3008
        0x3009
        0x300b
        0x3801
        0x3802
        0x3804
        0x3807
        0x3808
        0x380b
        0x380d
        0xb901
        0xb902
        0xb903
        0xb982
        0xb983
        0xb984
        0xba05
        0xba10
        0xba11
        0xba14
        0xba82
        0xb906
        0x3811
        0x3812
    .end array-data

    :array_98
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc41
        0xdc0b
        0xdc44
        0xdce0
        0xdc4e
        0xdc0d
    .end array-data

    :array_b4
    .array-data 4
        0xdc46
        0xdc9a
        0xdc9b
        0xdc8b
        0xdc99
        0xdc89
        0xdc8c
        0xdc96
        0xde99
        0xde92
        0xde9a
        0xde94
        0xde93
    .end array-data

    :array_d2
    .array-data 4
        0xd401
        0xd402
        0x5003
        0x5001
        0xd407
        0xd406
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subDirectories"    # [Ljava/lang/String;

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 112
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    .line 115
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Landroid/util/SparseArray;

    .line 118
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Landroid/util/SparseArray;

    .line 128
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/mtp/MtpDatabase;->mSkipThumbForHost:Z

    .line 129
    iput-boolean v1, p0, Landroid/mtp/MtpDatabase;->mHostIsWindows:Z

    .line 315
    new-instance v1, Landroid/mtp/MtpDatabase$1;

    invoke-direct {v1, p0}, Landroid/mtp/MtpDatabase$1;-><init>(Landroid/mtp/MtpDatabase;)V

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 1159
    const/4 v1, 0x2

    new-array v2, v1, [Z

    fill-array-data v2, :array_a6

    iput-object v2, p0, Landroid/mtp/MtpDatabase;->mIsBound:[Z

    .line 1160
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/mtp/MtpDatabase;->isStratCommand:Z

    .line 1161
    new-array v2, v1, [Landroid/os/Messenger;

    iput-object v2, p0, Landroid/mtp/MtpDatabase;->mService:[Landroid/os/Messenger;

    .line 1162
    new-instance v2, Landroid/os/Messenger;

    new-instance v3, Landroid/mtp/MtpDatabase$IncomingHandler;

    invoke-direct {v3}, Landroid/mtp/MtpDatabase$IncomingHandler;-><init>()V

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Landroid/mtp/MtpDatabase;->mMessenger:Landroid/os/Messenger;

    .line 1164
    const/4 v2, -0x1

    iput v2, p0, Landroid/mtp/MtpDatabase;->currentServiceID:I

    .line 1186
    new-array v2, v1, [Landroid/content/ComponentName;

    iput-object v2, p0, Landroid/mtp/MtpDatabase;->serviceComponent:[Landroid/content/ComponentName;

    .line 1187
    new-array v1, v1, [Landroid/content/ServiceConnection;

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->conn:[Landroid/content/ServiceConnection;

    .line 338
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_setup()V

    .line 339
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    .line 340
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 341
    const-string v2, "media"

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v1

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 342
    new-instance v1, Landroid/mtp/MtpStorageManager;

    new-instance v2, Landroid/mtp/MtpDatabase$2;

    invoke-direct {v2, p0}, Landroid/mtp/MtpDatabase$2;-><init>(Landroid/mtp/MtpDatabase;)V

    .line 360
    if-nez p2, :cond_79

    const/4 v3, 0x0

    goto :goto_7d

    :cond_79
    invoke-static {p2}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v3

    :goto_7d
    invoke-direct {v1, v2, v3}, Landroid/mtp/MtpStorageManager;-><init>(Landroid/mtp/MtpStorageManager$MtpNotifier;Ljava/util/Set;)V

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    .line 362
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->initDeviceProperties(Landroid/content/Context;)V

    .line 363
    const-string v1, "sys.usb.mtp.device_type"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/mtp/MtpDatabase;->mDeviceType:I

    .line 364
    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tablet"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9f

    const/4 v1, 0x5

    iput v1, p0, Landroid/mtp/MtpDatabase;->mDeviceType:I

    .line 365
    :cond_9f
    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 366
    return-void

    nop

    :array_a6
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private beginCopyObject(III)I
    .registers 7
    .param p1, "handle"    # I
    .param p2, "newParent"    # I
    .param p3, "newStorage"    # I

    .line 687
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 688
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez p2, :cond_f

    .line 689
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, p3}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    goto :goto_15

    :cond_f
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, p2}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    .line 690
    .local v1, "parent":Landroid/mtp/MtpStorageManager$MtpObject;
    :goto_15
    if-eqz v0, :cond_21

    if-nez v1, :cond_1a

    goto :goto_21

    .line 692
    :cond_1a
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v2, v0, v1}, Landroid/mtp/MtpStorageManager;->beginCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)I

    move-result v2

    return v2

    .line 691
    :cond_21
    :goto_21
    const/16 v2, 0x2009

    return v2
.end method

.method private beginDeleteObject(I)I
    .registers 4
    .param p1, "handle"    # I

    .line 1065
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 1066
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez v0, :cond_b

    .line 1067
    const/16 v1, 0x2009

    return v1

    .line 1069
    :cond_b
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, v0}, Landroid/mtp/MtpStorageManager;->beginRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 1070
    const/16 v1, 0x2002

    return v1

    .line 1072
    :cond_16
    const/16 v1, 0x2001

    return v1
.end method

.method private beginMoveObject(III)I
    .registers 8
    .param p1, "handle"    # I
    .param p2, "newParent"    # I
    .param p3, "newStorage"    # I

    .line 650
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 651
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez p2, :cond_f

    .line 652
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, p3}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    goto :goto_15

    :cond_f
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, p2}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    .line 653
    .local v1, "parent":Landroid/mtp/MtpStorageManager$MtpObject;
    :goto_15
    if-eqz v0, :cond_28

    if-nez v1, :cond_1a

    goto :goto_28

    .line 656
    :cond_1a
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v2, v0, v1}, Landroid/mtp/MtpStorageManager;->beginMoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v2

    .line 657
    .local v2, "allowed":Z
    if-eqz v2, :cond_25

    const/16 v3, 0x2001

    goto :goto_27

    :cond_25
    const/16 v3, 0x2002

    :goto_27
    return v3

    .line 654
    .end local v2    # "allowed":Z
    :cond_28
    :goto_28
    const/16 v2, 0x2009

    return v2
.end method

.method private deleteFromMedia(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/nio/file/Path;Z)V
    .registers 12
    .param p1, "obj"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "path"    # Ljava/nio/file/Path;
    .param p3, "isDir"    # Z

    .line 1088
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getVolumeName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1091
    .local v0, "objectsUri":Landroid/net/Uri;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_54

    .line 1093
    :try_start_c
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string v4, "_data LIKE ?1 AND lower(substr(_data,1,?2))=lower(?3)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 1097
    invoke-interface {p2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1098
    invoke-interface {p2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 1093
    invoke-virtual {v3, v0, v4, v5}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1101
    :cond_54
    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    move-object v1, v2

    .line 1102
    .local v1, "whereArgs":[Ljava/lang/String;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string v3, "_data=?"

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7f

    .line 1103
    sget-object v2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaProvider didn\'t delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_7f
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-interface {p2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/mtp/MtpDatabase;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_88} :catch_89

    .line 1108
    .end local v1    # "whereArgs":[Ljava/lang/String;
    goto :goto_a8

    .line 1106
    :catch_89
    move-exception v1

    .line 1107
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from MediaProvider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_a8
    return-void
.end method

.method private endCopyObject(IZ)V
    .registers 6
    .param p1, "handle"    # I
    .param p2, "success"    # Z

    .line 697
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 698
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-eqz v0, :cond_22

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, v0, p2}, Landroid/mtp/MtpStorageManager;->endCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_22

    .line 702
    :cond_11
    if-nez p2, :cond_14

    .line 703
    return-void

    .line 706
    :cond_14
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/mtp/MtpDatabase;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 707
    return-void

    .line 699
    :cond_22
    :goto_22
    sget-object v1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v2, "Failed to end copy object"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    return-void
.end method

.method private endDeleteObject(IZ)V
    .registers 6
    .param p1, "handle"    # I
    .param p2, "success"    # Z

    .line 1077
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 1078
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez v0, :cond_9

    .line 1079
    return-void

    .line 1081
    :cond_9
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, v0, p2}, Landroid/mtp/MtpStorageManager;->endRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1082
    sget-object v1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v2, "Failed to end remove object"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    :cond_18
    if-eqz p2, :cond_25

    .line 1084
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/mtp/MtpDatabase;->deleteFromMedia(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/nio/file/Path;Z)V

    .line 1085
    :cond_25
    return-void
.end method

.method private endMoveObject(IIIIIZ)V
    .registers 15
    .param p1, "oldParent"    # I
    .param p2, "newParent"    # I
    .param p3, "oldStorage"    # I
    .param p4, "newStorage"    # I
    .param p5, "objId"    # I
    .param p6, "success"    # Z

    .line 663
    if-nez p1, :cond_9

    .line 664
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p3}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 665
    .local v0, "oldParentObj":Landroid/mtp/MtpStorageManager$MtpObject;
    :goto_f
    if-nez p2, :cond_18

    .line 666
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, p4}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    goto :goto_1e

    :cond_18
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, p2}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    .line 667
    .local v1, "newParentObj":Landroid/mtp/MtpStorageManager$MtpObject;
    :goto_1e
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v2, p5}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2

    .line 668
    .local v2, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v3

    .line 669
    .local v3, "name":Ljava/lang/String;
    if-eqz v1, :cond_64

    if-eqz v0, :cond_64

    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    .line 670
    invoke-virtual {v4, v0, v1, v3, p6}, Landroid/mtp/MtpStorageManager;->endMoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_35

    goto :goto_64

    .line 674
    :cond_35
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v4, p5}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2

    .line 675
    if-eqz p6, :cond_63

    if-nez v2, :cond_40

    goto :goto_63

    .line 678
    :cond_40
    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    .line 679
    .local v4, "path":Ljava/nio/file/Path;
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    .line 681
    .local v5, "oldPath":Ljava/nio/file/Path;
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-interface {v5}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/mtp/MtpDatabase;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 682
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-interface {v4}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/mtp/MtpDatabase;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 683
    return-void

    .line 676
    .end local v4    # "path":Ljava/nio/file/Path;
    .end local v5    # "oldPath":Ljava/nio/file/Path;
    :cond_63
    :goto_63
    return-void

    .line 671
    :cond_64
    :goto_64
    sget-object v4, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v5, "Failed to end move object"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    return-void
.end method

.method private endSendObject(IZ)V
    .registers 6
    .param p1, "handle"    # I
    .param p2, "succeeded"    # Z

    .line 487
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 488
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-eqz v0, :cond_21

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, v0, p2}, Landroid/mtp/MtpStorageManager;->endSendObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_21

    .line 493
    :cond_11
    if-eqz p2, :cond_20

    .line 494
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/mtp/MtpDatabase;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 496
    :cond_20
    return-void

    .line 489
    :cond_21
    :goto_21
    sget-object v1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v2, "Failed to successfully end send object"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return-void
.end method

.method private getDeviceProperty(I[J[C)I
    .registers 11
    .param p1, "property"    # I
    .param p2, "outIntValue"    # [J
    .param p3, "outStringValue"    # [C

    .line 756
    const/16 v0, 0xff

    const/16 v1, 0x2001

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_8c

    .line 799
    const/16 v0, 0x200a

    return v0

    .line 792
    :sswitch_b
    iget v0, p0, Landroid/mtp/MtpDatabase;->mDeviceType:I

    int-to-long v3, v0

    aput-wide v3, p2, v2

    .line 793
    return v1

    .line 772
    :sswitch_11
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mHostType:Ljava/lang/String;

    .line 773
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 774
    .local v4, "length":I
    if-le v4, v0, :cond_1b

    .line 775
    const/16 v4, 0xff

    .line 777
    :cond_1b
    invoke-virtual {v3, v2, v4, p3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 778
    aput-char v2, p3, v4

    .line 779
    return v1

    .line 763
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "length":I
    :sswitch_21
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_name"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 764
    .restart local v3    # "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 765
    .restart local v4    # "length":I
    if-le v4, v0, :cond_35

    .line 766
    const/16 v4, 0xff

    .line 768
    :cond_35
    invoke-virtual {v3, v2, v4, p3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 769
    aput-char v2, p3, v4

    .line 770
    return v1

    .line 758
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "length":I
    :sswitch_3b
    return v1

    .line 783
    :sswitch_3c
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 784
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 785
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v3

    .line 786
    .local v3, "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v4

    .line 787
    .local v4, "height":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 788
    .local v5, "imageSize":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v2, v6, p3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 789
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    aput-char v2, p3, v6

    .line 790
    return v1

    .line 795
    .end local v0    # "display":Landroid/view/Display;
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "imageSize":Ljava/lang/String;
    :sswitch_7f
    iget v0, p0, Landroid/mtp/MtpDatabase;->mBatteryLevel:I

    int-to-long v3, v0

    aput-wide v3, p2, v2

    .line 796
    iget v0, p0, Landroid/mtp/MtpDatabase;->mBatteryScale:I

    int-to-long v2, v0

    const/4 v0, 0x1

    aput-wide v2, p2, v0

    .line 797
    return v1

    nop

    :sswitch_data_8c
    .sparse-switch
        0x5001 -> :sswitch_7f
        0x5003 -> :sswitch_3c
        0xd401 -> :sswitch_3b
        0xd402 -> :sswitch_21
        0xd406 -> :sswitch_11
        0xd407 -> :sswitch_b
    .end sparse-switch
.end method

.method private getLockStatus()I
    .registers 4

    .line 1392
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_13

    .line 1393
    const-string v1, "com.samsung.android.mtp.SHARED_PREFERENCE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1394
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "deviceLockStatus"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 1396
    .end local v0    # "pref":Landroid/content/SharedPreferences;
    :cond_13
    const/4 v0, -0x1

    return v0
.end method

.method private getObjectFilePath(I[C[J)I
    .registers 10
    .param p1, "handle"    # I
    .param p2, "outFilePath"    # [C
    .param p3, "outFileLengthFormat"    # [J

    .line 858
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 859
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez v0, :cond_b

    .line 860
    const/16 v1, 0x2009

    return v1

    .line 863
    :cond_b
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    .line 864
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1000

    invoke-static {v2, v3}, Ljava/lang/Integer;->min(II)I

    move-result v2

    .line 865
    .local v2, "pathLen":I
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, p2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 866
    aput-char v3, p2, v2

    .line 868
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getSize()J

    move-result-wide v4

    aput-wide v4, p3, v3

    .line 869
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v3

    int-to-long v3, v3

    const/4 v5, 0x1

    aput-wide v3, p3, v5

    .line 870
    const/16 v3, 0x2001

    return v3
.end method

.method private getObjectFormat(I)I
    .registers 4
    .param p1, "handle"    # I

    .line 902
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 903
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez v0, :cond_a

    .line 904
    const/4 v1, -0x1

    return v1

    .line 906
    :cond_a
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v1

    return v1
.end method

.method private getObjectInfo(I[I[C[J)Z
    .registers 11
    .param p1, "handle"    # I
    .param p2, "outStorageFormatParent"    # [I
    .param p3, "outName"    # [C
    .param p4, "outCreatedModified"    # [J

    .line 839
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 840
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 841
    return v1

    .line 843
    :cond_a
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v2

    aput v2, p2, v1

    .line 844
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v2

    const/4 v3, 0x1

    aput v2, p2, v3

    .line 845
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v2

    if-eqz v2, :cond_23

    move v2, v1

    goto :goto_2b

    :cond_23
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v2

    :goto_2b
    const/4 v4, 0x2

    aput v2, p2, v4

    .line 847
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xff

    invoke-static {v2, v4}, Ljava/lang/Integer;->min(II)I

    move-result v2

    .line 848
    .local v2, "nameLen":I
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v2, p3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 849
    aput-char v1, p3, v2

    .line 851
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v4

    aput-wide v4, p4, v1

    .line 852
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v4

    aput-wide v4, p4, v3

    .line 853
    return v3
.end method

.method private getObjectList(III)[I
    .registers 8
    .param p1, "storageID"    # I
    .param p2, "format"    # I
    .param p3, "parent"    # I

    .line 505
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p3, p2, p1, v1}, Landroid/mtp/MtpStorageManager;->getObjects(IIIZ)Ljava/util/List;

    move-result-object v0

    .line 507
    .local v0, "objs":Ljava/util/List;, "Ljava/util/List<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    if-nez v0, :cond_b

    .line 508
    const/4 v1, 0x0

    return-object v1

    .line 510
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 511
    .local v1, "ret":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 512
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v3

    aput v3, v1, v2

    .line 511
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 514
    .end local v2    # "i":I
    :cond_27
    return-object v1
.end method

.method public static getObjectPropertiesUri(ILjava/lang/String;)Landroid/net/Uri;
    .registers 3
    .param p0, "format"    # I
    .param p1, "volumeName"    # Ljava/lang/String;

    .line 265
    sparse-switch p0, :sswitch_data_18

    .line 295
    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 293
    :sswitch_8
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 280
    :sswitch_d
    invoke-static {p1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 272
    :sswitch_12
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_18
    .sparse-switch
        0x3008 -> :sswitch_12
        0x3009 -> :sswitch_12
        0x300a -> :sswitch_d
        0x300b -> :sswitch_d
        0x300c -> :sswitch_d
        0x3800 -> :sswitch_8
        0x3801 -> :sswitch_8
        0x3802 -> :sswitch_8
        0x3804 -> :sswitch_8
        0x3807 -> :sswitch_8
        0x3808 -> :sswitch_8
        0x380b -> :sswitch_8
        0x380d -> :sswitch_8
        0x380f -> :sswitch_8
        0x3810 -> :sswitch_8
        0x3811 -> :sswitch_8
        0x3812 -> :sswitch_8
        0xb900 -> :sswitch_12
        0xb901 -> :sswitch_12
        0xb902 -> :sswitch_12
        0xb903 -> :sswitch_12
        0xb980 -> :sswitch_d
        0xb981 -> :sswitch_d
        0xb982 -> :sswitch_d
        0xb984 -> :sswitch_d
    .end sparse-switch
.end method

.method private getObjectPropertyList(IIIII)Landroid/mtp/MtpPropertyList;
    .registers 16
    .param p1, "handle"    # I
    .param p2, "format"    # I
    .param p3, "property"    # I
    .param p4, "groupCode"    # I
    .param p5, "depth"    # I

    .line 532
    if-nez p3, :cond_15

    .line 533
    if-nez p4, :cond_c

    .line 534
    new-instance v0, Landroid/mtp/MtpPropertyList;

    const/16 v1, 0x2006

    invoke-direct {v0, v1}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v0

    .line 536
    :cond_c
    new-instance v0, Landroid/mtp/MtpPropertyList;

    const v1, 0xa807

    invoke-direct {v0, v1}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v0

    .line 538
    :cond_15
    const/4 v0, -0x1

    if-ne p5, v0, :cond_1e

    if-eqz p1, :cond_1c

    if-ne p1, v0, :cond_1e

    .line 540
    :cond_1c
    const/4 p1, -0x1

    .line 541
    const/4 p5, 0x0

    .line 543
    :cond_1e
    const/4 v1, 0x1

    if-eqz p5, :cond_2c

    if-eq p5, v1, :cond_2c

    .line 546
    new-instance v0, Landroid/mtp/MtpPropertyList;

    const v1, 0xa808

    invoke-direct {v0, v1}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v0

    .line 548
    :cond_2c
    const/4 v2, 0x0

    .line 549
    .local v2, "objs":Ljava/util/List;, "Ljava/util/List<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    const/4 v3, 0x0

    .line 550
    .local v3, "thisObj":Landroid/mtp/MtpStorageManager$MtpObject;
    const/16 v4, 0x2009

    if-ne p1, v0, :cond_41

    .line 552
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, p2, v0, v1}, Landroid/mtp/MtpStorageManager;->getObjects(IIIZ)Ljava/util/List;

    move-result-object v2

    .line 553
    if-nez v2, :cond_5a

    .line 554
    new-instance v0, Landroid/mtp/MtpPropertyList;

    invoke-direct {v0, v4}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v0

    .line 556
    :cond_41
    if-eqz p1, :cond_5a

    .line 558
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v5, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v5

    .line 559
    .local v5, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez v5, :cond_51

    .line 560
    new-instance v0, Landroid/mtp/MtpPropertyList;

    invoke-direct {v0, v4}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v0

    .line 562
    :cond_51
    invoke-virtual {v5}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v6

    if-eq v6, p2, :cond_59

    if-nez p2, :cond_5a

    .line 563
    :cond_59
    move-object v3, v5

    .line 566
    .end local v5    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    :cond_5a
    if-eqz p1, :cond_5e

    if-ne p5, v1, :cond_6f

    .line 567
    :cond_5e
    if-nez p1, :cond_61

    .line 568
    const/4 p1, -0x1

    .line 571
    :cond_61
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v5, p1, p2, v0, v1}, Landroid/mtp/MtpStorageManager;->getObjects(IIIZ)Ljava/util/List;

    move-result-object v2

    .line 573
    if-nez v2, :cond_6f

    .line 574
    new-instance v0, Landroid/mtp/MtpPropertyList;

    invoke-direct {v0, v4}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v0

    .line 577
    :cond_6f
    if-nez v2, :cond_77

    .line 578
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v1

    .line 580
    :cond_77
    if-eqz v3, :cond_7c

    .line 581
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    :cond_7c
    new-instance v1, Landroid/mtp/MtpPropertyList;

    const/16 v4, 0x2001

    invoke-direct {v1, v4}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    .line 586
    .local v1, "ret":Landroid/mtp/MtpPropertyList;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_87
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 587
    .local v6, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-ne p3, v0, :cond_b9

    .line 588
    if-nez p2, :cond_9f

    if-eqz p1, :cond_9f

    if-eq p1, v0, :cond_9f

    .line 590
    invoke-virtual {v6}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result p2

    .line 594
    :cond_9f
    iget-object v7, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Landroid/util/SparseArray;

    invoke-virtual {v7, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/mtp/MtpPropertyGroup;

    .line 595
    .local v7, "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    if-nez v7, :cond_d2

    .line 596
    invoke-direct {p0, p2}, Landroid/mtp/MtpDatabase;->getSupportedObjectProperties(I)[I

    move-result-object v8

    .line 597
    .local v8, "propertyList":[I
    new-instance v9, Landroid/mtp/MtpPropertyGroup;

    invoke-direct {v9, v8}, Landroid/mtp/MtpPropertyGroup;-><init>([I)V

    move-object v7, v9

    .line 598
    iget-object v9, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Landroid/util/SparseArray;

    invoke-virtual {v9, p2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 599
    .end local v8    # "propertyList":[I
    goto :goto_d2

    .line 602
    .end local v7    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    :cond_b9
    iget-object v7, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Landroid/util/SparseArray;

    invoke-virtual {v7, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/mtp/MtpPropertyGroup;

    .line 603
    .restart local v7    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    if-nez v7, :cond_d2

    .line 604
    filled-new-array {p3}, [I

    move-result-object v8

    .line 605
    .restart local v8    # "propertyList":[I
    new-instance v9, Landroid/mtp/MtpPropertyGroup;

    invoke-direct {v9, v8}, Landroid/mtp/MtpPropertyGroup;-><init>([I)V

    move-object v7, v9

    .line 606
    iget-object v9, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Landroid/util/SparseArray;

    invoke-virtual {v9, p3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 609
    .end local v8    # "propertyList":[I
    :cond_d2
    :goto_d2
    iget-object v8, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v6}, Landroid/mtp/MtpStorageManager$MtpObject;->getVolumeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v6, v1}, Landroid/mtp/MtpPropertyGroup;->getPropertyList(Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpPropertyList;)I

    move-result v8

    .line 610
    .local v8, "err":I
    if-eq v8, v4, :cond_e4

    .line 611
    new-instance v0, Landroid/mtp/MtpPropertyList;

    invoke-direct {v0, v8}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v0

    .line 613
    .end local v6    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local v8    # "err":I
    :cond_e4
    goto :goto_87

    .line 614
    .end local v7    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    :cond_e5
    return-object v1
.end method

.method private getObjectReferences(I)[I
    .registers 3
    .param p1, "handle"    # I

    .line 1113
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSayHelloError()I
    .registers 5

    .line 1401
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    .line 1402
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "emergency_mode"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1404
    .local v0, "emergency_mode":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1405
    const v1, 0xa810

    return v1

    .line 1408
    :cond_1b
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.mtp.SHARED_PREFERENCE"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1409
    .local v2, "pref":Landroid/content/SharedPreferences;
    const-string v3, "knox"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1410
    const v1, 0xa811

    return v1

    .line 1413
    .end local v0    # "emergency_mode":Ljava/lang/String;
    .end local v2    # "pref":Landroid/content/SharedPreferences;
    :cond_2f
    return v1
.end method

.method private getSupportedCaptureFormats()[I
    .registers 2

    .line 312
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSupportedDeviceProperties()[I
    .registers 2

    .line 301
    sget-object v0, Landroid/mtp/MtpDatabase;->DEVICE_PROPERTIES:[I

    return-object v0
.end method

.method private getSupportedObjectProperties(I)[I
    .registers 4
    .param p1, "format"    # I

    .line 229
    sparse-switch p1, :sswitch_data_46

    .line 260
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    return-object v0

    .line 257
    :sswitch_6
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    sget-object v1, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    .line 258
    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 257
    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->concat(Ljava/util/stream/IntStream;Ljava/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 258
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 257
    return-object v0

    .line 245
    :sswitch_1b
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    sget-object v1, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    .line 246
    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 245
    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->concat(Ljava/util/stream/IntStream;Ljava/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 246
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 245
    return-object v0

    .line 236
    :sswitch_30
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    sget-object v1, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    .line 237
    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 236
    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->concat(Ljava/util/stream/IntStream;Ljava/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 237
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 236
    return-object v0

    nop

    :sswitch_data_46
    .sparse-switch
        0x3008 -> :sswitch_30
        0x3009 -> :sswitch_30
        0x300a -> :sswitch_1b
        0x300b -> :sswitch_1b
        0x300c -> :sswitch_1b
        0x3800 -> :sswitch_6
        0x3801 -> :sswitch_6
        0x3804 -> :sswitch_6
        0x3807 -> :sswitch_6
        0x380b -> :sswitch_6
        0x380d -> :sswitch_6
        0x380f -> :sswitch_6
        0x3810 -> :sswitch_6
        0x3811 -> :sswitch_6
        0x3812 -> :sswitch_6
        0xb900 -> :sswitch_30
        0xb901 -> :sswitch_30
        0xb902 -> :sswitch_30
        0xb903 -> :sswitch_30
        0xb980 -> :sswitch_1b
        0xb981 -> :sswitch_1b
        0xb982 -> :sswitch_1b
        0xb984 -> :sswitch_1b
    .end sparse-switch
.end method

.method private getSupportedPlaybackFormats()[I
    .registers 2

    .line 306
    sget-object v0, Landroid/mtp/MtpDatabase;->PLAYBACK_FORMATS:[I

    return-object v0
.end method

.method private getThumbnailProcess(Ljava/lang/String;Landroid/graphics/Bitmap;)[B
    .registers 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 910
    const/16 v0, 0x64

    .line 912
    .local v0, "compressSize":I
    const/4 v1, 0x0

    if-nez p2, :cond_f

    .line 913
    :try_start_5
    sget-object v2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v3, "getThumbnailProcess: Fail to generate thumbnail. Probably unsupported or corrupted image"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    return-object v1

    .line 930
    :catch_d
    move-exception v2

    goto :goto_32

    .line 917
    :cond_f
    const v2, 0x32000

    .line 918
    .local v2, "streamLength":I
    const/4 v3, 0x0

    .line 920
    .local v3, "byteStream":Ljava/io/ByteArrayOutputStream;
    :goto_13
    const v4, 0x32000

    if-lt v2, v4, :cond_2d

    if-lez v0, :cond_2d

    .line 921
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v3, v4

    .line 922
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, v4, v0, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 923
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    move v2, v4

    .line 924
    add-int/lit8 v0, v0, -0xa

    goto :goto_13

    .line 927
    :cond_2d
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_31
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_31} :catch_d

    .line 929
    .local v1, "byteArray":[B
    return-object v1

    .line 931
    .end local v1    # "byteArray":[B
    .end local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .local v2, "oomEx":Ljava/lang/OutOfMemoryError;
    :goto_32
    sget-object v3, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OutOfMemoryError:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    .end local v2    # "oomEx":Ljava/lang/OutOfMemoryError;
    return-object v1
.end method

.method private initDeviceProperties(Landroid/content/Context;)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;

    .line 434
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "device-properties"

    .line 435
    .local v3, "devicePropertiesName":Ljava/lang/String;
    const-string v4, "device-properties"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v1, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    .line 437
    invoke-virtual {v2, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 439
    .local v6, "databaseFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_95

    .line 442
    const/4 v7, 0x0

    .line 443
    .local v7, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 445
    .local v8, "c":Landroid/database/Cursor;
    const/4 v0, 0x0

    :try_start_1c
    invoke-virtual {v2, v4, v5, v0}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object v7, v0

    .line 446
    if-eqz v7, :cond_68

    .line 447
    const-string v10, "properties"

    const/4 v0, 0x3

    new-array v11, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v11, v5

    const-string v0, "code"

    const/4 v15, 0x1

    aput-object v0, v11, v15

    const-string v0, "value"

    const/4 v14, 0x2

    aput-object v0, v11, v14

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v9, v7

    move v5, v14

    move-object v14, v0

    move v0, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    move-object v8, v9

    .line 449
    if-eqz v8, :cond_68

    .line 450
    iget-object v9, v1, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 451
    .local v9, "e":Landroid/content/SharedPreferences$Editor;
    :goto_52
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_65

    .line 452
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 453
    .local v10, "name":Ljava/lang/String;
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 454
    .local v11, "value":Ljava/lang/String;
    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 455
    nop

    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    goto :goto_52

    .line 456
    :cond_65
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_68} :catch_75
    .catchall {:try_start_1c .. :try_end_68} :catchall_73

    .line 462
    .end local v9    # "e":Landroid/content/SharedPreferences$Editor;
    :cond_68
    if-eqz v8, :cond_6d

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 463
    :cond_6d
    if-eqz v7, :cond_86

    :goto_6f
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_86

    .line 462
    :catchall_73
    move-exception v0

    goto :goto_8a

    .line 459
    :catch_75
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/Exception;
    :try_start_76
    sget-object v5, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v9, "failed to migrate device properties"

    invoke-static {v5, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7d
    .catchall {:try_start_76 .. :try_end_7d} :catchall_73

    .line 462
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v8, :cond_83

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 463
    :cond_83
    if-eqz v7, :cond_86

    goto :goto_6f

    .line 465
    :cond_86
    :goto_86
    invoke-virtual {v2, v4}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    goto :goto_95

    .line 462
    :goto_8a
    if-eqz v8, :cond_8f

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 463
    :cond_8f
    if-eqz v7, :cond_94

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 464
    :cond_94
    throw v0

    .line 467
    .end local v7    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_95
    :goto_95
    const-string v0, ""

    iput-object v0, v1, Landroid/mtp/MtpDatabase;->mHostType:Ljava/lang/String;

    .line 468
    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/mtp/MtpDatabase;->mSkipThumbForHost:Z

    .line 469
    iput-boolean v4, v1, Landroid/mtp/MtpDatabase;->mHostIsWindows:Z

    .line 470
    return-void
.end method

.method public static final intToByteArray(I)[B
    .registers 4
    .param p0, "value"    # I

    .line 1241
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 1242
    .local v0, "byteArray":[B
    const/4 v1, 0x0

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 1243
    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 1244
    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 1245
    shr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 1247
    return-object v0
.end method

.method private synthetic lambda$addStorage$0()Ljava/lang/Boolean;
    .registers 2

    .line 412
    iget-boolean v0, p0, Landroid/mtp/MtpDatabase;->mHostIsWindows:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private final native native_finalize()V
.end method

.method private final native native_setup()V
.end method

.method private openFilePath(Ljava/lang/String;Z)I
    .registers 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "transcode"    # Z

    .line 875
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 876
    .local v0, "uri":Landroid/net/Uri;
    const/4 v1, -0x1

    if-nez v0, :cond_2b

    .line 877
    sget-object v2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to obtain URI for openFile with transcode support: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    return v1

    .line 882
    :cond_2b
    :try_start_2b
    sget-object v2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openFile with transcode support: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_48} :catch_80
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_48} :catch_80

    .line 884
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "video/hevc"

    const-string v4, "android.provider.extra.MEDIA_CAPABILITIES"

    if-eqz p2, :cond_5f

    .line 885
    :try_start_4e
    new-instance v5, Landroid/media/ApplicationMediaCapabilities$Builder;

    invoke-direct {v5}, Landroid/media/ApplicationMediaCapabilities$Builder;-><init>()V

    .line 886
    invoke-virtual {v5, v3}, Landroid/media/ApplicationMediaCapabilities$Builder;->addUnsupportedVideoMimeType(Ljava/lang/String;)Landroid/media/ApplicationMediaCapabilities$Builder;

    move-result-object v3

    .line 887
    invoke-virtual {v3}, Landroid/media/ApplicationMediaCapabilities$Builder;->build()Landroid/media/ApplicationMediaCapabilities;

    move-result-object v3

    .line 885
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_6f

    .line 889
    :cond_5f
    new-instance v5, Landroid/media/ApplicationMediaCapabilities$Builder;

    invoke-direct {v5}, Landroid/media/ApplicationMediaCapabilities$Builder;-><init>()V

    .line 890
    invoke-virtual {v5, v3}, Landroid/media/ApplicationMediaCapabilities$Builder;->addSupportedVideoMimeType(Ljava/lang/String;)Landroid/media/ApplicationMediaCapabilities$Builder;

    move-result-object v3

    .line 891
    invoke-virtual {v3}, Landroid/media/ApplicationMediaCapabilities$Builder;->build()Landroid/media/ApplicationMediaCapabilities;

    move-result-object v3

    .line 889
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 893
    :goto_6f
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string v4, "*/*"

    invoke-virtual {v3, v0, v4, v2}, Landroid/content/ContentProviderClient;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    .line 894
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v1
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_7f} :catch_80
    .catch Ljava/io/FileNotFoundException; {:try_start_4e .. :try_end_7f} :catch_80

    .line 893
    return v1

    .line 895
    .end local v2    # "bundle":Landroid/os/Bundle;
    :catch_80
    move-exception v2

    .line 896
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to openFile with transcode support: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 897
    return v1
.end method

.method private renameFile(ILjava/lang/String;)I
    .registers 10
    .param p1, "handle"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .line 618
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 619
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez v0, :cond_b

    .line 620
    const/16 v1, 0x2009

    return v1

    .line 622
    :cond_b
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    .line 625
    .local v1, "oldPath":Ljava/nio/file/Path;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v2, v0, p2}, Landroid/mtp/MtpStorageManager;->beginRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x2002

    if-nez v2, :cond_1a

    .line 626
    return v3

    .line 627
    :cond_1a
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    .line 628
    .local v2, "newPath":Ljava/nio/file/Path;
    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v4

    invoke-interface {v2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    .line 630
    .local v4, "success":Z
    :try_start_2a
    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Landroid/system/OsConstants;->F_OK:I

    invoke-static {v5, v6}, Landroid/system/Os;->access(Ljava/lang/String;I)Z

    .line 631
    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Landroid/system/OsConstants;->F_OK:I

    invoke-static {v5, v6}, Landroid/system/Os;->access(Ljava/lang/String;I)Z
    :try_end_3c
    .catch Landroid/system/ErrnoException; {:try_start_2a .. :try_end_3c} :catch_3d

    .line 634
    goto :goto_3e

    .line 632
    :catch_3d
    move-exception v5

    .line 636
    :goto_3e
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-interface {v1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v6

    invoke-interface {v6}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6, v4}, Landroid/mtp/MtpStorageManager;->endRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_55

    .line 637
    sget-object v5, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v6, "Failed to end rename object"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_55
    if-nez v4, :cond_58

    .line 640
    return v3

    .line 643
    :cond_58
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/mtp/MtpDatabase;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 644
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-interface {v2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/mtp/MtpDatabase;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 645
    const/16 v3, 0x2001

    return v3
.end method

.method private rescanFile(Ljava/lang/String;II)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "handle"    # I
    .param p3, "format"    # I

    .line 500
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    .line 501
    return-void
.end method

.method private sendSsmMessage(II[B)[B
    .registers 14
    .param p1, "commandId"    # I
    .param p2, "serviceID"    # I
    .param p3, "sendData"    # [B

    .line 1253
    sget-object v0, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSsmMessage: commandId=>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "serviceID=>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    const/4 v1, 0x0

    .line 1255
    .local v1, "resultResponse":[B
    iget-boolean v2, p0, Landroid/mtp/MtpDatabase;->isStratCommand:Z

    if-eqz v2, :cond_2a

    invoke-virtual {p0}, Landroid/mtp/MtpDatabase;->initializeSerivce()V

    .line 1257
    :cond_2a
    const-string v2, "UTF-8"

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x4

    packed-switch p1, :pswitch_data_1a8

    goto/16 :goto_1a7

    .line 1334
    :pswitch_37
    iget v0, p0, Landroid/mtp/MtpDatabase;->currentServiceID:I

    if-ltz v0, :cond_83

    iget-object v9, p0, Landroid/mtp/MtpDatabase;->mService:[Landroid/os/Messenger;

    aget-object v0, v9, v0

    if-nez v0, :cond_42

    goto :goto_83

    .line 1337
    :cond_42
    sget-object v0, Landroid/mtp/MtpDatabase;->jsonData:Ljava/lang/String;

    if-nez v0, :cond_4e

    .line 1338
    new-array v0, v8, [B

    .line 1339
    .end local v1    # "resultResponse":[B
    .local v0, "resultResponse":[B
    invoke-static {v4}, Landroid/mtp/MtpDatabase;->intToByteArray(I)[B

    move-result-object v1

    .end local v0    # "resultResponse":[B
    .restart local v1    # "resultResponse":[B
    goto/16 :goto_1a7

    .line 1342
    :cond_4e
    :try_start_4e
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1343
    .local v0, "tempData":[B
    array-length v2, v0

    const/16 v4, 0x8

    add-int/2addr v2, v4

    new-array v2, v2, [B

    move-object v1, v2

    .line 1345
    invoke-static {v6}, Landroid/mtp/MtpDatabase;->intToByteArray(I)[B

    move-result-object v2

    invoke-static {v2, v5, v1, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1346
    array-length v2, v0

    invoke-static {v2}, Landroid/mtp/MtpDatabase;->intToByteArray(I)[B

    move-result-object v2

    invoke-static {v2, v5, v1, v8, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1347
    array-length v2, v0

    invoke-static {v0, v5, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1349
    sput-object v3, Landroid/mtp/MtpDatabase;->jsonData:Ljava/lang/String;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_6e} :catch_70

    .line 1355
    .end local v0    # "tempData":[B
    goto/16 :goto_1a7

    .line 1350
    :catch_70
    move-exception v0

    .line 1351
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1352
    sget-object v2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v3, "get command exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    new-array v1, v8, [B

    .line 1354
    invoke-static {v7}, Landroid/mtp/MtpDatabase;->intToByteArray(I)[B

    move-result-object v1

    goto/16 :goto_1a7

    .line 1335
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_83
    :goto_83
    new-array v0, v8, [B

    .line 1336
    .end local v1    # "resultResponse":[B
    .local v0, "resultResponse":[B
    invoke-static {v7}, Landroid/mtp/MtpDatabase;->intToByteArray(I)[B

    move-result-object v1

    .end local v0    # "resultResponse":[B
    .restart local v1    # "resultResponse":[B
    goto/16 :goto_1a7

    .line 1311
    :pswitch_8b
    new-array v0, v8, [B

    .line 1313
    .end local v1    # "resultResponse":[B
    .restart local v0    # "resultResponse":[B
    iget v1, p0, Landroid/mtp/MtpDatabase;->currentServiceID:I

    if-ltz v1, :cond_d2

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mService:[Landroid/os/Messenger;

    aget-object v1, v5, v1

    if-nez v1, :cond_98

    goto :goto_d2

    .line 1317
    :cond_98
    :try_start_98
    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 1318
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mMessenger:Landroid/os/Messenger;

    iput-object v3, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 1319
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1320
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v4, "json"

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p3, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1322
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mService:[Landroid/os/Messenger;

    iget v4, p0, Landroid/mtp/MtpDatabase;->currentServiceID:I

    aget-object v2, v2, v4

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 1323
    invoke-static {v6}, Landroid/mtp/MtpDatabase;->intToByteArray(I)[B

    move-result-object v2
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_be} :catch_c1

    move-object v1, v2

    .line 1328
    .end local v0    # "resultResponse":[B
    .end local v3    # "bundle":Landroid/os/Bundle;
    .local v1, "resultResponse":[B
    goto/16 :goto_1a7

    .line 1324
    .end local v1    # "resultResponse":[B
    .restart local v0    # "resultResponse":[B
    :catch_c1
    move-exception v1

    .line 1325
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1326
    sget-object v2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v3, "send command exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    invoke-static {v7}, Landroid/mtp/MtpDatabase;->intToByteArray(I)[B

    move-result-object v1

    .line 1330
    .end local v0    # "resultResponse":[B
    .local v1, "resultResponse":[B
    goto/16 :goto_1a7

    .line 1314
    .end local v1    # "resultResponse":[B
    .restart local v0    # "resultResponse":[B
    :cond_d2
    :goto_d2
    invoke-static {v4}, Landroid/mtp/MtpDatabase;->intToByteArray(I)[B

    move-result-object v1

    .end local v0    # "resultResponse":[B
    .restart local v1    # "resultResponse":[B
    goto/16 :goto_1a7

    .line 1288
    :pswitch_d8
    new-array v0, v8, [B

    .line 1289
    .end local v1    # "resultResponse":[B
    .restart local v0    # "resultResponse":[B
    iget v1, p0, Landroid/mtp/MtpDatabase;->currentServiceID:I

    if-ltz v1, :cond_12f

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mService:[Landroid/os/Messenger;

    aget-object v1, v2, v1

    if-nez v1, :cond_e5

    goto :goto_12f

    .line 1293
    :cond_e5
    :try_start_e5
    invoke-static {v3, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 1294
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMessenger:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 1295
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mService:[Landroid/os/Messenger;

    iget v4, p0, Landroid/mtp/MtpDatabase;->currentServiceID:I

    aget-object v2, v2, v4

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 1297
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mIsBound:[Z

    iget v4, p0, Landroid/mtp/MtpDatabase;->currentServiceID:I

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_107

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    iget-object v8, p0, Landroid/mtp/MtpDatabase;->conn:[Landroid/content/ServiceConnection;

    aget-object v4, v8, v4

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1298
    :cond_107
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mIsBound:[Z

    iget v4, p0, Landroid/mtp/MtpDatabase;->currentServiceID:I

    aput-boolean v5, v2, v4

    .line 1299
    invoke-static {v6}, Landroid/mtp/MtpDatabase;->intToByteArray(I)[B

    move-result-object v2

    move-object v0, v2

    .line 1300
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mService:[Landroid/os/Messenger;

    iget v4, p0, Landroid/mtp/MtpDatabase;->currentServiceID:I

    aput-object v3, v2, v4
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_118} :catch_11a

    .line 1305
    .end local v1    # "msg":Landroid/os/Message;
    move-object v1, v0

    goto :goto_12a

    .line 1301
    :catch_11a
    move-exception v1

    .line 1302
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1303
    sget-object v2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v3, "byebye exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    invoke-static {v7}, Landroid/mtp/MtpDatabase;->intToByteArray(I)[B

    move-result-object v0

    move-object v1, v0

    .line 1306
    .end local v0    # "resultResponse":[B
    .local v1, "resultResponse":[B
    :goto_12a
    const/4 v0, -0x1

    iput v0, p0, Landroid/mtp/MtpDatabase;->currentServiceID:I

    .line 1308
    goto/16 :goto_1a7

    .line 1290
    .end local v1    # "resultResponse":[B
    .restart local v0    # "resultResponse":[B
    :cond_12f
    :goto_12f
    invoke-static {v4}, Landroid/mtp/MtpDatabase;->intToByteArray(I)[B

    move-result-object v1

    .end local v0    # "resultResponse":[B
    .restart local v1    # "resultResponse":[B
    goto/16 :goto_1a7

    .line 1259
    :pswitch_135
    iput p2, p0, Landroid/mtp/MtpDatabase;->currentServiceID:I

    .line 1260
    new-array v1, v8, [B

    .line 1262
    if-ltz p2, :cond_19e

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mIsBound:[Z

    aget-boolean v2, v2, p2

    if-ne v2, v6, :cond_142

    goto :goto_19e

    .line 1267
    :cond_142
    :try_start_142
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1268
    .local v2, "i":Landroid/content/Intent;
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->serviceComponent:[Landroid/content/ComponentName;

    iget v4, p0, Landroid/mtp/MtpDatabase;->currentServiceID:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1269
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/mtp/MtpDatabase;->conn:[Landroid/content/ServiceConnection;

    iget v5, p0, Landroid/mtp/MtpDatabase;->currentServiceID:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v2, v4, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    .line 1270
    .local v3, "bSuccess":Z
    if-eqz v3, :cond_164

    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mIsBound:[Z

    iget v5, p0, Landroid/mtp/MtpDatabase;->currentServiceID:I

    aput-boolean v6, v4, v5

    .line 1271
    :cond_164
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bind result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mIsBound:[Z

    iget v4, p0, Landroid/mtp/MtpDatabase;->currentServiceID:I

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_188

    .line 1274
    invoke-static {v6}, Landroid/mtp/MtpDatabase;->intToByteArray(I)[B

    move-result-object v0

    move-object v1, v0

    .end local v1    # "resultResponse":[B
    .restart local v0    # "resultResponse":[B
    goto :goto_18d

    .line 1276
    .end local v0    # "resultResponse":[B
    .restart local v1    # "resultResponse":[B
    :cond_188
    invoke-static {v7}, Landroid/mtp/MtpDatabase;->intToByteArray(I)[B

    move-result-object v0
    :try_end_18c
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_18c} :catch_18e

    move-object v1, v0

    .line 1283
    .end local v2    # "i":Landroid/content/Intent;
    .end local v3    # "bSuccess":Z
    :goto_18d
    goto :goto_1a7

    .line 1279
    :catch_18e
    move-exception v0

    .line 1280
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1281
    sget-object v2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v3, "bind exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    invoke-static {v7}, Landroid/mtp/MtpDatabase;->intToByteArray(I)[B

    move-result-object v1

    .line 1285
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1a7

    .line 1263
    :cond_19e
    :goto_19e
    const-string v2, "Already bindservice."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    invoke-static {v7}, Landroid/mtp/MtpDatabase;->intToByteArray(I)[B

    move-result-object v1

    .line 1360
    :goto_1a7
    return-object v1

    :pswitch_data_1a8
    .packed-switch 0x1
        :pswitch_135
        :pswitch_d8
        :pswitch_8b
        :pswitch_37
    .end packed-switch
.end method

.method private setDeviceProperty(IJLjava/lang/String;)I
    .registers 9
    .param p1, "property"    # I
    .param p2, "intValue"    # J
    .param p4, "stringValue"    # Ljava/lang/String;

    .line 805
    const/16 v0, 0x2001

    sparse-switch p1, :sswitch_data_70

    .line 833
    const/16 v0, 0x200a

    return v0

    .line 822
    :sswitch_8
    iput-object p4, p0, Landroid/mtp/MtpDatabase;->mHostType:Ljava/lang/String;

    .line 823
    sget-object v1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDeviceProperty."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    const-string v1, "Android/"

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3c

    .line 826
    iput-boolean v2, p0, Landroid/mtp/MtpDatabase;->mSkipThumbForHost:Z

    goto :goto_46

    .line 827
    :cond_3c
    const-string v1, "Windows/"

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 828
    iput-boolean v2, p0, Landroid/mtp/MtpDatabase;->mHostIsWindows:Z

    .line 830
    :cond_46
    :goto_46
    return v0

    .line 811
    :sswitch_47
    const/16 v1, 0x2002

    :try_start_49
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_name"

    invoke-static {v2, v3, p4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 813
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 814
    .local v2, "e":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 815
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_65} :catch_6a

    if-eqz v3, :cond_68

    goto :goto_69

    .line 816
    :cond_68
    move v0, v1

    .line 815
    :goto_69
    return v0

    .line 817
    .end local v2    # "e":Landroid/content/SharedPreferences$Editor;
    :catch_6a
    move-exception v0

    .line 818
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 819
    return v1

    .line 807
    .end local v0    # "ex":Ljava/lang/Exception;
    :sswitch_6f
    return v0

    :sswitch_data_70
    .sparse-switch
        0xd401 -> :sswitch_6f
        0xd402 -> :sswitch_47
        0xd406 -> :sswitch_8
    .end sparse-switch
.end method

.method private setObjectProperty(IIJLjava/lang/String;)I
    .registers 7
    .param p1, "handle"    # I
    .param p2, "property"    # I
    .param p3, "intValue"    # J
    .param p5, "stringValue"    # Ljava/lang/String;

    .line 742
    packed-switch p2, :pswitch_data_c

    .line 747
    const v0, 0xa80a

    return v0

    .line 744
    :pswitch_7
    invoke-direct {p0, p1, p5}, Landroid/mtp/MtpDatabase;->renameFile(ILjava/lang/String;)I

    move-result v0

    return v0

    :pswitch_data_c
    .packed-switch 0xdc07
        :pswitch_7
    .end packed-switch
.end method

.method private setObjectReferences(I[I)I
    .registers 19
    .param p1, "handle"    # I
    .param p2, "references"    # [I

    .line 1118
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v0, v1, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    move/from16 v3, p1

    invoke-virtual {v0, v3}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    .line 1119
    .local v4, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    const/16 v5, 0x2002

    if-nez v4, :cond_11

    .line 1120
    return v5

    .line 1122
    :cond_11
    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1123
    .local v6, "plaPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    .line 1124
    .local v7, "plaFile":Ljava/io/File;
    :try_start_1f
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_24} :catch_9a
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_24} :catch_95
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_24} :catch_90

    move-object v9, v0

    .line 1125
    .local v9, "fos":Ljava/io/FileOutputStream;
    :try_start_25
    new-instance v0, Ljava/io/OutputStreamWriter;

    const-string v10, "UTF8"

    invoke-direct {v0, v9, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_84

    move-object v10, v0

    .line 1126
    .local v10, "osw":Ljava/io/OutputStreamWriter;
    :try_start_2d
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_78

    move-object v11, v0

    .line 1127
    .local v11, "bw":Ljava/io/BufferedWriter;
    :try_start_33
    array-length v0, v2

    const/4 v12, 0x0

    :goto_35
    if-ge v12, v0, :cond_62

    aget v13, v2, v12

    .line 1128
    .local v13, "ref":I
    iget-object v14, v1, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v14, v13}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v14

    .line 1129
    .local v14, "oRef":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-virtual {v14}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v15

    invoke-interface {v15}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1130
    .local v15, "path":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_33 .. :try_end_5d} :catchall_6c

    .line 1127
    .end local v13    # "ref":I
    .end local v14    # "oRef":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local v15    # "path":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    const/16 v5, 0x2002

    goto :goto_35

    .line 1132
    :cond_62
    :try_start_62
    invoke-virtual {v11}, Ljava/io/BufferedWriter;->close()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_78

    .end local v11    # "bw":Ljava/io/BufferedWriter;
    :try_start_65
    invoke-virtual {v10}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_84

    .end local v10    # "osw":Ljava/io/OutputStreamWriter;
    :try_start_68
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_6b
    .catch Ljava/io/FileNotFoundException; {:try_start_68 .. :try_end_6b} :catch_9a
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_95
    .catch Ljava/lang/NullPointerException; {:try_start_68 .. :try_end_6b} :catch_90

    goto :goto_9e

    .line 1124
    .restart local v10    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v11    # "bw":Ljava/io/BufferedWriter;
    :catchall_6c
    move-exception v0

    move-object v5, v0

    :try_start_6e
    invoke-virtual {v11}, Ljava/io/BufferedWriter;->close()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_72

    goto :goto_77

    :catchall_72
    move-exception v0

    move-object v8, v0

    :try_start_74
    invoke-virtual {v5, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local v6    # "plaPath":Ljava/lang/String;
    .end local v7    # "plaFile":Ljava/io/File;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "osw":Ljava/io/OutputStreamWriter;
    .end local p0    # "this":Landroid/mtp/MtpDatabase;
    .end local p1    # "handle":I
    .end local p2    # "references":[I
    :goto_77
    throw v5
    :try_end_78
    .catchall {:try_start_74 .. :try_end_78} :catchall_78

    .end local v11    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .restart local v6    # "plaPath":Ljava/lang/String;
    .restart local v7    # "plaFile":Ljava/io/File;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "osw":Ljava/io/OutputStreamWriter;
    .restart local p0    # "this":Landroid/mtp/MtpDatabase;
    .restart local p1    # "handle":I
    .restart local p2    # "references":[I
    :catchall_78
    move-exception v0

    move-object v5, v0

    :try_start_7a
    invoke-virtual {v10}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_7e

    goto :goto_83

    :catchall_7e
    move-exception v0

    move-object v8, v0

    :try_start_80
    invoke-virtual {v5, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local v6    # "plaPath":Ljava/lang/String;
    .end local v7    # "plaFile":Ljava/io/File;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local p0    # "this":Landroid/mtp/MtpDatabase;
    .end local p1    # "handle":I
    .end local p2    # "references":[I
    :goto_83
    throw v5
    :try_end_84
    .catchall {:try_start_80 .. :try_end_84} :catchall_84

    .end local v10    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v4    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .restart local v6    # "plaPath":Ljava/lang/String;
    .restart local v7    # "plaFile":Ljava/io/File;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Landroid/mtp/MtpDatabase;
    .restart local p1    # "handle":I
    .restart local p2    # "references":[I
    :catchall_84
    move-exception v0

    move-object v5, v0

    :try_start_86
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_8a

    goto :goto_8f

    :catchall_8a
    move-exception v0

    move-object v8, v0

    :try_start_8c
    invoke-virtual {v5, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local v6    # "plaPath":Ljava/lang/String;
    .end local v7    # "plaFile":Ljava/io/File;
    .end local p0    # "this":Landroid/mtp/MtpDatabase;
    .end local p1    # "handle":I
    .end local p2    # "references":[I
    :goto_8f
    throw v5
    :try_end_90
    .catch Ljava/io/FileNotFoundException; {:try_start_8c .. :try_end_90} :catch_9a
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_90} :catch_95
    .catch Ljava/lang/NullPointerException; {:try_start_8c .. :try_end_90} :catch_90

    .line 1136
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .restart local v6    # "plaPath":Ljava/lang/String;
    .restart local v7    # "plaFile":Ljava/io/File;
    .restart local p0    # "this":Landroid/mtp/MtpDatabase;
    .restart local p1    # "handle":I
    .restart local p2    # "references":[I
    :catch_90
    move-exception v0

    .line 1137
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_9f

    .line 1134
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_95
    move-exception v0

    .line 1135
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "ex":Ljava/io/IOException;
    goto :goto_9e

    .line 1132
    :catch_9a
    move-exception v0

    .line 1133
    .local v0, "ex":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1138
    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    :goto_9e
    nop

    .line 1140
    :goto_9f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2e

    invoke-virtual {v6, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".m3u"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1143
    .local v5, "newPath":Ljava/lang/String;
    :try_start_bd
    new-array v0, v8, [Ljava/lang/String;

    invoke-static {v6, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    new-array v9, v8, [Ljava/lang/String;

    invoke-static {v5, v9}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/nio/file/CopyOption;

    sget-object v10, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v0, v8, v9}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 1144
    iget-object v0, v1, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v8}, Landroid/mtp/MtpDatabase;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_de} :catch_e2

    .line 1148
    nop

    .line 1149
    const/16 v0, 0x2001

    return v0

    .line 1145
    :catch_e2
    move-exception v0

    .line 1146
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1147
    const/16 v8, 0x2002

    return v8
.end method

.method private setOpenSession(Z)V
    .registers 5
    .param p1, "value"    # Z

    .line 1382
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_17

    .line 1383
    const-string v1, "com.samsung.android.mtp.SHARED_PREFERENCE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1384
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1385
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "opensession"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1386
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1388
    .end local v0    # "pref":Landroid/content/SharedPreferences;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_17
    return-void
.end method

.method private static updateMediaStore(Landroid/content/Context;Ljava/io/File;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .line 734
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 735
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Landroid/mtp/MtpDatabase$UpdateMediaStoreThread;

    invoke-direct {v2, v0, p1}, Landroid/mtp/MtpDatabase$UpdateMediaStoreThread;-><init>(Landroid/content/ContentResolver;Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 736
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 737
    return-void
.end method


# virtual methods
.method public addStorage(Landroid/os/storage/StorageVolume;)V
    .registers 5
    .param p1, "storage"    # Landroid/os/storage/StorageVolume;

    .line 412
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    new-instance v1, Landroid/mtp/MtpDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/mtp/MtpDatabase$$ExternalSyntheticLambda0;-><init>(Landroid/mtp/MtpDatabase;)V

    invoke-virtual {v0, p1, v1}, Landroid/mtp/MtpStorageManager;->addMtpStorage(Landroid/os/storage/StorageVolume;Ljava/util/function/Supplier;)Landroid/mtp/MtpStorage;

    move-result-object v0

    .line 413
    .local v0, "mtpStorage":Landroid/mtp/MtpStorage;
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 414
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    if-eqz v1, :cond_27

    .line 416
    invoke-virtual {v1, v0}, Landroid/mtp/MtpServer;->addStorage(Landroid/mtp/MtpStorage;)V

    .line 419
    :cond_27
    return-void
.end method

.method public beginSendObject(Ljava/lang/String;III)I
    .registers 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "format"    # I
    .param p3, "parent"    # I
    .param p4, "storageId"    # I

    .line 476
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    if-nez p3, :cond_9

    invoke-virtual {v0, p4}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-virtual {v0, p3}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 477
    .local v0, "parentObj":Landroid/mtp/MtpStorageManager$MtpObject;
    :goto_d
    if-nez v0, :cond_11

    .line 478
    const/4 v1, -0x1

    return v1

    .line 481
    :cond_11
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 482
    .local v1, "objPath":Ljava/nio/file/Path;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-interface {v1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3, p2}, Landroid/mtp/MtpStorageManager;->beginSendObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public close()V
    .registers 4

    .line 389
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager;->close()V

    .line 390
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 391
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 392
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_1b

    .line 393
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    .line 395
    :cond_1b
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_finalize()V

    .line 397
    :cond_1e
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 402
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_7

    .line 403
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 405
    :cond_7
    invoke-virtual {p0}, Landroid/mtp/MtpDatabase;->close()V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_f

    .line 407
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 408
    nop

    .line 409
    return-void

    .line 407
    :catchall_f
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 408
    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 384
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getNumObjects(III)I
    .registers 6
    .param p1, "storageID"    # I
    .param p2, "format"    # I
    .param p3, "parent"    # I

    .line 520
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p2, p1, v1}, Landroid/mtp/MtpStorageManager;->getObjects(IIIZ)Ljava/util/List;

    move-result-object v0

    .line 522
    .local v0, "objs":Ljava/util/List;, "Ljava/util/List<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    if-nez v0, :cond_b

    .line 523
    const/4 v1, -0x1

    return v1

    .line 525
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    return v1
.end method

.method public getThumbnailData(I)[B
    .registers 16
    .param p1, "handle"    # I

    .line 987
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 988
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 989
    return-object v1

    .line 991
    :cond_a
    const/4 v2, 0x0

    .line 992
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    .line 993
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v4

    const-string v5, "cannot create thumbnail"

    const/16 v6, 0x100

    sparse-switch v4, :sswitch_data_110

    goto/16 :goto_10f

    .line 1006
    :sswitch_20
    const/4 v4, 0x0

    .line 1007
    .local v4, "cursor":Landroid/database/Cursor;
    new-instance v5, Landroid/os/CancellationSignal;

    invoke-direct {v5}, Landroid/os/CancellationSignal;-><init>()V

    .line 1009
    .local v5, "cs":Landroid/os/CancellationSignal;
    :try_start_26
    iget-boolean v7, p0, Landroid/mtp/MtpDatabase;->mSkipThumbForHost:Z

    if-eqz v7, :cond_31

    .line 1010
    sget-object v7, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v8, "getThumbnailData: Skip runtime thumbnail."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    :cond_31
    iget-object v7, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    const-string v11, "_data=?"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    move-object v4, v7

    .line 1014
    if-eqz v4, :cond_8c

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_8c

    .line 1015
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1016
    const-string v7, "_id"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1017
    .local v7, "imageId":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 1018
    .local v8, "uri":Landroid/net/Uri;
    iget-object v9, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v10, Landroid/util/Size;

    invoke-direct {v10, v6, v6}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v9, v8, v10, v5}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v2, v9

    .line 1020
    .end local v7    # "imageId":I
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_8c
    if-eqz v2, :cond_98

    .line 1021
    invoke-direct {p0, v3, v2}, Landroid/mtp/MtpDatabase;->getThumbnailProcess(Ljava/lang/String;Landroid/graphics/Bitmap;)[B

    move-result-object v1
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_92} :catch_a0
    .catchall {:try_start_26 .. :try_end_92} :catchall_9e

    .line 1026
    if-eqz v4, :cond_97

    .line 1027
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1021
    :cond_97
    return-object v1

    .line 1026
    :cond_98
    if-eqz v4, :cond_ac

    .line 1027
    :goto_9a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_ac

    .line 1026
    :catchall_9e
    move-exception v1

    goto :goto_c9

    .line 1023
    :catch_a0
    move-exception v7

    .line 1024
    .local v7, "ex":Ljava/io/IOException;
    :try_start_a1
    sget-object v8, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v9, "cannot load thumbnail."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catchall {:try_start_a1 .. :try_end_a8} :catchall_9e

    .line 1026
    nop

    .end local v7    # "ex":Ljava/io/IOException;
    if-eqz v4, :cond_ac

    .line 1027
    goto :goto_9a

    .line 1031
    :cond_ac
    :goto_ac
    :try_start_ac
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Landroid/util/Size;

    invoke-direct {v8, v6, v6}, Landroid/util/Size;-><init>(II)V

    invoke-static {v7, v8, v5}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/io/File;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v2, v6

    .line 1032
    invoke-direct {p0, v3, v2}, Landroid/mtp/MtpDatabase;->getThumbnailProcess(Ljava/lang/String;Landroid/graphics/Bitmap;)[B

    move-result-object v1
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_bf} :catch_c0

    return-object v1

    .line 1033
    :catch_c0
    move-exception v6

    .line 1034
    .local v6, "ex":Ljava/io/IOException;
    sget-object v7, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v8, "cannot create thumbnail."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    .end local v6    # "ex":Ljava/io/IOException;
    goto :goto_10f

    .line 1026
    :goto_c9
    if-eqz v4, :cond_ce

    .line 1027
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1028
    :cond_ce
    throw v1

    .line 1053
    .end local v4    # "cursor":Landroid/database/Cursor;
    .end local v5    # "cs":Landroid/os/CancellationSignal;
    :sswitch_cf
    :try_start_cf
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Landroid/util/Size;

    invoke-direct {v7, v6, v6}, Landroid/util/Size;-><init>(II)V

    new-instance v6, Landroid/os/CancellationSignal;

    invoke-direct {v6}, Landroid/os/CancellationSignal;-><init>()V

    invoke-static {v4, v7, v6}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/io/File;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v2, v4

    .line 1054
    invoke-direct {p0, v3, v2}, Landroid/mtp/MtpDatabase;->getThumbnailProcess(Ljava/lang/String;Landroid/graphics/Bitmap;)[B

    move-result-object v1
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_e7} :catch_e8

    return-object v1

    .line 1055
    :catch_e8
    move-exception v4

    .line 1056
    .local v4, "ex":Ljava/io/IOException;
    sget-object v6, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10f

    .line 1039
    .end local v4    # "ex":Ljava/io/IOException;
    :sswitch_ef
    :try_start_ef
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Landroid/util/Size;

    invoke-direct {v7, v6, v6}, Landroid/util/Size;-><init>(II)V

    new-instance v6, Landroid/os/CancellationSignal;

    invoke-direct {v6}, Landroid/os/CancellationSignal;-><init>()V

    invoke-static {v4, v7, v6}, Landroid/media/ThumbnailUtils;->createAudioThumbnail(Ljava/io/File;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v2, v4

    .line 1040
    invoke-direct {p0, v3, v2}, Landroid/mtp/MtpDatabase;->getThumbnailProcess(Ljava/lang/String;Landroid/graphics/Bitmap;)[B

    move-result-object v1
    :try_end_107
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_107} :catch_108

    return-object v1

    .line 1041
    :catch_108
    move-exception v4

    .line 1042
    .restart local v4    # "ex":Ljava/io/IOException;
    sget-object v6, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    .end local v4    # "ex":Ljava/io/IOException;
    nop

    .line 1060
    :goto_10f
    return-object v1

    :sswitch_data_110
    .sparse-switch
        0x3009 -> :sswitch_ef
        0x300a -> :sswitch_cf
        0x300b -> :sswitch_cf
        0x300c -> :sswitch_cf
        0x3800 -> :sswitch_20
        0x3801 -> :sswitch_20
        0x3802 -> :sswitch_20
        0x3804 -> :sswitch_20
        0x3807 -> :sswitch_20
        0x3808 -> :sswitch_20
        0x380b -> :sswitch_20
        0x380d -> :sswitch_20
        0x380f -> :sswitch_20
        0x3810 -> :sswitch_20
        0x3811 -> :sswitch_20
        0x3812 -> :sswitch_20
        0xb980 -> :sswitch_cf
        0xb981 -> :sswitch_cf
        0xb982 -> :sswitch_cf
        0xb984 -> :sswitch_cf
    .end sparse-switch
.end method

.method public getThumbnailInfo(I[J)Z
    .registers 12
    .param p1, "handle"    # I
    .param p2, "outLongs"    # [J

    .line 939
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 940
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 941
    return v1

    .line 943
    :cond_a
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v2

    const/4 v3, 0x2

    const-wide/32 v4, 0x32000

    const-wide/16 v6, 0x100

    const/4 v8, 0x1

    sparse-switch v2, :sswitch_data_3a

    .line 981
    return v1

    .line 956
    :sswitch_19
    aput-wide v4, p2, v1

    .line 957
    aput-wide v6, p2, v8

    .line 958
    aput-wide v6, p2, v3

    .line 959
    iget-boolean v1, p0, Landroid/mtp/MtpDatabase;->mSkipThumbForHost:Z

    if-eqz v1, :cond_2b

    .line 960
    sget-object v1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v2, "getThumbnailInfo: Skip runtime thumbnail."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    return v8

    .line 963
    :cond_2b
    return v8

    .line 976
    :sswitch_2c
    aput-wide v4, p2, v1

    .line 977
    aput-wide v6, p2, v8

    .line 978
    aput-wide v6, p2, v3

    .line 979
    return v8

    .line 965
    :sswitch_33
    aput-wide v4, p2, v1

    .line 966
    aput-wide v6, p2, v8

    .line 967
    aput-wide v6, p2, v3

    .line 968
    return v8

    :sswitch_data_3a
    .sparse-switch
        0x3009 -> :sswitch_33
        0x300a -> :sswitch_2c
        0x300b -> :sswitch_2c
        0x300c -> :sswitch_2c
        0x3800 -> :sswitch_19
        0x3801 -> :sswitch_19
        0x3802 -> :sswitch_19
        0x3804 -> :sswitch_19
        0x3807 -> :sswitch_19
        0x3808 -> :sswitch_19
        0x380b -> :sswitch_19
        0x380d -> :sswitch_19
        0x380f -> :sswitch_19
        0x3810 -> :sswitch_19
        0x3811 -> :sswitch_19
        0x3812 -> :sswitch_19
        0xb980 -> :sswitch_2c
        0xb981 -> :sswitch_2c
        0xb982 -> :sswitch_2c
        0xb984 -> :sswitch_2c
    .end sparse-switch
.end method

.method public initializeSerivce()V
    .registers 6

    .line 1190
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->isStratCommand:Z

    .line 1192
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->serviceComponent:[Landroid/content/ComponentName;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.easyMover.Agent"

    const-string v4, "com.sec.android.easyMover.Agent.RemoteService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 1193
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->serviceComponent:[Landroid/content/ComponentName;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.easyMover"

    const-string v4, "com.sec.android.easyMover.service.RemoteService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 1195
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->conn:[Landroid/content/ServiceConnection;

    new-instance v2, Landroid/mtp/MtpDatabase$3;

    invoke-direct {v2, p0}, Landroid/mtp/MtpDatabase$3;-><init>(Landroid/mtp/MtpDatabase;)V

    aput-object v2, v1, v0

    .line 1217
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->conn:[Landroid/content/ServiceConnection;

    new-instance v1, Landroid/mtp/MtpDatabase$4;

    invoke-direct {v1, p0}, Landroid/mtp/MtpDatabase$4;-><init>(Landroid/mtp/MtpDatabase;)V

    aput-object v1, v0, v3

    .line 1238
    return-void
.end method

.method public removeStorage(Landroid/os/storage/StorageVolume;)V
    .registers 5
    .param p1, "storage"    # Landroid/os/storage/StorageVolume;

    .line 422
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorage;

    .line 423
    .local v0, "mtpStorage":Landroid/mtp/MtpStorage;
    if-nez v0, :cond_f

    .line 424
    return-void

    .line 426
    :cond_f
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    if-eqz v1, :cond_16

    .line 427
    invoke-virtual {v1, v0}, Landroid/mtp/MtpServer;->removeStorage(Landroid/mtp/MtpStorage;)V

    .line 429
    :cond_16
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, v0}, Landroid/mtp/MtpStorageManager;->removeMtpStorage(Landroid/mtp/MtpStorage;)V

    .line 430
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    return-void
.end method

.method public setServer(Landroid/mtp/MtpServer;)V
    .registers 6
    .param p1, "server"    # Landroid/mtp/MtpServer;

    .line 369
    iput-object p1, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    .line 372
    :try_start_2
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_9} :catch_a

    .line 375
    goto :goto_b

    .line 373
    :catch_a
    move-exception v0

    .line 377
    :goto_b
    if-eqz p1, :cond_1b

    .line 378
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 381
    :cond_1b
    return-void
.end method
