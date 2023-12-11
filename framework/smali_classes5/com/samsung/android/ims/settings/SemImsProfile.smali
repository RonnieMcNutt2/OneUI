.class public Lcom/samsung/android/ims/settings/SemImsProfile;
.super Ljava/lang/Object;
.source "SemImsProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;,
        Lcom/samsung/android/ims/settings/SemImsProfile$RcsProfileType;,
        Lcom/samsung/android/ims/settings/SemImsProfile$ImsCategory;,
        Lcom/samsung/android/ims/settings/SemImsProfile$ImsFeature;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/ims/settings/SemImsProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "SemImsProfile"


# instance fields
.field private mBody:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 313
    new-instance v0, Lcom/samsung/android/ims/settings/SemImsProfile$1;

    invoke-direct {v0}, Lcom/samsung/android/ims/settings/SemImsProfile$1;-><init>()V

    sput-object v0, Lcom/samsung/android/ims/settings/SemImsProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .registers 3
    .param p1, "cv"    # Landroid/content/ContentValues;

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ims/settings/SemImsProfile;->mBody:Lorg/json/JSONObject;

    .line 370
    invoke-direct {p0, p1}, Lcom/samsung/android/ims/settings/SemImsProfile;->update(Landroid/content/ContentValues;)V

    .line 371
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/ims/settings/SemImsProfile;->fromJson(Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/ims/settings/SemImsProfile-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/ims/settings/SemImsProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/ims/settings/SemImsProfile;)V
    .registers 3
    .param p1, "profile"    # Lcom/samsung/android/ims/settings/SemImsProfile;

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    if-eqz p1, :cond_c

    .line 359
    invoke-direct {p1}, Lcom/samsung/android/ims/settings/SemImsProfile;->toJson()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/ims/settings/SemImsProfile;->fromJson(Ljava/lang/String;)V

    .line 361
    :cond_c
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "json"    # Ljava/lang/String;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    invoke-direct {p0, p1}, Lcom/samsung/android/ims/settings/SemImsProfile;->fromJson(Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method private fromJson(Ljava/lang/String;)V
    .registers 4
    .param p1, "json"    # Ljava/lang/String;

    .line 394
    if-eqz p1, :cond_19

    .line 395
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/ims/settings/SemImsProfile;->mBody:Lorg/json/JSONObject;

    .line 396
    invoke-virtual {p0}, Lcom/samsung/android/ims/settings/SemImsProfile;->splitNetwork()V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_c} :catch_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_c} :catch_d

    goto :goto_19

    .line 398
    :catch_d
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/ims/settings/SemImsProfile;->mBody:Lorg/json/JSONObject;

    .line 400
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a

    .line 401
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_19
    :goto_19
    nop

    .line 402
    :goto_1a
    return-void
.end method

