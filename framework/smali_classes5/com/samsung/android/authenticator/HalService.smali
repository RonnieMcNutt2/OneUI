.class final Lcom/samsung/android/authenticator/HalService;
.super Ljava/lang/Object;
.source "HalService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HS"

.field private static sService:Lcom/samsung/android/authenticator/XidlHalService;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 51
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_3

    .line 54
    return-object p0

    .line 52
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can not found service"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static execute(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;[B)[B
    .registers 4
    .param p0, "type"    # Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;
    .param p1, "command"    # [B

    .line 83
    invoke-static {}, Lcom/samsung/android/authenticator/HalService;->getService()Lcom/samsung/android/authenticator/XidlHalService;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/authenticator/HalService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/authenticator/XidlHalService;

    .line 84
    .local v0, "service":Lcom/samsung/android/authenticator/XidlHalService;
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/authenticator/XidlHalService;->execute(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;[B)[B

    move-result-object v1

    return-object v1
.end method

.method public static execute(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;[B)[B
    .registers 4
    .param p0, "type"    # Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;
    .param p1, "command"    # [B

    .line 78
    invoke-static {}, Lcom/samsung/android/authenticator/HalService;->getService()Lcom/samsung/android/authenticator/XidlHalService;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/authenticator/HalService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/authenticator/XidlHalService;

    .line 79
    .local v0, "service":Lcom/samsung/android/authenticator/XidlHalService;
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/authenticator/XidlHalService;->execute(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;[B)[B

    move-result-object v1

    return-object v1
.end method

.method private static declared-synchronized getService()Lcom/samsung/android/authenticator/XidlHalService;
    .registers 2

    const-class v0, Lcom/samsung/android/authenticator/HalService;

    monitor-enter v0

    .line 44
    :try_start_3
    sget-object v1, Lcom/samsung/android/authenticator/HalService;->sService:Lcom/samsung/android/authenticator/XidlHalService;

    if-nez v1, :cond_d

    .line 45
    invoke-static {}, Lcom/samsung/android/authenticator/XidlHalService;->makeHalService()Lcom/samsung/android/authenticator/XidlHalService;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/authenticator/HalService;->sService:Lcom/samsung/android/authenticator/XidlHalService;

    .line 47
    :cond_d
    sget-object v1, Lcom/samsung/android/authenticator/HalService;->sService:Lcom/samsung/android/authenticator/XidlHalService;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v0

    return-object v1

    .line 43
    :catchall_11
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static load(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;Landroid/os/ParcelFileDescriptor;JJ)Z
    .registers 14
    .param p0, "type"    # Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "offset"    # J
    .param p4, "len"    # J

    .line 63
    invoke-static {}, Lcom/samsung/android/authenticator/HalService;->getService()Lcom/samsung/android/authenticator/XidlHalService;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/authenticator/HalService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/authenticator/XidlHalService;

    .line 64
    .local v0, "service":Lcom/samsung/android/authenticator/XidlHalService;
    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/authenticator/XidlHalService;->load(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;Landroid/os/ParcelFileDescriptor;JJ)Z

    move-result v1

    return v1
.end method

.method public static load(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;Landroid/os/ParcelFileDescriptor;JJ)Z
    .registers 14
    .param p0, "type"    # Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "offset"    # J
    .param p4, "len"    # J

    .line 58
    invoke-static {}, Lcom/samsung/android/authenticator/HalService;->getService()Lcom/samsung/android/authenticator/XidlHalService;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/authenticator/HalService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/authenticator/XidlHalService;

    .line 59
    .local v0, "service":Lcom/samsung/android/authenticator/XidlHalService;
    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/authenticator/XidlHalService;->load(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;Landroid/os/ParcelFileDescriptor;JJ)Z

    move-result v1

    return v1
.end method

.method public static unload(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;)Z
    .registers 3
    .param p0, "type"    # Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;

    .line 73
    invoke-static {}, Lcom/samsung/android/authenticator/HalService;->getService()Lcom/samsung/android/authenticator/XidlHalService;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/authenticator/HalService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/authenticator/XidlHalService;

    .line 74
    .local v0, "service":Lcom/samsung/android/authenticator/XidlHalService;
    invoke-interface {v0, p0}, Lcom/samsung/android/authenticator/XidlHalService;->unload(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;)Z

    move-result v1

    return v1
.end method

.method public static unload(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;)Z
    .registers 3
    .param p0, "type"    # Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    .line 68
    invoke-static {}, Lcom/samsung/android/authenticator/HalService;->getService()Lcom/samsung/android/authenticator/XidlHalService;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/authenticator/HalService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/authenticator/XidlHalService;

    .line 69
    .local v0, "service":Lcom/samsung/android/authenticator/XidlHalService;
    invoke-interface {v0, p0}, Lcom/samsung/android/authenticator/XidlHalService;->unload(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;)Z

    move-result v1

    return v1
.end method
