.class public final Lcom/samsung/android/media/SemMediaResourceHelper;
.super Ljava/lang/Object;
.source "SemMediaResourceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;,
        Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;,
        Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;,
        Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;,
        Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;,
        Lcom/samsung/android/media/SemMediaResourceHelper$ResourceType;,
        Lcom/samsung/android/media/SemMediaResourceHelper$CodecState;
    }
.end annotation


# static fields
.field public static final CODEC_STATE_RUNNING:I = 0x1

.field public static final CODEC_STATE_WAITING:I = 0x0

.field private static final DEBUG:Z = true

.field private static final EVENT_ADD_RESOURCE:I = 0x1

.field private static final EVENT_CAPACITY_ERROR:I = 0x4

.field private static final EVENT_ERROR:I = 0x64

.field private static final EVENT_REMOVE_RESOURCE:I = 0x2

.field private static final EVENT_UPDATE_STATE:I = 0x3

.field private static final LISTENER_TYPE_CAPACITY_ERROR:I = 0x2

.field private static final LISTENER_TYPE_INFO:I = 0x0

.field private static final LISTENER_TYPE_STATE:I = 0x1

.field private static final PARAMETER_CAPACITY_MAX:I = 0x0

.field private static final PARAMETER_CAPACITY_REMAINED:I = 0x1

.field public static final RESOURCE_PRIORITY_HIGH:I = 0xa

.field public static final RESOURCE_PRIORITY_LOW:I = 0x0

.field public static final RESOURCE_TYPE_ALL:I = 0x0

.field public static final RESOURCE_TYPE_AUDIO:I = 0x1

.field public static final RESOURCE_TYPE_VIDEO:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SemMediaResourceHelper"

.field private static mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;


# instance fields
.field private mCodecStateChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

.field private mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

.field private mNativeContext:J

.field private mOwnResourceEventExcluded:Z

.field private mPid:I

.field private mResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

.field private mResourceType:I