.method private getAllServiceSet()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 434
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 435
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/samsung/android/ims/settings/SemImsProfile;->mBody:Lorg/json/JSONObject;

    const-string/jumbo v2, "network"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 437
    .local v1, "network":Lorg/json/JSONArray;
    if-eqz v1, :cond_6c

    .line 438
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_6c

    .line 439
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 440
    .local v3, "n":Lorg/json/JSONObject;
    const-string/jumbo v4, "services"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 441
    .local v4, "serviceArr":Lorg/json/JSONArray;
    if-nez v4, :cond_41

    .line 442
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAllServiceSet: No services array in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SemImsProfile"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    goto :goto_69

    .line 446
    :cond_41
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 447
    .local v5, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_47
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_57

    .line 448
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 447
    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    .line 450
    .end local v6    # "j":I
    :cond_57
    const-string/jumbo v6, "type"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/ims/settings/SemImsProfile;->getNetworkType(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .end local v3    # "n":Lorg/json/JSONObject;
    .end local v4    # "serviceArr":Lorg/json/JSONArray;
    .end local v5    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 453
    .end local v2    # "i":I
    :cond_6c
    return-object v0
.end method

.method private getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 486
    iget-object v0, p0, Lcom/samsung/android/ims/settings/SemImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static getNetworkType(Ljava/lang/String;)I
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 430
    invoke-static {p0}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->from(Ljava/lang/String;)Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;->-$$Nest$fgetmType(Lcom/samsung/android/ims/settings/SemImsProfile$NETWORK_TYPE;)I

    move-result v0

    return v0
.end method

.method private put(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .line 472
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/ims/settings/SemImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    .line 475
    goto :goto_a

    .line 473
    :catch_6
    move-exception v0

    .line 474
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 476
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_a
    return-void
.end method

.method private toJson()Ljava/lang/String;
    .registers 2

    .line 405
    iget-object v0, p0, Lcom/samsung/android/ims/settings/SemImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private update(Landroid/content/ContentValues;)V
    .registers 7
    .param p1, "cv"    # Landroid/content/ContentValues;

    .line 375
    if-eqz p1, :cond_3e

    .line 376
    :try_start_2
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 377
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, "val":Ljava/lang/String;
    if-eqz v2, :cond_38

    .line 379
    const-string v3, "\\[\\{.*\\}\\]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 380
    iget-object v3, p0, Lcom/samsung/android/ims/settings/SemImsProfile;->mBody:Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_38

    .line 382
    :cond_2f
    iget-object v3, p0, Lcom/samsung/android/ims/settings/SemImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_38} :catch_39

    .line 385
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "val":Ljava/lang/String;
    :cond_38
    :goto_38
    goto :goto_a

    .line 387
    :catch_39
    move-exception v0

    .line 388
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3f

    .line 389
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3e
    nop

    .line 390
    :goto_3f
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 467
    const/4 v0, 0x0

    return v0
.end method

.method public hasEmergencySupport()Z
    .registers 2

    .line 482
    const-string v0, "emergency_support"

    invoke-direct {p0, v0}, Lcom/samsung/android/ims/settings/SemImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasService(Ljava/lang/String;)Z
    .registers 5
    .param p1, "service"    # Ljava/lang/String;

    .line 299
    invoke-direct {p0}, Lcom/samsung/android/ims/settings/SemImsProfile;->getAllServiceSet()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 300
    .local v1, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 301
    const/4 v0, 0x1

    return v0

    .line 303
    .end local v1    # "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_20
    goto :goto_c

    .line 305
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method protected splitNetwork()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 412
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 413
    .local v0, "newNetwork":Lorg/json/JSONArray;
    iget-object v1, p0, Lcom/samsung/android/ims/settings/SemImsProfile;->mBody:Lorg/json/JSONObject;

    const-string/jumbo v2, "network"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 414
    .local v1, "network":Lorg/json/JSONArray;
    if-eqz v1, :cond_4f

    .line 415
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_4a

    .line 416
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 417
    .local v4, "obj":Lorg/json/JSONObject;
    const-string/jumbo v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 418
    .local v6, "types":Ljava/lang/String;
    const-string v7, ","

    invoke-static {v6, v7}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_2a
    if-ge v9, v8, :cond_47

    aget-object v10, v7, v9

    .line 419
    .local v10, "s":Ljava/lang/String;
    new-instance v11, Lorg/json/JSONObject;

    const-string v12, "enabled"

    const-string v13, "dereg_timeout"

    const-string/jumbo v14, "services"

    filled-new-array {v14, v12, v13}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v4, v12}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 421
    .local v11, "tmp":Lorg/json/JSONObject;
    invoke-virtual {v11, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 422
    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 418
    .end local v10    # "s":Ljava/lang/String;
    .end local v11    # "tmp":Lorg/json/JSONObject;
    add-int/lit8 v9, v9, 0x1

    goto :goto_2a

    .line 415
    .end local v4    # "obj":Lorg/json/JSONObject;
    .end local v6    # "types":Ljava/lang/String;
    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 425
    .end local v3    # "i":I
    :cond_4a
    iget-object v3, p0, Lcom/samsung/android/ims/settings/SemImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 427
    :cond_4f
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 460
    invoke-direct {p0}, Lcom/samsung/android/ims/settings/SemImsProfile;->toJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 461
    return-void
.end method
