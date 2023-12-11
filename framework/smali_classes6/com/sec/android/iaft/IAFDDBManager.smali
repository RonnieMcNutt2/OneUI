.class public Lcom/sec/android/iaft/IAFDDBManager;
.super Ljava/lang/Object;
.source "IAFDDBManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;,
        Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHolder;,
        Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;,
        Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;
    }
.end annotation


# static fields
.field static final CONTROLINFOTB_code:I = 0x1

.field static final DB_IAFD_TB:Ljava/lang/String; = "IAFD_TB"

.field static final DB_IAFD_TB_URI:Landroid/net/Uri;

.field static DBversion:I = 0x0

.field static final EXP_32BITAPP:I = 0x1e

.field static final EXP_AllFilesAccess:I = 0x1b

.field static final EXP_FeatureControl:I = 0x26

.field static final EXP_NoEnoughSpace:I = 0x22

.field static final EXP_NoSettingsProvidersForDual:I = 0x23

.field static final EXP_OOM:I = 0x19

.field static final EXP_REMOVABLEAPP:I = 0x1f

.field static final EXP_RepairLinks:I = 0x25

.field static final EXP_RepairOnlyShowList:I = 0x27

.field static final EXP_SUPPORT_AppWhiteLIST:I = 0x24

.field static final EXP_SUPPORT_CSC:I = 0x21

.field static final EXP_WEBVIEWREMOVABLEAPP:I = 0x20

.field static final EXP_WebView:I = 0x13

.field static final HandleARDB_HotfixDB_Update:I = 0xfb

.field static final HandleDB_SMDCDB_TryInit:I = 0xfe

.field static final HandleDB_SMDCDB_Update:I = 0xfd

.field static final HandleDB_allDB_init:I = 0xff

.field static final HandleIAFDDB_HotfixDB_Update:I = 0xfc

.field private static final IAFDDBTYPE_HC:I = 0x0

.field private static final IAFDDBTYPE_HOTFIX:I = 0x2

.field private static final IAFDDBTYPE_SMDC:I = 0x1

.field static final IAFD_AUTOHORITY:Ljava/lang/String; = "com.samsung.android.sm"

.field static final IAFD_FW_Version:I = 0x5

.field static final JE_CALLSTACKTB_code:I = 0x4

.field static final JE_CLASSNAMETB_code:I = 0x2

.field static final JE_DETAILMSGTB_code:I = 0x3

.field private static final MAX_DBINIT_RETRY_CNT:I = 0x19

.field static final NE_CALLSTACKTB_code:I = 0x5

.field static final NE_HEADERINFOTB_code:I = 0x6

.field private static final TAG:Ljava/lang/String; = "IAFDDBManager"