.field private mVideoCapacityErrorListener:Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCodecStateChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mCodecStateChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResourceInfoChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoCapacityErrorListener(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mVideoCapacityErrorListener:Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    .line 671
    const-string/jumbo v0, "mediaresourcehelper"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 672
    return-void
.end method

.method private constructor <init>(IZ)V
    .registers 6
    .param p1, "resourceType"    # I
    .param p2, "ownResourceEventExcluded"    # Z

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    .line 45
    iput-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mCodecStateChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

    .line 46
    iput-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mVideoCapacityErrorListener:Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;

    .line 50
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    .line 148
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    .local v2, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_1c

    .line 149
    new-instance v0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    invoke-direct {v0, p0, p0, v2}, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;-><init>(Lcom/samsung/android/media/SemMediaResourceHelper;Lcom/samsung/android/media/SemMediaResourceHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    goto :goto_2d

    .line 150
    :cond_1c
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_2b

    .line 151
    new-instance v0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    invoke-direct {v0, p0, p0, v2}, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;-><init>(Lcom/samsung/android/media/SemMediaResourceHelper;Lcom/samsung/android/media/SemMediaResourceHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    goto :goto_2d

    .line 153
    :cond_2b
    iput-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    .line 156
    :goto_2d
    iput p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceType:I

    .line 157
    iput-boolean p2, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mOwnResourceEventExcluded:Z

    .line 158
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    .line 159
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_setup(Ljava/lang/Object;)V

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemMediaResourceHelper() resourceType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ownResourceEventExcluded : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", myPid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemMediaResourceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method

.method public static declared-synchronized createInstance(IZ)Lcom/samsung/android/media/SemMediaResourceHelper;
    .registers 5
    .param p0, "resourceType"    # I
    .param p1, "ownResourceEventExcluded"    # Z

    const-class v0, Lcom/samsung/android/media/SemMediaResourceHelper;

    monitor-enter v0

    .line 135
    :try_start_3
    sget-object v1, Lcom/samsung/android/media/SemMediaResourceHelper;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    if-nez v1, :cond_f

    .line 136
    new-instance v1, Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/media/SemMediaResourceHelper;-><init>(IZ)V

    sput-object v1, Lcom/samsung/android/media/SemMediaResourceHelper;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    goto :goto_16

    .line 139
    :cond_f
    const-string v1, "SemMediaResourceHelper"

    const-string v2, "SemMediaResourceHelper is already created"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_16
    sget-object v1, Lcom/samsung/android/media/SemMediaResourceHelper;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    monitor-exit v0

    return-object v1

    .line 134
    .end local p0    # "resourceType":I
    .end local p1    # "ownResourceEventExcluded":Z
    :catchall_1a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private dropOwnResourceEvent(I)Z
    .registers 3
    .param p1, "event_occured_pid"    # I

    .line 381
    iget-boolean v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mOwnResourceEventExcluded:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    if-lez v0, :cond_c

    if-ne p1, v0, :cond_c

    .line 382
    const/4 v0, 0x1

    return v0

    .line 384
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private makeMediaResourceInfo(Landroid/os/Parcel;)Ljava/util/ArrayList;
    .registers 32
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;",
            ">;"
        }
    .end annotation

    .line 348
    move-object/from16 v15, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 349
    .local v14, "mediaResourceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    if-eqz p1, :cond_a8

    .line 350
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 351
    .local v13, "total_size":I
    if-lez v13, :cond_a4

    .line 352
    const/4 v0, 0x0

    move v10, v0

    .local v10, "i":I
    :goto_12
    if-ge v10, v13, :cond_9e

    .line 353
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 354
    .local v9, "resourceType":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_22

    move v3, v2

    goto :goto_23

    :cond_22
    move v3, v1

    .line 355
    .local v3, "isSecured":Z
    :goto_23
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 356
    .local v8, "pid":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 357
    .local v16, "client":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 358
    .local v18, "state":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 359
    .local v19, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 360
    .local v20, "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 361
    .local v21, "framerate":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_43

    move v11, v2

    goto :goto_44

    :cond_43
    move v11, v1

    .line 362
    .local v11, "isEncoder":Z
    :goto_44
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_4c

    move v12, v2

    goto :goto_4d

    :cond_4c
    move v12, v1

    .line 363
    .local v12, "isSWCodec":Z
    :goto_4d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v22

    .line 364
    .local v22, "ComponentName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 366
    .local v23, "bitrate":I
    const/16 v24, 0x0

    .line 368
    .local v24, "resourceInfo":Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;
    iget v0, v15, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceType:I

    if-eqz v0, :cond_64

    if-ne v0, v9, :cond_5e

    goto :goto_64

    :cond_5e
    move/from16 v28, v10

    move/from16 v29, v13

    move-object v15, v14

    goto :goto_95

    :cond_64
    :goto_64
    iget-boolean v0, v15, Lcom/samsung/android/media/SemMediaResourceHelper;->mOwnResourceEventExcluded:Z

    if-eqz v0, :cond_70

    if-eqz v0, :cond_5e

    iget v0, v15, Lcom/samsung/android/media/SemMediaResourceHelper;->mPid:I

    if-lez v0, :cond_5e

    if-eq v0, v8, :cond_5e

    .line 370
    :cond_70
    new-instance v25, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move v2, v9

    move v4, v8

    move-wide/from16 v5, v16

    move/from16 v7, v18

    move/from16 v26, v8

    .end local v8    # "pid":I
    .local v26, "pid":I
    move/from16 v8, v19

    move/from16 v27, v9

    .end local v9    # "resourceType":I
    .local v27, "resourceType":I
    move/from16 v9, v20

    move/from16 v28, v10

    .end local v10    # "i":I
    .local v28, "i":I
    move/from16 v10, v21

    move/from16 v29, v13

    .end local v13    # "total_size":I
    .local v29, "total_size":I
    move-object/from16 v13, v22

    move-object v15, v14

    .end local v14    # "mediaResourceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    .local v15, "mediaResourceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    move/from16 v14, v23

    invoke-direct/range {v0 .. v14}, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;-><init>(Lcom/samsung/android/media/SemMediaResourceHelper;IZIJIIIIZZLjava/lang/String;I)V

    .line 371
    .end local v24    # "resourceInfo":Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;
    .local v0, "resourceInfo":Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    .end local v0    # "resourceInfo":Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;
    .end local v3    # "isSecured":Z
    .end local v11    # "isEncoder":Z
    .end local v12    # "isSWCodec":Z
    .end local v16    # "client":J
    .end local v18    # "state":I
    .end local v19    # "width":I
    .end local v20    # "height":I
    .end local v21    # "framerate":I
    .end local v22    # "ComponentName":Ljava/lang/String;
    .end local v23    # "bitrate":I
    .end local v26    # "pid":I
    .end local v27    # "resourceType":I
    :goto_95
    add-int/lit8 v10, v28, 0x1

    move-object v14, v15

    move/from16 v13, v29

    move-object/from16 v15, p0

    .end local v28    # "i":I
    .restart local v10    # "i":I
    goto/16 :goto_12

    .end local v15    # "mediaResourceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    .end local v29    # "total_size":I
    .restart local v13    # "total_size":I
    .restart local v14    # "mediaResourceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    :cond_9e
    move/from16 v28, v10

    move/from16 v29, v13

    move-object v15, v14

    .end local v10    # "i":I
    .end local v13    # "total_size":I
    .end local v14    # "mediaResourceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    .restart local v15    # "mediaResourceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    .restart local v28    # "i":I
    .restart local v29    # "total_size":I
    goto :goto_a9

    .line 351
    .end local v15    # "mediaResourceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    .end local v28    # "i":I
    .end local v29    # "total_size":I
    .restart local v13    # "total_size":I
    .restart local v14    # "mediaResourceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    :cond_a4
    move/from16 v29, v13

    move-object v15, v14

    .end local v13    # "total_size":I
    .end local v14    # "mediaResourceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    .restart local v15    # "mediaResourceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    .restart local v29    # "total_size":I
    goto :goto_a9

    .line 349
    .end local v15    # "mediaResourceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    .end local v29    # "total_size":I
    .restart local v14    # "mediaResourceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    :cond_a8
    move-object v15, v14

    .line 377
    .end local v14    # "mediaResourceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    .restart local v15    # "mediaResourceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    :goto_a9
    return-object v15
.end method

.method private native native_enableObserver(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private final native native_finalize()V
.end method

.method private native native_getCodecCapacity(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_getMediaResourceInfo(ILandroid/os/Parcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private final native native_release()V
.end method

.method private native native_setResourcePriority(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 10
    .param p0, "semMediaResourceHelper_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 489
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/SemMediaResourceHelper;

    .line 490
    .local v0, "semMediaResourceHelper":Lcom/samsung/android/media/SemMediaResourceHelper;
    const-string v1, "SemMediaResourceHelper"

    if-nez v0, :cond_14

    .line 491
    const-string/jumbo v2, "semMediaResourceHelper ref is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return-void

    .line 495
    :cond_14
    iget-object v2, v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    if-eqz v2, :cond_40

    .line 496
    if-eqz p4, :cond_35

    .line 497
    move-object v2, p4

    check-cast v2, Landroid/os/Parcel;

    .line 498
    .local v2, "parcel":Landroid/os/Parcel;
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 499
    .local v3, "event_occured_pid":I
    invoke-direct {v0, v3}, Lcom/samsung/android/media/SemMediaResourceHelper;->dropOwnResourceEvent(I)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 500
    const-string v4, "Skip event. mOwnResourceEventExcluded is enabled and owned resource"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    return-void

    .line 504
    :cond_2d
    invoke-direct {v0, v2}, Lcom/samsung/android/media/SemMediaResourceHelper;->makeMediaResourceInfo(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 505
    .local v1, "mediaResourceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 506
    move-object p4, v1

    .line 508
    .end local v1    # "mediaResourceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    .end local v2    # "parcel":Landroid/os/Parcel;
    .end local v3    # "event_occured_pid":I
    :cond_35
    iget-object v1, v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 509
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, v0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    invoke-virtual {v2, v1}, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 511
    .end local v1    # "msg":Landroid/os/Message;
    :cond_40
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 1

    .line 667
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_finalize()V

    .line 668
    return-void
.end method

.method public getMaxVideoCapacity()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 302
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_getCodecCapacity(I)I

    move-result v0

    return v0
.end method

.method public final getMediaResourceInfo(I)Ljava/util/ArrayList;
    .registers 4
    .param p1, "resourceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 337
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 340
    .local v0, "reply":Landroid/os/Parcel;
    :try_start_4
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_getMediaResourceInfo(ILandroid/os/Parcel;)V

    .line 341
    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->makeMediaResourceInfo(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 341
    return-object v1

    .line 343
    :catchall_f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 344
    throw v1
.end method

.method public getRemainedVideoCapacity()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 312
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_getCodecCapacity(I)I

    move-result v0

    return v0
.end method

.method public release()V
    .registers 3

    .line 394
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_release()V

    .line 395
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 396
    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 398
    :cond_b
    iput-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    .line 399
    iput-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mCodecStateChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

    .line 400
    iput-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mVideoCapacityErrorListener:Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;

    .line 401
    iput-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mEventHandler:Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;

    .line 402
    sput-object v1, Lcom/samsung/android/media/SemMediaResourceHelper;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    .line 403
    return-void
.end method

.method public setCodecStateChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 243
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mCodecStateChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

    .line 245
    const/4 v0, 0x1

    if-eqz p1, :cond_9

    .line 246
    invoke-direct {p0, v0, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_enableObserver(IZ)V

    goto :goto_d

    .line 248
    :cond_9
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_enableObserver(IZ)V

    .line 250
    :goto_d
    return-void
.end method

.method public declared-synchronized setOwnResourceEventExcluded(Z)V
    .registers 5
    .param p1, "ownResourceEventExcluded"    # Z

    monitor-enter p0

    .line 185
    :try_start_1
    const-string v0, "SemMediaResourceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOwnResourceEventExcluded() ownResourceEventExcluded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iput-boolean p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mOwnResourceEventExcluded:Z
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 188
    monitor-exit p0

    return-void

    .line 184
    .end local p0    # "this":Lcom/samsung/android/media/SemMediaResourceHelper;
    .end local p1    # "ownResourceEventExcluded":Z
    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setResourceInfoChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    .line 200
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 201
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_enableObserver(IZ)V

    goto :goto_d

    .line 203
    :cond_a
    invoke-direct {p0, v0, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_enableObserver(IZ)V

    .line 205
    :goto_d
    return-void
.end method

.method public setResourcePriority(I)V
    .registers 2
    .param p1, "priority"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 324
    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_setResourcePriority(I)V

    .line 325
    return-void
.end method

.method public declared-synchronized setResourceTypeForEvent(I)V
    .registers 5
    .param p1, "resourceType"    # I

    monitor-enter p0

    .line 173
    :try_start_1
    const-string v0, "SemMediaResourceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setResourceTypeForEvent() resourceType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iput p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mResourceType:I
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 176
    monitor-exit p0

    return-void

    .line 172
    .end local p0    # "this":Lcom/samsung/android/media/SemMediaResourceHelper;
    .end local p1    # "resourceType":I
    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setVideoCapacityErrorListener(Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 273
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper;->mVideoCapacityErrorListener:Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;

    .line 275
    const/4 v0, 0x2

    if-eqz p1, :cond_a

    .line 276
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_enableObserver(IZ)V

    goto :goto_e

    .line 278
    :cond_a
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->native_enableObserver(IZ)V

    .line 280
    :goto_e
    return-void
.end method
