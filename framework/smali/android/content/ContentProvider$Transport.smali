.class Landroid/content/ContentProvider$Transport;
.super Landroid/content/ContentProviderNative;
.source "ContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Transport"
.end annotation


# instance fields
.field volatile mAppOpsManager:Landroid/app/AppOpsManager;

.field volatile mInterface:Landroid/content/ContentInterface;

.field volatile mReadOp:I

.field volatile mWriteOp:I

.field final synthetic this$0:Landroid/content/ContentProvider;


# direct methods
.method constructor <init>(Landroid/content/ContentProvider;)V
    .registers 3
    .param p1, "this$0"    # Landroid/content/ContentProvider;

    .line 237
    iput-object p1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-direct {p0}, Landroid/content/ContentProviderNative;-><init>()V

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 239
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    .line 240
    iput v0, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    .line 241
    iput-object p1, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    return-void
.end method

.method private checkGetTypePermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I
    .registers 6
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 854
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 855
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1f

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 856
    const-string v2, "android.permission.GET_ANY_PROVIDER_TYPE"

    invoke-static {v1, v2, p1}, Landroid/content/ContentProvider;->-$$Nest$mcheckPermission(Landroid/content/ContentProvider;Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v1

    if-nez v1, :cond_17

    goto :goto_1f

    .line 862
    :cond_17
    :try_start_17
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v1
    :try_end_1b
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_1b} :catch_1c

    return v1

    .line 863
    :catch_1c
    move-exception v1

    .line 864
    .local v1, "e":Ljava/lang/SecurityException;
    const/4 v2, 0x2

    return v2

    .line 859
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_1f
    :goto_1f
    const/4 v1, 0x0

    return v1
.end method

.method private enforceFilePermission(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 7
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 802
    const-string v0, "App op not allowed"

    if-eqz p3, :cond_1a

    const/16 v1, 0x77

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1a

    .line 803
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v1

    if-nez v1, :cond_14

    goto :goto_20

    .line 805
    :cond_14
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 808
    :cond_1a
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v1

    if-nez v1, :cond_21

    .line 813
    :goto_20
    return-void

    .line 810
    :cond_21
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private enforceReadPermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I
    .registers 7
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 818
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentProvider;->semEnforceReadPermission(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    move-result v0

    .line 819
    .local v0, "result":I
    if-eqz v0, :cond_9

    .line 820
    return v0

    .line 824
    :cond_9
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1}, Landroid/content/ContentProvider;->-$$Nest$fgetmTransport(Landroid/content/ContentProvider;)Landroid/content/ContentProvider$Transport;

    move-result-object v1

    iget v1, v1, Landroid/content/ContentProvider$Transport;->mReadOp:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_40

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1}, Landroid/content/ContentProvider;->-$$Nest$fgetmTransport(Landroid/content/ContentProvider;)Landroid/content/ContentProvider$Transport;

    move-result-object v1

    iget v1, v1, Landroid/content/ContentProvider$Transport;->mReadOp:I

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2}, Landroid/content/ContentProvider;->-$$Nest$fgetmReadPermission(Landroid/content/ContentProvider;)Ljava/lang/String;

    move-result-object v2

    .line 825
    invoke-static {v2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_40

    .line 826
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2}, Landroid/content/ContentProvider;->-$$Nest$fgetmTransport(Landroid/content/ContentProvider;)Landroid/content/ContentProvider$Transport;

    move-result-object v2

    iget v2, v2, Landroid/content/ContentProvider$Transport;->mReadOp:I

    .line 827
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v2

    .line 826
    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Landroid/content/PermissionChecker;->checkOpForDataDelivery(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 830
    :cond_40
    const/4 v1, 0x0

    return v1
.end method

.method private enforceWritePermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I
    .registers 7
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 836
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentProvider;->semEnforceWritePermission(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    move-result v0

    .line 837
    .local v0, "result":I
    if-eqz v0, :cond_9

    .line 838
    return v0

    .line 842
    :cond_9
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1}, Landroid/content/ContentProvider;->-$$Nest$fgetmTransport(Landroid/content/ContentProvider;)Landroid/content/ContentProvider$Transport;

    move-result-object v1

    iget v1, v1, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_40

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1}, Landroid/content/ContentProvider;->-$$Nest$fgetmTransport(Landroid/content/ContentProvider;)Landroid/content/ContentProvider$Transport;

    move-result-object v1

    iget v1, v1, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2}, Landroid/content/ContentProvider;->-$$Nest$fgetmWritePermission(Landroid/content/ContentProvider;)Ljava/lang/String;

    move-result-object v2

    .line 843
    invoke-static {v2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_40

    .line 844
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2}, Landroid/content/ContentProvider;->-$$Nest$fgetmTransport(Landroid/content/ContentProvider;)Landroid/content/ContentProvider$Transport;

    move-result-object v2

    iget v2, v2, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    .line 845
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v2

    .line 844
    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Landroid/content/PermissionChecker;->checkOpForDataDelivery(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 848
    :cond_40
    const/4 v1, 0x0

    return v1
.end method

.method private logGetTypeData(ILandroid/net/Uri;Ljava/lang/String;Z)V
    .registers 14
    .param p1, "callingUid"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "permissionCheckPassed"    # Z

    .line 363
    const/4 v0, 0x4

    .line 365
    .local v0, "enumFrameworkPermission":I
    const/4 v1, 0x5

    .line 367
    .local v1, "enumCheckUriPermission":I
    const/16 v2, 0x234

    if-eqz p4, :cond_65

    .line 370
    :try_start_6
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v3}, Landroid/content/ContentProvider;->-$$Nest$fgetmContext(Landroid/content/ContentProvider;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 371
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    .line 372
    const-wide/16 v5, 0x80

    invoke-static {v5, v6}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v5

    .line 371
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    .line 374
    .local v3, "cpi":Landroid/content/pm/ProviderInfo;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 375
    .local v4, "callingUserId":I
    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v5}, Landroid/content/ContentProvider;->-$$Nest$fgetmSingleUser(Landroid/content/ContentProvider;)Z

    move-result v5

    if-eqz v5, :cond_3b

    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v5}, Landroid/content/ContentProvider;->-$$Nest$fgetmMyUid(Landroid/content/ContentProvider;)I

    move-result v5

    .line 376
    invoke-static {v5, p1}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v5

    if-nez v5, :cond_3b

    .line 377
    invoke-static {p2, v4}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v5

    goto :goto_3c

    :cond_3b
    move-object v5, p2

    .line 378
    .local v5, "userUri":Landroid/net/Uri;
    :goto_3c
    iget-boolean v6, v3, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    if-eqz v6, :cond_64

    iget-object v6, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    .line 379
    const/4 v7, 0x1

    invoke-interface {v6, p2, p1, v7}, Landroid/content/ContentInterface;->checkUriPermission(Landroid/net/Uri;II)I

    move-result v6

    if-eqz v6, :cond_64

    iget-object v6, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 382
    invoke-virtual {v6}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v6, v5, v8, p1, v7}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v6

    if-eqz v6, :cond_64

    .line 385
    nop

    .line 387
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 385
    const/4 v7, 0x5

    invoke-static {v2, v7, p1, v6, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_62} :catch_63

    goto :goto_64

    .line 389
    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v4    # "callingUserId":I
    .end local v5    # "userUri":Landroid/net/Uri;
    :catch_63
    move-exception v2

    .line 391
    :cond_64
    :goto_64
    goto :goto_6e

    .line 393
    :cond_65
    nop

    .line 395
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    .line 393
    const/4 v4, 0x4

    invoke-static {v2, v4, p1, v3, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;Ljava/lang/String;)V

    .line 397
    :goto_6e
    return-void