.field static final columnsSMTB:[Ljava/lang/String;

.field static isDBIniting:Z = false

.field static mCurDBIndex:I = 0x0

.field static mDBInitReTryCnt:I = 0x0

.field private static final mReTryInterval:J = 0x1388L


# instance fields
.field private isCHNModel:Z

.field private mContext:Landroid/content/Context;

.field private mIAFDDBManagerHandler:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

.field private mIAFDDBManagerThread:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;

.field private mIAFDsocketServerThread:Lcom/sec/android/iaft/IAFDSocketFdServer;

.field private mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

.field private mRegisteredSmartManagerIAFDObserver:Z

.field private mSalesCode:Ljava/lang/String;

.field private mSmartManagerIAFDObserver:Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/android/iaft/IAFDDBManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;
    .registers 1

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBManagerHandler:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIfadDBData(Lcom/sec/android/iaft/IAFDDBManager;)[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;
    .registers 1

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRegisteredSmartManagerIAFDObserver(Lcom/sec/android/iaft/IAFDDBManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mRegisteredSmartManagerIAFDObserver:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSmartManagerIAFDObserver(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;
    .registers 1

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mSmartManagerIAFDObserver:Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBManagerHandler:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRegisteredSmartManagerIAFDObserver(Lcom/sec/android/iaft/IAFDDBManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sec/android/iaft/IAFDDBManager;->mRegisteredSmartManagerIAFDObserver:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSmartManagerIAFDObserver(Lcom/sec/android/iaft/IAFDDBManager;Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager;->mSmartManagerIAFDObserver:Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;

    return-void
.end method

.method static bridge synthetic -$$Nest$minitARDBHotfix(Lcom/sec/android/iaft/IAFDDBManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDBManager;->initARDBHotfix()V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitDBByURIOrFile(Lcom/sec/android/iaft/IAFDDBManager;ZLandroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/iaft/IAFDDBManager;->initDBByURIOrFile(ZLandroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minitIAFDDBHotfix(Lcom/sec/android/iaft/IAFDDBManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDBManager;->initIAFDDBHotfix()V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitTBs(Lcom/sec/android/iaft/IAFDDBManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDBManager;->initTBs()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msyncDBType(Lcom/sec/android/iaft/IAFDDBManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDBManager;->syncDBType()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 7

    .line 73
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/iaft/IAFDDBManager;->mDBInitReTryCnt:I

    .line 74
    sput-boolean v0, Lcom/sec/android/iaft/IAFDDBManager;->isDBIniting:Z

    .line 75
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/iaft/IAFDDBManager;->DBversion:I

    .line 78
    const-string v1, "tbID"

    const-string v2, "expID"

    const-string v3, "enable"

    const-string v4, "keyWord"

    const-string v5, "rule"

    const-string v6, "suggestion"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/iaft/IAFDDBManager;->columnsSMTB:[Ljava/lang/String;

    .line 83
    const-string v0, "content://com.samsung.android.sm/IAFD_TB"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/iaft/IAFDDBManager;->DB_IAFD_TB_URI:Landroid/net/Uri;

    .line 85
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/iaft/IAFDDBManager;->mCurDBIndex:I

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x0

    filled-new-array {v0, v0, v0}, [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    .line 92
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/iaft/IAFDDBManager;->mRegisteredSmartManagerIAFDObserver:Z

    .line 94
    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mSalesCode:Ljava/lang/String;

    .line 95
    iput-boolean v1, p0, Lcom/sec/android/iaft/IAFDDBManager;->isCHNModel:Z

    .line 97
    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDsocketServerThread:Lcom/sec/android/iaft/IAFDSocketFdServer;

    .line 100
    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBManagerThread:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;

    .line 101
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/iaft/IAFDDBManager;->mCurDBIndex:I

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/iaft/IAFDDBManager-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDBManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/iaft/IAFDDBManager;
    .registers 1

    .line 109
    invoke-static {}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHolder;->-$$Nest$sfgetINSTANCE()Lcom/sec/android/iaft/IAFDDBManager;

    move-result-object v0

    return-object v0
.end method

.method private initARDBHotfix()V
    .registers 1

    .line 386
    return-void
.end method

.method private initDBByURIOrFile(ZLandroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;
    .registers 30
    .param p1, "isURI"    # Z
    .param p2, "db_uri"    # Landroid/net/Uri;
    .param p3, "dbPath"    # Ljava/lang/String;

    .line 188
    move-object/from16 v1, p0

    const-string v0, "1"

    const/4 v2, 0x0

    .line 189
    .local v2, "iafd_data":Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;
    const/4 v3, 0x0

    .line 190
    .local v3, "mdb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    .line 193
    .local v4, "cursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_25

    .line 194
    :try_start_b
    iget-object v7, v1, Lcom/sec/android/iaft/IAFDDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/sec/android/iaft/IAFDDBManager;->DB_IAFD_TB_URI:Landroid/net/Uri;

    sget-object v10, Lcom/sec/android/iaft/IAFDDBManager;->columnsSMTB:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1c} :catch_20

    move-object v4, v7

    move-object/from16 v7, p3

    goto :goto_3a

    .line 331
    :catch_20
    move-exception v0

    move-object/from16 v7, p3

    goto/16 :goto_294

    .line 196
    :cond_25
    move-object/from16 v7, p3

    :try_start_27
    invoke-static {v7, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2b} :catch_293

    .line 197
    .end local v3    # "mdb":Landroid/database/sqlite/SQLiteDatabase;
    .local v8, "mdb":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_2b
    const-string v9, "IAFD_TB"

    sget-object v10, Lcom/sec/android/iaft/IAFDDBManager;->columnsSMTB:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_38} :catch_290

    move-object v4, v3

    move-object v3, v8

    .line 200
    .end local v8    # "mdb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "mdb":Landroid/database/sqlite/SQLiteDatabase;
    :goto_3a
    if-eqz v4, :cond_28f

    .line 201
    :try_start_3c
    new-instance v8, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    invoke-direct {v8}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;-><init>()V

    move-object v2, v8

    .line 203
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x3

    const/4 v13, 0x5

    const/4 v14, 0x4

    if-eqz v8, :cond_ef

    .line 204
    new-instance v8, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-direct {v8}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;-><init>()V

    iput-object v8, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    .line 205
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 206
    .local v8, "tmpStr":Ljava/lang/String;
    const-string v15, ">,<"

    invoke-virtual {v8, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 208
    .local v15, "strArray":[Ljava/lang/String;
    iget-object v9, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    aget-object v5, v15, v10

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v9, v5}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setEnable(Z)V

    .line 209
    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    aget-object v9, v15, v6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setJE_cstack_maxSize(I)V

    .line 210
    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    aget-object v9, v15, v11

    invoke-virtual {v5, v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setJE_cstack_start(Ljava/lang/String;)V

    .line 211
    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    aget-object v9, v15, v12

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setNE_cstack_maxSize(I)V

    .line 212
    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    aget-object v9, v15, v14

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setNE_cHeader_maxSize(I)V

    .line 213
    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    aget-object v9, v15, v13

    invoke-virtual {v5, v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setNE_cstack_start(Ljava/lang/String;)V

    .line 216
    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/16 v9, 0x100

    invoke-virtual {v5, v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setReason_maxSize(I)V

    .line 217
    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/16 v9, 0x200

    invoke-virtual {v5, v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setCallstack_maxSize(I)V

    .line 218
    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v14, 0x0

    invoke-virtual {v5, v9, v14}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setenableDetectAll32bitApp(Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 220
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    sput v5, Lcom/sec/android/iaft/IAFDDBManager;->DBversion:I

    .line 221
    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    sget v9, Lcom/sec/android/iaft/IAFDDBManager;->DBversion:I

    invoke-virtual {v5, v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setDBVersion(I)V

    .line 222
    sget v5, Lcom/sec/android/iaft/IAFDDBManager;->DBversion:I

    if-le v5, v6, :cond_d9

    .line 223
    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/4 v9, 0x6

    aget-object v14, v15, v9

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setReason_maxSize(I)V

    .line 224
    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/4 v9, 0x7

    aget-object v9, v15, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setCallstack_maxSize(I)V

    .line 226
    :cond_d9
    sget v5, Lcom/sec/android/iaft/IAFDDBManager;->DBversion:I

    if-ge v5, v12, :cond_e3

    .line 227
    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v9, v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setCSCFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_e3
    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const-string v9, "android.app.stubs>,<com.android.cts>,<com.android.test>,<com.android.app1>,<com.android.app2>,<com.android.app3"

    invoke-virtual {v5, v0, v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setWhiteList(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-virtual {v0, v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setSupportRepair(Z)V

    .line 237
    .end local v8    # "tmpStr":Ljava/lang/String;
    .end local v15    # "strArray":[Ljava/lang/String;
    :cond_ef
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_2b6

    .line 238
    .local v0, "arrayCnt":[I
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 239
    .local v5, "hashMapCN":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v8

    sub-int/2addr v8, v6

    new-array v8, v8, [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    .line 241
    .local v8, "tmpTB":[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;
    const/4 v9, 0x0

    .line 242
    .local v9, "i":I
    :goto_103
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_210

    .line 243
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 244
    .local v14, "iTB":I
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 245
    .local v15, "curDBVersion":I
    if-gt v15, v13, :cond_116

    move/from16 v16, v6

    goto :goto_118

    :cond_116
    move/from16 v16, v10

    .line 246
    .local v16, "enable":Z
    :goto_118
    if-nez v15, :cond_11f

    .line 247
    const/16 v16, 0x0

    move/from16 v25, v16

    goto :goto_121

    .line 246
    :cond_11f
    move/from16 v25, v16

    .line 250
    .end local v16    # "enable":Z
    .local v25, "enable":Z
    :goto_121
    if-ne v14, v11, :cond_1e0

    .line 252
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    packed-switch v16, :pswitch_data_29e

    .line 285
    :pswitch_12a
    new-instance v6, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    goto/16 :goto_1ae

    .line 277
    :pswitch_12e
    if-eqz v25, :cond_1a8

    .line 278
    iget-object v10, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/4 v11, 0x4

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->sethashMapOfLinkForVocAppOnlyShow(Ljava/lang/String;)V

    goto/16 :goto_1a8

    .line 281
    :pswitch_13c
    if-eqz v25, :cond_1a8

    .line 282
    iget-object v10, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/4 v11, 0x4

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-boolean v6, v1, Lcom/sec/android/iaft/IAFDDBManager;->isCHNModel:Z

    invoke-virtual {v10, v12, v11, v6}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setIAFDDBControlFeature(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1a8

    .line 273
    :pswitch_14f
    if-eqz v25, :cond_1a8

    .line 274
    iget-object v6, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/4 v10, 0x4

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->sethashMapOfLinkForVocApp(Ljava/lang/String;)V

    goto :goto_1a8

    .line 269
    :pswitch_15c
    if-eqz v25, :cond_1a8

    .line 270
    iget-object v6, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/4 v10, 0x4

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v11, v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setWhiteList(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a8

    .line 265
    :pswitch_16d
    if-eqz v25, :cond_1a8

    .line 266
    iget-object v6, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/4 v10, 0x4

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDBManager;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v6, v11, v10, v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setCSCFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a8

    .line 261
    :pswitch_180
    if-eqz v25, :cond_1a8

    .line 262
    iget-object v6, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/4 v10, 0x4

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setwebView_pkgName(Ljava/lang/String;)V

    goto :goto_1a8

    .line 257
    :pswitch_18d
    if-eqz v25, :cond_1a8

    .line 258
    iget-object v6, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/4 v10, 0x4

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setreMovableAppPaths(Ljava/lang/String;)V

    goto :goto_1a8

    .line 254
    :pswitch_19a
    iget-object v6, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setenableDetectAll32bitApp(Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 255
    nop

    .line 242
    .end local v14    # "iTB":I
    .end local v15    # "curDBVersion":I
    .end local v25    # "enable":Z
    :cond_1a8
    :goto_1a8
    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x3

    goto/16 :goto_103

    .line 285
    .restart local v14    # "iTB":I
    .restart local v15    # "curDBVersion":I
    .restart local v25    # "enable":Z
    :goto_1ae
    const/4 v10, 0x1

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    const/4 v10, 0x3

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/4 v10, 0x4

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v16, v6

    move/from16 v17, v14

    move/from16 v23, v9

    move-object/from16 v24, v5

    invoke-direct/range {v16 .. v24}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    aput-object v6, v8, v9

    .line 286
    aget v6, v0, v14

    const/4 v10, 0x1

    add-int/2addr v6, v10

    aput v6, v0, v14

    add-int/lit8 v9, v9, 0x1

    .line 287
    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x3

    goto/16 :goto_103

    .line 291
    :cond_1e0
    new-instance v6, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/4 v10, 0x1

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    const/4 v10, 0x3

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/4 v10, 0x4

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v16, v6

    move/from16 v17, v14

    invoke-direct/range {v16 .. v22}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v8, v9

    .line 292
    aget v6, v0, v14

    const/4 v10, 0x1

    add-int/2addr v6, v10

    aput v6, v0, v14

    add-int/lit8 v9, v9, 0x1

    move v6, v10

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x3

    goto/16 :goto_103

    .line 295
    .end local v14    # "iTB":I
    .end local v15    # "curDBVersion":I
    .end local v25    # "enable":Z
    :cond_210
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 296
    const/4 v4, 0x0

    .line 298
    const/4 v6, 0x0

    .local v6, "iStart":I
    const/4 v10, 0x0

    .line 300
    .local v10, "iEnd":I
    iput-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    .line 301
    const/4 v11, 0x2

    aget v12, v0, v11

    new-array v12, v12, [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iput-object v12, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_ClassNameTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    .line 302
    aget v11, v0, v11

    add-int/2addr v10, v11

    .line 303
    const/4 v9, 0x0

    :goto_223
    if-ge v6, v10, :cond_230

    .line 304
    iget-object v11, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_ClassNameTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget-object v12, v8, v6

    aput-object v12, v11, v9

    .line 303
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_223

    .line 307
    :cond_230
    const/4 v11, 0x3

    aget v12, v0, v11

    new-array v12, v12, [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iput-object v12, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_DetailMsgTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    .line 308
    aget v11, v0, v11

    add-int/2addr v10, v11

    .line 309
    const/4 v9, 0x0

    :goto_23b
    if-ge v6, v10, :cond_248

    .line 310
    iget-object v11, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_DetailMsgTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget-object v12, v8, v6

    aput-object v12, v11, v9

    .line 309
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_23b

    .line 313
    :cond_248
    const/4 v11, 0x4

    aget v12, v0, v11

    new-array v12, v12, [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iput-object v12, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_CallStackTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    .line 314
    aget v11, v0, v11

    add-int/2addr v10, v11

    .line 315
    const/4 v9, 0x0

    :goto_253
    if-ge v6, v10, :cond_260

    .line 316
    iget-object v11, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_CallStackTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget-object v12, v8, v6

    aput-object v12, v11, v9

    .line 315
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_253

    .line 319
    :cond_260
    aget v11, v0, v13

    new-array v11, v11, [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iput-object v11, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->NE_CallStackTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    .line 320
    aget v11, v0, v13

    add-int/2addr v10, v11

    .line 321
    const/4 v9, 0x0

    :goto_26a
    if-ge v6, v10, :cond_277

    .line 322
    iget-object v11, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->NE_CallStackTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget-object v12, v8, v6

    aput-object v12, v11, v9

    .line 321
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_26a

    .line 325
    :cond_277
    const/4 v11, 0x6

    aget v12, v0, v11

    new-array v12, v12, [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iput-object v12, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->NE_HeaderInfoTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    .line 326
    aget v11, v0, v11

    add-int/2addr v10, v11

    .line 327
    const/4 v9, 0x0

    :goto_282
    if-ge v6, v10, :cond_28f

    .line 328
    iget-object v11, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->NE_HeaderInfoTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget-object v12, v8, v6

    aput-object v12, v11, v9
    :try_end_28a
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_28a} :catch_293

    .line 327
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_282

    .line 330
    .end local v0    # "arrayCnt":[I
    .end local v5    # "hashMapCN":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "iStart":I
    .end local v8    # "tmpTB":[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;
    .end local v9    # "i":I
    .end local v10    # "iEnd":I
    :cond_28f
    return-object v2

    .line 331
    .end local v3    # "mdb":Landroid/database/sqlite/SQLiteDatabase;
    .local v8, "mdb":Landroid/database/sqlite/SQLiteDatabase;
    :catch_290
    move-exception v0

    move-object v3, v8

    goto :goto_294

    .end local v8    # "mdb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "mdb":Landroid/database/sqlite/SQLiteDatabase;
    :catch_293
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/Exception;
    :goto_294
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 335
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v4, :cond_29c

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 336
    :cond_29c
    const/4 v5, 0x0

    return-object v5

    :pswitch_data_29e
    .packed-switch 0x1e
        :pswitch_19a
        :pswitch_18d
        :pswitch_180
        :pswitch_16d
        :pswitch_12a
        :pswitch_12a
        :pswitch_15c
        :pswitch_14f
        :pswitch_13c
        :pswitch_12e
    .end packed-switch

    :array_2b6
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private initIAFDDBHotfix()V
    .registers 8

    .line 355
    const-string v0, "iafddbhotfix_db.bin.enc.dec"

    const-string v1, "/data/user/0/com.sec.android.iaft/iafd/db/"

    :try_start_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    .local v2, "filepath":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v3, :cond_1f

    .line 358
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v4, v1}, Lcom/sec/android/iaft/IAFDDBManager;->initDBByURIOrFile(ZLandroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    move-result-object v1

    aput-object v1, v0, v6

    goto :goto_37

    .line 360
    :cond_1f
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 361
    .end local v2    # "filepath":Ljava/io/File;
    .local v0, "filepath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 362
    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, v4, v2}, Lcom/sec/android/iaft/IAFDDBManager;->initDBByURIOrFile(ZLandroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    move-result-object v2

    aput-object v2, v1, v6
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_37} :catch_38

    .line 367
    .end local v0    # "filepath":Ljava/io/File;
    :cond_37
    :goto_37
    goto :goto_39

    .line 364
    :catch_38
    move-exception v0

    .line 368
    :goto_39
    return-void
.end method

.method private initTBs()V
    .registers 7

    .line 388
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 389
    return-void

    .line 391
    :cond_5
    sget-boolean v0, Lcom/sec/android/iaft/IAFDDBManager;->isDBIniting:Z

    if-eqz v0, :cond_a

    .line 393
    return-void

    .line 395
    :cond_a
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/iaft/IAFDDBManager;->isDBIniting:Z

    .line 398
    const/4 v1, 0x0

    :try_start_e
    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    aget-object v2, v2, v1

    if-nez v2, :cond_2d

    .line 399
    invoke-static {}, Lcom/sec/android/iaft/IAFDHCDatabase;->getInstance()Lcom/sec/android/iaft/IAFDHCDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/iaft/IAFDDBManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/iaft/IAFDDBManager;->mSalesCode:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/sec/android/iaft/IAFDDBManager;->isCHNModel:Z

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/iaft/IAFDHCDatabase;->init(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 400
    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    invoke-static {}, Lcom/sec/android/iaft/IAFDDBManager;->getInstance()Lcom/sec/android/iaft/IAFDDBManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/iaft/IAFDDBManager;->getData()Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    move-result-object v3

    aput-object v3, v2, v1

    .line 403
    :cond_2d
    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    aget-object v0, v2, v0

    if-nez v0, :cond_3e

    .line 404
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBManagerHandler:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    const/16 v2, 0xfe

    invoke-virtual {v0, v2}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 407
    :cond_3e
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    const/4 v2, 0x2

    aget-object v0, v0, v2
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_43} :catch_44

    .line 420
    goto :goto_4c

    .line 417
    :catch_44
    move-exception v0

    .line 418
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "IAFDDBManager"

    const-string v3, "happened Exception : get TB fail!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4c
    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDBManager;->syncDBType()V

    .line 423
    sput-boolean v1, Lcom/sec/android/iaft/IAFDDBManager;->isDBIniting:Z

    .line 424
    return-void
.end method

.method private syncDBType()V
    .registers 4

    .line 340
    const/4 v0, -0x1

    .line 341
    .local v0, "curDBVer":I
    const/4 v1, -0x1

    sput v1, Lcom/sec/android/iaft/IAFDDBManager;->mCurDBIndex:I

    .line 342
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    const/4 v2, 0x3

    if-ge v1, v2, :cond_25

    .line 343
    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    aget-object v2, v2, v1

    if-eqz v2, :cond_22

    .line 344
    iget-object v2, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-virtual {v2}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->getDBVersion()I

    move-result v2

    if-lt v2, v0, :cond_22

    .line 345
    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-virtual {v2}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->getDBVersion()I

    move-result v0

    .line 346
    sput v1, Lcom/sec/android/iaft/IAFDDBManager;->mCurDBIndex:I

    .line 342
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 350
    .end local v1    # "i":I
    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncDBType(): mCurDBIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/iaft/IAFDDBManager;->mCurDBIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", curDBVer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IAFDDBManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return-void
.end method


# virtual methods
.method public deInit()V
    .registers 4

    .line 147
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mRegisteredSmartManagerIAFDObserver:Z

    if-eqz v0, :cond_12

    .line 148
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDBManager;->mSmartManagerIAFDObserver:Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mRegisteredSmartManagerIAFDObserver:Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 153
    :cond_12
    goto :goto_1b

    .line 151
    :catch_13
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IAFDDBManager"

    const-string v2, "exception occurred in unregisterContentObserver()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1b
    return-void
.end method

.method public getData()Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;
    .registers 3

    .line 117
    sget v0, Lcom/sec/android/iaft/IAFDDBManager;->mCurDBIndex:I

    if-gez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 118
    :cond_6
    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "salesCode"    # Ljava/lang/String;
    .param p3, "isCHN"    # Z

    .line 127
    invoke-virtual {p0, p1}, Lcom/sec/android/iaft/IAFDDBManager;->setContext(Landroid/content/Context;)V

    .line 128
    iput-object p2, p0, Lcom/sec/android/iaft/IAFDDBManager;->mSalesCode:Ljava/lang/String;

    .line 129
    iput-boolean p3, p0, Lcom/sec/android/iaft/IAFDDBManager;->isCHNModel:Z

    .line 131
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_2a

    .line 132
    invoke-static {}, Lcom/sec/android/iaft/IAFDHCDatabase;->getInstance()Lcom/sec/android/iaft/IAFDHCDatabase;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDBManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/iaft/IAFDDBManager;->mSalesCode:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/sec/android/iaft/IAFDDBManager;->isCHNModel:Z

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/iaft/IAFDHCDatabase;->init(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    invoke-static {}, Lcom/sec/android/iaft/IAFDHCDatabase;->getInstance()Lcom/sec/android/iaft/IAFDHCDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/iaft/IAFDHCDatabase;->getData()Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    move-result-object v2

    aput-object v2, v0, v1

    .line 134
    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDBManager;->syncDBType()V

    .line 137
    :cond_2a
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBManagerThread:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;

    if-nez v0, :cond_3b

    .line 138
    new-instance v0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;

    const-string v2, "IAFDDBManagerThread"

    invoke-direct {v0, p0, v2, v1}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;-><init>(Lcom/sec/android/iaft/IAFDDBManager;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBManagerThread:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;

    .line 139
    invoke-virtual {v0}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->start()V

    goto :goto_46

    .line 141
    :cond_3b
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBManagerHandler:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 143
    :goto_46
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 113
    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager;->mContext:Landroid/content/Context;

    .line 114
    return-void
.end method

.method public updateHotfixDB_ARDB()V
    .registers 1

    .line 125
    return-void
.end method

.method public updateHotfixDB_IAFDDB()V
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBManagerHandler:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    const/16 v1, 0xfc

    invoke-virtual {v0, v1}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 122
    return-void
.end method
