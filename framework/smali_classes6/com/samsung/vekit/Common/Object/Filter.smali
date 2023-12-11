.class public Lcom/samsung/vekit/Common/Object/Filter;
.super Lcom/samsung/vekit/Common/Object/Element;
.source "Filter.java"


# static fields
.field private static final GRAIN_TEMPLATE_IMAGE:Ljava/lang/String; = "/system/cameradata/myfilter/GrainTemplateImage"

.field private static final NOISE_TYPE_GRAY:I = 0x1

.field private static final NOISE_TYPE_NONE:I = 0x0

.field private static final NOISE_TYPE_RGB:I = 0x3


# instance fields
.field private auxPath:Ljava/lang/String;

.field private enableGrain:Z

.field private enableVignette:Z

.field private filterType:Lcom/samsung/vekit/Common/Type/FilterType;

.field private grainPath:Ljava/lang/String;

.field private grainPower:F

.field private grainRadius:F

.field private jsonPath:Ljava/lang/String;

.field private noiseIntensity:F

.field private noiseType:I

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "filterPath"    # Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->FILTER:Lcom/samsung/vekit/Common/Type/ElementType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Common/Object/Element;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ElementType;ILjava/lang/String;)V

    .line 34
    sget-object v0, Lcom/samsung/vekit/Common/Type/FilterType;->LUT:Lcom/samsung/vekit/Common/Type/FilterType;

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->filterType:Lcom/samsung/vekit/Common/Type/FilterType;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->grainPower:F

    .line 36
    iput v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->grainRadius:F

    .line 37
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/vekit/Common/Object/Filter;->noiseType:I

    .line 38
    iput v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->noiseIntensity:F

    .line 39
    iput-boolean v1, p0, Lcom/samsung/vekit/Common/Object/Filter;->enableVignette:Z

    .line 40
    iput-boolean v1, p0, Lcom/samsung/vekit/Common/Object/Filter;->enableGrain:Z

    .line 44
    iput p2, p0, Lcom/samsung/vekit/Common/Object/Filter;->id:I

    .line 45
    iput-object p3, p0, Lcom/samsung/vekit/Common/Object/Filter;->name:Ljava/lang/String;

    .line 46
    invoke-direct {p0, p4}, Lcom/samsung/vekit/Common/Object/Filter;->setPath(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->TAG:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private parseJson(Ljava/lang/String;)Z
    .registers 11
    .param p1, "jsonPath"    # Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v0, "json":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    :try_start_6
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 72
    .local v2, "stream":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 73
    .local v3, "reader":Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 75
    .local v4, "buffer":Ljava/io/BufferedReader;
    :goto_17
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "line":Ljava/lang/String;
    if-eqz v5, :cond_22

    .line 76
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_21} :catch_d0

    goto :goto_17

    .line 80
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .end local v3    # "reader":Ljava/io/InputStreamReader;
    .end local v4    # "buffer":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    :cond_22
    nop

    .line 84
    :try_start_23
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 86
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v3, "filter_type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "filterData":Ljava/lang/String;
    const-string v4, "basic"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_68

    .line 88
    sget-object v4, Lcom/samsung/vekit/Common/Type/FilterType;->NOISE:Lcom/samsung/vekit/Common/Type/FilterType;

    iput-object v4, p0, Lcom/samsung/vekit/Common/Object/Filter;->filterType:Lcom/samsung/vekit/Common/Type/FilterType;

    .line 89
    const-string v4, "noise_intensity"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v4, v6

    iput v4, p0, Lcom/samsung/vekit/Common/Object/Filter;->noiseIntensity:F

    .line 90
    const-string v4, "noise_color"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, "noiseType":Ljava/lang/String;
    const-string v6, "gray"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_59

    .line 92
    iput v5, p0, Lcom/samsung/vekit/Common/Object/Filter;->noiseType:I

    goto :goto_c4

    .line 93
    :cond_59
    const-string v6, "rgb"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 94
    const/4 v6, 0x3

    iput v6, p0, Lcom/samsung/vekit/Common/Object/Filter;->noiseType:I

    goto :goto_c4

    .line 96
    :cond_65
    iput v1, p0, Lcom/samsung/vekit/Common/Object/Filter;->noiseType:I

    goto :goto_c4

    .line 99
    .end local v4    # "noiseType":Ljava/lang/String;
    :cond_68
    const-string v4, "myfilter_effect"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c4

    .line 100
    sget-object v4, Lcom/samsung/vekit/Common/Type/FilterType;->MY_FILTER:Lcom/samsung/vekit/Common/Type/FilterType;

    iput-object v4, p0, Lcom/samsung/vekit/Common/Object/Filter;->filterType:Lcom/samsung/vekit/Common/Type/FilterType;

    .line 101
    const-string v4, "grain_power"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v4, v6

    iput v4, p0, Lcom/samsung/vekit/Common/Object/Filter;->grainPower:F

    .line 102
    const-string v4, "grain_radius"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v4, v6

    iput v4, p0, Lcom/samsung/vekit/Common/Object/Filter;->grainRadius:F

    .line 104
    const/16 v4, 0x2e

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "filePath":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".aux"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/vekit/Common/Object/Filter;->auxPath:Ljava/lang/String;

    .line 106
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/samsung/vekit/Common/Object/Filter;->auxPath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .local v6, "auxFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    iput-boolean v7, p0, Lcom/samsung/vekit/Common/Object/Filter;->enableVignette:Z

    .line 109
    const-string v7, "/system/cameradata/myfilter/GrainTemplateImage"

    iput-object v7, p0, Lcom/samsung/vekit/Common/Object/Filter;->grainPath:Ljava/lang/String;

    .line 110
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/samsung/vekit/Common/Object/Filter;->grainPath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .local v7, "grainFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    iput-boolean v8, p0, Lcom/samsung/vekit/Common/Object/Filter;->enableGrain:Z
    :try_end_c3
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_c3} :catch_c7

    goto :goto_c5

    .line 99
    .end local v4    # "filePath":Ljava/lang/String;
    .end local v6    # "auxFile":Ljava/io/File;
    .end local v7    # "grainFile":Ljava/io/File;
    :cond_c4
    :goto_c4
    nop

    .line 116
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v3    # "filterData":Ljava/lang/String;
    :goto_c5
    nop

    .line 117
    return v5

    .line 113
    :catch_c7
    move-exception v2

    .line 114
    .local v2, "e":Lorg/json/JSONException;
    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Filter;->TAG:Ljava/lang/String;

    const-string v4, "parseJson: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    return v1

    .line 77
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_d0
    move-exception v2

    .line 78
    .local v2, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/samsung/vekit/Common/Object/Filter;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    return v1
