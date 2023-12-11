.class public Lcom/samsung/android/camera/filter/SemFilterManager;
.super Ljava/lang/Object;
.source "SemFilterManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;,
        Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.provider.filterprovider/filters"

.field private static final BASE_URI:Landroid/net/Uri;

.field private static final FILTER_AUTHORITY:Ljava/lang/String; = "com.samsung.android.provider.filterprovider/filters"

.field private static final FILTER_CATEGORY:Ljava/lang/String; = "category"

.field public static final FILTER_EVENT_ADD:I = 0x0

.field public static final FILTER_EVENT_DELETE:I = 0x1

.field public static final FILTER_EVENT_LOCALE_CHANGE:I = 0x2

.field public static final FILTER_EVENT_RESET:I = 0x3

.field private static final FILTER_FILE_NAME:Ljava/lang/String; = "filename"

.field private static final FILTER_NAME:Ljava/lang/String; = "name"

.field private static final FILTER_PACKAGE:Ljava/lang/String; = "com.samsung.android.provider.filterprovider"

.field private static final FILTER_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final FILTER_PROJECTION:[Ljava/lang/String;

.field private static final FILTER_TITLE:Ljava/lang/String; = "title"

.field private static final FILTER_TITLE_ID:Ljava/lang/String; = "title_id"

.field private static final FILTER_URI:Landroid/net/Uri;

.field private static final FILTER_VENDOR:Ljava/lang/String; = "vendor"

.field private static final FILTER_VERSION:Ljava/lang/String; = "version"

.field private static final INDEX_FILTER_CATEGORY:I = 0x4

.field private static final INDEX_FILTER_FILE_NAME:I = 0x1

.field private static final INDEX_FILTER_NAME:I = 0x0

.field private static final INDEX_FILTER_PACKAGE_NAME:I = 0x2

.field private static final INDEX_FILTER_TITLE_ID:I = 0x6

.field private static final INDEX_FILTER_VENDOR:I = 0x3

.field private static final INDEX_FILTER_VERSION:I = 0x5

.field private static final MYFILTER_AUTHORITY:Ljava/lang/String; = "com.samsung.android.provider.filterprovider/myfilter"

.field private static final MYFILTER_SEPERATOR:Ljava/lang/String; = "[MYFILTER]"

.field private static final MYFILTER_URI:Landroid/net/Uri;

.field private static final SI_KEY_FILTER_VALUE_GS_NO_EFFECT:I = 0x190

.field private static final TAG:Ljava/lang/String; = "SemFilterManager"

.field private static final TYPE_EFFECT_CUSTOMCOLOR:I = 0x1a9

.field private static final TYPE_EFFECT_DISTORTION_CORRECTION:I = 0x1bf

.field private static final TYPE_EFFECT_FOOD:I = 0x1c2

.field public static final TYPE_FILTER_BASIC:I = 0x64

.field public static final TYPE_FILTER_EXTENDED:I = 0x65

.field public static final TYPE_FILTER_USER_GENERATED:I = 0x66

.field private static final notiAddUri:Landroid/net/Uri;

.field private static final notiDeleteUri:Landroid/net/Uri;

.field private static final notiLocaleChangeUri:Landroid/net/Uri;


# instance fields
.field private mCallbackHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mFilterAddObserver:Landroid/database/ContentObserver;

.field private mFilterDeleteObserver:Landroid/database/ContentObserver;

.field private mLocaleChangeObserver:Landroid/database/ContentObserver;

.field private mObserverHandler:Landroid/os/Handler;

.field private mObserverHandlerThread:Landroid/os/HandlerThread;

.field mSemFilterManagerCallback:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallbackHandler(Lcom/samsung/android/camera/filter/SemFilterManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mCallbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 8

    .line 91
    const-string v0, "content://com.samsung.android.provider.filterprovider/filters"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/camera/filter/SemFilterManager;->BASE_URI:Landroid/net/Uri;

    .line 94
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/filter/SemFilterManager;->FILTER_URI:Landroid/net/Uri;

    .line 97
    const-string v0, "content://com.samsung.android.provider.filterprovider/myfilter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/filter/SemFilterManager;->MYFILTER_URI:Landroid/net/Uri;

    .line 99
    const-string v0, "content://com.samsung.android.provider.filterprovider/notifyAdd"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/filter/SemFilterManager;->notiAddUri:Landroid/net/Uri;

    .line 100
    const-string v0, "content://com.samsung.android.provider.filterprovider/notifyDelete"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/filter/SemFilterManager;->notiDeleteUri:Landroid/net/Uri;

    .line 101
    const-string v0, "content://com.samsung.android.provider.filterprovider/notifyLocaleChange"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/filter/SemFilterManager;->notiLocaleChangeUri:Landroid/net/Uri;

    .line 122
    const-string/jumbo v1, "name"

    const-string v2, "filename"

    const-string/jumbo v3, "package_name"

    const-string/jumbo v4, "vendor"

    const-string v5, "category"

    const-string/jumbo v6, "version"

    const-string/jumbo v7, "title_id"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/filter/SemFilterManager;->FILTER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    .line 126
    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterAddObserver:Landroid/database/ContentObserver;

    .line 127
    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterDeleteObserver:Landroid/database/ContentObserver;

    .line 128
    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mLocaleChangeObserver:Landroid/database/ContentObserver;

    .line 129
    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    .line 130
    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    .line 131
    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mCallbackHandler:Landroid/os/Handler;

    .line 146
    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mSemFilterManagerCallback:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;

    .line 156
    iput-object p1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    .line 158
    nop

    .line 159
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SemFilter ContentObserver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    .line 160
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 161
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    .line 164
    new-instance v0, Lcom/samsung/android/camera/filter/SemFilterManager$1;

    iget-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/camera/filter/SemFilterManager$1;-><init>(Lcom/samsung/android/camera/filter/SemFilterManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterAddObserver:Landroid/database/ContentObserver;

    .line 182
    new-instance v0, Lcom/samsung/android/camera/filter/SemFilterManager$2;

    iget-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/camera/filter/SemFilterManager$2;-><init>(Lcom/samsung/android/camera/filter/SemFilterManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterDeleteObserver:Landroid/database/ContentObserver;

    .line 200
    new-instance v0, Lcom/samsung/android/camera/filter/SemFilterManager$3;

    iget-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/camera/filter/SemFilterManager$3;-><init>(Lcom/samsung/android/camera/filter/SemFilterManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mLocaleChangeObserver:Landroid/database/ContentObserver;

    .line 218
    invoke-direct {p0}, Lcom/samsung/android/camera/filter/SemFilterManager;->registerObserver()V

    .line 219
    return-void
.end method

.method private loadFilter()Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/filter/SemFilter;",
            ">;"
        }
    .end annotation

    .line 373
    move-object/from16 v1, p0

    const-string v0, "[SemFilterManager] loadFilter()"

    const-string v2, "SemFilterManager"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 375
    .local v3, "FilterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/camera/filter/SemFilter;>;"
    iget-object v0, v1, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/camera/filter/SemFilterManager;->FILTER_URI:Landroid/net/Uri;

    sget-object v6, Lcom/samsung/android/camera/filter/SemFilterManager;->FILTER_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 376
    .local v4, "cursor":Landroid/database/Cursor;
    if-nez v4, :cond_2e

    .line 377
    :try_start_22
    const-string v0, "[SemFilterManager] loadFilter() cursor is null"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_106

    .line 378
    nop

    .line 427
    if-eqz v4, :cond_2d

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 378
    :cond_2d
    return-object v3

    .line 381
    :cond_2e
    :try_start_2e
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v5, v0

    .line 383
    .local v5, "resourceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/res/Resources;>;"
    :cond_34
    :goto_34
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_100

    .line 384
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 385
    .local v14, "filterName":Ljava/lang/String;
    if-eqz v14, :cond_34

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 386
    goto :goto_34

    .line 388
    :cond_49
    const/4 v6, 0x1

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 389
    .local v15, "filterFullName":Ljava/lang/String;
    if-eqz v15, :cond_34

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 390
    goto :goto_34

    .line 392
    :cond_58
    const/4 v0, 0x2

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 393
    .local v11, "packageName":Ljava/lang/String;
    if-eqz v11, :cond_fc

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_64
    .catchall {:try_start_2e .. :try_end_64} :catchall_106

    if-eqz v0, :cond_67

    .line 394
    goto :goto_34

    .line 399
    :cond_67
    :try_start_67
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    .line 400
    .local v0, "resources":Landroid/content/res/Resources;
    if-nez v0, :cond_7d

    .line 401
    iget-object v7, v1, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    move-object v0, v7

    .line 402
    invoke-virtual {v5, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    :cond_7d
    const/4 v7, 0x6

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 406
    .local v7, "resId":I
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_86} :catch_88
    .catchall {:try_start_67 .. :try_end_86} :catchall_106

    .line 411
    .end local v0    # "resources":Landroid/content/res/Resources;
    .end local v7    # "resId":I
    .local v8, "filterTitle":Ljava/lang/String;
    move-object v0, v8

    goto :goto_95

    .line 407
    .end local v8    # "filterTitle":Ljava/lang/String;
    :catch_88
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/Exception;
    :try_start_89
    const-string/jumbo v7, "getResourcesForApplication or getString encounter exception"

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 410
    move-object v7, v14

    move-object v8, v7

    move-object v0, v8

    .line 413
    .local v0, "filterTitle":Ljava/lang/String;
    :goto_95
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v15, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v16, v6

    .line 414
    .local v16, "filterIdentifier":Ljava/lang/String;
    if-eqz v16, :cond_f8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_c1

    .line 415
    goto/16 :goto_34

    .line 417
    :cond_c1
    const/4 v6, 0x3

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v6

    .line 418
    .local v17, "filterVendor":Ljava/lang/String;
    if-eqz v17, :cond_f4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_d2

    .line 419
    goto/16 :goto_34

    .line 421
    :cond_d2
    const/4 v6, 0x4

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 422
    .local v12, "filterCategory":I
    const/4 v6, 0x5

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 424
    .local v13, "filterVersion":I
    new-instance v18, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    move-object/from16 v6, v18

    move-object v7, v11

    move-object v8, v14

    move-object/from16 v9, v16

    move-object v10, v0

    move-object/from16 v19, v11

    .end local v11    # "packageName":Ljava/lang/String;
    .local v19, "packageName":Ljava/lang/String;
    move-object/from16 v11, v17

    invoke-direct/range {v6 .. v13}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    move-object/from16 v6, v18

    .line 425
    .local v6, "filter":Lcom/samsung/android/camera/filter/SemFilter;
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f1
    .catchall {:try_start_89 .. :try_end_f1} :catchall_106

    .line 426
    nop

    .end local v0    # "filterTitle":Ljava/lang/String;
    .end local v6    # "filter":Lcom/samsung/android/camera/filter/SemFilter;
    .end local v12    # "filterCategory":I
    .end local v13    # "filterVersion":I
    .end local v14    # "filterName":Ljava/lang/String;
    .end local v15    # "filterFullName":Ljava/lang/String;
    .end local v16    # "filterIdentifier":Ljava/lang/String;
    .end local v17    # "filterVendor":Ljava/lang/String;
    .end local v19    # "packageName":Ljava/lang/String;
    goto/16 :goto_34

    .line 418
    .restart local v0    # "filterTitle":Ljava/lang/String;
    .restart local v11    # "packageName":Ljava/lang/String;
    .restart local v14    # "filterName":Ljava/lang/String;
    .restart local v15    # "filterFullName":Ljava/lang/String;
    .restart local v16    # "filterIdentifier":Ljava/lang/String;
    .restart local v17    # "filterVendor":Ljava/lang/String;
    :cond_f4
    move-object/from16 v19, v11

    .end local v11    # "packageName":Ljava/lang/String;
    .restart local v19    # "packageName":Ljava/lang/String;
    goto/16 :goto_34

    .line 414
    .end local v17    # "filterVendor":Ljava/lang/String;
    .end local v19    # "packageName":Ljava/lang/String;
    .restart local v11    # "packageName":Ljava/lang/String;
    :cond_f8
    move-object/from16 v19, v11

    .end local v11    # "packageName":Ljava/lang/String;
    .restart local v19    # "packageName":Ljava/lang/String;
    goto/16 :goto_34

    .line 393
    .end local v0    # "filterTitle":Ljava/lang/String;
    .end local v16    # "filterIdentifier":Ljava/lang/String;
    .end local v19    # "packageName":Ljava/lang/String;
    .restart local v11    # "packageName":Ljava/lang/String;
    :cond_fc
    move-object/from16 v19, v11

    .end local v11    # "packageName":Ljava/lang/String;
    .restart local v19    # "packageName":Ljava/lang/String;
    goto/16 :goto_34

    .line 427
    .end local v5    # "resourceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/res/Resources;>;"
    .end local v14    # "filterName":Ljava/lang/String;
    .end local v15    # "filterFullName":Ljava/lang/String;
    .end local v19    # "packageName":Ljava/lang/String;
    :cond_100
    if-eqz v4, :cond_105

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 428
    .end local v4    # "cursor":Landroid/database/Cursor;
    :cond_105
    return-object v3

    .line 375
    .restart local v4    # "cursor":Landroid/database/Cursor;
    :catchall_106
    move-exception v0

    move-object v2, v0

    if-eqz v4, :cond_113

    :try_start_10a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_10d
    .catchall {:try_start_10a .. :try_end_10d} :catchall_10e

    goto :goto_113

    :catchall_10e
    move-exception v0

    move-object v5, v0

    invoke-virtual {v2, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_113
    :goto_113
    throw v2
.end method

.method private registerObserver()V
    .registers 5

    .line 258
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/filter/SemFilterManager;->notiAddUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterAddObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 259
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/filter/SemFilterManager;->notiDeleteUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterDeleteObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 260
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/filter/SemFilterManager;->notiLocaleChangeUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mLocaleChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 261
    return-void
.end method

.method private unRegisterObserver()V
    .registers 3

    .line 264
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterAddObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_f

    .line 265
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterAddObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 267
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterDeleteObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1e

    .line 268
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterDeleteObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 270
    :cond_1e
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mLocaleChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2d

    .line 271
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mLocaleChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 274
    :cond_2d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterAddObserver:Landroid/database/ContentObserver;

    .line 275
    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterDeleteObserver:Landroid/database/ContentObserver;

    .line 276
    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mLocaleChangeObserver:Landroid/database/ContentObserver;

    .line 277
    return-void
.end method


# virtual methods
.method public close()V
    .registers 6

    .line 228
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    if-eqz v0, :cond_41

    .line 229
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_41

    .line 231
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 233
    :try_start_f
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_14} :catch_1c
    .catchall {:try_start_f .. :try_end_14} :catchall_1a

    .line 237
    nop

    :goto_15
    iput-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    .line 238
    iput-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    .line 239
    goto :goto_41

    .line 237
    :catchall_1a
    move-exception v0

    goto :goto_3c

    .line 234
    :catch_1c
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1d
    const-string v2, "SemFilterManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopHandler : interrupted - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_1d .. :try_end_3a} :catchall_1a

    .line 237
    nop

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_15

    :goto_3c
    iput-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    .line 238
    iput-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    .line 239
    throw v0

    .line 243
    :cond_41
    :goto_41
    invoke-direct {p0}, Lcom/samsung/android/camera/filter/SemFilterManager;->unRegisterObserver()V

    .line 244
    return-void
.end method

.method protected finalize()V
    .registers 1

    .line 254
    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterManager;->close()V

    .line 255
    return-void
.end method

.method public getAvailableFilters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/filter/SemFilter;",
            ">;"
        }
    .end annotation

    .line 369
    invoke-direct {p0}, Lcom/samsung/android/camera/filter/SemFilterManager;->loadFilter()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableFilters(I)Ljava/util/List;
    .registers 14
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/filter/SemFilter;",
            ">;"
        }
    .end annotation

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v0, "FilterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/camera/filter/SemFilter;>;"
    packed-switch p1, :pswitch_data_56

    goto :goto_50

    .line 307
    :pswitch_9
    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterManager;->getAvailableMyFilters()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 293
    :pswitch_e
    new-instance v1, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const-string v3, "com.samsung.android.provider"

    const-string v4, "SelfieFaceCorrection"

    const/16 v5, 0x1bf

    const-string v6, "Selfie Face Correction"

    const-string v7, "SAMSUNG_MOBILE"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 294
    .local v1, "selfieFaceCorrection":Lcom/samsung/android/camera/filter/SemFilter;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    new-instance v10, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const-string v3, "com.samsung.android.provider"

    const-string v4, "CustomColor"

    const/16 v5, 0x1a9

    const-string v6, "Custom Color"

    const-string v7, "SAMSUNG_MOBILE"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 297
    .local v2, "customcolorFilter":Lcom/samsung/android/camera/filter/SemFilter;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    new-instance v11, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const-string v4, "com.samsung.android.provider"

    const-string v5, "Food"

    const/16 v6, 0x1c2

    const-string v7, "Food"

    const-string v8, "SAMSUNG_MOBILE"

    const/4 v10, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 300
    .local v3, "foodFilter":Lcom/samsung/android/camera/filter/SemFilter;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    goto :goto_50

    .line 304
    .end local v1    # "selfieFaceCorrection":Lcom/samsung/android/camera/filter/SemFilter;
    .end local v2    # "customcolorFilter":Lcom/samsung/android/camera/filter/SemFilter;
    .end local v3    # "foodFilter":Lcom/samsung/android/camera/filter/SemFilter;
    :pswitch_4b
    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterManager;->getAvailableFilters()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 312
    :goto_50
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_56
    .packed-switch 0x64
        :pswitch_4b
        :pswitch_e
        :pswitch_9
    .end packed-switch
.end method

.method public getAvailableMyFilters()Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/filter/SemFilter;",
            ">;"
        }
    .end annotation

    .line 324
    const-string v0, "Unnamed filter"

    const-string v1, "[SemFilterManager] getAvailableMyFilters()"

    const-string v2, "SemFilterManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v1, "MyFilterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/camera/filter/SemFilter;>;"
    const/4 v3, 0x0

    .line 328
    .local v3, "cursor":Landroid/database/Cursor;
    :try_start_f
    iget-object v4, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/camera/filter/SemFilterManager;->MYFILTER_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "filter_order"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v3, v4

    .line 329
    if-nez v3, :cond_32

    .line 330
    const-string v0, "[SemFilterManager] getAvailableMyFilters() cursor is null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2c} :catch_ad
    .catchall {:try_start_f .. :try_end_2c} :catchall_ab

    .line 354
    if-eqz v3, :cond_31

    .line 355
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 331
    :cond_31
    return-object v0

    .line 334
    :cond_32
    if-eqz v3, :cond_a5

    :try_start_34
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_a5

    .line 336
    :cond_3a
    :goto_3a
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_a5

    .line 338
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 339
    .local v4, "myFilterName":Ljava/lang/String;
    if-eqz v4, :cond_3a

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 340
    goto :goto_3a

    .line 342
    :cond_4e
    const/4 v5, 0x2

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v13, v5

    .line 343
    .local v13, "myFilterFileName":Ljava/lang/String;
    if-eqz v13, :cond_3a

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 344
    goto :goto_3a

    .line 345
    :cond_5d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "myFilterName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", myFilterFileName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    new-instance v14, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const-string v6, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MYFILTER]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, ""

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v14

    move-object v7, v4

    move-object v9, v4

    invoke-direct/range {v5 .. v12}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    move-object v5, v14

    .line 347
    .local v5, "Myfilter":Lcom/samsung/android/camera/filter/SemFilter;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_a3} :catch_ad
    .catchall {:try_start_34 .. :try_end_a3} :catchall_ab

    .line 348
    nop

    .end local v4    # "myFilterName":Ljava/lang/String;
    .end local v5    # "Myfilter":Lcom/samsung/android/camera/filter/SemFilter;
    .end local v13    # "myFilterFileName":Ljava/lang/String;
    goto :goto_3a

    .line 354
    :cond_a5
    if-eqz v3, :cond_b4

    .line 355
    :goto_a7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_b4

    .line 354
    :catchall_ab
    move-exception v0

    goto :goto_b9

    .line 351
    :catch_ad
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/Exception;
    :try_start_ae
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_ab

    .line 354
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_b4

    .line 355
    goto :goto_a7

    .line 357
    :cond_b4
    :goto_b4
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 354
    :goto_b9
    if-eqz v3, :cond_be

    .line 355
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 356
    :cond_be
    throw v0
.end method

.method public setFilterCallback(Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;Landroid/os/Handler;)V
    .registers 3
    .param p1, "cb"    # Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 439
    iput-object p1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mSemFilterManagerCallback:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;

    .line 440
    iput-object p2, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mCallbackHandler:Landroid/os/Handler;

    .line 441
    return-void
.end method