.end method


# virtual methods
.method public applyBatch(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 14
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/AttributionSource;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 486
    .local p3, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mvalidateIncomingAuthority(Landroid/content/ContentProvider;Ljava/lang/String;)V

    .line 487
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 488
    .local v0, "numOperations":I
    new-array v1, v0, [I

    .line 489
    .local v1, "userIds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v0, :cond_6a

    .line 490
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentProviderOperation;

    .line 491
    .local v3, "operation":Landroid/content/ContentProviderOperation;
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 492
    .local v4, "uri":Landroid/net/Uri;
    invoke-static {v4}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v5

    aput v5, v1, v2

    .line 493
    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v5, v4}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 494
    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v5, v4}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 496
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 497
    new-instance v5, Landroid/content/ContentProviderOperation;

    invoke-direct {v5, v3, v4}, Landroid/content/ContentProviderOperation;-><init>(Landroid/content/ContentProviderOperation;Landroid/net/Uri;)V

    move-object v3, v5

    .line 498
    invoke-virtual {p3, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 500
    :cond_3d
    move-object v5, p1

    .line 502
    .local v5, "accessAttributionSource":Landroid/content/AttributionSource;
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->isReadOperation()Z

    move-result v6

    const/4 v7, 0x0

    const-string v8, "App op not allowed"

    if-eqz v6, :cond_54

    .line 503
    invoke-direct {p0, v5, v4}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v6

    if-nez v6, :cond_4e

    goto :goto_54

    .line 505
    :cond_4e
    new-instance v6, Landroid/content/OperationApplicationException;

    invoke-direct {v6, v8, v7}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 508
    :cond_54
    :goto_54
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->isWriteOperation()Z

    move-result v6

    if-eqz v6, :cond_67

    .line 509
    invoke-direct {p0, v5, v4}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v6

    if-nez v6, :cond_61

    goto :goto_67

    .line 511
    :cond_61
    new-instance v6, Landroid/content/OperationApplicationException;

    invoke-direct {v6, v8, v7}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 489
    .end local v3    # "operation":Landroid/content/ContentProviderOperation;
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "accessAttributionSource":Landroid/content/AttributionSource;
    :cond_67
    :goto_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 515
    .end local v2    # "i":I
    :cond_6a
    const-string v2, "applyBatch: "

    const-wide/32 v3, 0x100000

    invoke-static {v3, v4, v2, p2}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v2

    .line 519
    .local v2, "original":Landroid/content/AttributionSource;
    :try_start_78
    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v5, p2, p3}, Landroid/content/ContentInterface;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    .line 521
    .local v5, "results":[Landroid/content/ContentProviderResult;
    if-eqz v5, :cond_97

    .line 522
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_81
    array-length v7, v5

    if-ge v6, v7, :cond_97

    .line 523
    aget v7, v1, v6

    const/4 v8, -0x2

    if-eq v7, v8, :cond_94

    .line 525
    new-instance v7, Landroid/content/ContentProviderResult;

    aget-object v8, v5, v6

    aget v9, v1, v6

    invoke-direct {v7, v8, v9}, Landroid/content/ContentProviderResult;-><init>(Landroid/content/ContentProviderResult;I)V

    aput-object v7, v5, v6
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_94} :catch_a3
    .catchall {:try_start_78 .. :try_end_94} :catchall_a1

    .line 522
    :cond_94
    add-int/lit8 v6, v6, 0x1

    goto :goto_81

    .line 529
    .end local v6    # "i":I
    :cond_97
    nop

    .line 533
    iget-object v6, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v6, v2}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 534
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 529
    return-object v5

    .line 533
    .end local v5    # "results":[Landroid/content/ContentProviderResult;
    :catchall_a1
    move-exception v5

    goto :goto_a9

    .line 530
    :catch_a3
    move-exception v5

    .line 531
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_a4
    invoke-virtual {v5}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v6

    .end local v0    # "numOperations":I
    .end local v1    # "userIds":[I
    .end local v2    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "authority":Ljava/lang/String;
    .end local p3    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    throw v6
    :try_end_a9
    .catchall {:try_start_a4 .. :try_end_a9} :catchall_a1

    .line 533
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v0    # "numOperations":I
    .restart local v1    # "userIds":[I
    .restart local v2    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "authority":Ljava/lang/String;
    .restart local p3    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_a9
    iget-object v6, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v6, v2}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 534
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 535
    throw v5
