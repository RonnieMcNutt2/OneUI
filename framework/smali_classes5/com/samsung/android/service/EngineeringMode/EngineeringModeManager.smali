.class public final Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;
.super Ljava/lang/Object;
.source "EngineeringModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;,
        Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;
    }
.end annotation


# static fields
.field public static final ALLOWED:I = 0x1

.field public static final DEV_OK:I = -0xffff68

.field public static final DISABLE:I = 0x1

.field public static final ENABLE:I = 0x0

.field public static final ENG_KERNEL:I = 0x0

.field public static final ERRORBYTE_EM_SERVICE:[B

.field public static final ERRORBYTE_INVAILD_PARAM:[B

.field public static final ERRORBYTE_NOT_INSATALLED:[B

.field public static final ERRORBYTE_NOT_SUPPORTED:[B

.field public static final ERRORBYTE_NO_PERMISSION:[B

.field public static final ERRORINTARR_EM_SERVICE:[I

.field public static final ERRORINTARR_INTERNAL:[I

.field public static final ERRORINTARR_NOT_INSTALLED:[I

.field public static final ERRORINTARR_NOT_SUPPORTED:[I

.field public static final ERRORINTARR_NO_PERMISSION:[I

.field public static final ERRORSTRING_EM_SERVICE:Ljava/lang/String; = "ERROR_EM_SERVICE"

.field public static final ERRORSTRING_INTERNAL:Ljava/lang/String; = "ERROR_INTERNAL"

.field public static final ERRORSTRING_NOT_INSTALLED:Ljava/lang/String; = "ERROR_TOKEN_NOT_INSATLLED"

.field public static final ERRORSTRING_NO_PERMISSION:Ljava/lang/String; = "ERROR_NO_PERMISSION"

.field public static final ERROR_COUNTER:I = -0xfffffec

.field public static final ERROR_EM_SERVICE:I = -0x3e8

.field public static final ERROR_INVALID_ESI:I = -0x578

.field public static final ERROR_INVALID_PARAM:I = -0x6a4

.field public static final ERROR_NOT_SUPPORTED:I = -0x640

.field public static final ERROR_NO_PERMISSION:I = -0x514

.field public static final ERROR_TUC_ZERO:I = -0x5dc

.field public static final MODE_CUST_KERNEL:I = 0x3

.field public static final MODE_DEBUG_LOG:I = 0x2

.field public static final MODE_ENG_KERNEL:I = 0x0

.field public static final MODE_KNOX_TEST:I = 0x4

.field public static final MODE_TEST_ENV:I = 0x1

.field public static final MODE_USB_DEBUG:I = 0x1

.field public static final NATIVE_NO_PERMISSION:I = -0xffffffc

.field public static final NATIVE_SUCCESS:I = 0x0

.field public static final NOK:I = 0x0

.field public static final NOT_ALLOWED:I = 0x0

.field public static final OK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "engmode_java_manager"

.field public static final USB_DEBUG:I = 0x1

.field public static final USB_DEBUG_ALLOWED:I = 0x1

.field public static final USB_DEBUG_NOT_ALLOWED:I


# instance fields
.field private mCallerUid:I

.field private final mContext:Landroid/content/Context;

.field private mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

.field private mPkgMgr:Landroid/content/pm/PackageManager;

.field private final mPkgName:Ljava/lang/String;

.field private mSignature:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallerUid(Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mCallerUid:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSignature(Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mSignature:I

    return p0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 51
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    sput-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    .line 52
    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NO_PERMISSION:[B

    .line 53
    new-array v1, v0, [B

    const/4 v2, -0x2

    aput-byte v2, v1, v3

    sput-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NOT_SUPPORTED:[B

    .line 54
    new-array v1, v0, [B

    const/4 v2, -0x3

    aput-byte v2, v1, v3

    sput-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_INVAILD_PARAM:[B

    .line 55
    new-array v0, v0, [B

    const/4 v1, -0x4

    aput-byte v1, v0, v3

    sput-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_NOT_INSATALLED:[B

    .line 69
    const v0, -0xfffffff

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_INTERNAL:[I

    .line 70
    const v0, -0xffffffe

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_EM_SERVICE:[I

    .line 71
    const v0, -0xffffffd

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_NO_PERMISSION:[I

    .line 72
    const v0, -0xffffffc

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_NOT_SUPPORTED:[I

    .line 73
    const v0, -0xffffffb

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_NOT_INSTALLED:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 281
    const-string v0, "engmode_java_manager"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mContext:Landroid/content/Context;

    .line 283
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mPkgName:Ljava/lang/String;

    .line 284
    new-instance v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;-><init>(Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    .line 287
    :try_start_14
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mPkgMgr:Landroid/content/pm/PackageManager;

    .line 288
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mCallerUid:I

    .line 289
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mPkgMgr:Landroid/content/pm/PackageManager;

    const-string v3, "android"

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mSignature:I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2d} :catch_2e

    .line 296
    goto :goto_3f

    .line 290
    :catch_2e
    move-exception v1

    .line 291
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mPkgMgr:Landroid/content/pm/PackageManager;

    .line 292
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mCallerUid:I

    .line 293
    iput v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mSignature:I

    .line 294
    const-string v2, "PackageManager Exception occued"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 298
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3f
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v1

    const-string v2, ", "

    const-string v3, "("

    if-eqz v1, :cond_78

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mCallerUid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mSignature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") connects to EngineeringModeNative"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4

    .line 301
    :cond_78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mCallerUid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mSignature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") can\'t be connect.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :goto_a4
    return-void
.end method


# virtual methods
.method public essCommand(Ljava/lang/String;)[B
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 794
    const-string v0, "essCommand is called."

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 798
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_commandForESS(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_15} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_18

    return-object v0

    .line 799
    :cond_16
    const/4 v0, 0x0

    return-object v0

    .line 804
    :catch_18
    move-exception v0

    .line 805
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 806
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    .line 800
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1f
    move-exception v0

    .line 801
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 803
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1
.end method

.method public getExpiryDate()Ljava/lang/String;
    .registers 5

    .line 510
    const-string/jumbo v0, "getExpiryDate() is called."

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/4 v0, 0x0

    :try_start_9
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 514
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_getExpiryDate()Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_17} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_17} :catch_19

    return-object v0

    .line 515
    :cond_18
    return-object v0

    .line 522
    :catch_19
    move-exception v1

    .line 523
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 524
    return-object v0

    .line 517
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1e
    move-exception v2

    .line 518
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 520
    return-object v0
.end method

.method public getID()[B
    .registers 4

    .line 485
    const-string/jumbo v0, "getID() is called."

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 489
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_getID()[B

    move-result-object v0

    return-object v0

    .line 490
    :cond_17
    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_19} :catch_21
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_1a

    return-object v0

    .line 497
    :catch_1a
    move-exception v0

    .line 498
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 499
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    .line 492
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_21
    move-exception v0

    .line 493
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 495
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1
.end method

.method public getLastTokenStatus()Ljava/lang/String;
    .registers 5

    .line 1018
    const-string v0, "ERROR_EM_SERVICE"

    const-string/jumbo v1, "getLastTokenStatus() is called"

    const-string v2, "engmode_java_manager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :try_start_a
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v1
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_10} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_15

    if-eqz v1, :cond_14

    .line 1022
    const/4 v0, 0x0

    return-object v0

    .line 1023
    :cond_14
    return-object v0

    .line 1030
    :catch_15
    move-exception v1

    .line 1031
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1032
    return-object v0

    .line 1025
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1a
    move-exception v1

    .line 1026
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1028
    return-object v0
.end method

.method public getModes()[I
    .registers 4

    .line 966
    const-string/jumbo v0, "getModes() is called"

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 970
    const/4 v0, 0x0

    return-object v0

    .line 971
    :cond_12
    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_EM_SERVICE:[I
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_14} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_15

    return-object v0

    .line 978
    :catch_15
    move-exception v0

    .line 979
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 980
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_EM_SERVICE:[I

    return-object v1

    .line 973
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1c
    move-exception v0

    .line 974
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 976
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORINTARR_EM_SERVICE:[I

    return-object v1
.end method

.method public getNumOfModes()I
    .registers 5

    .line 536
    const-string/jumbo v0, "getNumOfModes() is called."

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const/16 v0, -0x3e8

    :try_start_a
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 540
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_getNumOfModes()I

    move-result v0
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_18} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_1a

    return v0

    .line 541
    :cond_19
    return v0

    .line 548
    :catch_1a
    move-exception v1

    .line 549
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 550
    return v0

    .line 543
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1f
    move-exception v2

    .line 544
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 546
    return v0
.end method

.method public getPriorityTime()[B
    .registers 4

    .line 939
    const-string/jumbo v0, "setPriorityTime() is called"

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 943
    const/4 v0, 0x0

    return-object v0

    .line 944
    :cond_12
    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_14} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_15

    return-object v0

    .line 951
    :catch_15
    move-exception v0

    .line 952
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 953
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    .line 946
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1c
    move-exception v0

    .line 947
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 949
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1
.end method

.method public getRequestMsg(Ljava/lang/String;Ljava/lang/String;[B)[B
    .registers 7
    .param p1, "singleID"    # Ljava/lang/String;
    .param p2, "OTP"    # Ljava/lang/String;
    .param p3, "modeSet"    # [B

    .line 356
    const-string/jumbo v0, "getRequestMsg() is called."

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 360
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, p3, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_getRequestMsg(Ljava/lang/String;Ljava/lang/String;[BI)[B

    move-result-object v0

    return-object v0

    .line 361
    :cond_18
    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B
    :try_end_1a
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_1a} :catch_22
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_1b

    return-object v0

    .line 368
    :catch_1b
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 370
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    .line 363
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_22
    move-exception v0

    .line 364
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 366
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1
.end method

.method public getRequestMsg(Ljava/lang/String;Ljava/lang/String;[BI)[B
    .registers 8
    .param p1, "singleID"    # Ljava/lang/String;
    .param p2, "OTP"    # Ljava/lang/String;
    .param p3, "modeSet"    # [B
    .param p4, "validityCount"    # I

    .line 386
    const-string/jumbo v0, "getRequestMsg() is called."

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 390
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_getRequestMsg(Ljava/lang/String;Ljava/lang/String;[BI)[B

    move-result-object v0

    return-object v0

    .line 391
    :cond_17
    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_19} :catch_21
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_1a

    return-object v0

    .line 398
    :catch_1a
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 400
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    .line 393
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_21
    move-exception v0

    .line 394
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 396
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1
.end method

.method public getServerTime()J
    .registers 6

    .line 858
    const-string/jumbo v0, "getServerTime() is called"

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const-wide/16 v2, -0x3e8

    :try_start_a
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 862
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_getServerTime()J

    move-result-wide v0
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_18} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_1a

    return-wide v0

    .line 863
    :cond_19
    return-wide v2

    .line 870
    :catch_1a
    move-exception v0

    .line 871
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 872
    return-wide v2

    .line 865
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1f
    move-exception v0

    .line 866
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v4, "Failed to connect service"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 868
    return-wide v2
.end method

.method public getStatus(I)I
    .registers 6
    .param p1, "mode"    # I

    .line 327
    const-string/jumbo v0, "getStatus() is called."

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/16 v0, -0x3e8

    :try_start_a
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 331
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    iget-object v3, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_getStatus(ILjava/lang/String;)I

    move-result v0
    :try_end_1a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_1a} :catch_21
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1a} :catch_1c

    return v0

    .line 332
    :cond_1b
    return v0

    .line 339
    :catch_1c
    move-exception v1

    .line 340
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 341
    return v0

    .line 334
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_21
    move-exception v2

    .line 335
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 337
    return v0
.end method

.method public getStringModes()Ljava/lang/String;
    .registers 5

    .line 992
    const-string v0, "ERROR_EM_SERVICE"

    const-string/jumbo v1, "getStringModes() is called"

    const-string v2, "engmode_java_manager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :try_start_a
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v1
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_10} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_15

    if-eqz v1, :cond_14

    .line 996
    const/4 v0, 0x0

    return-object v0

    .line 997
    :cond_14
    return-object v0

    .line 1004
    :catch_15
    move-exception v1

    .line 1005
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1006
    return-object v0

    .line 999
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1a
    move-exception v1

    .line 1000
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1002
    return-object v0
.end method

.method public getTUC(I)I
    .registers 6
    .param p1, "mode"    # I

    .line 885
    const-string/jumbo v0, "getTUC() is called"

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    const/16 v0, -0x3e8

    :try_start_a
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 889
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_getTUC(I)I

    move-result v0
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_18} :catch_20
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_1b

    return v0

    .line 890
    :cond_19
    const/4 v0, 0x0

    return v0

    .line 897
    :catch_1b
    move-exception v1

    .line 898
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 899
    return v0

    .line 892
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_20
    move-exception v2

    .line 893
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 895
    return v0
.end method

.method public getToken(I[B)Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;
    .registers 8
    .param p1, "type"    # I
    .param p2, "bytes"    # [B

    .line 820
    const-string/jumbo v0, "getToken() is called"

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const/4 v0, 0x0

    :try_start_9
    new-instance v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;

    invoke-direct {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;-><init>()V

    .line 824
    .local v2, "epm":Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;
    if-nez p1, :cond_15

    .line 825
    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseToken(I[B)Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    move-result-object v0

    return-object v0

    .line 826
    :cond_15
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2e

    .line 827
    const/4 v3, 0x0

    .line 828
    .local v3, "token":[B
    iget-object v4, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v4}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 829
    iget-object v4, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v4}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_getToken()[B

    move-result-object v4

    move-object v3, v4

    .line 832
    invoke-virtual {v2, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseToken([B)Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    move-result-object v0

    return-object v0

    .line 831
    :cond_2d
    return-object v0

    .line 833
    .end local v3    # "token":[B
    :cond_2e
    const/4 v3, 0x2

    if-ne p1, v3, :cond_36

    .line 834
    invoke-virtual {v2, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseToken([B)Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    move-result-object v0
    :try_end_35
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_35} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_35} :catch_38

    return-object v0

    .line 845
    .end local v2    # "epm":Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;
    :cond_36
    nop

    .line 846
    return-object v0

    .line 842
    :catch_38
    move-exception v1

    .line 843
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 844
    return-object v0

    .line 837
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3d
    move-exception v2

    .line 838
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 840
    return-object v0
.end method

.method public installToken([B)I
    .registers 6
    .param p1, "token"    # [B

    .line 413
    const-string/jumbo v0, "installToken() is called."

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const/16 v0, -0x3e8

    :try_start_a
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 417
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_installToken([B)I

    move-result v0
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_18} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_1a

    return v0

    .line 418
    :cond_19
    return v0

    .line 425
    :catch_1a
    move-exception v1

    .line 426
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 427
    return v0

    .line 420
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1f
    move-exception v2

    .line 421
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 423
    return v0
.end method

.method public installTokenForESS(Ljava/lang/String;)[B
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 777
    const-string/jumbo v0, "installTokenForESS() is called."

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 781
    const/4 v0, 0x0

    return-object v0

    .line 782
    :cond_12
    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_14} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_15

    return-object v0

    .line 787
    :catch_15
    move-exception v0

    .line 788
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 789
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    .line 783
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1c
    move-exception v0

    .line 784
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 786
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1
.end method

.method public isConnected()Z
    .registers 2

    .line 312
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 313
    const/4 v0, 0x1

    return v0

    .line 315
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public isTokenInstalled()I
    .registers 3

    .line 439
    const-string v0, "engmode_java_manager"

    const-string/jumbo v1, "isTokenInstalled() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/16 v0, -0x3e8

    :try_start_a
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 443
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_isTokenInstalled()I

    move-result v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_1a

    return v0

    .line 444
    :cond_19
    return v0

    .line 445
    :catch_1a
    move-exception v1

    .line 446
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 447
    return v0
.end method

.method public makeDelTokenForESS(Ljava/lang/String;)[B
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 675
    const-string/jumbo v0, "makeDelTokenForESS() is called"

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 679
    const/4 v0, 0x0

    return-object v0

    .line 680
    :cond_12
    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_14} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_15

    return-object v0

    .line 685
    :catch_15
    move-exception v0

    .line 686
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 687
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    .line 681
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1c
    move-exception v0

    .line 682
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 684
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1
.end method

.method public makeITLReq(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 6
    .param p1, "singleID"    # Ljava/lang/String;
    .param p2, "OTP"    # Ljava/lang/String;

    .line 590
    const-string/jumbo v0, "makeITLReq() is called"

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 594
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_makeITLReq(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 595
    :cond_17
    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_19} :catch_21
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_1a

    return-object v0

    .line 602
    :catch_1a
    move-exception v0

    .line 603
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 604
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    .line 597
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_21
    move-exception v0

    .line 598
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 600
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1
.end method

.method public makeITLReqForESS(Ljava/lang/String;)[B
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 726
    const-string/jumbo v0, "makeITLReqForESS is called"

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 730
    const/4 v0, 0x0

    return-object v0

    .line 731
    :cond_12
    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_14} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_15

    return-object v0

    .line 736
    :catch_15
    move-exception v0

    .line 737
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 738
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    .line 732
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1c
    move-exception v0

    .line 733
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 735
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1
.end method

.method public makeTimeReq()[B
    .registers 5

    .line 1045
    const-string/jumbo v0, "makeTimeReq() is called"

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    const/4 v0, 0x0

    :try_start_9
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1049
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_makeTimeReq()[B

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_17} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_17} :catch_19

    return-object v0

    .line 1050
    :cond_18
    return-object v0

    .line 1057
    :catch_19
    move-exception v1

    .line 1058
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1059
    return-object v0

    .line 1052
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1e
    move-exception v2

    .line 1053
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1055
    return-object v0
.end method

.method public makeTokenReq(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)[B
    .registers 8
    .param p1, "singleID"    # Ljava/lang/String;
    .param p2, "OTP"    # Ljava/lang/String;
    .param p3, "modeSet"    # [B
    .param p4, "expiryDate"    # Ljava/lang/String;

    .line 647
    const-string/jumbo v0, "makeTokenReq() is called"

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 651
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_makeTokenReq(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 652
    :cond_17
    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_19} :catch_21
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_1a

    return-object v0

    .line 659
    :catch_1a
    move-exception v0

    .line 660
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 661
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    .line 654
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_21
    move-exception v0

    .line 655
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 657
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1
.end method

.method public makeTokenReqForESS(Ljava/lang/String;)[B
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 701
    const-string/jumbo v0, "makeTokenReqForESS() is called"

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 705
    const/4 v0, 0x0

    return-object v0

    .line 706
    :cond_12
    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_14} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_15

    return-object v0

    .line 711
    :catch_15
    move-exception v0

    .line 712
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 713
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    .line 707
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1c
    move-exception v0

    .line 708
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 710
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1
.end method

.method public recoveryITL([B)I
    .registers 6
    .param p1, "recoveryMsg"    # [B

    .line 617
    const-string/jumbo v0, "restoreITL() is called"

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const/16 v0, -0x3e8

    :try_start_a
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 621
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_recoveryITL([B)I

    move-result v0
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_18} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_1a

    return v0

    .line 622
    :cond_19
    return v0

    .line 629
    :catch_1a
    move-exception v1

    .line 630
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 631
    return v0

    .line 624
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1f
    move-exception v2

    .line 625
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 627
    return v0
.end method

.method public recoveryITLForESS(Ljava/lang/String;)I
    .registers 6
    .param p1, "cmd"    # Ljava/lang/String;

    .line 751
    const-string/jumbo v0, "recoveryITLForESS() is called."

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const/16 v0, -0x3e8

    :try_start_a
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v1
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_10} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_15

    if-eqz v1, :cond_14

    .line 755
    const/4 v0, 0x0

    return v0

    .line 756
    :cond_14
    return v0

    .line 762
    :catch_15
    move-exception v1

    .line 763
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 764
    return v0

    .line 757
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1a
    move-exception v2

    .line 758
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 760
    return v0
.end method

.method public removeToken()I
    .registers 5

    .line 459
    const-string/jumbo v0, "removeToken() is called."

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const/16 v0, -0x3e8

    :try_start_a
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 463
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_removeToken()I

    move-result v0
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_18} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_1a

    return v0

    .line 464
    :cond_19
    return v0

    .line 471
    :catch_1a
    move-exception v1

    .line 472
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 473
    return v0

    .line 466
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1f
    move-exception v2

    .line 467
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 469
    return v0
.end method

.method public sendFuseCmd()I
    .registers 5

    .line 562
    const-string/jumbo v0, "sendFuseCmd() is called."

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const/16 v0, -0x3e8

    :try_start_a
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 566
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_sendFuseCmd()I

    move-result v0
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_18} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_1a

    return v0

    .line 567
    :cond_19
    return v0

    .line 574
    :catch_1a
    move-exception v1

    .line 575
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 576
    return v0

    .line 569
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1f
    move-exception v2

    .line 570
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 572
    return v0
.end method

.method public setPriorityTime(Ljava/lang/String;)[B
    .registers 5
    .param p1, "time"    # Ljava/lang/String;

    .line 912
    const-string/jumbo v0, "setPriorityTime() is called"

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 916
    const/4 v0, 0x0

    return-object v0

    .line 917
    :cond_12
    sget-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_14} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_15

    return-object v0

    .line 924
    :catch_15
    move-exception v0

    .line 925
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 926
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1

    .line 919
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1c
    move-exception v0

    .line 920
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 922
    sget-object v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v1
.end method

.method public updateTime([B)[B
    .registers 6
    .param p1, "resTime"    # [B

    .line 1072
    const-string/jumbo v0, "updateTime"

    const-string v1, "engmode_java_manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    const/4 v0, 0x0

    :try_start_9
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1076
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mNative:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;

    invoke-virtual {v2, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EngineeringModeNative;->_updateTime([B)[B

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_17} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_17} :catch_19

    return-object v0

    .line 1077
    :cond_18
    return-object v0

    .line 1084
    :catch_19
    move-exception v1

    .line 1085
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1086
    return-object v0

    .line 1079
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1e
    move-exception v2

    .line 1080
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1082
    return-object v0
.end method
