.class public final Lcom/samsung/android/service/reactive/ReactiveServiceManager;
.super Ljava/lang/Object;
.source "ReactiveServiceManager.java"


# static fields
.field public static final FLAG_ACTIVATED:I = 0x1

.field public static final FLAG_DEACTIVATED:I = 0x0

.field public static final FLAG_DEACTIVATED_WITH_ACCOUNT:I = 0x3

.field public static final FLAG_TRIGGERED:I = 0x2

.field public static final FRP_FLAG:I = 0x2

.field public static final FRP_SERIVCE_OPERATION_FAILED:I = -0x7

.field public static final GOOGLE_FACTORY_RESET_PROTECTION_IS_SUPPORTED:I = 0x2

.field private static final RC_VT_VALID_SIZE:I = 0x20

.field public static final REACTIVATION_FLAG:I = 0x0

.field public static final REACTIVE_SERVICE_EXCEPTION_ERROR:I = -0xa

.field public static final REACTIVE_SERVICE_INVALID_ARGUMENTS:I = -0x8

.field public static final REACTIVE_SERVICE_IS_NOT_EXIST:I = -0x9

.field public static final REACTIVE_SERVICE_IS_NOT_SUPPORTED:I = 0x0

.field public static final REACTIVE_SERVICE_OPERATION_FAILED:I = -0x6

.field public static final REACTIVE_SERVICE_RETURN_FLAG_IS_NOT_EXIST:I = -0x3

.field public static final REACTIVE_SERVICE_RETURN_NATIVE_ERROR:I = -0x1

.field public static final REACTIVE_SERVICE_RETURN_NO_ERROR:I = 0x0

.field public static final REACTIVE_SERVICE_RETURN_PERMISSION_DENIED:I = -0x5

.field public static final REACTIVE_SERVICE_RETURN_STRING_IS_NOT_EXIST:I = -0x4

.field public static final REACTIVE_SERVICE_RETURN_UNSUPPORTED_OPERATION:I = -0x2

.field private static final RS_GOOGLE_NWD_SUPPORTED:I = 0x4

.field private static final RS_IS_NOT_SUPPORTED:I = 0x0

.field private static final RS_SAMSUNG_NWD_SUPPORTED:I = 0x2

.field private static final RS_SAMSUNG_SWD_SUPPORTED:I = 0x1

.field public static final SAMSUNG_GOOGLE_REACTIVE_SERVICES_ARE_SUPPORTED:I = 0x3

.field public static final SAMSUNG_REACTIVE_SERVICE_IS_SUPPORTED:I = 0x1

.field public static final SERVICE_FLAG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ReactiveServiceManager"

.field private static final USE_SAMSUNG_ACCOUNT:I = 0x0

.field private static final USE_VERIFICATION_TOKEN:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/samsung/android/service/reactive/IReactiveService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput-object p1, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mContext:Landroid/content/Context;

    .line 316
    const-string v0, "ReactiveService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/reactive/IReactiveService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    .line 317
    return-void
.end method