.end method

.method public bulkInsert(Landroid/content/AttributionSource;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 9
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "initialValues"    # [Landroid/content/ContentValues;

    .line 463
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 464
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 465
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_14

    .line 467
    const/4 v0, 0x0

    return v0

    .line 469
    :cond_14
    const-string v0, "bulkInsert: "

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x100000

    invoke-static {v2, v3, v0, v1}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 473
    .local v0, "original":Landroid/content/AttributionSource;
    :try_start_26
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v1, p2, p3}, Landroid/content/ContentInterface;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2c} :catch_37
    .catchall {:try_start_26 .. :try_end_2c} :catchall_35

    .line 477
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 478
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 473
    return v1

    .line 477
    :catchall_35
    move-exception v1

    goto :goto_3d

    .line 474
    :catch_37
    move-exception v1

    .line 475
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_38
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "initialValues":[Landroid/content/ContentValues;
    throw v4
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_35

    .line 477
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "initialValues":[Landroid/content/ContentValues;
    :goto_3d
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 478
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 479
    throw v1
.end method

.method public call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 11
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "arg"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;

    .line 627
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mvalidateIncomingAuthority(Landroid/content/ContentProvider;Ljava/lang/String;)V

    .line 628
    const/4 v0, 0x1

    invoke-static {p5, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 629
    const-string v0, "call: "

    const-wide/32 v1, 0x100000

    invoke-static {v1, v2, v0, p2}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 633
    .local v0, "original":Landroid/content/AttributionSource;
    :try_start_17
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v3, p2, p3, p4, p5}, Landroid/content/ContentInterface;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1d} :catch_28
    .catchall {:try_start_17 .. :try_end_1d} :catchall_26

    .line 637
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 638
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 633
    return-object v3

    .line 637
    :catchall_26
    move-exception v3

    goto :goto_2e

    .line 634
    :catch_28
    move-exception v3

    .line 635
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_29
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "authority":Ljava/lang/String;
    .end local p3    # "method":Ljava/lang/String;
    .end local p4    # "arg":Ljava/lang/String;
    .end local p5    # "extras":Landroid/os/Bundle;
    throw v4
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_26

    .line 637
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "authority":Ljava/lang/String;
    .restart local p3    # "method":Ljava/lang/String;
    .restart local p4    # "arg":Ljava/lang/String;
    .restart local p5    # "extras":Landroid/os/Bundle;
    :goto_2e
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 638
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 639
    throw v3
.end method

.method public canonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 9
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 689
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 690
    invoke-static {p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 691
    .local v0, "userId":I
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 692
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_16

    .line 694
    const/4 v1, 0x0

    return-object v1

    .line 696
    :cond_16
    const-string v1, "canonicalize: "

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-wide/32 v3, 0x100000

    invoke-static {v3, v4, v1, v2}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 697
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v1

    .line 700
    .local v1, "original":Landroid/content/AttributionSource;
    :try_start_28
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v2, p2}, Landroid/content/ContentInterface;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_32} :catch_3d
    .catchall {:try_start_28 .. :try_end_32} :catchall_3b

    .line 704
    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v5, v1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 705
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 700
    return-object v2

    .line 704
    :catchall_3b
    move-exception v2

    goto :goto_43

    .line 701
    :catch_3d
    move-exception v2

    .line 702
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3e
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v5

    .end local v0    # "userId":I
    .end local v1    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    throw v5
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_3b

    .line 704
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "userId":I
    .restart local v1    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    :goto_43
    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v5, v1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 705
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 706
    throw v2
