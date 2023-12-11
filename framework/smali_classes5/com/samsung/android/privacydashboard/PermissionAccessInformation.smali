.class public Lcom/samsung/android/privacydashboard/PermissionAccessInformation;
.super Ljava/lang/Object;
.source "PermissionAccessInformation.java"


# static fields
.field private static final MIN_MS_SEC:J = 0xea60L


# instance fields
.field private mAccessTime:J

.field private mIsBackground:Z

.field private mOp:I

.field private mPackageName:Ljava/lang/String;

.field private mProxyAttributionTag:Ljava/lang/String;

.field private mProxyPackageName:Ljava/lang/String;

.field private mUid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .registers 11
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "proxyPackageName"    # Ljava/lang/String;
    .param p5, "proxyAttributionTag"    # Ljava/lang/String;
    .param p6, "isBackground"    # Z
    .param p7, "accessTime"    # J

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mOp:I

    .line 17
    iput p2, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mUid:I

    .line 18
    iput-object p3, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mPackageName:Ljava/lang/String;

    .line 19
    const-string v0, ""

    if-eqz p5, :cond_f

    move-object v1, p5

    goto :goto_10

    :cond_f
    move-object v1, v0

    :goto_10
    iput-object v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mProxyAttributionTag:Ljava/lang/String;

    .line 20
    iput-boolean p6, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mIsBackground:Z

    .line 21
    iput-wide p7, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mAccessTime:J

    .line 22
    if-eqz p4, :cond_19

    move-object v0, p4

    :cond_19
    iput-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mProxyPackageName:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "o"    # Ljava/lang/Object;

    .line 51
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 52
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_55

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_55

    .line 53
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;

    .line 54
    .local v2, "that":Lcom/samsung/android/privacydashboard/PermissionAccessInformation;
    iget v3, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mOp:I

    iget v4, v2, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mOp:I

    if-ne v3, v4, :cond_53

    iget v3, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mUid:I

    iget v4, v2, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mUid:I

    if-ne v3, v4, :cond_53

    iget-boolean v3, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mIsBackground:Z

    iget-boolean v4, v2, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mIsBackground:Z

    if-ne v3, v4, :cond_53

    iget-wide v3, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mAccessTime:J

    const-wide/32 v5, 0xea60

    div-long/2addr v3, v5

    iget-wide v7, v2, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mAccessTime:J

    div-long/2addr v7, v5

    cmp-long v3, v3, v7

    if-nez v3, :cond_53

    iget-object v3, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mPackageName:Ljava/lang/String;

    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    iget-object v3, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mProxyPackageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mProxyPackageName:Ljava/lang/String;

    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    iget-object v3, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mProxyAttributionTag:Ljava/lang/String;

    iget-object v4, v2, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mProxyAttributionTag:Ljava/lang/String;

    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    goto :goto_54

    :cond_53
    move v0, v1

    .line 54
    :goto_54
    return v0

    .line 52
    .end local v2    # "that":Lcom/samsung/android/privacydashboard/PermissionAccessInformation;
    :cond_55
    :goto_55
    return v1
.end method

.method public getAccessTime()J
    .registers 3

    .line 45
    iget-wide v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mAccessTime:J

    return-wide v0
.end method

.method public getOp()I
    .registers 2

    .line 26
    iget v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mOp:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyAttributionTag()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mProxyAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPackageName()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mProxyPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .registers 2

    .line 30
    iget v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mUid:I

    return v0
.end method

.method public hashCode()I
    .registers 12

    .line 65
    iget v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mOp:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mProxyPackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mProxyAttributionTag:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mIsBackground:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-wide v7, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mAccessTime:J

    const-wide/32 v9, 0xea60

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isBackground()Z
    .registers 2

    .line 42
    iget-boolean v0, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mIsBackground:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PermissionAccessInformation{op="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mOp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", proxyPackageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mProxyPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", proxyAttributionTag=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mProxyAttributionTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mIsBackground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accessTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/privacydashboard/PermissionAccessInformation;->mAccessTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