.method private toHex([B)Ljava/lang/String;
    .registers 6
    .param p1, "bytes"    # [B

    .line 406
    if-eqz p1, :cond_42

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_42

    .line 410
    :cond_6
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 412
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_f
    array-length v2, p1

    if-ge v1, v2, :cond_3d

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 414
    .local v2, "hexNumber":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 416
    .end local v1    # "x":I
    .end local v2    # "hexNumber":Ljava/lang/String;
    :cond_3d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 407
    .end local v0    # "sb":Ljava/lang/StringBuffer;
    :cond_42
    :goto_42
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public disable([B)I
    .registers 5
    .param p1, "vt"    # [B

    .line 768
    if-eqz p1, :cond_49

    array-length v0, p1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_8

    goto :goto_49

    .line 771
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    .line 772
    const/4 v0, -0x2

    return v0

    .line 776
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-direct {p0, p1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->toHex([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v2, v1}, Lcom/samsung/android/service/reactive/IReactiveService;->setFlag(IILjava/lang/String;)I

    move-result v0
    :try_end_1c
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_1c} :catch_45
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1c} :catch_3e

    .line 786
    .local v0, "ret":I
    nop

    .line 788
    if-eqz v0, :cond_3d

    .line 789
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disable() : error code["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReactiveServiceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_3d
    return v0

    .line 782
    .end local v0    # "ret":I
    :catch_3e
    move-exception v0

    .line 784
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 785
    const/16 v1, -0xa

    return v1

    .line 778
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_45
    move-exception v0

    .line 780
    .local v0, "npe":Ljava/lang/NullPointerException;
    const/16 v1, -0x9

    return v1

    .line 769
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    :cond_49
    :goto_49
    const/4 v0, -0x8

    return v0
.end method

.method public disableWithAccountId(Ljava/lang/String;)I
    .registers 5
    .param p1, "id"    # Ljava/lang/String;

    .line 798
    if-nez p1, :cond_4

    .line 799
    const/4 v0, -0x8

    return v0

    .line 801
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    .line 802
    const/4 v0, -0x2

    return v0

    .line 806
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/android/service/reactive/IReactiveService;->setFlag(IILjava/lang/String;)I

    move-result v0
    :try_end_15
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_15} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_15} :catch_37

    .line 816
    .local v0, "ret":I
    nop

    .line 818
    if-eqz v0, :cond_36

    .line 819
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableWithAccountId() : error code["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReactiveServiceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_36
    return v0

    .line 812
    .end local v0    # "ret":I
    :catch_37
    move-exception v0

    .line 814
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 815
    const/16 v1, -0xa

    return v1

    .line 808
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3e
    move-exception v0

    .line 810
    .local v0, "npe":Ljava/lang/NullPointerException;
    const/16 v1, -0x9

    return v1
.end method

.method public enable([B)I
    .registers 6
    .param p1, "rc"    # [B

    .line 725
    if-eqz p1, :cond_49

    array-length v0, p1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_8

    goto :goto_49

    .line 728
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    .line 729
    const/4 v0, -0x2

    return v0

    .line 733
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-direct {p0, p1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->toHex([B)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Lcom/samsung/android/service/reactive/IReactiveService;->setFlag(IILjava/lang/String;)I

    move-result v0
    :try_end_1c
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_1c} :catch_45
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1c} :catch_3e

    .line 743
    .local v0, "ret":I
    nop

    .line 745
    if-eqz v0, :cond_3d

    .line 746
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable() : error code["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReactiveServiceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_3d
    return v0

    .line 739
    .end local v0    # "ret":I
    :catch_3e
    move-exception v0

    .line 741
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 742
    const/16 v1, -0xa

    return v1

    .line 735
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_45
    move-exception v0

    .line 737
    .local v0, "npe":Ljava/lang/NullPointerException;
    const/16 v1, -0x9

    return v1

    .line 726
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    :cond_49
    :goto_49
    const/4 v0, -0x8

    return v0
.end method

.method public getErrorCode()I
    .registers 3

    .line 659
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v0}, Lcom/samsung/android/service/reactive/IReactiveService;->getErrorCode()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_6} :catch_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_8

    .line 669
    .local v0, "error":I
    nop

    .line 671
    return v0

    .line 665
    .end local v0    # "error":I
    :catch_8
    move-exception v0

    .line 667
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 668
    const/16 v1, -0xa

    return v1

    .line 661
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_f
    move-exception v0

    .line 663
    .local v0, "npe":Ljava/lang/NullPointerException;
    const/16 v1, -0x9

    return v1
.end method

.method public getFlag(I)I
    .registers 5
    .param p1, "flag"    # I

    .line 439
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v0, p1}, Lcom/samsung/android/service/reactive/IReactiveService;->getFlag(I)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_6} :catch_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_2c

    .line 449
    .local v0, "ret":I
    nop

    .line 451
    const/4 v1, 0x2

    if-gt v0, v1, :cond_c

    if-gez v0, :cond_2b

    .line 452
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getFlag() : error code["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReactiveServiceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_2b
    return v0

    .line 445
    .end local v0    # "ret":I
    :catch_2c
    move-exception v0

    .line 447
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 448
    const/16 v1, -0xa

    return v1

    .line 441
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_33
    move-exception v0

    .line 443
    .local v0, "npe":Ljava/lang/NullPointerException;
    const/16 v1, -0x9

    return v1
.end method

.method public getRandom()[B
    .registers 6

    .line 912
    const/4 v0, 0x0

    .line 914
    .local v0, "buffer":[B
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "ReactiveServiceManager"

    if-eq v1, v2, :cond_11

    .line 916
    const-string v1, "Invalid operation."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const/4 v1, 0x0

    return-object v1

    .line 922
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v1}, Lcom/samsung/android/service/reactive/IReactiveService;->getRandom()[B

    move-result-object v1
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_17} :catch_26
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_17} :catch_1e

    move-object v0, v1

    .line 924
    if-nez v0, :cond_1c

    .line 925
    const/4 v1, -0x6

    .local v1, "ret":I
    goto :goto_29

    .line 927
    .end local v1    # "ret":I
    :cond_1c
    const/4 v1, 0x0

    .restart local v1    # "ret":I
    goto :goto_29

    .line 933
    .end local v1    # "ret":I
    :catch_1e
    move-exception v1

    .line 935
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 936
    const/16 v2, -0xa

    move v1, v2

    .local v2, "ret":I
    goto :goto_2a

    .line 929
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ret":I
    :catch_26
    move-exception v1

    .line 931
    .local v1, "npe":Ljava/lang/NullPointerException;
    const/16 v1, -0x9

    .line 937
    .local v1, "ret":I
    :goto_29
    nop

    .line 939
    :goto_2a
    if-gez v1, :cond_4a

    .line 940
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getRandom() : error code["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 943
    :cond_4a
    const-string v2, "Success of generate random numbers."

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :goto_4f
    return-object v0
.end method

.method public getRawServiceValueForAtCommand()I
    .registers 3

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v0}, Lcom/samsung/android/service/reactive/IReactiveService;->getServiceSupport()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_6} :catch_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 398
    :catch_7
    move-exception v0

    .line 400
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 401
    const/16 v1, -0xa

    return v1

    .line 394
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_e
    move-exception v0

    .line 396
    .local v0, "npe":Ljava/lang/NullPointerException;
    const/16 v1, -0x9

    return v1