.end method

.method public canonicalizeAsync(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .registers 8
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/os/RemoteCallback;

    .line 712
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 714
    .local v0, "result":Landroid/os/Bundle;
    :try_start_5
    const-string/jumbo v1, "result"

    .line 715
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->canonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 714
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_10

    .line 719
    goto :goto_1b

    .line 716
    :catch_10
    move-exception v1

    .line 717
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/os/ParcelableException;

    invoke-direct {v2, v1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    const-string v3, "error"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 720
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1b
    invoke-virtual {p3, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 721
    return-void
.end method

.method public checkUriPermission(Landroid/content/AttributionSource;Landroid/net/Uri;II)I
    .registers 10
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I

    .line 783
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 784
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 785
    const-string v0, "checkUriPermission: "

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x100000

    invoke-static {v2, v3, v0, v1}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 786
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 789
    .local v0, "original":Landroid/content/AttributionSource;
    :try_start_1e
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v1, p2, p3, p4}, Landroid/content/ContentInterface;->checkUriPermission(Landroid/net/Uri;II)I

    move-result v1
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_24} :catch_2f
    .catchall {:try_start_1e .. :try_end_24} :catchall_2d

    .line 793
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 794
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 789
    return v1

    .line 793
    :catchall_2d
    move-exception v1

    goto :goto_35

    .line 790
    :catch_2f
    move-exception v1

    .line 791
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_30
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "uid":I
    .end local p4    # "modeFlags":I
    throw v4
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_2d

    .line 793
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "uid":I
    .restart local p4    # "modeFlags":I
    :goto_35
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 794
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 795
    throw v1
.end method

.method public createCancellationSignal()Landroid/os/ICancellationSignal;
    .registers 2

    .line 684
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/Bundle;)I
    .registers 9
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 541
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 542
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 543
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_14

    .line 545
    const/4 v0, 0x0

    return v0

    .line 547
    :cond_14
    const-string v0, "delete: "

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x100000

    invoke-static {v2, v3, v0, v1}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 551
    .local v0, "original":Landroid/content/AttributionSource;
    :try_start_26
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v1, p2, p3}, Landroid/content/ContentInterface;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    move-result v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2c} :catch_37
    .catchall {:try_start_26 .. :try_end_2c} :catchall_35

    .line 555
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 556
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 551
    return v1

    .line 555
    :catchall_35
    move-exception v1

    goto :goto_3d

    .line 552
    :catch_37
    move-exception v1

    .line 553
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_38
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "extras":Landroid/os/Bundle;
    throw v4
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_35

    .line 555
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "extras":Landroid/os/Bundle;
    :goto_3d
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 556
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 557
    throw v1
.end method

.method getContentProvider()Landroid/content/ContentProvider;
    .registers 2

    .line 244
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    return-object v0
.end method

.method public getProviderName()Ljava/lang/String;
    .registers 2

    .line 249
    invoke-virtual {p0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreamTypes(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .registers 9
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeTypeFilter"    # Ljava/lang/String;

    .line 645
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 646
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 647
    const-string v0, "getStreamTypes: "

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x100000

    invoke-static {v2, v3, v0, v1}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 651
    .local v0, "original":Landroid/content/AttributionSource;
    :try_start_1e
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v1, p2, p3}, Landroid/content/ContentInterface;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_24} :catch_2f
    .catchall {:try_start_1e .. :try_end_24} :catchall_2d

    .line 655
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 656
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 651
    return-object v1

    .line 655
    :catchall_2d
    move-exception v1

    goto :goto_35

    .line 652
    :catch_2f
    move-exception v1

    .line 653
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_30
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "mimeTypeFilter":Ljava/lang/String;
    throw v4
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_2d

    .line 655
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "mimeTypeFilter":Ljava/lang/String;
    :goto_35
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 656
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 657
    throw v1
