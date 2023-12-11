.class public Lcom/samsung/app/video/editor/external/LUTInfo;
.super Ljava/lang/Object;
.source "LUTInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field filePath:Ljava/lang/String;

.field intensity:F

.field jsonPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    const-class v0, Lcom/samsung/app/video/editor/external/LUTInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/app/video/editor/external/LUTInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/LUTInfo;->jsonPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method copy()Lcom/samsung/app/video/editor/external/LUTInfo;
    .registers 3

    .line 16
    new-instance v0, Lcom/samsung/app/video/editor/external/LUTInfo;

    invoke-direct {v0}, Lcom/samsung/app/video/editor/external/LUTInfo;-><init>()V

    .line 17
    .local v0, "lutinfo":Lcom/samsung/app/video/editor/external/LUTInfo;
    iget v1, p0, Lcom/samsung/app/video/editor/external/LUTInfo;->intensity:F

    iput v1, v0, Lcom/samsung/app/video/editor/external/LUTInfo;->intensity:F

    .line 18
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/LUTInfo;->filePath:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/LUTInfo;->filePath:Ljava/lang/String;

    .line 19
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/LUTInfo;->jsonPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/app/video/editor/external/LUTInfo;->jsonPath:Ljava/lang/String;

    .line 20
    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/LUTInfo;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getIntensity()F
    .registers 2

    .line 38
    iget v0, p0, Lcom/samsung/app/video/editor/external/LUTInfo;->intensity:F

    return v0
.end method

.method public getJsonPath()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/LUTInfo;->jsonPath:Ljava/lang/String;

    return-object v0
.end method

.method public setFilePath(Ljava/lang/String;)V
    .registers 2
    .param p1, "filepath"    # Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/LUTInfo;->filePath:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setIntensity(F)V
    .registers 2
    .param p1, "intensity"    # F

    .line 34
    iput p1, p0, Lcom/samsung/app/video/editor/external/LUTInfo;->intensity:F

    .line 35
    return-void
.end method

.method public setJsonPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "jsonfilepath"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/LUTInfo;->jsonPath:Ljava/lang/String;

    .line 44
    return-void
.end method
