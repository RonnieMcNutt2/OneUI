.class public final Landroid/content/PermissionChecker;
.super Ljava/lang/Object;
.source "PermissionChecker.java"


# static fields
.field public static final PERMISSION_GRANTED:I = 0x0

.field public static final PERMISSION_HARD_DENIED:I = 0x2

.field public static final PERMISSION_SOFT_DENIED:I = 0x1

.field public static final PID_UNKNOWN:I = -0x1

.field private static volatile sService:Landroid/permission/IPermissionChecker;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method public static checkCallingOrSelfPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "callingPackageName"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;

    .line 771
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 772
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_11

    :cond_10
    move-object v5, p2

    .line 773
    .end local p2    # "callingPackageName":Ljava/lang/String;
    .local v5, "callingPackageName":Ljava/lang/String;
    :goto_11
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p2, v0, :cond_21

    .line 774
    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object p2

    move-object v6, p2

    goto :goto_22

    :cond_21
    move-object v6, p3

    .line 775
    .end local p3    # "callingAttributionTag":Ljava/lang/String;
    .local v6, "callingAttributionTag":Ljava/lang/String;
    :goto_22
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 776
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v8, 0x0

    .line 775
    move-object v1, p0

    move-object v2, p1

    move-object v7, p4

    invoke-static/range {v1 .. v8}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p2

    return p2
.end method

.method public static checkCallingOrSelfPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .line 809
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 810
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 811
    .local v0, "packageName":Ljava/lang/String;
    :goto_10
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 812
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 811
    invoke-static {p0, p1, v1, v2, v0}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static checkCallingPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "callingPackageName"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;

    .line 690
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 691
    const/4 v0, 0x2

    return v0

    .line 693
    :cond_c
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 694
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v8, 0x0

    .line 693
    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v8}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static checkCallingPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 729
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 730
    const/4 v0, 0x2

    return v0

    .line 732
    :cond_c
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 733
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 732
    invoke-static {p0, p1, v0, v1, p2}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static checkOpForDataDelivery(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "opName"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "message"    # Ljava/lang/String;

    .line 503
    const-class v0, Landroid/permission/PermissionCheckerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/permission/PermissionCheckerManager;

    .line 504
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 503
    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/permission/PermissionCheckerManager;->checkOp(ILandroid/content/AttributionSourceState;Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method public static checkOpForPreflight(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "opName"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "message"    # Ljava/lang/String;

    .line 468
    const-class v0, Landroid/permission/PermissionCheckerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/permission/PermissionCheckerManager;

    .line 469
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 468
    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/permission/PermissionCheckerManager;->checkOp(ILandroid/content/AttributionSourceState;Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method public static checkPermissionAndStartDataDelivery(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "message"    # Ljava/lang/String;

    .line 356
    const-class v0, Landroid/permission/PermissionCheckerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/permission/PermissionCheckerManager;

    .line 357
    invoke-virtual {p2}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 356
    move-object v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v8}, Landroid/permission/PermissionCheckerManager;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSourceState;Ljava/lang/String;ZZZI)I

    move-result v0

    return v0
.end method

.method public static checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "message"    # Ljava/lang/String;

    .line 197
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "startDataDelivery"    # Z

    .line 154
    new-instance v3, Landroid/content/AttributionSource;

    invoke-direct {v3, p3, p2, p4, p5}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p6

    move v5, p7

    invoke-static/range {v0 .. v5}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;)I
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "message"    # Ljava/lang/String;

    .line 272
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;Z)I
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "startDataDelivery"    # Z

    .line 310
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-static/range {v0 .. v5}, Landroid/content/PermissionChecker;->checkPermissionForDataDeliveryCommon(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method private static checkPermissionForDataDeliveryCommon(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "startDataDelivery"    # Z
    .param p5, "fromDatasource"    # Z

    .line 318
    const-class v0, Landroid/permission/PermissionCheckerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/permission/PermissionCheckerManager;

    .line 319
    invoke-virtual {p2}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v8, -0x1

    .line 318
    move-object v2, p1

    move-object v4, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v8}, Landroid/permission/PermissionCheckerManager;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSourceState;Ljava/lang/String;ZZZI)I

    move-result v0

    return v0
.end method

.method public static checkPermissionForDataDeliveryFromDataSource(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;)I
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "message"    # Ljava/lang/String;

    .line 235
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Landroid/content/PermissionChecker;->checkPermissionForDataDeliveryCommon(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method public static checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 541
    new-instance v0, Landroid/content/AttributionSource;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p4, v1}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v0

    return v0
.end method

.method public static checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;)I
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;

    .line 577
    const-class v0, Landroid/permission/PermissionCheckerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/permission/PermissionCheckerManager;

    .line 578
    invoke-virtual {p2}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Landroid/permission/PermissionCheckerManager;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSourceState;Ljava/lang/String;ZZZI)I

    move-result v0

    .line 577
    return v0
.end method

.method public static checkSelfPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 614
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 615
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    .line 614
    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-static/range {v0 .. v7}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static checkSelfPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .line 650
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 651
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 650
    invoke-static {p0, p1, v0, v1, v2}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static finishDataDelivery(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;

    .line 410
    const-class v0, Landroid/permission/PermissionCheckerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionCheckerManager;

    .line 411
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v2

    .line 410
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/permission/PermissionCheckerManager;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    .line 413
    return-void
.end method

.method public static finishDataDeliveryFromDatasource(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;

    .line 430
    const-class v0, Landroid/permission/PermissionCheckerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionCheckerManager;

    .line 431
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v2

    .line 430
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/permission/PermissionCheckerManager;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    .line 433
    return-void
.end method

.method public static startOpForDataDelivery(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "opName"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "message"    # Ljava/lang/String;

    .line 391
    const-class v0, Landroid/permission/PermissionCheckerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/permission/PermissionCheckerManager;

    .line 392
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 391
    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/permission/PermissionCheckerManager;->checkOp(ILandroid/content/AttributionSourceState;Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method