.end method

.method private setPath(Ljava/lang/String;)V
    .registers 6
    .param p1, "filterPath"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/Filter;->path:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 53
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->TAG:Ljava/lang/String;

    const-string v1, "filterPath is Empty."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void

    .line 56
    :cond_10
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, "filterFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_23

    .line 58
    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Filter;->TAG:Ljava/lang/String;

    const-string v2, "filterPath doesn\'t exist."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void

    .line 62
    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/vekit/Common/Object/Filter;->jsonPath:Ljava/lang/String;

    .line 63
    invoke-direct {p0, v1}, Lcom/samsung/vekit/Common/Object/Filter;->parseJson(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_50

    .line 64
    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/Filter;->TAG:Ljava/lang/String;

    const-string v2, "Parse failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_50
    return-void
.end method


# virtual methods
.method public getAuxPath()Ljava/lang/String;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->auxPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterType()Lcom/samsung/vekit/Common/Type/FilterType;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->filterType:Lcom/samsung/vekit/Common/Type/FilterType;

    return-object v0
.end method

.method public getGrainPath()Ljava/lang/String;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->grainPath:Ljava/lang/String;

    return-object v0
.end method

.method public getGrainPower()F
    .registers 2

    .line 141
    iget v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->grainPower:F

    return v0
.end method

.method public getGrainRadius()F
    .registers 2

    .line 145
    iget v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->grainRadius:F

    return v0
.end method

.method public getJsonPath()Ljava/lang/String;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->jsonPath:Ljava/lang/String;

    return-object v0
.end method

.method public getNoiseIntensity()F
    .registers 2

    .line 153
    iget v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->noiseIntensity:F

    return v0
.end method

.method public getNoiseType()I
    .registers 2

    .line 149
    iget v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->noiseType:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->path:Ljava/lang/String;

    return-object v0
.end method

.method public isEnableGrain()Z
    .registers 2

    .line 161
    iget-boolean v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->enableGrain:Z

    return v0
.end method

.method public isEnableVignette()Z
    .registers 2

    .line 157
    iget-boolean v0, p0, Lcom/samsung/vekit/Common/Object/Filter;->enableVignette:Z

    return v0
.end method
