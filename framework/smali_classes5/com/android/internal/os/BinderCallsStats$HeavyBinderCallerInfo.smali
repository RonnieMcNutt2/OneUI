.class public Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;
.super Ljava/lang/Object;
.source "BinderCallsStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderCallsStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeavyBinderCallerInfo"
.end annotation


# instance fields
.field public mPackageName:Ljava/lang/String;

.field public mRatio:F

.field public mUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IF)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "ratio"    # F

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    iput-object p1, p0, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mPackageName:Ljava/lang/String;

    .line 636
    iput p2, p0, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mUid:I

    .line 637
    iput p3, p0, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mRatio:F

    .line 638
    return-void
.end method

.method public static create(Ljava/lang/String;IF)Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "ratio"    # F

    .line 641
    new-instance v0, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;-><init>(Ljava/lang/String;IF)V

    return-object v0
.end method
