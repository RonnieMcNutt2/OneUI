.class public Landroid/os/HWParamData;
.super Ljava/lang/Object;
.source "HWParamData.java"


# instance fields
.field protected HWRev:Ljava/lang/String;

.field protected IMEI:Ljava/lang/String;

.field protected UN:Ljava/lang/String;

.field protected compID:Ljava/lang/String;

.field protected compManufacture:Ljava/lang/String;

.field protected compVer:Ljava/lang/String;

.field protected envlogMaps:Ljava/lang/String;

.field protected feature:Ljava/lang/String;

.field protected hitType:Ljava/lang/String;

.field protected logMaps:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Landroid/os/HWParamData;->compID:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Landroid/os/HWParamData;->compVer:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Landroid/os/HWParamData;->compManufacture:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Landroid/os/HWParamData;->hitType:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Landroid/os/HWParamData;->feature:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Landroid/os/HWParamData;->HWRev:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Landroid/os/HWParamData;->IMEI:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Landroid/os/HWParamData;->UN:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Landroid/os/HWParamData;->logMaps:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Landroid/os/HWParamData;->envlogMaps:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCompID()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Landroid/os/HWParamData;->compID:Ljava/lang/String;

    return-object v0
.end method

.method public getCompManufacture()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Landroid/os/HWParamData;->compManufacture:Ljava/lang/String;

    return-object v0
.end method

.method public getCompVer()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Landroid/os/HWParamData;->compVer:Ljava/lang/String;

    return-object v0
.end method

.method public getEnvLogMaps()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/os/HWParamData;->envlogMaps:Ljava/lang/String;

    return-object v0
.end method

.method public getFeature()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Landroid/os/HWParamData;->feature:Ljava/lang/String;

    return-object v0
.end method

.method public getHWRev()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Landroid/os/HWParamData;->HWRev:Ljava/lang/String;

    return-object v0
.end method

.method public getHitType()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Landroid/os/HWParamData;->hitType:Ljava/lang/String;

    return-object v0
.end method

.method public getIMEI()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Landroid/os/HWParamData;->IMEI:Ljava/lang/String;

    return-object v0
.end method

.method public getLogMaps()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Landroid/os/HWParamData;->logMaps:Ljava/lang/String;

    return-object v0
.end method

.method public getUN()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Landroid/os/HWParamData;->UN:Ljava/lang/String;

    return-object v0
.end method
