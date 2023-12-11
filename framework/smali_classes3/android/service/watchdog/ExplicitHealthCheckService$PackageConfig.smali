.class public final Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;
.super Ljava/lang/Object;
.source "ExplicitHealthCheckService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/watchdog/ExplicitHealthCheckService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PackageConfig"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_HEALTH_CHECK_TIMEOUT_MILLIS:J


# instance fields
.field private final mHealthCheckTimeoutMillis:J

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 199
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;->DEFAULT_HEALTH_CHECK_TIMEOUT_MILLIS:J

    .line 282
    new-instance v0, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig$1;

    invoke-direct {v0}, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig$1;-><init>()V

    sput-object v0, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;->mPackageName:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;->mHealthCheckTimeoutMillis:J

    .line 224
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "healthCheckTimeoutMillis"    # J

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;->mPackageName:Ljava/lang/String;

    .line 213
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_16

    .line 214
    sget-wide v0, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;->DEFAULT_HEALTH_CHECK_TIMEOUT_MILLIS:J

    iput-wide v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;->mHealthCheckTimeoutMillis:J

    goto :goto_1c

    .line 216
    :cond_16
    invoke-static {p2, p3}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;->mHealthCheckTimeoutMillis:J

    .line 219
    :goto_1c
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "other"    # Ljava/lang/Object;

    .line 253
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 254
    return v0

    .line 256
    :cond_4
    instance-of v1, p1, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 257
    return v2

    .line 260
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;

    .line 261
    .local v1, "otherInfo":Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;
    invoke-virtual {v1}, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;->getHealthCheckTimeoutMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, p0, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;->mHealthCheckTimeoutMillis:J

    .line 262
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 261
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 263
    invoke-virtual {v1}, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v2

    .line 261
    :goto_2f
    return v0
.end method

.method public getHealthCheckTimeoutMillis()J
    .registers 3

    .line 242
    iget-wide v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;->mHealthCheckTimeoutMillis:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 232
    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 268
    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;->mPackageName:Ljava/lang/String;

    iget-wide v1, p0, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;->mHealthCheckTimeoutMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageConfig{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;->mHealthCheckTimeoutMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 278
    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    iget-wide v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;->mHealthCheckTimeoutMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 280
    return-void
.end method