.end method

.method public getType(Landroid/content/AttributionSource;Landroid/net/Uri;)Ljava/lang/String;
    .registers 10
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 310
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 311
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 312
    const-string v0, "getType: "

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x100000

    invoke-static {v2, v3, v0, v1}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 316
    .local v0, "original":Landroid/content/AttributionSource;
    :try_start_1e
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->checkGetTypePermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v1

    if-nez v1, :cond_6a

    .line 319
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    const-string v4, "android.permission.GET_ANY_PROVIDER_TYPE"

    invoke-static {v1, v4, p1}, Landroid/content/ContentProvider;->-$$Nest$mcheckPermission(Landroid/content/ContentProvider;Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v1

    if-nez v1, :cond_4f

    .line 325
    invoke-virtual {p0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProvider;->clearCallingIdentity()Landroid/content/ContentProvider$CallingIdentity;

    move-result-object v1
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_36} :catch_9f
    .catchall {:try_start_1e .. :try_end_36} :catchall_9d

    .line 327
    .local v1, "origId":Landroid/content/ContentProvider$CallingIdentity;
    :try_start_36
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v4, p2}, Landroid/content/ContentInterface;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_45

    .line 329
    .local v4, "type":Ljava/lang/String;
    :try_start_3c
    invoke-virtual {p0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    .line 330
    nop

    .line 331
    .end local v1    # "origId":Landroid/content/ContentProvider$CallingIdentity;
    goto :goto_56

    .line 329
    .end local v4    # "type":Ljava/lang/String;
    .restart local v1    # "origId":Landroid/content/ContentProvider$CallingIdentity;
    :catchall_45
    move-exception v4

    invoke-virtual {p0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    .line 330
    nop

    .end local v0    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    throw v4

    .line 332
    .end local v1    # "origId":Landroid/content/ContentProvider$CallingIdentity;
    .restart local v0    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    :cond_4f
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v1, p2}, Landroid/content/ContentInterface;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 335
    .restart local v4    # "type":Ljava/lang/String;
    :goto_56
    if-eqz v4, :cond_60

    .line 336
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v5, 0x1

    invoke-direct {p0, v1, p2, v4, v5}, Landroid/content/ContentProvider$Transport;->logGetTypeData(ILandroid/net/Uri;Ljava/lang/String;Z)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_60} :catch_9f
    .catchall {:try_start_3c .. :try_end_60} :catchall_9d

    .line 338
    :cond_60
    nop

    .line 355
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 356
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 338
    return-object v4

    .line 340
    .end local v4    # "type":Ljava/lang/String;
    :cond_6a
    :try_start_6a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 341
    .local v1, "callingUid":I
    invoke-virtual {p0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProvider;->clearCallingIdentity()Landroid/content/ContentProvider$CallingIdentity;

    move-result-object v4
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_76} :catch_9f
    .catchall {:try_start_6a .. :try_end_76} :catchall_9d

    .line 343
    .local v4, "origId":Landroid/content/ContentProvider$CallingIdentity;
    :try_start_76
    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v5, p2}, Landroid/content/ContentProvider;->getTypeAnonymous(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 344
    .local v5, "type":Ljava/lang/String;
    if-eqz v5, :cond_82

    .line 345
    const/4 v6, 0x0

    invoke-direct {p0, v1, p2, v5, v6}, Landroid/content/ContentProvider$Transport;->logGetTypeData(ILandroid/net/Uri;Ljava/lang/String;Z)V
    :try_end_82
    .catchall {:try_start_76 .. :try_end_82} :catchall_93

    .line 347
    :cond_82
    nop

    .line 349
    :try_start_83
    invoke-virtual {p0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_8a} :catch_9f
    .catchall {:try_start_83 .. :try_end_8a} :catchall_9d

    .line 355
    iget-object v6, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v6, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 356
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 347
    return-object v5

    .line 349
    .end local v5    # "type":Ljava/lang/String;
    :catchall_93
    move-exception v5

    :try_start_94
    invoke-virtual {p0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    .line 350
    nop

    .end local v0    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    throw v5
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_94 .. :try_end_9d} :catch_9f
    .catchall {:try_start_94 .. :try_end_9d} :catchall_9d

    .line 355
    .end local v1    # "callingUid":I
    .end local v4    # "origId":Landroid/content/ContentProvider$CallingIdentity;
    .restart local v0    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    :catchall_9d
    move-exception v1

    goto :goto_a5

    .line 352
    :catch_9f
    move-exception v1

    .line 353
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_a0
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    throw v4
    :try_end_a5
    .catchall {:try_start_a0 .. :try_end_a5} :catchall_9d

    .line 355
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    :goto_a5
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 356
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 357
    throw v1
.end method

.method public getTypeAnonymousAsync(Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .registers 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callback"    # Landroid/os/RemoteCallback;

    .line 416
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 417
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 418
    const-string v0, "getTypeAnonymous: "

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x100000

    invoke-static {v2, v3, v0, v1}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 419
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 421
    .local v0, "result":Landroid/os/Bundle;
    :try_start_1d
    const-string/jumbo v1, "result"

    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v4, p1}, Landroid/content/ContentProvider;->getTypeAnonymous(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_29} :catch_32
    .catchall {:try_start_1d .. :try_end_29} :catchall_30

    .line 426
    :goto_29
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 427
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 428
    goto :goto_3e

    .line 426
    :catchall_30
    move-exception v1

    goto :goto_3f

    .line 422
    :catch_32
    move-exception v1

    .line 423
    .local v1, "e":Ljava/lang/Exception;
    :try_start_33
    const-string v4, "error"

    new-instance v5, Landroid/os/ParcelableException;

    invoke-direct {v5, v1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_30

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_29

    .line 429
    :goto_3e
    return-void

    .line 426
    :goto_3f
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 427
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 428
    throw v1
.end method

.method public getTypeAsync(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .registers 8
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/os/RemoteCallback;

    .line 402
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 404
    .local v0, "result":Landroid/os/Bundle;
    :try_start_5
    const-string/jumbo v1, "result"

    .line 405
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->getType(Landroid/content/AttributionSource;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 404
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_10

    .line 409
    goto :goto_1b

    .line 406
    :catch_10
    move-exception v1

    .line 407
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/os/ParcelableException;

    invoke-direct {v2, v1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    const-string v3, "error"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 410
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1b
    invoke-virtual {p3, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 411
    return-void
.end method

.method public insert(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;
    .registers 11
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "initialValues"    # Landroid/content/ContentValues;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 434
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 435
    invoke-static {p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 436
    .local v0, "userId":I
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 437
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_2f

    .line 439
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v1

    .line 442
    .local v1, "original":Landroid/content/AttributionSource;
    :try_start_1c
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentProvider;->rejectInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_28

    .line 444
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v3, v1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 442
    return-object v2

    .line 444
    :catchall_28
    move-exception v2

    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v3, v1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 445
    throw v2

    .line 447
    .end local v1    # "original":Landroid/content/AttributionSource;
    :cond_2f
    const-string v1, "insert: "

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-wide/32 v3, 0x100000

    invoke-static {v3, v4, v1, v2}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v1

    .line 451
    .restart local v1    # "original":Landroid/content/AttributionSource;
    :try_start_41
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v2, p2, p3, p4}, Landroid/content/ContentInterface;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_4b} :catch_56
    .catchall {:try_start_41 .. :try_end_4b} :catchall_54

    .line 455
    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v5, v1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 456
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 451
    return-object v2

    .line 455
    :catchall_54
    move-exception v2

    goto :goto_5c

    .line 452
    :catch_56
    move-exception v2

    .line 453
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_57
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v5

    .end local v0    # "userId":I
    .end local v1    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "initialValues":Landroid/content/ContentValues;
    .end local p4    # "extras":Landroid/os/Bundle;
    throw v5
    :try_end_5c
    .catchall {:try_start_57 .. :try_end_5c} :catchall_54

    .line 455
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "userId":I
    .restart local v1    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "initialValues":Landroid/content/ContentValues;
    .restart local p4    # "extras":Landroid/os/Bundle;
    :goto_5c
    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v5, v1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 456
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 457
    throw v2
.end method

.method public openAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 10
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 607
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 608
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 609
    invoke-direct {p0, p1, p2, p3}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;)V

    .line 610
    const-string/jumbo v0, "openAssetFile: "

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x100000

    invoke-static {v2, v3, v0, v1}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 614
    .local v0, "original":Landroid/content/AttributionSource;
    :try_start_22
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    .line 615
    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v4

    .line 614
    invoke-interface {v1, p2, p3, v4}, Landroid/content/ContentInterface;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2c} :catch_37
    .catchall {:try_start_22 .. :try_end_2c} :catchall_35

    .line 619
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 620
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 614
    return-object v1

    .line 619
    :catchall_35
    move-exception v1

    goto :goto_3d

    .line 616
    :catch_37
    move-exception v1

    .line 617
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_38
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "mode":Ljava/lang/String;
    .end local p4    # "cancellationSignal":Landroid/os/ICancellationSignal;
    throw v4
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_35

    .line 619
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "mode":Ljava/lang/String;
    .restart local p4    # "cancellationSignal":Landroid/os/ICancellationSignal;
    :goto_3d
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 620
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 621
    throw v1
.end method

.method public openFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .registers 10
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 586
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 587
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 588
    invoke-direct {p0, p1, p2, p3}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;)V

    .line 589
    const-string/jumbo v0, "openFile: "

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x100000

    invoke-static {v2, v3, v0, v1}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 593
    .local v0, "original":Landroid/content/AttributionSource;
    :try_start_22
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    .line 594
    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v4

    .line 593
    invoke-interface {v1, p2, p3, v4}, Landroid/content/ContentInterface;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2c} :catch_37
    .catchall {:try_start_22 .. :try_end_2c} :catchall_35

    .line 598
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 599
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 593
    return-object v1

    .line 598
    :catchall_35
    move-exception v1

    goto :goto_3d

    .line 595
    :catch_37
    move-exception v1

    .line 596
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_38
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "mode":Ljava/lang/String;
    .end local p4    # "cancellationSignal":Landroid/os/ICancellationSignal;
    throw v4
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_35

    .line 598
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "mode":Ljava/lang/String;
    .restart local p4    # "cancellationSignal":Landroid/os/ICancellationSignal;
    :goto_3d
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 599
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 600
    throw v1
.end method

.method public openTypedAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 11
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "opts"    # Landroid/os/Bundle;
    .param p5, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 664
    const/4 v0, 0x1

    invoke-static {p4, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 665
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 666
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 667
    const-string/jumbo v0, "r"

    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;)V

    .line 668
    const-string/jumbo v0, "openTypedAssetFile: "

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x100000

    invoke-static {v2, v3, v0, v1}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 672
    .local v0, "original":Landroid/content/AttributionSource;
    :try_start_29
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    .line 673
    invoke-static {p5}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v4

    .line 672
    invoke-interface {v1, p2, p3, p4, v4}, Landroid/content/ContentInterface;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_33} :catch_3e
    .catchall {:try_start_29 .. :try_end_33} :catchall_3c

    .line 677
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 678
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 672
    return-object v1

    .line 677
    :catchall_3c
    move-exception v1

    goto :goto_44

    .line 674
    :catch_3e
    move-exception v1

    .line 675
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3f
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "mimeType":Ljava/lang/String;
    .end local p4    # "opts":Landroid/os/Bundle;
    .end local p5    # "cancellationSignal":Landroid/os/ICancellationSignal;
    throw v4
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_3c

    .line 677
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "mimeType":Ljava/lang/String;
    .restart local p4    # "opts":Landroid/os/Bundle;
    .restart local p5    # "cancellationSignal":Landroid/os/ICancellationSignal;
    :goto_44
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 678
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 679
    throw v1
.end method

.method public query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    .registers 11
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "queryArgs"    # Landroid/os/Bundle;
    .param p5, "cancellationSignal"    # Landroid/os/ICancellationSignal;

    .line 256
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 257
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 258
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_4d

    .line 266
    const/4 v0, 0x0

    if-eqz p3, :cond_1b

    .line 267
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, p3, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    return-object v1

    .line 275
    :cond_1b
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v1

    .line 278
    .local v1, "original":Landroid/content/AttributionSource;
    :try_start_21
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    .line 280
    invoke-static {p5}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v3

    .line 278
    invoke-interface {v2, p2, p3, p4, v3}, Landroid/content/ContentInterface;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2b} :catch_41
    .catchall {:try_start_21 .. :try_end_2b} :catchall_3f

    .line 284
    .local v2, "cursor":Landroid/database/Cursor;
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v3, v1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 285
    nop

    .line 286
    if-nez v2, :cond_35

    .line 287
    const/4 v0, 0x0

    return-object v0

    .line 291
    :cond_35
    new-instance v3, Landroid/database/MatrixCursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    return-object v3

    .line 284
    .end local v2    # "cursor":Landroid/database/Cursor;
    :catchall_3f
    move-exception v0

    goto :goto_47

    .line 281
    :catch_41
    move-exception v0

    .line 282
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_42
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v1    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "projection":[Ljava/lang/String;
    .end local p4    # "queryArgs":Landroid/os/Bundle;
    .end local p5    # "cancellationSignal":Landroid/os/ICancellationSignal;
    throw v2
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_3f

    .line 284
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "projection":[Ljava/lang/String;
    .restart local p4    # "queryArgs":Landroid/os/Bundle;
    .restart local p5    # "cancellationSignal":Landroid/os/ICancellationSignal;
    :goto_47
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, v1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 285
    throw v0

    .line 293
    .end local v1    # "original":Landroid/content/AttributionSource;
    :cond_4d
    const-string/jumbo v0, "query: "

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x100000

    invoke-static {v2, v3, v0, v1}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 297
    .local v0, "original":Landroid/content/AttributionSource;
    :try_start_60
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    .line 299
    invoke-static {p5}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v4

    .line 297
    invoke-interface {v1, p2, p3, p4, v4}, Landroid/content/ContentInterface;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_6a} :catch_75
    .catchall {:try_start_60 .. :try_end_6a} :catchall_73

    .line 303
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 304
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 297
    return-object v1

    .line 303
    :catchall_73
    move-exception v1

    goto :goto_7b

    .line 300
    :catch_75
    move-exception v1

    .line 301
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_76
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "projection":[Ljava/lang/String;
    .end local p4    # "queryArgs":Landroid/os/Bundle;
    .end local p5    # "cancellationSignal":Landroid/os/ICancellationSignal;
    throw v4
    :try_end_7b
    .catchall {:try_start_76 .. :try_end_7b} :catchall_73

    .line 303
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "projection":[Ljava/lang/String;
    .restart local p4    # "queryArgs":Landroid/os/Bundle;
    .restart local p5    # "cancellationSignal":Landroid/os/ICancellationSignal;
    :goto_7b
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 304
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 305
    throw v1
.end method

.method public refresh(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Z
    .registers 10
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 762
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 763
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 764
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 766
    const/4 v0, 0x0

    return v0

    .line 768
    :cond_12
    const-string/jumbo v0, "refresh: "

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x100000

    invoke-static {v2, v3, v0, v1}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 769
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 772
    .local v0, "original":Landroid/content/AttributionSource;
    :try_start_25
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    .line 773
    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v4

    .line 772
    invoke-interface {v1, p2, p3, v4}, Landroid/content/ContentInterface;->refresh(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Z

    move-result v1
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_38

    .line 775
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 776
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 772
    return v1

    .line 775
    :catchall_38
    move-exception v1

    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 776
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 777
    throw v1
.end method

.method public uncanonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 9
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 725
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 726
    invoke-static {p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 727
    .local v0, "userId":I
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 728
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_16

    .line 730
    const/4 v1, 0x0

    return-object v1

    .line 732
    :cond_16
    const-string/jumbo v1, "uncanonicalize: "

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-wide/32 v3, 0x100000

    invoke-static {v3, v4, v1, v2}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 733
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v1

    .line 736
    .local v1, "original":Landroid/content/AttributionSource;
    :try_start_29
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v2, p2}, Landroid/content/ContentInterface;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_33} :catch_3e
    .catchall {:try_start_29 .. :try_end_33} :catchall_3c

    .line 740
    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v5, v1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 741
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 736
    return-object v2

    .line 740
    :catchall_3c
    move-exception v2

    goto :goto_44

    .line 737
    :catch_3e
    move-exception v2

    .line 738
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3f
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v5

    .end local v0    # "userId":I
    .end local v1    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    throw v5
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_3c

    .line 740
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "userId":I
    .restart local v1    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    :goto_44
    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v5, v1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 741
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 742
    throw v2
.end method

.method public uncanonicalizeAsync(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .registers 8
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/os/RemoteCallback;

    .line 748
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 750
    .local v0, "result":Landroid/os/Bundle;
    :try_start_5
    const-string/jumbo v1, "result"

    .line 751
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->uncanonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 750
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_10

    .line 755
    goto :goto_1b

    .line 752
    :catch_10
    move-exception v1

    .line 753
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/os/ParcelableException;

    invoke-direct {v2, v1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    const-string v3, "error"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 756
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1b
    invoke-virtual {p3, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 757
    return-void
.end method

.method public update(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I
    .registers 10
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 563
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 564
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 565
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_14

    .line 567
    const/4 v0, 0x0

    return v0

    .line 569
    :cond_14
    const-string/jumbo v0, "update: "

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x100000

    invoke-static {v2, v3, v0, v1}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 573
    .local v0, "original":Landroid/content/AttributionSource;
    :try_start_27
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v1, p2, p3, p4}, Landroid/content/ContentInterface;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result v1
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2d} :catch_38
    .catchall {:try_start_27 .. :try_end_2d} :catchall_36

    .line 577
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 578
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 573
    return v1

    .line 577
    :catchall_36
    move-exception v1

    goto :goto_3e

    .line 574
    :catch_38
    move-exception v1

    .line 575
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_39
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "values":Landroid/content/ContentValues;
    .end local p4    # "extras":Landroid/os/Bundle;
    throw v4
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_36

    .line 577
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "values":Landroid/content/ContentValues;
    .restart local p4    # "extras":Landroid/os/Bundle;
    :goto_3e
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 578
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 579
    throw v1
.end method