.end method

.method public getServiceSupport()I
    .registers 4

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v0}, Lcom/samsung/android/service/reactive/IReactiveService;->getServiceSupport()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_6} :catch_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_2a

    .line 360
    .local v0, "supported":I
    nop

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supported : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReactiveServiceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    packed-switch v0, :pswitch_data_36

    .line 379
    :pswitch_22
    const/4 v1, 0x0

    return v1

    .line 375
    :pswitch_24
    const/4 v1, 0x3

    return v1

    .line 371
    :pswitch_26
    const/4 v1, 0x2

    return v1

    .line 368
    :pswitch_28
    const/4 v1, 0x1

    return v1

    .line 356
    .end local v0    # "supported":I
    :catch_2a
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 359
    const/16 v1, -0xa

    return v1

    .line 352
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_31
    move-exception v0

    .line 354
    .local v0, "npe":Ljava/lang/NullPointerException;
    const/16 v1, -0x9

    return v1

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_28
        :pswitch_28
        :pswitch_22
        :pswitch_26
        :pswitch_24
        :pswitch_24
    .end packed-switch
.end method

.method public getStatus()I
    .registers 4

    .line 687
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_10

    .line 689
    const-string v0, "ReactiveServiceManager"

    const-string v1, "ReactiveService is not exist."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const/16 v0, -0x9

    return v0

    .line 693
    :cond_10
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v0

    .line 695
    .local v0, "which":I
    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v1, :cond_1e

    .line 696
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v1

    .local v1, "ret":I
    goto :goto_24

    .line 698
    .end local v1    # "ret":I
    :cond_1e
    if-ne v0, v2, :cond_28

    .line 699
    invoke-virtual {p0, v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v1

    .line 703
    .restart local v1    # "ret":I
    :goto_24
    if-ne v1, v2, :cond_27

    const/4 v1, 0x1

    .line 705
    :cond_27
    return v1

    .line 701
    .end local v1    # "ret":I
    :cond_28
    const/4 v1, -0x3

    return v1
.end method

.method public getString()Ljava/lang/String;
    .registers 5

    .line 478
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v1}, Lcom/samsung/android/service/reactive/IReactiveService;->getString()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_7} :catch_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_9

    .line 489
    .local v0, "ret":Ljava/lang/String;
    nop

    .line 491
    return-object v0

    .line 485
    .end local v0    # "ret":Ljava/lang/String;
    :catch_9
    move-exception v1

    .line 487
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 488
    return-object v0

    .line 480
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_e
    move-exception v1

    .line 482
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "ReactiveServiceManager"

    const-string/jumbo v3, "getString() : Service is not exist."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return-object v0
