.class public final Landroid/location/GnssMeasurementRequest$Builder;
.super Ljava/lang/Object;
.source "GnssMeasurementRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssMeasurementRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCorrelationVectorOutputsEnabled:Z

.field private mFullTracking:Z

.field private mIntervalMillis:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    return-void
.end method

.method public constructor <init>(Landroid/location/GnssMeasurementRequest;)V
    .registers 3
    .param p1, "request"    # Landroid/location/GnssMeasurementRequest;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    invoke-virtual {p1}, Landroid/location/GnssMeasurementRequest;->isCorrelationVectorOutputsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/GnssMeasurementRequest$Builder;->mCorrelationVectorOutputsEnabled:Z

    .line 194
    invoke-virtual {p1}, Landroid/location/GnssMeasurementRequest;->isFullTracking()Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/GnssMeasurementRequest$Builder;->mFullTracking:Z

    .line 195
    invoke-virtual {p1}, Landroid/location/GnssMeasurementRequest;->getIntervalMillis()I

    move-result v0

    iput v0, p0, Landroid/location/GnssMeasurementRequest$Builder;->mIntervalMillis:I

    .line 196
    return-void
.end method


# virtual methods
.method public build()Landroid/location/GnssMeasurementRequest;
    .registers 6

    .line 257
    new-instance v0, Landroid/location/GnssMeasurementRequest;

    iget-boolean v1, p0, Landroid/location/GnssMeasurementRequest$Builder;->mFullTracking:Z

    iget-boolean v2, p0, Landroid/location/GnssMeasurementRequest$Builder;->mCorrelationVectorOutputsEnabled:Z

    iget v3, p0, Landroid/location/GnssMeasurementRequest$Builder;->mIntervalMillis:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/location/GnssMeasurementRequest;-><init>(ZZILandroid/location/GnssMeasurementRequest-IA;)V

    return-object v0
.end method

.method public setCorrelationVectorOutputsEnabled(Z)Landroid/location/GnssMeasurementRequest$Builder;
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 208
    iput-boolean p1, p0, Landroid/location/GnssMeasurementRequest$Builder;->mCorrelationVectorOutputsEnabled:Z

    .line 209
    return-object p0
.end method

.method public setFullTracking(Z)Landroid/location/GnssMeasurementRequest$Builder;
    .registers 2
    .param p1, "value"    # Z

    .line 230
    iput-boolean p1, p0, Landroid/location/GnssMeasurementRequest$Builder;->mFullTracking:Z

    .line 231
    return-object p0
.end method

.method public setIntervalMillis(I)Landroid/location/GnssMeasurementRequest$Builder;
    .registers 5
    .param p1, "value"    # I

    .line 249
    const v0, 0x7fffffff

    const-string v1, "intervalMillis"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/location/GnssMeasurementRequest$Builder;->mIntervalMillis:I

    .line 251
    return-object p0
.end method