.end method

.method public isConnected()Z
    .registers 2

    .line 327
    iget-object v0, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    if-eqz v0, :cond_6

    .line 328
    const/4 v0, 0x1

    return v0

    .line 330
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public removeString()I
    .registers 5

    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v0}, Lcom/samsung/android/service/reactive/IReactiveService;->removeString()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_6} :catch_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_30

    .line 560
    .local v0, "ret":I
    nop

    .line 562
    const-string v1, "ReactiveServiceManager"

    if-gez v0, :cond_29

    .line 563
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeString() : error code["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 565
    :cond_29
    const-string/jumbo v2, "removeString Success "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :goto_2f
    return v0

    .line 556
    .end local v0    # "ret":I
    :catch_30
    move-exception v0

    .line 558
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 559
    const/16 v1, -0xa

    return v1

    .line 552
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_37
    move-exception v0

    .line 554
    .local v0, "npe":Ljava/lang/NullPointerException;
    const/16 v1, -0x9

    return v1
.end method

.method public sessionAccept([B)[B
    .registers 6
    .param p1, "input"    # [B

    .line 582
    const-string v0, "ReactiveServiceManager"

    const/4 v1, 0x0

    if-nez p1, :cond_b

    .line 584
    const-string v2, "SessionAccept() : Invalid argument"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    return-object v1

    .line 590
    :cond_b
    :try_start_b
    iget-object v2, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v2, p1}, Lcom/samsung/android/service/reactive/IReactiveService;->sessionAccept([B)[B

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_11} :catch_18
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_13

    .line 601
    .local v0, "ret":[B
    nop

    .line 603
    return-object v0

    .line 597
    .end local v0    # "ret":[B
    :catch_13
    move-exception v0

    .line 599
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 600
    return-object v1

    .line 592
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_18
    move-exception v2

    .line 594
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "SessionAccpet() : Service is not exist."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    return-object v1
.end method

.method public sessionComplete([B)I
    .registers 5
    .param p1, "input"    # [B

    .line 621
    if-nez p1, :cond_4

    .line 622
    const/4 v0, -0x8

    return v0

    .line 626
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v0, p1}, Lcom/samsung/android/service/reactive/IReactiveService;->sessionComplete([B)I

    move-result v0
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_a} :catch_34
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_2d

    .line 636
    .local v0, "ret":I
    nop

    .line 638
    if-eqz v0, :cond_2c

    .line 639
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sessionComplete() : error code["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReactiveServiceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_2c
    return v0

    .line 632
    .end local v0    # "ret":I
    :catch_2d
    move-exception v0

    .line 634
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 635
    const/16 v1, -0xa

    return v1

    .line 628
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_34
    move-exception v0

    .line 630
    .local v0, "npe":Ljava/lang/NullPointerException;
    const/16 v1, -0x9

    return v1
.end method

.method public setFlag(IILjava/lang/String;)I
    .registers 6
    .param p1, "flag"    # I
    .param p2, "value"    # I
    .param p3, "info"    # Ljava/lang/String;

    .line 462
    const-string v0, "ReactiveServiceManager"

    const-string/jumbo v1, "setFlag() - No longer used API"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/4 v0, -0x2

    return v0
.end method

.method public setString(Ljava/lang/String;)I
    .registers 6
    .param p1, "string"    # Ljava/lang/String;

    .line 509
    if-nez p1, :cond_4

    .line 510
    const/4 v0, -0x8

    return v0

    .line 514
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v0, p1}, Lcom/samsung/android/service/reactive/IReactiveService;->setString(Ljava/lang/String;)I

    move-result v0
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_a} :catch_52
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_4b

    .line 524
    .local v0, "ret":I
    nop

    .line 526
    const-string v1, "ReactiveServiceManager"

    if-gez v0, :cond_2d

    .line 527
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setString() : error code["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 529
    :cond_2d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setString() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " characters are saved."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :goto_4a
    return v0

    .line 520
    .end local v0    # "ret":I
    :catch_4b
    move-exception v0

    .line 522
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 523
    const/16 v1, -0xa

    return v1

    .line 516
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_52
    move-exception v0

    .line 518
    .local v0, "npe":Ljava/lang/NullPointerException;
    const/16 v1, -0x9

    return v1
.end method

.method public verify([B)I
    .registers 6
    .param p1, "vt"    # [B

    .line 842
    if-eqz p1, :cond_4f

    array-length v0, p1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_8

    goto :goto_4f

    .line 845
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    .line 846
    const/4 v0, -0x2

    return v0

    .line 851
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-direct {p0, p1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->toHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/service/reactive/IReactiveService;->verify(Ljava/lang/String;I)I

    move-result v0
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_1b} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1b} :catch_44

    .line 861
    .local v0, "ret":I
    nop

    .line 863
    const-string v1, "ReactiveServiceManager"

    if-gez v0, :cond_3e

    .line 864
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "verify() : error code["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 866
    :cond_3e
    const-string v2, "Verification success"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :goto_43
    return v0

    .line 857
    .end local v0    # "ret":I
    :catch_44
    move-exception v0

    .line 859
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 860
    const/16 v1, -0xa

    return v1

    .line 853
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4b
    move-exception v0

    .line 855
    .local v0, "npe":Ljava/lang/NullPointerException;
    const/16 v1, -0x9

    return v1

    .line 843
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    :cond_4f
    :goto_4f
    const/4 v0, -0x8

    return v0
.end method

.method public verifyWithAccountId(Ljava/lang/String;)I
    .registers 6
    .param p1, "id"    # Ljava/lang/String;

    .line 875
    if-nez p1, :cond_4

    .line 876
    const/4 v0, -0x8

    return v0

    .line 878
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    .line 879
    const/4 v0, -0x2

    return v0

    .line 883
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->mService:Lcom/samsung/android/service/reactive/IReactiveService;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/service/reactive/IReactiveService;->verify(Ljava/lang/String;I)I

    move-result v0
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_14} :catch_44
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_14} :catch_3d

    .line 893
    .local v0, "ret":I
    nop

    .line 895
    const-string v1, "ReactiveServiceManager"

    if-gez v0, :cond_37

    .line 896
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "verifyWithAccountId() : error code["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 898
    :cond_37
    const-string v2, "Verification with id, success"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :goto_3c
    return v0

    .line 889
    .end local v0    # "ret":I
    :catch_3d
    move-exception v0

    .line 891
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 892
    const/16 v1, -0xa

    return v1

    .line 885
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_44
    move-exception v0

    .line 887
    .local v0, "npe":Ljava/lang/NullPointerException;
    const/16 v1, -0x9

    return v1
.end method
